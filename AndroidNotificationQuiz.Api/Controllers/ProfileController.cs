using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Net;
using System.Threading.Tasks;
using AndroidNotificationQuiz.Api.Dto.Auth;
using AndroidNotificationQuiz.Api.Dto.Profile;
using AndroidNotificationQuiz.Api.Dto.Survey;
using AndroidNotificationQuiz.Api.ExceptionFilter;
using AndroidNotificationQuiz.Api.Middleware;
using AndroidNotificationQuiz.DomainLayer.Interfaces;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Hosting;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;

// For more information on enabling MVC for empty projects, visit https://go.microsoft.com/fwlink/?LinkID=397860

namespace AndroidNotificationQuiz.Api.Controllers
{
    [ApiController]
    [Produces("application/json")]
    [Route("/profile")]
    public class ProfileController : BaseController
    {
        private readonly IUserRepository _userRepository;
        private readonly IHostingEnvironment _env;

        public ProfileController(IUserRepository userRepository, IHostingEnvironment env)
        {
            _userRepository = userRepository;
            _env = env;
        }

        /// <summary>
        /// Установка ника для авторизованного пользователя
        /// </summary>
        /// <param name="nickRequest"></param>
        /// <returns></returns>
        [HttpPost("nick")]
        [EnableBodyRewind]
        [Authorize]
        [ProducesResponseType(typeof(NormalResponse), (int) HttpStatusCode.OK)]
        [ProducesResponseType(typeof(ErrorResponse), (int) HttpStatusCode.NotFound)]
        [ProducesResponseType(typeof(ErrorResponse), (int) HttpStatusCode.NotAcceptable)]
        public async Task<ActionResult<NormalResponse>> SetNick([FromBody] ChangeNickRequest nickRequest)
        {
            var user = await _userRepository.GetByEmailAsync(GetUserId());

            if (string.IsNullOrEmpty(user.Nick))
            {
                user.Nick = nickRequest.Nick;
                await _userRepository.Update(user);
                return Ok();
            }

            return new NormalResponse("Уже установлен");
        }

        /// <summary>
        /// Получение информации о пользователе по его ID
        /// </summary>
        /// <param name="id">ID профиля пользователя</param>
        /// <returns></returns>
        [HttpGet("{id}")]
        [EnableBodyRewind]
        [ProducesResponseType(typeof(UserResponse), (int) HttpStatusCode.OK)]
        [ProducesResponseType(typeof(ErrorResponse), (int) HttpStatusCode.NotFound)]
        [ProducesResponseType(typeof(ErrorResponse), (int) HttpStatusCode.NotAcceptable)]
        public async Task<ActionResult<UserResponse>> GetProfile(int id)
        {
            var user = await _userRepository.GetAsync(id);

            if (user == null)
                return NotFound();
            var socNetw = new List<Dto.Survey.SocialNetwork>();
            user.SocialNetwork.ToList().ForEach((obj) => socNetw.Add(
                    new Dto.Survey.SocialNetwork
                    {
                        Id = obj.Id,
                        Link = obj.Link,
                        Title = obj.Title,
                        UserId = obj.UserId
                    }
                )
            );

            var userResponse = new UserResponse
            {
                Id = user.Id,
                Nickname = user.Nick,
                BannedAt = user.BanFineshedAt,
                AvatarPath = user.AvatarPath,
                Score = user.Balance,
                Name = user.Name,
                Surname = user.Surname,
                IsBanned = user.IsBanned,
                RegistredAt = user.RegistredAt,
                Email = user.Email,
                SurveysCnt = user.SurveyUsers.Count(p => p.IsFinished),
                SocialNetworks = socNetw
            };

            return new ActionResult<UserResponse>(userResponse);
        }

        [HttpPost("photo")]
        [Authorize]
        [EnableBodyRewind]
        //[Consumes("multipart/form-data", "image/jpg", "image/png")]
        [ProducesResponseType(typeof(ActionResult), (int) HttpStatusCode.OK)]
        [ProducesResponseType(typeof(ErrorResponse), (int) HttpStatusCode.NotFound)]
        [ProducesResponseType(typeof(ErrorResponse), (int) HttpStatusCode.NotAcceptable)]
        public async Task<ActionResult> Photo([FromForm] IFormFile file)
        {
            var userId = GetUserId();
            var user = await _userRepository.GetByEmailAsync(userId);

            var date = DateTime.UtcNow;
            var userPath = $"{date.Year}/{date.Month}/{date.Day}/users/";
            var uploads = Path.Combine(_env.WebRootPath, userPath);
            //var uploads = _env.WebRootPath;

            if (!string.IsNullOrEmpty(user.AvatarPath))
            {
                var filePath = Path.Combine(_env.WebRootPath, user.AvatarPath);
                if (System.IO.File.Exists(filePath))
                {
                    // If file found, delete it    
                    System.IO.File.Delete(filePath);
                }
            }


            var newFileName = Guid.NewGuid().ToString();
            if (file.Length > 0)
            {
                if (!Directory.Exists(uploads))
                    Directory.CreateDirectory(uploads);
                var saveDbPath = Path.Combine(userPath, $"{newFileName}.png");
                var filePath = Path.Combine(uploads, $"{newFileName}.png");

                using (var fileStream = new FileStream(filePath, FileMode.Create))
                {
                    await file.CopyToAsync(fileStream);
                    fileStream.Flush();
                }

                user.AvatarPath = saveDbPath;
                await _userRepository.Update(user);
            }

            return Ok(new {file.Length});
        }

        [HttpGet("photo")]
        [Authorize]
        [EnableBodyRewind]
        [ProducesResponseType(typeof(UserResponse), (int) HttpStatusCode.OK)]
        [ProducesResponseType(typeof(ErrorResponse), (int) HttpStatusCode.NotFound)]
        [ProducesResponseType(typeof(ErrorResponse), (int) HttpStatusCode.NotAcceptable)]
        public async Task<FileResult> Photo()
        {
            var userId = GetUserId();
            var user = await _userRepository.GetByEmailAsync(userId);
            FileStream fs = new FileStream(user.AvatarPath, FileMode.Open);
            string fileType = "image/png";

            return File(fs, fileType, "avatar");
        }
    }
}