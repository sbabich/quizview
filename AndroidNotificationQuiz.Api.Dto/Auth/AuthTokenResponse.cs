using System;
using Newtonsoft.Json;

namespace AndroidNotificationQuiz.Api.Dto.Auth
{
    public class AuthTokenResponse
    {
        [JsonProperty("access_token")]
        public string AuthToken { get; set; }
        [JsonProperty("refresh_token")]
        public string RefreshToken { get; set; }
        [JsonProperty("user_db_id")]
        public int UserDbId { get; set; }
    }
}
