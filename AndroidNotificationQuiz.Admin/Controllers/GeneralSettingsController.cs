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
    [Route("/settings")]
    public class GeneralSettingsController : Controller
    {
        private readonly IGeneralSettingsRepository _generalSettingsRepository;

        public GeneralSettingsController(IGeneralSettingsRepository generalSettingsRepository)
        {
            _generalSettingsRepository = generalSettingsRepository;
        }

        [HttpGet]
        [Authorize]
        public async Task<IActionResult> Index()
        {
            var model = new GeneralSettingsModel
            {
                VideoViewPercentage = await _generalSettingsRepository.GetVideoViewPercentage()
            };

            return View(model);
        }

        [HttpPost]
        [Authorize]
        public async Task<IActionResult> Save(GeneralSettingsModel model)
        {
            if (model.VideoViewPercentage >= 0 && model.VideoViewPercentage <= 100)
            {
                await _generalSettingsRepository.SetVideoViewPercentage(model.VideoViewPercentage);
            }

            return RedirectToAction("Index");
        }
    }
}
