using System;
using System.Collections.Generic;
using System.Net.Http;
using System.Text;
using System.Threading.Tasks;
using AndroidNotificationQuiz.Admin.ViewModels;
using AndroidNotificationQuiz.Api.Dto.Push;
using AndroidNotificationQuiz.DomainLayer.Interfaces;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using Newtonsoft.Json;

namespace AndroidNotificationQuiz.Admin.Controllers
{
    public class PushController : Controller
    {
        private readonly IAdminRepository _adminRepository;
        private readonly ISurveyRepository _surveyRepository;
        private readonly IPushRepository _pushRepository;

        public PushController(IAdminRepository adminRepository, ISurveyRepository surveyRepository,
            IPushRepository pushRepository)
        {
            _adminRepository = adminRepository;
            _surveyRepository = surveyRepository;
            _pushRepository = pushRepository;
        }


        [HttpGet]
        public async Task<IActionResult> Create()
        {
            var count = await _surveyRepository.CountAsync(p => p.IsActive, p => p.Push);
            var items = await _surveyRepository.GetListAsync(null, 0, count, p => p.IsActive, p => p.Push);

            var surveys = new List<SelectListItem>();
            items.ForEach(p => surveys.Add(
                new SelectListItem
                {
                    Text = p.Title,
                    Value = p.Id.ToString()
                }
            ));


            var pushModel = new PushModel {Surveys = surveys};
            return View(pushModel);
        }

        [HttpPost]
        public async Task<IActionResult> Create(PushModel model)
        {
            if (ModelState.IsValid)
            {
                var name = User.Identity.Name;
                var loggedUser = await _adminRepository.GetByEmailAsync(name);


                await SendPushToAppCenter(model.Title, model.Content, model.SurveyId.ToString());

                await _pushRepository.AddAsync(
                    new DomainLayer.Entities.Push
                    {
                        AdminId = loggedUser.Id,
                        Content = model.Content,
                        Title = model.Title,
                        SurveyId = model.SurveyId,
                        CreatedAt = DateTime.UtcNow
                    }
                );

                return RedirectToAction("Index", "Home");
            }

            return View(model);
        }

        private async Task SendPushToAppCenter(string title, string content, string surveyid)
        {
            var notification = new NotificationPayload
            {
                NotificationContent = new NotificationContent
                {
                    Body = content,
                    Name = title,
                    Title = title,
                    CustomData = new CustomData
                    {
                        QuestionaryId = surveyid
                    }
                }
            };

            using (var client = new HttpClient { Timeout = TimeSpan.FromSeconds(30) })
            {
                client.DefaultRequestHeaders.Add("X-API-Token", "<X-API-Token>");

                var builder = new UriBuilder(new Uri("https://appcenter.ms/api/v0.1/apps/***app/Notifications-android/push/notifications"));

                HttpRequestMessage request = new HttpRequestMessage(HttpMethod.Post, builder.Uri)
                {
                    Content = new StringContent(JsonConvert.SerializeObject(notification), Encoding.UTF8, "application/json")
                };
                var msg = await client.SendAsync(request);

                Console.WriteLine(msg);
            }
        }
    }
}