using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using AndroidNotificationQuiz.Admin.ViewModels;
using AndroidNotificationQuiz.DomainLayer.Entities;
using AndroidNotificationQuiz.DomainLayer.Interfaces;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;

namespace AndroidNotificationQuiz.Admin.Controllers
{
    public class OrderController : Controller
    {

        private readonly ICategoryRepository _categoryRepository;
        private readonly IGoodsRepository _goodsRepository;
        private readonly IOrderRepository _orderRepository;
        private readonly IPromoItemsRepository _promoItemsRepository;

        public OrderController(ICategoryRepository categoryRepository,
                                IGoodsRepository goodsRepository,
                                IOrderRepository orderRepository,
                                IPromoItemsRepository promoItemsRepository)
        {
            _categoryRepository = categoryRepository;
            _goodsRepository = goodsRepository;
            _orderRepository = orderRepository;
            _promoItemsRepository = promoItemsRepository;
        }

        [HttpGet]
        [Authorize]
        public async Task<IActionResult> Index(int pageIndex, int id)
        {
            if (pageIndex == 0  || id > 0)
            {
                pageIndex = 1;
            }

            int pageSize = 20;

            IList<Order> items = await _orderRepository.GetListAsync(p => (id == 0 || p.UserId == id) && p.PromoItem == null, (pageIndex - 1) * pageSize, pageSize);
            int count = await _orderRepository.GetCount(p => (id == 0 || p.UserId == id) && p.PromoItem == null);

            var orders = new List<OrderModel>();
            items.Where(p => !p.Completed).ToList().ForEach((obj) =>
            {
                orders.Add(new OrderModel
                {
                    Id = obj.Id,
                    CategoryTitle = obj.Good.Category.Position,
                    Cost = obj.Good.Cost,
                    Description = obj.Good.Description,
                    Title = obj.Good.Title,
                    UserName = !string.IsNullOrEmpty(obj.User.Nick) ? obj.User.Nick : $"{obj.User.Name} {obj.User.Surname}",
                    Social = obj.User?.SocialNetwork?.FirstOrDefault()?.Link
                });

            });

            var ordersModel = new IndexViewPageModel<OrderModel>
            {
                PageViewModel = new PageViewModel(count, pageIndex, pageSize),
                Items = orders,
                SerachString = id.ToString()
            };

            return View(ordersModel);
        }

        [HttpGet]
        [Authorize]
        public async Task<IActionResult> ViewAuto(int pageIndex, int id)
        {
            if (pageIndex == 0 || id > 0)
            {
                pageIndex = 1;
            }

            int pageSize = 20;

            IList<Order> items = await _orderRepository.GetListAsync(p => (id == 0 || p.UserId == id) && p.PromoItem != null);
            int count = await _orderRepository.GetCount(p => (id == 0 || p.UserId == id) && p.PromoItem != null);

            var orders = new List<OrderModel>();
            items.ToList().ForEach((obj) =>
            {
                orders.Add(new OrderModel
                {
                    Id = obj.Id,
                    CategoryTitle = obj.Good.Category.Position,
                    Cost = obj.Good.Cost,
                    Description = obj.Good.Description,
                    Title = obj.Good.Title,
                    UserName = !string.IsNullOrEmpty(obj.User.Nick) ? obj.User.Nick : $"{obj.User.Name} {obj.User.Surname}",
                    Social = obj.User?.SocialNetwork?.FirstOrDefault()?.Link,
                    PromoCode = obj.PromoItem?.Code
                });

            });
            
            var ordersModel = new IndexViewPageModel<OrderModel>
            {
                PageViewModel = new PageViewModel(count, pageIndex, pageSize),
                Items = orders,
                SerachString = id.ToString()
            };

            return View(ordersModel);
        }
    }
}
