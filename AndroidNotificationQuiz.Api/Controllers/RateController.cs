using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Threading.Tasks;
using AndroidNotificationQuiz.Api.Dto.Rate;
using AndroidNotificationQuiz.Api.Dto.Survey;
using AndroidNotificationQuiz.Api.ExceptionFilter;
using AndroidNotificationQuiz.Api.Middleware;
using AndroidNotificationQuiz.DomainLayer.Interfaces;
using Microsoft.AspNetCore.Mvc;

namespace AndroidNotificationQuiz.Api.Controllers
{
    [ApiController]
    [Produces("application/json")]
    [Route("/users")]
    public class RateController : BaseController
    {
        private readonly IUserRepository _userRepository;

        public RateController(IUserRepository userRepository)
        {
            _userRepository = userRepository;
        }


        [HttpGet("top")]
        [EnableBodyRewind]
        [ProducesResponseType(typeof(UserRateResponse), (int) HttpStatusCode.OK)]
        [ProducesResponseType(typeof(ErrorResponse), (int) HttpStatusCode.NotFound)]
        [ProducesResponseType(typeof(ErrorResponse), (int) HttpStatusCode.NotAcceptable)]
        public async Task<ActionResult<UserRateResponse>> GetUsers([FromQuery] int? skip,
            [FromQuery] int? take,
            [FromQuery] int userId)
        {
            var count = await _userRepository.CountAsync(null);
            var items = await _userRepository.GetListOrderedByScore(skip ?? 0, take ?? count);

            var itemsAll = await _userRepository.GetListOrderedByScore(0, count);

            var currentUser = itemsAll.FirstOrDefault(p => p.Id == userId);
            var currentUserPlace = itemsAll.ToList().FindIndex(p => p.Id == userId);

            var userResponses = new List<UserResponse>();
            items.ToList().ForEach(p => userResponses.Add(new UserResponse
            {
                Id = p.Id,
                Score = p.Balance,
                Nickname = p.Nick,
                Name = p.Name,
                Surname = p.Surname
            }));


            var userRateResponse = new UserRateResponse
            {
                UserScore = currentUser?.Balance,
                UserPlace = currentUserPlace + 1,
                Users = userResponses
            };

            return new ActionResult<UserRateResponse>(userRateResponse);
        }
    }
}