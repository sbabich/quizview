using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Threading.Tasks;
using AndroidNotificationQuiz.Admin.ViewModels;
using AndroidNotificationQuiz.DomainLayer.Entities;
using AndroidNotificationQuiz.DomainLayer.Interfaces;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Hosting;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using TimeZoneConverter;

namespace AndroidNotificationQuiz.Admin.Controllers
{
    public class ShopController : Controller
    {
        private readonly IPromoCategoryRepository _promoCategoryRepository;
        private readonly IPromoItemsRepository _promoItemsRepository;
        private readonly ICategoryRepository _categoryRepository;
        private readonly IGoodsRepository _goodsRepository;
        private readonly IAdminRepository _adminRepository;
        private readonly IOrderRepository _orderRepository;
        private readonly IUserRepository _userRepository;
        private readonly IUserScoreRepository _userScoreRepository;
        private readonly IHostingEnvironment _env;

        public ShopController(
            ICategoryRepository categoryRepository, 
            IGoodsRepository goodsRepository,
            IAdminRepository adminRepository,
            IOrderRepository orderRepository,
            IUserRepository userRepository,
            IUserScoreRepository userScoreRepository,
            IHostingEnvironment env,
            IPromoCategoryRepository promoCategoryRepository,
            IPromoItemsRepository promoItemsRepository)
        {
            _categoryRepository = categoryRepository;
            _goodsRepository = goodsRepository;
            _adminRepository = adminRepository;
            _orderRepository = orderRepository;
            _userRepository = userRepository;
            _userScoreRepository = userScoreRepository;
            _env = env;
            _promoCategoryRepository = promoCategoryRepository;
            _promoItemsRepository = promoItemsRepository;
        }

        [Authorize]
        public IActionResult Index()
        {
            return View();
        }

        [Authorize]
        public async Task<IActionResult> GoodIndex(int pageIndex)
        {
            if (pageIndex == 0)
            {
                pageIndex = 1;
            }

            int pageSize = 3;   // количество элементов на странице
            var cnt = await _goodsRepository.CountAsync(null);
            var items = await _goodsRepository.GetListAsync((pageIndex - 1) * pageSize, pageSize);

            var pageViewModel = new PageViewModel(cnt, pageIndex, pageSize);
            var goodsModel = new List<GoodModel>();
            items.ForEach(p => goodsModel.Add(new GoodModel
            {
                Id = p.Id,
                Title = p.Title,
                Cost = p.Cost,
                RealCost = p.RealCost,
                Description = p.Description,
                ImagePath = p.ImagePath,
                IsAvailable = _goodsRepository.IsAvailable(p).Result
            }));
            var indexGoodModel = new IndexGoodModel()
            {
                Goods = goodsModel,
                PageViewModel = pageViewModel
            };
            return View(indexGoodModel);
        }

        [HttpGet]
        [Authorize]
        public async Task<IActionResult> EditPromoItems(int id, int pageIndex = 1)
        {
            if (pageIndex <= 0)
            {
                pageIndex = 1;
            }

            var category = await _promoCategoryRepository.GetAsync(id);

            int pageSize = 20;   // количество элементов на странице
            var cnt = await _promoItemsRepository.CountAsync(o => o.PromoCategoryId == id);
            var items = await _promoItemsRepository.GetListAsync((pageIndex - 1) * pageSize, pageSize, id);

            PageViewModel pageViewModel = new PageViewModel(cnt, pageIndex, pageSize);
            var goodsModel = new List<PromoItemModel>();
            items.ForEach(p => goodsModel.Add(new PromoItemModel
            {
                Id = p.Id,
                Code = p.Code,
                IsUsed = p.IsUsed,
            }));
            var indexPromoItemModel = new IndexPromoItemModel()
            {
                PromoItems = goodsModel,
                PageViewModel = pageViewModel,
                PromoCategoryName = category.Name,
                PromoCategoryId = id,
            };
            return View(indexPromoItemModel);
        }

        [Authorize]
        public async Task<IActionResult> CategoryIndex()
        {
            var categories = await _categoryRepository.GetListAsync();

            var categoryItems = new List<CreateCategoryModel>();
            categories.OrderBy(p => p.Id).ToList().ForEach(p => categoryItems.Add(new CreateCategoryModel
            {
                Id = p.Id,
                Position = p.Position,
                Sort = p.Sort
            }));

            return View(categoryItems);
        }

        [Authorize]
        public async Task<IActionResult> PromoCategoryIndex()
        {
            var categories = await _promoCategoryRepository.GetListAsync();

            var categoryItems = new List<CreatePromoCategoryModel>();
            categories.OrderByDescending(o => o.Sort).ThenBy(p => p.Id).ToList().ForEach(p => categoryItems.Add(new CreatePromoCategoryModel
            {
                Id = p.Id,
                Name = p.Name,
                Sort = p.Sort
            }));

            return View(categoryItems);
        }

        [HttpGet]
        [Authorize]
        public async Task<IActionResult> RemovePromoItem(int id, int pageIndex = 1)
        {
            var promoItem = await _promoItemsRepository.GetAsync(id);
            var catId = promoItem.PromoCategoryId;

            await _promoItemsRepository.Delete(promoItem);

            return RedirectToAction("EditPromoItems", new { id = catId, pageIndex = pageIndex });
        }

        [HttpGet]
        [Authorize]
        public async Task<IActionResult> AddPromoItems(int id)
        {
            var category = await _promoCategoryRepository.GetAsync(id);

            var model = new CreatePromoItemsModel
            {
                PromoCategoryId = id,
                PromoCategoryName = category.Name,
            };
            return View(model);
        }

        [HttpPost]
        [Authorize]
        public async Task<IActionResult> AddPromoItems(CreatePromoItemsModel model)
        {
            if (ModelState.IsValid)
            {
                var category = await _promoCategoryRepository.GetAsync(model.PromoCategoryId);

                var lines = model.Codes.Split(new string[] { Environment.NewLine }, StringSplitOptions.RemoveEmptyEntries);
                foreach (var code in lines)
                {
                    await _promoItemsRepository.AddAsync(new PromoItem
                    {
                        Category = category,
                        Code = code,
                        CreatedAt = DateTime.UtcNow,
                    });
                }

            }
            
            return RedirectToAction("EditPromoItems", new { id = model.PromoCategoryId });
        }

        async Task<List<SelectListItem>> CreateCategoryItems()
        {
            var categories = await _categoryRepository.GetListAsync();
            var categoriesItems = new List<SelectListItem>();
            categories.ForEach(p => categoriesItems.Add(
                    new SelectListItem
                    {
                        Text = p.Position,
                        Value = p.Id.ToString()
                    }
                ));

            return categoriesItems;
        }

        [HttpGet]
        [Authorize]
        public async Task<IActionResult> Create()
        {
            var items = await CreateCategoryItems();
            var model = new CreateGoodModel { Categories = items };
            return View(model);
        }

        [HttpPost]
        [Authorize]
        public async Task<IActionResult> Create(CreateGoodModel createGoodModel)
        {
            if (ModelState.IsValid)
            {
                var name = User.Identity.Name;
                var loggedUser = await _adminRepository.GetByEmailAsync(name);
                string pathToPhoto = null;
                if (createGoodModel.UploadedFile != null)
                    pathToPhoto = await SaveFile(createGoodModel.UploadedFile);
                else
                    ModelState.AddModelError("UploadedFile", "Не указан файл");

                if (ModelState.IsValid)
                {
                    await _goodsRepository.AddAsync(new DomainLayer.Entities.Good
                    {
                        Title = createGoodModel.Title,
                        AdminId = loggedUser.Id,
                        CreatedAt = DateTime.UtcNow,
                        CategoryId = createGoodModel.CategoryId,
                        Cost = createGoodModel.Cost,
                        RealCost = createGoodModel.RealCost,
                        ImagePath = pathToPhoto,
                        Description = createGoodModel.Description
                    });
                    return RedirectToAction("GoodIndex", "Shop");
                }

                var items = await CreateCategoryItems();
                createGoodModel.Categories = items;
            }

            return View(createGoodModel);
        }

        [HttpGet]
        [Authorize]
        public async Task<IActionResult> Edit(int id)
        {
            var good = await _goodsRepository.GetAsync(id);

            var categories = await _categoryRepository.GetListAsync();
            var categoriesItem = new List<SelectListItem>();
            categories.ForEach(p => categoriesItem.Add(
                    new SelectListItem
                    {
                        Text = p.Position,
                        Value = p.Id.ToString()
                    }
                ));

            var promoCategories = await _promoCategoryRepository.GetListAsync();
            var promoCategoriesItem = new List<SelectListItem>();
            promoCategories.ForEach(p => promoCategoriesItem.Add(
                    new SelectListItem
                    {
                        Text = p.Name,
                        Value = p.Id.ToString()
                    }
                ));

            promoCategoriesItem.Insert(0, new SelectListItem
            {
                Text = "",
                Value = "0",
            });

            var model = new CreateGoodModel { 
                Categories = categoriesItem,
                CategoryId = good.CategoryId,
                PromoCategories = promoCategoriesItem,
                PromoCategoryId = good.PromoCategoryId.HasValue ? good.PromoCategoryId.Value : 0,
                Cost = good.Cost,
                RealCost = good.RealCost,
                Description = good.Description,
                Title = good.Title,
                DBPathFile = good.ImagePath,
                Id = good.Id,
                IsAutoGetting = good.IsAutoIssuance,
            };

            return View(model);
        }

        [HttpPost]
        [Authorize]
        public async Task<IActionResult> Edit(CreateGoodModel createGoodModel)
        {
            if (ModelState.IsValid)
            {
                //var good = await _goodsRepository.GetAsync(createGoodModel.Id);
                var name = User.Identity.Name;
                var loggedUser = await _adminRepository.GetByEmailAsync(name);
                string pathToPhoto = null;
                if (createGoodModel.UploadedFile != null)
                    pathToPhoto = await SaveFile(createGoodModel.UploadedFile);

                await _goodsRepository.UpdateAsync(new Good
                {
                    Id = createGoodModel.Id,
                    Title = createGoodModel.Title,
                    AdminId = loggedUser.Id,
                    CreatedAt = DateTime.UtcNow,
                    CategoryId = createGoodModel.CategoryId,
                    Cost = createGoodModel.Cost,
                    RealCost = createGoodModel.RealCost,
                    ImagePath = pathToPhoto ?? createGoodModel.DBPathFile,
                    Description = createGoodModel.Description,
                    PromoCategoryId = createGoodModel.PromoCategoryId,
                    IsAutoIssuance = createGoodModel.IsAutoGetting,
                });

                return RedirectToAction("GoodIndex", "Shop");
            }

            return View(createGoodModel);
        }


        private async Task<string> SaveFile(IFormFile file)
        {

            var date = DateTime.UtcNow;
            var pathToGoods = "goods/";
            var uploads = Path.Combine(_env.WebRootPath, "Shop/" + pathToGoods);
            //var uploads = _env.WebRootPath;
            if (file.Length > 0)
            {
                if (!Directory.Exists(uploads))
                    Directory.CreateDirectory(uploads);
                var newFileName = Guid.NewGuid().ToString();
                var saveDbPath = Path.Combine(pathToGoods, $"{newFileName}.png");
                var filePath = Path.Combine(uploads , $"{newFileName}.png");

                using (var fileStream = new FileStream(filePath, FileMode.Create))
                {
                    await file.CopyToAsync(fileStream);
                    fileStream.Flush();
                }

                return saveDbPath;
            }

            return null;
        }


        [HttpGet]
        [Authorize]
        public IActionResult CreateCategory()
        {
            return View();
        }

        [HttpPost]
        [Authorize]
        public async Task<IActionResult> CreateCategory(CreateCategoryModel createCategoryModel)
        {
            if (ModelState.IsValid)
            {
                var name = User.Identity.Name;
                var loggedUser = await _adminRepository.GetByEmailAsync(name);
                await _categoryRepository.AddAsync(new DomainLayer.Entities.Category
                {
                    Position = createCategoryModel.Position,
                    CreatedAt = DateTime.UtcNow,
                    AdminId = loggedUser.Id,
                    Sort = createCategoryModel.Sort
                });

                return RedirectToAction("CategoryIndex", "Shop");
            }

            return View(createCategoryModel);
        }

        [HttpGet]
        [Authorize]
        public IActionResult CreatePromoCategory()
        {
            return View();
        }

        [HttpPost]
        [Authorize]
        public async Task<IActionResult> CreatePromoCategory(CreatePromoCategoryModel createCategoryModel)
        {
            if (ModelState.IsValid)
            {
                var name = User.Identity.Name;
                var loggedUser = await _adminRepository.GetByEmailAsync(name);
                await _promoCategoryRepository.AddAsync(new PromoCategory
                {
                    Name = createCategoryModel.Name,
                    CreatedAt = DateTime.UtcNow,
                    Sort = createCategoryModel.Sort
                });

                return RedirectToAction("PromoCategoryIndex", "Shop");
            }

            return View(createCategoryModel);
        }

        [HttpGet]
        [Authorize]
        public async Task<IActionResult> EditCategory(int id)
        {
            var category = await _categoryRepository.GetAsync(id);

            var categoryModel = new CreateCategoryModel
            {
                Id = category.Id,
                Position = category.Position,
                Sort = category.Sort,
            };

            return View(categoryModel);
        }

        [HttpPost]
        [Authorize]
        public async Task<IActionResult> EditCategory(CreateCategoryModel createCategoryModel)
        {
            if (ModelState.IsValid)
            {
                var name = User.Identity.Name;
                var category = await _categoryRepository.GetAsync(createCategoryModel.Id);
                category.Position = createCategoryModel.Position;
                category.Sort = createCategoryModel.Sort;
                await _categoryRepository.UpdateAsync(category);

                return RedirectToAction("CategoryIndex", "Shop");
            }

            return View(createCategoryModel);
        }

        [HttpGet]
        [Authorize]
        public async Task<IActionResult> EditPromoCategory(int id)
        {
            var category = await _promoCategoryRepository.GetAsync(id);

            var categoryModel = new CreatePromoCategoryModel
            {
                Id = category.Id,
                Name = category.Name,
                Sort = category.Sort,
            };

            return View(categoryModel);
        }

        [HttpGet]
        [Authorize]
        public async Task<IActionResult> RemovePromoCategory(int id)
        {
            var category = await _promoCategoryRepository.GetAsync(id);
            if (category != null)
                await _promoCategoryRepository.RemoveAsync(category);

            return RedirectToAction("PromoCategoryIndex");
        }

        [HttpPost]
        [Authorize]
        public async Task<IActionResult> EditPromoCategory(CreatePromoCategoryModel createCategoryModel)
        {
            if (ModelState.IsValid)
            {
                var name = User.Identity.Name;
                var category = await _promoCategoryRepository.GetAsync(createCategoryModel.Id);
                category.Name = createCategoryModel.Name;
                category.Sort = createCategoryModel.Sort;
                await _promoCategoryRepository.UpdateAsync(category);

                return RedirectToAction("PromoCategoryIndex", "Shop");
            }

            return View(createCategoryModel);
        }


        [HttpGet]
        [Authorize]
        public async Task<IActionResult> Delete(int id)
        {
            var item = await _goodsRepository.GetAsync(id);

            if (!string.IsNullOrEmpty(item.ImagePath))
            {
                var uploads = Path.Combine(_env.WebRootPath, "Shop");
                var filePath = Path.Combine(uploads, item.ImagePath);
                if (System.IO.File.Exists(filePath))
                {
                    // If file found, delete it    
                    System.IO.File.Delete(filePath);
                }
            }

            await _goodsRepository.Delete(item);

            return RedirectToAction("GoodIndex", "Shop");
        }

        [HttpGet]
        [Authorize]
        public async Task<IActionResult> Completed(int id)
        {
            var item = await _orderRepository.GetAsync(id);
            item.Completed = true;
            item.CompletedAt = DateTime.UtcNow;

            await _orderRepository.UpdateAsync(item);

            return RedirectToAction("Index", "Order" );
        }

        [HttpGet]
        [Authorize]
        public async Task<IActionResult> ReturnScore(int id)
        {
            var item = await _orderRepository.GetAsync(id);
           
            var user = await _userRepository.GetAsync(item.UserId);

            //return transaction 
            await _userScoreRepository.AddAsync(new UserTransaction
            {
                Score = item.Good.Cost,
                UserId = item.UserId,
                CreatedAt = DateTime.UtcNow,
                Type = TransactionType.GoodReturn
            });

            //var transactions = await _userScoreRepository.GetAllAsync(user.Id);
            //var sum = transactions.Sum(p => p.Score);
            user.Balance += item.Good.Cost;

            await _userRepository.Update(user);
            await _orderRepository.Delete(item);

            return RedirectToAction("Index", "Order");
        }
    }
}
