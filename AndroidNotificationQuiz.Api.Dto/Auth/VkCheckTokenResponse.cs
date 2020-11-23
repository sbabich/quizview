using System;
using Newtonsoft.Json;

namespace AndroidNotificationQuiz.Api.Dto.Auth
{
    public class VkCheckTokenResponse
    {
        [JsonProperty("response")]
        public Response CheckResponse { get; set; }

        public class Response
        {
            [JsonProperty("success")]
            public int Success { get; set; }
            [JsonProperty("user_id")]
            public int UserId { get; set; }
            [JsonProperty("date")]
            public long Date { get; set; }
            [JsonProperty("expire")]
            public long Expire { get; set; }
        }
    }
}
