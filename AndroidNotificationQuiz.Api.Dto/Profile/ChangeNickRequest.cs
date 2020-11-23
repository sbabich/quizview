using System;
using Newtonsoft.Json;

namespace AndroidNotificationQuiz.Api.Dto.Profile
{
    public class ChangeNickRequest
    {
        [JsonProperty("nick")]
        public string Nick { get; set; }
    }
}
