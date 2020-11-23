using System.Collections.Generic;
using AndroidNotificationQuiz.Api.Dto.Survey;
using Newtonsoft.Json;

namespace AndroidNotificationQuiz.Api.Dto.Time
{
    public class ServerTimeResponse
    {
        [JsonProperty("time")] public long? Time { get; set; }
    }
}