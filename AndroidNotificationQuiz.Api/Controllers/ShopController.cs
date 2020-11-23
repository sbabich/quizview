using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Threading.Tasks;
using AndroidNotificationQuiz.Api.Dto.Profile;
using AndroidNotificationQuiz.Api.Dto.Shop;
using AndroidNotificationQuiz.Api.ExceptionFilter;
using AndroidNotificationQuiz.Api.Middleware;
using AndroidNotificationQuiz.DomainLayer.Entities;
using AndroidNotificationQuiz.DomainLayer.Interfaces;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;

namespace AndroidNotificationQuiz.Api.Controllers
{
    [ApiController]
    [Produces("application/json")]
    [Route("/shop")]
    [EnableBodyRewind]
    public class ShopController : BaseController
    {
        private readonly IGoodsRepository _goodsRepository;
        private readonly ICategoryRepository _categoryRepository;
        private readonly IUserRepository _userRepository;
        private readonly IUserScoreRepository _userScoreRepository;
        private readonly IOrderRepository _orderRepository;

        public ShopController(IGoodsRepository goodsRepository, 
                                ICategoryRepository categoryRepository,
                                IUserRepository userRepository,
                                IUserScoreRepository userScoreRepository,
                                IOrderRepository orderRepository)
        {
            _goodsRepository = goodsRepository;
            _categoryRepository = categoryRepository;
            _userRepository = userRepository;
            _orderRepository = orderRepository;
            _userScoreRepository = userScoreRepository;
        }

        [HttpGet("categories")]
        [ProducesResponseType(typeof(List<CategoryResponse>), (int)HttpStatusCode.OK)]
        [ProducesResponseType(typeof(ErrorResponse), (int)HttpStatusCode.NotFound)]
        [ProducesResponseType(typeof(ErrorResponse), (int)HttpStatusCode.NotAcceptable)]
        [EnableBodyRewind]
        public async Task<ActionResult<List<CategoryResponse>>> GetCategory()
        {
            var items = await _categoryRepository.GetListAsync();

            var categoryResponse = new List<CategoryResponse>();
            items.OrderBy(p => p.Sort).ToList().ForEach(p => categoryResponse.Add(new CategoryResponse
            {
                Id = p.Id,
                Position = p.Position
            }));

            return new ActionResult<List<CategoryResponse>>(categoryResponse);
        }

        [HttpPost("buy")]
        [Authorize]
        [ProducesResponseType(typeof(BuyResponse), (int)HttpStatusCode.OK)]
        [ProducesResponseType(typeof(ErrorResponse), (int)HttpStatusCode.NotFound)]
        [ProducesResponseType(typeof(ErrorResponse), (int)HttpStatusCode.NotAcceptable)]
        [EnableBodyRewind]
        public async Task<ActionResult<BuyResponse>> BuyItem([FromBody] BuyGoodRequest goodRequest)
        {
            var userId = GetUserId();
            var user = await _userRepository.GetByEmailAsync(userId);
            var good = await _goodsRepository.GetAsync(goodRequest.Id);

            if (good == null)
                return new ActionResult<BuyResponse>(new BuyResponse { Msg = "Товар не найден!", IsError = true });

            Serilog.Log.Logger.Information($"UserId={userId} Good={good.Id} Price={good.Cost}");

            if (user.Balance >= good.Cost)
            {
                PromoItem promoItem = null;
                if (good.IsAutoIssuance && good.PromoCategoryId.HasValue)
                {
                    promoItem = await _goodsRepository.PickUpPromoItem(good);
                }

                //user.Balance = user.Balance - good.Cost;
                await _userRepository.Update(user);

                var order = new Order
                {
                    GoodId = goodRequest.Id,
                    UserId = user.Id,
                    OrderedAt = DateTime.UtcNow,
                    PromoItem = promoItem,
                };

                if (promoItem != null)
                {
                    order.Completed = true;
                    order.CompletedAt = DateTime.UtcNow;
                }

                await _orderRepository.AddAsync(order);

                //add user transaction
                await _userScoreRepository.AddAsync(new UserTransaction
                {
                    Score = -good.Cost,
                    UserId = user.Id,
                    CreatedAt = DateTime.UtcNow,
                    Type = TransactionType.GoodBuy
                });

                //var transactions = await _userScoreRepository.GetAllAsync(user.Id);
                //var sum = transactions.Sum(p => p.Score);
                user.Balance -= good.Cost;

                await _userRepository.Update(user);

                if (promoItem != null)
                {                    
                    return new ActionResult<BuyResponse>(new BuyResponse { Msg = $"Товар приобретен: {promoItem.Code}", IsAuto = true, PromoCode = promoItem.Code });
                }

            }
            else
            {
                return new ActionResult<BuyResponse>(new BuyResponse { Msg = "Не хватает баллов", IsError = true });
            }

            return new ActionResult<BuyResponse>(new BuyResponse { Msg = "Товар приобретен, ждет подтверждения" });
        }

        [HttpGet("categories/{categoryId}/items")]
        [ProducesResponseType(typeof(List<GoodsResponse>), (int)HttpStatusCode.OK)]
        [ProducesResponseType(typeof(ErrorResponse), (int)HttpStatusCode.NotFound)]
        [ProducesResponseType(typeof(ErrorResponse), (int)HttpStatusCode.NotAcceptable)]
        [EnableBodyRewind]
        public async Task<ActionResult<List<GoodsResponse>>> GetGoodsByCategory(int categoryId, [FromQuery] int? skip,
                                                            [FromQuery] int? take)
        {
            var goodsResponse = new List<GoodsResponse>();

            var count = await _goodsRepository.CountAsync(s => s.CategoryId == categoryId);
            var items = await _goodsRepository.GetListByCategoryIdAsync(skip ?? 0, take ?? count, categoryId);

            items.ForEach(p => goodsResponse.Add(new GoodsResponse
            {
                Id = p.Id,
                Cost = p.Cost,
                RealCost = p.RealCost,
                Description = p.Description,
                ImagePath = p.ImagePath,
                Title = p.Title,
                IsDisable = !_goodsRepository.IsAvailable(p).Result,
            }));

            return new ActionResult<List<GoodsResponse>>(goodsResponse);
        }

        [HttpGet("items")]
        [ProducesResponseType(typeof(List<GoodsResponse>), (int)HttpStatusCode.OK)]
        [ProducesResponseType(typeof(ErrorResponse), (int)HttpStatusCode.NotFound)]
        [ProducesResponseType(typeof(ErrorResponse), (int)HttpStatusCode.NotAcceptable)]
        [EnableBodyRewind]
        public async Task<ActionResult<List<GoodsResponse>>> GetAllGoods([FromQuery] int? skip,
                                                                        [FromQuery] int? take)
        {
            var goodsResponse = new List<GoodsResponse>();

            var count = await _goodsRepository.CountAsync(null);
            var items = await _goodsRepository.GetListAsync(skip ?? 0, take ?? count);

            items.ForEach(p => goodsResponse.Add(new GoodsResponse { 
                Id = p.Id,
                Cost = p.Cost,
                RealCost = p.RealCost,
                Description = p.Description,
                ImagePath = p.ImagePath,
                Title = p.Title
            }));

            return new ActionResult<List<GoodsResponse>>(goodsResponse);
        }

    }
}
