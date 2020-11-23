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

// For more information on enabling MVC for empty projects, visit https://go.microsoft.com/fwlink/?LinkID=397860

namespace AndroidNotificationQuiz.Admin.Controllers
{
    public class SurveyController : Controller
    {
        private readonly ISurveyRepository _repository;

        public SurveyController(ISurveyRepository repository)
        {
            _repository = repository;
        }

        [Authorize]
        public async Task<IActionResult> Index()
        {
            var count = await _repository.CountAsync(null);
            var items = await _repository.GetListAsync(null, 0, count);

            var tz = TZConvert.GetTimeZoneInfo("Russian Standard Time");

            var surveysModel = new List<SurveyModel>();
            items.ForEach(p => surveysModel.Add(new SurveyModel
            {
                Id = p.Id,
                Title = p.Title,
                CreatedAt = TimeZoneInfo.ConvertTimeFromUtc(p.CreatedAt.UtcDateTime, tz),
                IsActive = p.IsActive
            }));

            return View(surveysModel);
        }

        [Authorize]
        [HttpPost]
        public async Task<IActionResult> Create(CreateSurveyModel model)
        {
            var id = 0;
            if (ModelState.IsValid)
            {
                var dateTime = DateTime.UtcNow;
                var dateOffset = dateTime.AddMinutes(model.NeedToBeFinishedFor.TotalMinutes);
                id = await _repository.AddAsync(new Survey
                {
                    Title = model.Title,
                    Text = model.Text,
                    CreatedAt = dateTime,
                    Limit = model.Limit,
                    NeedToBeFinishedFor = dateOffset,
                    NeedToBeFinishedForStart = dateTime,
                    Score = model.Score,
                    IsActive = false
                });


                return RedirectToAction("CreateAdditionalInfo", "Survey", new {surveyId = id});
            }


            return View(model);
        }

        [HttpGet]
        [Authorize]
        public IActionResult Create()
        {
            return View();
        }

        [Authorize]
        [HttpPost]
        public async Task<IActionResult> CreateAdditionalInfo(CreateAdditionalInfo model, int surveyId)
        {
            if (ModelState.IsValid)
            {
                await _repository.AddAdditionalInfoAsync(new AdditionalInfo
                {
                    LinkToSite = model.LinkToSite,
                    LinkToVideo = model.LinkToVideo,
                    SurveyId = surveyId
                });

                return RedirectToAction("CreateQuestion", "Survey", new {surveyid = surveyId});
            }

            return View(model);
        }


        [HttpGet]
        [Authorize]
        public IActionResult CreateAdditionalInfo(int surveyId)
        {
            var model = new CreateAdditionalInfo
            {
                SurveyId = surveyId
            };

            return View(model);
        }

        [Authorize]
        [HttpPost]
        public async Task<IActionResult> CreateQuestion(CreateQuestionModel model, int surveyId, int complete)
        {
            if (ModelState.IsValid)
            {
                await _repository.AddQuestionaryAsync(new Questionary
                {
                    Question = model.Question,
                    RightAnswer = model.RightAnswer,
                    SurveyId = surveyId
                });

                if (complete == 1)
                    return RedirectToAction("Edit", "Survey", new {surveyid = surveyId});
                return RedirectToAction("CreateQuestion", "Survey", new {surveyid = surveyId});
            }

            return View(model);
        }

        [HttpGet]
        [Authorize]
        public IActionResult CreateQuestion(int surveyid)
        {
            var model = new CreateQuestionModel
            {
                SurveyId = surveyid
            };
            return View(model);
        }

        [Authorize]
        [HttpDelete]
        public async Task<IActionResult> Delete(CreateSurveyModel model)
        {
            if (ModelState.IsValid)
            {
                await _repository.AddAsync(new Survey
                {
                    Title = model.Title,
                    Text = model.Text,
                    CreatedAt = DateTime.UtcNow
                });

                return RedirectToAction("Index", "Survey");
            }

            return View(model);
        }

        [HttpGet]
        [Authorize]
        public async Task<IActionResult> Edit(int surveyId)
        {
            var survey = await _repository.GetAsync(surveyId);

            var createQuestions = new List<CreateQuestionModel>();
            survey.Survey.Questionary.ToList().ForEach(
                arr => createQuestions.Add(new CreateQuestionModel
                {
                    Id = arr.Id,
                    Question = arr.Question,
                    RightAnswer = arr.RightAnswer,
                    SurveyId = surveyId
                })
            );
            var offset = survey.Survey.NeedToBeFinishedFor - survey.Survey.NeedToBeFinishedForStart;
            var createSurveyModel = new CreateSurveyModel
            {
                Limit = survey.Survey.Limit,
                Id = survey.Survey.Id,
                Title = survey.Survey.Title,
                Text = survey.Survey.Text,
                NeedToBeFinishedFor = offset,
                CreatedAt = survey.Survey.CreatedAt.LocalDateTime,
                Score = survey.Survey.Score,
                Questionaries = createQuestions,
                AdditionalInfoId = survey.Survey.AdditionalInfo?.Id,
                NumberOfUser = survey.Survey.NumberOfUser,
                IsActive = survey.Survey.IsActive
            };

            return View(createSurveyModel);
        }

        [Authorize]
        [HttpPost]
        public async Task<IActionResult> Edit(CreateSurveyModel model, int surveyId)
        {
            if (ModelState.IsValid)
            {
                //var surveyItem = await _repository.GetAsync(surveyId);
                var dateTime = DateTime.UtcNow;
                var dateOffset = dateTime.AddMinutes(model.NeedToBeFinishedFor.TotalMinutes);
                await _repository.Update(new Survey
                {
                    Id = surveyId,
                    Title = model.Title,
                    Text = model.Text,
                    Limit = model.Limit,
                    CreatedAt = model.CreatedAt,
                    NeedToBeFinishedFor = dateOffset,
                    NeedToBeFinishedForStart = dateTime,
                    Score = model.Score,
                    IsActive = model.IsActive,
                    NumberOfUser = model.NumberOfUser
                });

                return RedirectToAction("Index", "Survey");
            }

            return View(model);
        }

        [Authorize]
        [HttpPost]
        public async Task<IActionResult> EditQuestion(CreateQuestionModel model, int questionId, int surveyId)
        {
            if (!string.IsNullOrEmpty(model.Question) || !string.IsNullOrEmpty(model.RightAnswer))
            {
                await _repository.UpdateQuestionary(new Questionary
                {
                    Id = questionId,
                    Question = model.Question,
                    RightAnswer = model.RightAnswer,
                    SurveyId = surveyId
                });

                return RedirectToAction("Edit", "Survey", new {surveyId});
            }

            return View(model);
        }

        [HttpGet]
        [Authorize]
        public async Task<IActionResult> EditQuestion(int id, int surveyId)
        {
            var survey = await _repository.GetAsync(surveyId);

            var question = survey.Survey.Questionary.FirstOrDefault(p => p.Id == id);
            var model = new CreateQuestionModel
            {
                Id = question.Id,
                Question = question.Question,
                RightAnswer = question.RightAnswer,
                SurveyId = surveyId
            };
            return View(model);
        }

        [Authorize]
        [HttpPost]
        public async Task<IActionResult> ChangeSurveyState(bool check, int surveyId)
        {
            var survey = await _repository.GetAsync(surveyId);
            if (check)
                survey.Survey.IsActive = true;
            else
                survey.Survey.IsActive = false;

            await _repository.Update(survey.Survey);

            return RedirectToAction("Index", "Survey");
        }

        [Authorize]
        [HttpPost]
        public async Task<IActionResult> EditAdditionalInfo(CreateAdditionalInfo model, int addinfoid, int surveyId)
        {
            await _repository.UpdateAdditionalInfo(new AdditionalInfo
            {
                LinkToSite = model.LinkToSite,
                LinkToVideo = model.LinkToVideo,
                SurveyId = surveyId,
                Id = addinfoid
            });

            return RedirectToAction("Edit", "Survey", new {surveyId});
        }

        [HttpGet]
        [Authorize]
        public async Task<IActionResult> EditAdditionalInfo(int addinfoid, int surveyId)
        {
            var survey = await _repository.GetAsync(surveyId);

            var additionalInfo = survey.Survey.AdditionalInfo;
            var model = new CreateAdditionalInfo();
            if (additionalInfo != null)
            {
                model.Id = addinfoid;
                model.LinkToSite = additionalInfo.LinkToSite;
                model.LinkToVideo = additionalInfo.LinkToVideo;
                model.SurveyId = surveyId;
            }

            return View(model);
        }
    }
}