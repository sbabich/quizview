using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Threading.Tasks;
using AndroidNotificationQuiz.Api.Dto.Profile;
using AndroidNotificationQuiz.Api.Dto.Survey;
using AndroidNotificationQuiz.Api.ExceptionFilter;
using AndroidNotificationQuiz.Api.Helpers;
using AndroidNotificationQuiz.Api.Middleware;
using AndroidNotificationQuiz.DomainLayer.Entities;
using AndroidNotificationQuiz.DomainLayer.Interfaces;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Caching.Memory;

namespace AndroidNotificationQuiz.Api.Controllers
{
    [ApiController]
    [Produces("application/json")]
    [Route("/survey")]
    public class SurveyController : BaseController
    {
        private readonly ISurveyRepository _surveyRepository;
        private readonly IUserQuestionAnswerRepository _userQuestionRepository;
        private readonly ISurveyUserRepository _surveyUserRepository;
        private readonly IUserRepository _userRepository;
        private readonly ILikeRepository _likeRepository;
        private readonly IUserScoreRepository _userScoreRepository;
        private readonly IOrderRepository _orderRepository;
        private readonly IVideoTimelineRepository _videoTimelineRepository;
        private readonly IGeneralSettingsRepository _generalSettingsRepository;

        public SurveyController(
            IVideoTimelineRepository videoTimelineRepository, 
            IUserRepository userRepository,
            ISurveyUserRepository surveyUserRepository,
            ISurveyRepository surveyRepository,
            IUserQuestionAnswerRepository userQuestionRepository,
            IUserScoreRepository userScoreRepository,
            ILikeRepository likeRepository,
            IOrderRepository orderRepository,
            IGeneralSettingsRepository generalSettingsRepository)
        {
            _videoTimelineRepository = videoTimelineRepository;
            _surveyRepository = surveyRepository;
            _userQuestionRepository = userQuestionRepository;
            _surveyUserRepository = surveyUserRepository;
            _userRepository = userRepository;
            _likeRepository = likeRepository;
            _userScoreRepository = userScoreRepository;
            _orderRepository = orderRepository;
            _generalSettingsRepository = generalSettingsRepository;
        }

        [Authorize]
        [EnableBodyRewind]
        [HttpPut("questionary/{qid}/answers/{userId}")]
        [ProducesResponseType(typeof(Dto.Survey.Questionary), (int) HttpStatusCode.OK)]
        [ProducesResponseType(typeof(ErrorResponse), (int) HttpStatusCode.NotFound)]
        [ProducesResponseType(typeof(ErrorResponse), (int) HttpStatusCode.NotAcceptable)]
        public async Task<ActionResult<Dto.Survey.Questionary>> AnswerQuestion([FromBody] AnswerRequest answerRequest,
            int id, int qid, int userId)
        {
            var item = await _surveyRepository.GetAsync(answerRequest.SurveyId);
            if (item == null)
                return NotFound();

            if (item.Survey.NeedToBeFinishedFor.ToUnixTimeMilliseconds() - item.Survey.NeedToBeFinishedForStart.ToUnixTimeMilliseconds() != 0 &&
                 item.Survey.NeedToBeFinishedFor.LocalDateTime < DateTime.Now )
                return ValidationProblem();

            if (item.Survey.Limit <= item.Survey.NumberOfUser)
                return ValidationProblem();

            var user = await _userRepository.GetAsync(userId);
            if (user.IsBanned)
                return Forbid();

            var questionary = item.Survey.Questionary.FirstOrDefault(q => q.Id == qid);
            if (questionary.RightAnswer.ToLower() == answerRequest.Answer.ToLower())
            {
                var surveyUserItem = await _surveyUserRepository.GetAsync(answerRequest.SurveyId, userId);

                if (surveyUserItem == null)
                {
                    await _surveyUserRepository.AddAsync(new SurveyUser
                    {
                        IsFinished = false,
                        IsAllAnswersCorrect = false,
                        StartDate = DateTime.UtcNow,
                        SurveyId = answerRequest.SurveyId,
                        UserId = userId
                    });
                }

                if (surveyUserItem != null && surveyUserItem.IsFinished)
                    return ValidationProblem();

                var listAnswersId =
                    await _userQuestionRepository.GetAsync(item.Survey.SurveyUser.First(p => p.UserId == userId).Id);
                var filteredAnswer = listAnswersId
                    .Where(p => p.QuestionaryID == qid && p.SurveyUserId == surveyUserItem.UserId).ToList();

                if (!filteredAnswer.Any())
                {
                    await _userQuestionRepository.AddAsync(new UserQuestionAnswer
                    {
                        QuestionaryID = qid,
                        Answer = answerRequest.Answer,
                        SurveyUserId = item.Survey.SurveyUser.FirstOrDefault(p => p.UserId == userId).Id
                    });
                }

                surveyUserItem = await _surveyUserRepository.GetAsync(answerRequest.SurveyId, userId);
                listAnswersId =
                    await _userQuestionRepository.GetAsync(item.Survey.SurveyUser.First(p => p.UserId == userId).Id);

                var allQuestionUser = item.Survey.Questionary.ToList();
                var allQuestionAnswered =
                    allQuestionUser.Select(p => p.Id).Except(listAnswersId.Select(x => x.QuestionaryID));
                if (!allQuestionAnswered.Any())
                {
                    surveyUserItem.FinishDate = DateTime.UtcNow;
                    surveyUserItem.IsAllAnswersCorrect = true;
                    surveyUserItem.IsFinished = true;

                    item.Survey.NumberOfUser = item.Survey.NumberOfUser + 1;
                    await _surveyRepository.Update(item.Survey);

                    var userScore = await _userScoreRepository.GetAsync(userId, answerRequest.SurveyId);
                    if (userScore == null)
                    {
                        await _userScoreRepository.AddAsync(new UserTransaction
                        {
                            Score = item.Survey.Score,
                            UserId = userId,
                            SurveyId = answerRequest.SurveyId,
                            CreatedAt = DateTime.UtcNow,
                            Type = TransactionType.Survey
                        });
                    }
                    else
                    {
                        userScore.Score = userScore.Score + item.Survey.Score;
                        await _userScoreRepository.Update(userScore);
                    }

                    //update user balance

                    /*var allUserTransactions = await _userScoreRepository.GetAllAsync(userId);
                    var allOrderOfUser = await _orderRepository.GetListAsync(p => p.UserId == userId);

                    //find latest user transaction

                    //var orderSum = allOrderOfUser.Where(p => !p.IsNotCalculated).Sum(p => p.Good.Cost);
                    var transactionSum = allUserTransactions.Sum(p => p.Score);

                    //if (transactionSum > orderSum)
                    //    user.Balance = transactionSum - orderSum;
                    //else 
                        
                        
                    user.Balance = transactionSum;*/

                    user.Balance += item.Survey.Score;

                    await _userRepository.Update(user);

                    await _surveyUserRepository.Update(surveyUserItem);
                }
            }

            var newQuestionary = new Dto.Survey.Questionary
            {
                Answer = string.Empty,
                Id = questionary.Id,
                Question = questionary.Question,
            };

            return newQuestionary;
        }

        [HttpGet("questionaries/{id}")]
        [EnableBodyRewind]
        [ProducesResponseType(typeof(SurveyDetailResponse), (int) HttpStatusCode.OK)]
        [ProducesResponseType(typeof(ErrorResponse), (int) HttpStatusCode.NotFound)]
        [ProducesResponseType(typeof(ErrorResponse), (int) HttpStatusCode.NotAcceptable)]
        public async Task<ActionResult<SurveyDetailResponse>> GetQuestionary(int id, string user_id)
        {
            var item = await _surveyRepository.GetAsync(id);

            //var au = Request.Headers.FirstOrDefault(o => o.Key == "Authorization");
            //var aus = au.Value.ToString().Replace("Bearer ", "");


            //var userId = user_id;// GetUserId();
            User user = null;
            if (!string.IsNullOrEmpty(user_id) && Int32.TryParse(user_id, out int _user_id))
            {
                user = await _userRepository.GetAsync(_user_id);
            }

            if (item == null)
                return NotFound();

            //var comments = new List<Comment>();
            //item?.Survey?.SurveyComment?.ToList().ForEach(
            //    c => comments.Add(
            //        new Comment
            //        {
            //            Id = c.Id,
            //            IsMine = c.User?.Email == GetUserId(),
            //            CommentAt = c.CreatedAt,
            //            Nick = c.User?.Nick,
            //            Text = c.Text
            //        })
            //);
            var questionaries = new List<Dto.Survey.Questionary>();
            //var answers = item.Survey.SurveyUser;
            List<UserQuestionAnswer> answers = null;
            if (user != null && user.SurveyUsers != null && user.SurveyUsers.FirstOrDefault(p => p.SurveyId == id) != null)
                answers = await _userQuestionRepository.GetAsync(user.SurveyUsers.FirstOrDefault(p => p.SurveyId == id).Id);

            item?.Survey?.Questionary?.ToList().ForEach(
                c => questionaries.Add(
                    new Dto.Survey.Questionary
                    {
                        Id = c.Id,
                        Question = c.Question,
                        Answer = c.RightAnswer,
                        IsAnswered = answers?.Any(p=>p.QuestionaryID == c.Id)
                        //user?.SurveyUsers?.First(p => p.SurveyId == id).UserQuestionAnswer.Any(p => p.QuestionaryID == c.Id)
                        //item.Survey.Questionary.Any( p => p.Id == c.Id && answers.Any(s => s.QuestionaryID == p.Id))
                    })
            );
            var users = new List<UserResponse>();
            item?.SurveyUsers?.ToList().ForEach(
                c => users.Add(
                    new UserResponse
                    {
                        Id = c.UserId,
                        CompletedAt = c.FinishDate,
                        Nickname = c.User.Nick,
                        Surname = c.User.Surname,
                        Name = c.User.Name
                    })
            );

            var videoLink = item.Survey?.AdditionalInfo?.LinkToVideo;

            bool is_video_watched = false;
            if (!string.IsNullOrEmpty(videoLink) && user != null)
            {
                var user_id2 = user.Id;
                var video_id = Youtube.ExtractVideoIdFromUri(new Uri(videoLink));
                if (!string.IsNullOrEmpty(video_id))
                {
                    var videoViewPercentage = await _generalSettingsRepository.GetVideoViewPercentage();
                    is_video_watched = await _videoTimelineRepository.IsSawAsync(user_id2, video_id, videoViewPercentage);
                }
            }

            var surveyItem = new SurveyItem
            {
                Id = item.Survey.Id,
                Title = item.Survey.Title,
                Description = item.Survey.Text,
                TimeForCompleting = item.Survey.NeedToBeFinishedFor,
                TimeForCompletingStart = item.Survey.NeedToBeFinishedForStart,
                IsLiked = item.Survey.Likes != null &&
                          item.Survey.Likes.FirstOrDefault(m => m.User?.Email == user?.Email) != null,
                Score = item.Survey.Score,
                CurrentCnt = item.Survey.NumberOfUser,
                LimitCnt = item.Survey.Limit,
                link = item.Survey?.AdditionalInfo?.LinkToSite,
                linkVideo = videoLink,
                IsVideoWatched = is_video_watched,
            };

            var detail = new SurveyDetailResponse
            {
                //Comments = comments,
                Questionaries = questionaries,
                SurveyItem = surveyItem,
                Users = users,
            };

            return detail;
        }

        [HttpGet("questionaries")]
        [EnableBodyRewind]
        [ProducesResponseType(typeof(SurveyResponse), (int) HttpStatusCode.OK)]
        [ProducesResponseType(typeof(ErrorResponse), (int) HttpStatusCode.NotFound)]
        [ProducesResponseType(typeof(ErrorResponse), (int) HttpStatusCode.NotAcceptable)]
        public async Task<ActionResult<SurveyResponse>> GetQuestionary([FromQuery] int userId ,[FromQuery] string type,
            [FromQuery] string order,
            [FromQuery] int? skip,
            [FromQuery] int? take)
        {
            int count = 0;
            var user = await _userRepository.GetAsync(userId);
            List<Survey> items = null;
            if (type == "all" || string.IsNullOrEmpty(type))
            {
                count = await _surveyRepository.CountAsync(s => s.IsActive);
                items = await _surveyRepository.GetListAsync(order, skip ?? 0, take ?? count, s => s.IsActive,
                    p => p.Likes);
            }
            else
                switch (type)
                {
                    case "mine":
                    {
                            //var userId = GetUserId();
                            //if (userId == null)
                            //        return Unauthorized();
                            var email = user?.Email;


                        count = await _surveyRepository.CountAsync(s => s.SurveyUser.Any(u => u.User.Email == email),
                                                                        s => s.SurveyUser);
                        items = await _surveyRepository.GetListAsync(order, skip ?? 0, take ?? count, s => s.SurveyUser.Any(u => u.User.Email == email),
                            s => s.SurveyUser, p => p.Likes);
                        //items = items.Where(s => s.SurveyUser.Any(u => u.User.Email == userId))?.ToList();
                        break;
                    }
                    case "uncompleted":
                        if (GetUserId() == null)
                        {
                            count = await _surveyRepository.CountAsync(s => s.IsActive
                                                                        && (s.NeedToBeFinishedForStart == s.NeedToBeFinishedFor
                                                                        || s.NeedToBeFinishedFor.LocalDateTime > DateTime.Now) 
                                                                        && s.Limit > s.NumberOfUser,
                                                                        s => s.SurveyUser);
                            items = await _surveyRepository.GetListAsync(order, skip ?? 0, take ?? count, p => p.IsActive
                                                                                && (p.NeedToBeFinishedForStart == p.NeedToBeFinishedFor
                                                                                || p.NeedToBeFinishedFor.LocalDateTime > DateTime.Now)
                                                                                && p.Limit > p.NumberOfUser,
                                                                                s => s.SurveyUser, p => p.Likes);
                        } 
                        else
                        {
                            count = await _surveyRepository.CountAsync(s => !s.SurveyUser.Any(u => u.User.Email == GetUserId() && u.IsFinished ) 
                                                                        && s.IsActive
                                                                        && (s.NeedToBeFinishedForStart == s.NeedToBeFinishedFor
                                                                        || s.NeedToBeFinishedFor.LocalDateTime > DateTime.Now)
                                                                        && s.Limit > s.NumberOfUser,
                                                                        s => s.SurveyUser);
                            items = await _surveyRepository.GetListAsync(order, skip ?? 0, take ?? count, p => p.IsActive
                                                                                && !p.SurveyUser.Any(u => u.User.Email == GetUserId() && u.IsFinished)
                                                                                && (p.NeedToBeFinishedForStart == p.NeedToBeFinishedFor
                                                                                || p.NeedToBeFinishedFor.LocalDateTime > DateTime.Now)
                                                                                && p.Limit > p.NumberOfUser,
                                                                                s => s.SurveyUser, p => p.Likes);

                        }

                        //items = items.Where(s => !s.SurveyUser.Any(u => u.IsFinished)).ToList();
                        break;
                    case "best":
                        count = await _surveyRepository.CountAsync(s => s.Likes.Count > 0 && s.IsActive, s => s.Likes);
                        items = await _surveyRepository.GetListAsync("like", skip ?? 0, take ?? count, 
                                                                            p => p.IsActive && p.Likes.Count > 0,
                                                                            p => p.Likes);
                        //items = items.Where(s => s.Likes.Count > 0).ToList();
                        break;
                }

            var response = new SurveyResponse
            {
                Count = count,
                Items = new List<SurveyItem>()
            };


            items?.ForEach(p => response.Items.Add(new SurveyItem
            {
                Id = p.Id,
                Title = p.Title,
                Description = p.Text,
                Score = p.Score,
                LimitCnt = p.Limit,
                CurrentCnt = p.NumberOfUser,
                CreatedAt = p.CreatedAt,
                TimeForCompleting = p.NeedToBeFinishedFor,
                TimeForCompletingStart = p.NeedToBeFinishedForStart,
                LikeCnt = p.Likes?.Count ?? 0,
                IsLiked = p.Likes?.FirstOrDefault(m => m.UserId == user?.Id) != null
            }));

            return response;
        }

        [HttpGet("questionaries/{id}/likes/count")]
        [EnableBodyRewind]
        [ProducesResponseType(typeof(SurveyDetailResponse), (int) HttpStatusCode.OK)]
        [ProducesResponseType(typeof(ErrorResponse), (int) HttpStatusCode.NotFound)]
        [ProducesResponseType(typeof(ErrorResponse), (int) HttpStatusCode.NotAcceptable)]
        public async Task<ActionResult<LikeResponse>> GetQuestionaryLikes(int id)
        {
            var count = await _likeRepository.GetLikes(id);
            var likeResponse = new LikeResponse {LikeCnt = count};
            return likeResponse;
        }

        [Authorize]
        [HttpPost("questionaries/{id}/comment")]
        [EnableBodyRewind]
        [ProducesResponseType(typeof(NormalResponse), (int) HttpStatusCode.OK)]
        [ProducesResponseType(typeof(ErrorResponse), (int) HttpStatusCode.NotFound)]
        [ProducesResponseType(typeof(ErrorResponse), (int) HttpStatusCode.NotAcceptable)]
        public async Task<ActionResult> Comment(int id, [FromBody] AnswerRequest comment)
        {
            var user = await _userRepository.GetByEmailAsync(GetUserId());

            if (user.IsBanned)
                return StatusCode(Microsoft.AspNetCore.Http.StatusCodes.Status406NotAcceptable);


            await _surveyRepository.AddCommentAsync(new SurveyComment
            {
                CreatedAt = DateTime.UtcNow,
                SurveyId = id,
                Text = comment.Answer,
                UserId = user.Id
            });

            return Ok();
        }

        [Authorize]
        [HttpPost("questionaries/{id}/like")]
        [EnableBodyRewind]
        [ProducesResponseType(typeof(NormalResponse), (int) HttpStatusCode.OK)]
        [ProducesResponseType(typeof(ErrorResponse), (int) HttpStatusCode.NotFound)]
        [ProducesResponseType(typeof(ErrorResponse), (int) HttpStatusCode.NotAcceptable)]
        public async Task<ActionResult> Like(int id)
        {
            var user = await _userRepository.GetByEmailAsync(GetUserId());

            if (user.IsBanned)
                return Forbid();

            var surveyItem = await _surveyRepository.GetAsync(id);
            var likeItem = surveyItem.Survey.Likes.FirstOrDefault(p => p.SurveyId == id && p.UserId == user.Id);

            if (likeItem != null)
            {
                return ValidationProblem();
            }

            await _surveyRepository.AddLikeAsync(new Like
            {
                SurveyId = id,
                UserId = user.Id
            });

            return Ok();
        }

        [Authorize]
        [HttpDelete("questionaries/{id}/like")]
        [EnableBodyRewind]
        [ProducesResponseType(typeof(NormalResponse), (int) HttpStatusCode.OK)]
        [ProducesResponseType(typeof(ErrorResponse), (int) HttpStatusCode.NotFound)]
        [ProducesResponseType(typeof(ErrorResponse), (int) HttpStatusCode.NotAcceptable)]
        public async Task<ActionResult> Delete(int id)
        {
            var user = await _userRepository.GetByEmailAsync(GetUserId());
            var surveyItem = await _surveyRepository.GetAsync(id);
            var likeItem = surveyItem.Survey.Likes.FirstOrDefault(p => p.SurveyId == id && p.UserId == user.Id);
            if (likeItem != null)
            {
                await _surveyRepository.DeleteLikeAsync(likeItem);
            }

            return Ok();
        }
    }
}