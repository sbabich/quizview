using System;
using Newtonsoft.Json;

namespace AndroidNotificationQuiz.Api.Dto.Survey
{
    public class SocialNetwork
    {
        [JsonProperty("title")]
        public string Title { get; set; }
        [JsonProperty("link")]
        public string Link { get; set; }
        [JsonProperty("id")]
        public int Id { get; set; }
        [JsonProperty("user_id")]
        public int UserId { get; set; }
    }
}
