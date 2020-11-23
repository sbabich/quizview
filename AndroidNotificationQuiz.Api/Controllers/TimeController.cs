using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Threading.Tasks;
using AndroidNotificationQuiz.Api.Dto.Time;
using AndroidNotificationQuiz.Api.ExceptionFilter;
using AndroidNotificationQuiz.Api.Middleware;
using AndroidNotificationQuiz.Api.ViewModels;
using Microsoft.AspNetCore.Mvc;

namespace AndroidNotificationQuiz.Api.Controllers
{
    [ApiController]
    [Produces("application/json")]
    [Route("/time")]
    public class TimeController : Controller
    {
        [EnableBodyRewind]
        [HttpGet("current")]
        [ProducesResponseType(typeof(ServerTimeResponse), (int)HttpStatusCode.OK)]
        [ProducesResponseType(typeof(ErrorResponse), (int)HttpStatusCode.NotFound)]
        public async Task<ActionResult<ServerTimeResponse>> GetCurrent()
        {
            var timestamp = new DateTimeOffset(DateTime.UtcNow).ToUnixTimeSeconds();
            var userRateResponse = new ServerTimeResponse
            {
                Time = timestamp
            };

            return new ActionResult<ServerTimeResponse>(userRateResponse);
        }
    }
}