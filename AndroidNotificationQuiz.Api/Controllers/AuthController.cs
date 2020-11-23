using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Threading.Tasks;
using AndroidNotificationQuiz.Api.Auth;
using AndroidNotificationQuiz.Api.Dto.Auth;
using AndroidNotificationQuiz.Api.Dto.Profile;
using AndroidNotificationQuiz.Api.ExceptionFilter;
using AndroidNotificationQuiz.Api.Extensions;
using AndroidNotificationQuiz.DomainLayer.Interfaces;
using Microsoft.AspNetCore.Mvc;

namespace AndroidNotificationQuiz.Api.Controllers
{
    [ApiController]
    [Produces("application/json")]
    [Route("/auth")]
    public class AuthTokenController : BaseController
    {
        private readonly IAuthService _authService;
        private readonly ISocialNetworkAuthService _vKAuthService;
        private readonly IDeviceRepository _deviceRepository;
        private readonly IUserRepository _userRepository;

        public AuthTokenController(IAuthService authService, ISocialNetworkAuthService vKAuthService,
            IDeviceRepository deviceRepository, IUserRepository userRepository)
        {
            _authService = authService;
            _vKAuthService = vKAuthService;
            _deviceRepository = deviceRepository;
            _userRepository = userRepository;
        }

        [HttpPost("vk")]
        [ProducesResponseType(typeof(AuthTokenResponse), (int) HttpStatusCode.OK)]
        [ProducesResponseType(typeof(ErrorResponse), (int) HttpStatusCode.NotFound)]
        [ProducesResponseType(typeof(ErrorResponse), (int) HttpStatusCode.NotAcceptable)]
        public async Task<AuthTokenResponse> Generate([FromBody] AuthTokenRequest request)
        {
            this.ValidateRequest(request);

            var vkCheckToken = await _vKAuthService.CheckVkToken(request.Token);

            //var token = await _authService.Generate(vkCheckToken.);
            return vkCheckToken;
        }

        [HttpPost("youtube")]
        [ProducesResponseType(typeof(AuthTokenResponse), (int) HttpStatusCode.OK)]
        [ProducesResponseType(typeof(ErrorResponse), (int) HttpStatusCode.NotFound)]
        [ProducesResponseType(typeof(ErrorResponse), (int) HttpStatusCode.NotAcceptable)]
        public async Task<AuthTokenResponse> GenerateYoutube([FromBody] AuthTokenRequest request)
        {
            try
            {
                Serilog.Log.Logger.Information(request.ChannalId + " - " + request.Token);
                this.ValidateRequest(request);
                Serilog.Log.Logger.Information("ValidateRequest");
                var vkCheckToken = await _vKAuthService.CheckGoogleAuthToken(request.Token, request.ChannalId);
                Serilog.Log.Logger.Information("CheckGoogleAuthToken");

                return vkCheckToken;
            }
            catch (Exception ex)
            {
                Serilog.Log.Logger.Error(ex, "[ {NewLine} {Timestamp} {SourceContext} {Level:u4}] {Message} {NewLine} {Exception} {NewLine}");
                if (ex.InnerException != null)
                    Serilog.Log.Logger.Error(ex.InnerException, "[ {NewLine} {Timestamp} {SourceContext} {Level:u4}] {Message} {NewLine} {Exception} {NewLine}");

                throw;
            }
        }

        // POST api/auth/refreshtoken
        [HttpPost("refreshtoken")]
        [ProducesResponseType(typeof(AuthTokenResponse), (int) HttpStatusCode.OK)]
        [ProducesResponseType(typeof(ErrorResponse), (int) HttpStatusCode.NotFound)]
        [ProducesResponseType(typeof(ErrorResponse), (int) HttpStatusCode.NotAcceptable)]
        public async Task<ActionResult<AuthTokenResponse>> RefreshToken([FromBody] AuthRefreshTokenRequest request)
        {
            //var userId = GetUserId();

            var user = await _userRepository.GetAsync(request.UserId);

            if (user.AuthToken.Refresh == request.RefreshToken)
            {
                var token = await _authService.Generate(user.Email);
                var refreshToken = _authService.GenerateRefreshToken();
                user.AuthToken.Refresh = refreshToken;
                user.AuthToken.Auth = token;
                user.AuthToken.RefreshExpiredAt = DateTime.UtcNow.AddMinutes(15);
                await _userRepository.Update(user);
                return new AuthTokenResponse
                {
                    AuthToken = token,
                    RefreshToken = refreshToken,
                    UserDbId = user.Id
                };
            } else
            {
                await _userRepository.Delete(user.AuthToken);
                return Unauthorized();
            } 
        }


        [HttpPost("deviceId")]
        [ProducesResponseType(typeof(NormalResponse), (int) HttpStatusCode.OK)]
        [ProducesResponseType(typeof(ErrorResponse), (int) HttpStatusCode.NotFound)]
        [ProducesResponseType(typeof(ErrorResponse), (int) HttpStatusCode.NotAcceptable)]
        public async Task<ActionResult<NormalResponse>> DeviceId([FromBody] DeviceIdRequest request)
        {
            await _deviceRepository.AddAsync(new DomainLayer.Entities.Device
            {
                DeviceId = request.DeviceId,
                Type = (DomainLayer.Entities.DeviceType) request.DeviceType
            });

            return Ok();
        }
    }
}