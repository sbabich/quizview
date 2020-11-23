using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Threading.Tasks;
using AndroidNotificationQuiz.Api.Dto.Video;
using AndroidNotificationQuiz.Api.ExceptionFilter;
using AndroidNotificationQuiz.Api.Middleware;
using AndroidNotificationQuiz.Api.ViewModels;
using AndroidNotificationQuiz.DomainLayer.Exceptions;
using AndroidNotificationQuiz.DomainLayer.Interfaces;
using Microsoft.AspNetCore.Mvc;

namespace AndroidNotificationQuiz.Api.Controllers
{
    [ApiController]
    [Produces("application/json")]
    [Route("/video")]
    [EnableBodyRewind]
    public class VideoController : Controller
    {
        private readonly IVideoTimelineRepository _videoTimelineRepository;
        private readonly IUserRepository _userRepository;
        private readonly IGeneralSettingsRepository _generalSettingsRepository;

        public VideoController(
            IVideoTimelineRepository videoTimelineRepository,
            IUserRepository userRepository,
            IGeneralSettingsRepository generalSettingsRepository)
        {
            _videoTimelineRepository = videoTimelineRepository;
            _userRepository = userRepository;
            _generalSettingsRepository = generalSettingsRepository;
        }

        [HttpGet("timeline")]
        [ProducesResponseType(typeof(VideoTimelineResponse), (int)HttpStatusCode.OK)]
        [ProducesResponseType(typeof(ErrorResponse), (int)HttpStatusCode.NotFound)]
        public async Task<ActionResult<VideoTimelineResponse>> SetTimeline(
            int user_id, 
            string video_id, 
            long timeline, 
            long duration)
        {
            var body = Request.Body;
            var str = new System.IO.StreamReader(body);
            var rr = str.ReadToEnd();

            if (user_id == 0 || string.IsNullOrEmpty(video_id) || duration <= 0L)
                throw new ValidationException("Validation error!");

            var videoViewPercentage = await _generalSettingsRepository.GetVideoViewPercentage();
            var timestamp = new DateTimeOffset(DateTime.UtcNow).ToUnixTimeSeconds() * 1000L;

            var result = await _videoTimelineRepository.AddAsync(
                user_id,
                video_id, 
                timeline, 
                duration, 
                timestamp,
                videoViewPercentage);
            
            var videoTimelineResponse = new VideoTimelineResponse
            {
                Result = result
            };

            return new ActionResult<VideoTimelineResponse>(videoTimelineResponse);
        }

        [HttpGet("saw")]
        [ProducesResponseType(typeof(VideoTimelineResponse), (int)HttpStatusCode.OK)]
        [ProducesResponseType(typeof(ErrorResponse), (int)HttpStatusCode.NotFound)]
        public async Task<ActionResult<VideoTimelineResponse>> IsSaw(
            int user_id, 
            string video_id)
        {
            var videoViewPercentage = await _generalSettingsRepository.GetVideoViewPercentage();
            var result = await _videoTimelineRepository.IsSawAsync(
                user_id, 
                video_id,
                videoViewPercentage);

            var videoTimelineResponse = new VideoTimelineResponse
            {
                Result = result
            };

            return new ActionResult<VideoTimelineResponse>(videoTimelineResponse);
        }
    }
}