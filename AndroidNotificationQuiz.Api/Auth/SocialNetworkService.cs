using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Net.Http;
using System.Threading.Tasks;
using AndroidNotificationQuiz.Api.Dto.Auth;
using AndroidNotificationQuiz.DomainLayer.Entities;
using AndroidNotificationQuiz.DomainLayer.Exceptions;
using AndroidNotificationQuiz.DomainLayer.Interfaces;
using Google.Apis.Auth;
using Newtonsoft.Json;

namespace AndroidNotificationQuiz.Api.Auth
{
    public class SocialNetworkService : ISocialNetworkAuthService
    {
        private readonly IAuthService _authService;
        private readonly IUserRepository _userRepository;

        //private const string ApiKey = "AIzaSyAH4Czhdo9dBLshpHswIJlNkDwDXk98E4s";
        //private const int AppId = 6852527;
        //private const string ClientSecret = "m4rBI8XEprNVHKdhT4PE";
        //private const string ServiceAccessKey = "246f95ca246f95ca246f95ca9424071a652246f246f95ca783233ddbc39da5eddeb3b80";
        private const int AppId = 7020592;
        private const string ClientSecret = "zrL0QOAVp9xd45pPXYkq";
        private const string ServiceAccessKey = "cc6a23dacc6a23dacc6a23dab6cc0103eaccc6acc6a23da916978fa7170c8a8f8c5ca59";
        private const string ApiKey = "AIzaSyDF4YiW-Hf0HGDRPe2vbdpTcOnrQIrq8Hk";

        public SocialNetworkService(IAuthService authService, IUserRepository userRepository)
        {
            _authService = authService;
            _userRepository = userRepository;
        }

        public async Task<AuthTokenResponse> CheckVkToken(string token)
        {
            var responseAccessToken = await DeserializeOptimizedFromStreamCallAsync<VkAccessTokenResponse>($"https://oauth.vk.com/access_token?client_id={AppId}&client_secret={ClientSecret}&v=5.92&grant_type=client_credentials");
            var responseCheckToken = await DeserializeOptimizedFromStreamCallAsync<VkCheckTokenResponse>($"https://api.vk.com/method/secure.checkToken?token={token}&access_token={responseAccessToken.AccessToken}&client_secret={ClientSecret}&v=5.92");
            var responseUser = await DeserializeOptimizedFromStreamCallAsync<VKUserResponse>($"https://api.vk.com/method/users.get?user_ids={responseCheckToken.CheckResponse.UserId}&access_token={ServiceAccessKey}&client_secret={ClientSecret}&v=5.92&fields=has_photo,photo_50,photo_100,photo_200_orig");    


            return await Handle(responseCheckToken, responseUser);
        }

        public async Task<AuthTokenResponse> CheckGoogleAuthToken(string idToken, string channalId)
        {
            //var validPayload = await GoogleJsonWebSignature.ValidateAsync(idToken);

            var youtubeUrl = $"https://www.googleapis.com/youtube/v3/channels?part=snippet&id={channalId}&fields=items%2Fsnippet%2Fthumbnails,items%2Fsnippet%2Ftitle&key={ApiKey}";
            var responseUser = await DeserializeOptimizedFromStreamCallAsync<YoutubeThumbResponse>(youtubeUrl);
            var googleUrl = $"https://www.googleapis.com/oauth2/v1/userinfo?alt=json&access_token={idToken}";
            var responseUserGG = await DeserializeOptimizedFromStreamCallAsync<GoogleUserResponse>(googleUrl);  //if (validPayload != null)



            UserNamePayload userNamePayload = null;
            if (responseUser.Items.Count > 0)
            {
                userNamePayload = new UserNamePayload(responseUser.Items.FirstOrDefault().Snippet.Title, channalId, SocialNetwork.Youtube, responseUser.Items?.Count > 0 ? responseUser.Items[0]?.Snippet?.Thumbnails?.High?.Url : null);
            }
            else
            {
                userNamePayload = new UserNamePayload(responseUserGG.Name, channalId, SocialNetwork.Youtube, responseUserGG.Picture);
            }

            //{
            return await Handle(channalId, userNamePayload);
            //}

            throw new ValidationException("invalid token");
        }

        private static async Task<T> DeserializeOptimizedFromStreamCallAsync<T>(string url) 
        {
            using (var client = new HttpClient())
            using (var request = new HttpRequestMessage(HttpMethod.Get, url))
            using (var response = await client.SendAsync(request, HttpCompletionOption.ResponseHeadersRead))
            {
                var stream = await response.Content.ReadAsStreamAsync();

                if (response.IsSuccessStatusCode)
                    return DeserializeJsonFromStream<T>(stream);

                var content = await StreamToStringAsync(stream);
                throw new ValidationException(content);
            }
        }

        private static T DeserializeJsonFromStream<T>(Stream stream)
        {
            if (stream == null || stream.CanRead == false)
                return default(T);

            using (var sr = new StreamReader(stream))
            using (var jtr = new JsonTextReader(sr))
            {
                var js = new JsonSerializer();
                var searchResult = js.Deserialize<T>(jtr);
                return searchResult;
            }
        }

        private static async Task<string> StreamToStringAsync(Stream stream)
        {
            string content = null;

            if (stream != null)
                using (var sr = new StreamReader(stream))
                    content = await sr.ReadToEndAsync();

            return content;
        }


        public async Task<AuthTokenResponse> Handle(string channalId, UserNamePayload responseUser)
        {
            return await CreateUser(channalId, responseUser);



            throw new ValidationException("invalid token");
        }

        public async Task<AuthTokenResponse> Handle(VkCheckTokenResponse response, VKUserResponse responseUser)
        {
            if (response.CheckResponse != null)
            {
                return await CreateUser(response.CheckResponse.UserId.ToString(), new UserNamePayload()
                {
                    FirstName = responseUser?.CheckResponse?.FirstOrDefault()?.FirstName,
                    LastName = responseUser?.CheckResponse?.FirstOrDefault()?.LastName,
                    Network = SocialNetwork.Vk,
                    Thumb = responseUser?.CheckResponse?.FirstOrDefault()?.Avatar
                });
            }
            throw new ValidationException("invalid token");
        }

        async Task<AuthTokenResponse> CreateUser(string userId, UserNamePayload payload)
        {
            // ensure we have a user with the given user name
            var user = await _userRepository.GetByEmailAsync(userId);
            // generate refresh token
            var refreshToken = _authService.GenerateRefreshToken();
            //await _userRepository.Update(user);
            Console.WriteLine($"refreshToken: {refreshToken}");
            // generate access token

            if (user != null)
            {
                var token = await _authService.Generate(userId);

                var authTokenResponse = new AuthTokenResponse
                {
                    AuthToken = token,
                    RefreshToken = refreshToken,
                    UserDbId = user.Id

                };

                var newToken = new DomainLayer.Entities.AuthToken
                {
                    Auth = authTokenResponse.AuthToken,
                    Refresh = authTokenResponse.RefreshToken,
                    RefreshExpiredAt = DateTime.UtcNow.AddHours(3)
                };
                user.AuthToken = newToken;
                await _userRepository.Update(user);


                if (payload.Thumb != null)
                {
                    user.AvatarPath = payload.Thumb;
                    user.Name = payload.FirstName;
                    await _userRepository.Update(user);
                }

                return authTokenResponse;
            }
            else
            {
                var authTokenResponse = new AuthTokenResponse
                {
                    AuthToken = await _authService.Generate(userId),
                    RefreshToken = refreshToken
                };

                var newToken = new DomainLayer.Entities.AuthToken
                {
                    Auth = authTokenResponse.AuthToken,
                    Refresh = authTokenResponse.RefreshToken,
                    RefreshExpiredAt = DateTime.UtcNow.AddMinutes(15)
                };
                var networks = new List<NetworkProfile> {
                    new NetworkProfile
                    {
                        Link = payload.Network == SocialNetwork.Vk 
                        ? $"https://vk.com/id{userId}" 
                        : $"https://youtube.com/channel/{payload.ChannalId}",
                        Title = payload.Network == SocialNetwork.Vk ? "VK" : "Youtube",
                    }
                };
                var newUser = new User
                {
                    AuthToken = newToken,
                    Email = userId,
                    RegistredAt = DateTime.UtcNow,
                    Name = payload.FirstName,
                    Surname = payload.LastName,
                    SocialNetwork = networks,
                    AvatarPath = payload.Thumb
                };

                await _userRepository.AddAsync(newUser);
                var savedUser = await _userRepository.GetByEmailAsync(userId);
                authTokenResponse.UserDbId = savedUser.Id;

                return authTokenResponse;
            }
        }
    }
}
