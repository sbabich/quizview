using System;
using System.Threading.Tasks;
using AndroidNotificationQuiz.Admin.Utils;
using AndroidNotificationQuiz.Admin.ViewModels;
using AndroidNotificationQuiz.DomainLayer.Interfaces;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;

// For more information on enabling MVC for empty projects, visit https://go.microsoft.com/fwlink/?LinkID=397860

namespace AndroidNotificationQuiz.Admin.Controllers
{
    public class HomeController : Controller
    {
        private readonly IAdminRepository _adminRepository;

        public HomeController(IAdminRepository adminRepository)
        {
            _adminRepository = adminRepository;
        }

        [Authorize]
        public IActionResult Index()
        {
            return View();
        }

        [Authorize]
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> CreateAdmin(CreateAdminModel model)
        {
            if (ModelState.IsValid)
            {
                var name = User.Identity.Name;
                var loggedUser = await _adminRepository.GetByEmailAsync(name);

                var user = await _adminRepository.GetByEmailAsync(model.Email);
                if (user == null)
                {
                    var pwdslt = Hash.Create(model.Password);
                    await _adminRepository.AddAsync(new DomainLayer.Entities.Admin
                    {
                        Email = model.Email,
                        PwdSalt = pwdslt,
                        CreatedAt = DateTime.UtcNow,
                        OwnerId = loggedUser?.Id
                    });

                    return RedirectToAction("Index", "Home");
                }
            }

            return View(model);
        }

        [HttpGet]
        [Authorize]
        public IActionResult CreateAdmin()
        {
            return View();
        }
    }
}