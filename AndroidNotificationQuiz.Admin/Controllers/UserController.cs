using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using AndroidNotificationQuiz.Admin.ViewModels;
using AndroidNotificationQuiz.DomainLayer.Entities;
using AndroidNotificationQuiz.DomainLayer.Interfaces;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using TimeZoneConverter;

namespace AndroidNotificationQuiz.Admin.Controllers
{
    public class UserController : Controller
    {
        private readonly IUserRepository _userRepository;
        private readonly IGoodsRepository _goodsRepository;
        private readonly IOrderRepository _orderRepository;
        private readonly IUserScoreRepository _userScoreRepository;

        public UserController(IUserRepository userRepository, IGoodsRepository goodsRepository,
            IOrderRepository orderRepository, IUserScoreRepository userScoreRepository)
        {
            _userRepository = userRepository;
            _goodsRepository = goodsRepository;
            _orderRepository = orderRepository;
            _userScoreRepository = userScoreRepository;
        }

        [Authorize]
        public async Task<IActionResult> Index(int pageIndex, string searchString)
        {
            if (pageIndex == 0)
            {
                pageIndex = 1;
            }

            int pageSize = 20;

            if (string.IsNullOrEmpty(searchString))
                searchString = "";

            var count = await _userRepository.CountAsync(
                p => (p.Nick != null && p.Nick.ToLower().Contains(searchString.ToLower())) ||
                (p.Name != null && p.Name.ToLower().Contains(searchString.ToLower())) ||
                (p.Surname != null && p.Surname.ToLower().Contains(searchString.ToLower())) ||
                p.Id.ToString().Contains(searchString), null);

            var items = await _userRepository.GetListAsync(
                (pageIndex - 1) * pageSize, 
                pageSize, 
                p => (p.Nick != null && p.Nick.ToLower().Contains(searchString.ToLower())) ||
                (p.Name != null && p.Name.ToLower().Contains(searchString.ToLower())) ||
                (p.Surname != null && p.Surname.ToLower().Contains(searchString.ToLower())) ||
                p.Id.ToString().Contains(searchString));

            var tz = TZConvert.GetTimeZoneInfo("Russian Standard Time");

            var list = new List<UserModel>();
            items.ForEach(p => list.Add(new UserModel
            {
                Id = p.Id,
                Name = string.IsNullOrEmpty(p.Name) 
                    ? p.Nick 
                    : $"{p.Name} {p.Surname}",
                Balance = p.Balance,
                IsBanned = p.IsBanned,
                BanFineshedAt = p.BanFineshedAt != null 
                    ? TimeZoneInfo.ConvertTimeFromUtc(p.BanFineshedAt.Value.UtcDateTime, tz)  
                    : default(DateTime?),
                BanStartedAt = p.BanStartedAt != null 
                    ? TimeZoneInfo.ConvertTimeFromUtc(p.BanStartedAt.Value.UtcDateTime, tz) 
                    : default(DateTime?),
                RegistredAt = TimeZoneInfo.ConvertTimeFromUtc(p.RegistredAt.UtcDateTime, tz),
            }));

            var usersModel = new IndexViewPageModel<UserModel>
            {
                PageViewModel = new PageViewModel(count, pageIndex, pageSize),
                Items = list,
                SerachString = searchString,
            };

            return View(usersModel);
        }

        [Authorize]
        [HttpPost]
        public async Task<IActionResult> ChangeUserBanState(bool check, int userId)
        {
            var user = await _userRepository.GetAsync(userId);
            if (check)
            {
                user.IsBanned = true;
                user.BanStartedAt = DateTime.UtcNow;
            } else
            {
                user.IsBanned = false;
                user.BanFineshedAt = DateTime.UtcNow;
            }

            await _userRepository.Update(user);

            return RedirectToAction("Index", "User");
        }

        [Authorize]
        [HttpPost]
        public async Task<IActionResult> EditScore(int id, UserScoreModel scoreModel)
        {
            var user = await _userRepository.GetAsync(id);

            if (scoreModel.ScoreDev > 0)
            {
                await _userScoreRepository.AddAsync(new UserTransaction
                {
                    Score = scoreModel.ScoreDev,
                    UserId = id,
                    Type = TransactionType.AdminPlus,
                    CreatedAt = DateTime.UtcNow
                });

                //var transactions = await _userScoreRepository.GetAllAsync(user.Id);
                //var sum = transactions.Sum(p => p.Score);
                user.Balance += scoreModel.ScoreDev;// sum;

                await _userRepository.Update(user);
            }

            return RedirectToAction("Index", "User", new { pageIndex = scoreModel.PageIndex, searchString = scoreModel.SearchString });
        }


        [Authorize]
        [HttpPost]
        public async Task<IActionResult> RemoveScore(int id, UserScoreModel scoreModel)
        {
            var user = await _userRepository.GetAsync(id);

            if (user.Balance >= scoreModel.Score)
            {
                if (scoreModel.ScoreDev > 0)
                {
                    await _userScoreRepository.AddAsync(new UserTransaction
                    {
                        Score = -scoreModel.ScoreDev,
                        UserId = id,
                        Type = TransactionType.AdminMinus,
                        CreatedAt = DateTime.UtcNow
                    });

                    //var transactions = await _userScoreRepository.GetAllAsync(user.Id);
                    //var sum = transactions.Sum(p => p.Score);
                    user.Balance -= scoreModel.ScoreDev;// sum;
                }

                await _userRepository.Update(user);
            }
            return RedirectToAction("Index", "User", new { pageIndex = scoreModel.PageIndex, searchString = scoreModel.SearchString });
        }

        [Authorize]
        public async Task<IActionResult> EditScore(int id, int pageIndex, string searchString)
        {
            var user = await _userRepository.GetAsync(id);
            var transactions = await _userScoreRepository.GetAllAsync(user.Id);
            var sum = transactions.Sum(p => p.Score);
            return View(new UserScoreModel
            {
                Score = sum,
                Id = id,
                PageIndex = pageIndex,
                SearchString = searchString,
                UserName = $"ID={user.Id} {user.Name} {user.Surname}"
            });
        }

        [Authorize]
        public async Task<IActionResult> ShowTransactions(int id)
        {
            var user = await _userRepository.GetAsync(id);
            var transactions = await _userScoreRepository.GetAllAsync(user.Id);

            var transactionsVM = new List<UserTransactionViewModel>();
            transactions.ForEach((obj) =>
            {
                transactionsVM.Add(new UserTransactionViewModel
                {
                    CreatedAt = obj.CreatedAt,
                    Id = obj.Id,
                    Type = GetString(obj.Type),
                    Score = obj.Score
                });

            });


            return View(transactionsVM);
        }

        private string GetString(TransactionType type)
        {
            switch (type)
            {
                case TransactionType.AdminMinus:
                return "Админ убрал";
                case TransactionType.AdminPlus:
                    return "Админ добавил";
                case TransactionType.GoodBuy:
                    return "Товар купили";
                case TransactionType.GoodReturn:
                    return "Товар вернули";
                case TransactionType.Survey:
                    return "Пройден опрос";
                default:
                    break;
            }
            return "неизвестно";
        }

        [Authorize]
        public async Task<IActionResult> Show(int id)
        {
            var user = await _userRepository.GetAsync(id);
            var allUserTransactions = await _userScoreRepository.GetAllAsync(id);
            var allOrderOfUser = await _orderRepository.GetListAsync(p => p.UserId == id);
            var allBalances = allUserTransactions.Sum(p => p.Score) - allOrderOfUser.Sum(p => p.Good.Cost);


            //return View(user);
            return View(new UserScoreModel { Score = allBalances });
        }
    }
}
