using System;
using System.Collections.Generic;
using System.Security.Claims;
using System.Threading.Tasks;
using AndroidNotificationQuiz.Admin.Utils;
using AndroidNotificationQuiz.Admin.ViewModels;
using AndroidNotificationQuiz.DomainLayer.Interfaces;
using Microsoft.AspNetCore.Authentication;
using Microsoft.AspNetCore.Authentication.Cookies;
using Microsoft.AspNetCore.Mvc;

// For more information on enabling MVC for empty projects, visit https://go.microsoft.com/fwlink/?LinkID=397860

namespace AndroidNotificationQuiz.Admin.Controllers
{
    public class AccountController : Controller
    {
        private readonly IAdminRepository _adminRepository;

        public AccountController(IAdminRepository adminRepository)
        {
            _adminRepository = adminRepository;
        }

        [HttpGet]
        public IActionResult Login()
        {
            return View();
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Login(LoginModel model)
        {
            if (ModelState.IsValid)
            {
                var pwdslt = Hash.Create(model.Password);
                var admin = await _adminRepository.GetByEmailAsync(model.Email, pwdslt);
                if (admin != null)
                {
                    await Authenticate(model.Email); // аутентификация

                    return RedirectToAction("Index", "Home");
                }

                ModelState.AddModelError("", "Некорректные логин и(или) пароль");
            }

            return View(model);
        }

        [HttpGet]
        public IActionResult Register()
        {
            return View();
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Register(RegisterModel model, int ownerId)
        {
            if (ModelState.IsValid)
            {
                var admin = await _adminRepository.GetByEmailAsync(model.Email);
                if (admin == null)
                {
                    var pwdslt = Hash.Create(model.Password);

                    await _adminRepository.AddAsync(new DomainLayer.Entities.Admin
                    {
                        Email = model.Email,
                        PwdSalt = pwdslt,
                        CreatedAt = DateTime.UtcNow,
                        OwnerId = ownerId
                    });

                    await Authenticate(model.Email); // аутентификация

                    return RedirectToAction("Index", "Home");
                }

                ModelState.AddModelError("", "Некорректные логин и(или) пароль");
            }

            return View(model);
        }

        private async Task Authenticate(string userName)
        {
            var claims = new List<Claim>
            {
                new Claim(ClaimsIdentity.DefaultNameClaimType, userName)
            };
            var id = new ClaimsIdentity(claims, CookieAuthenticationDefaults.AuthenticationScheme);
            await HttpContext.SignInAsync(CookieAuthenticationDefaults.AuthenticationScheme, new ClaimsPrincipal(id));
        }

        public async Task<IActionResult> Logout()
        {
            await HttpContext.SignOutAsync(CookieAuthenticationDefaults.AuthenticationScheme);
            return RedirectToAction("Login", "Account");
        }
    }
}