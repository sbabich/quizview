using System;
using Newtonsoft.Json;

namespace AndroidNotificationQuiz.Api.Dto.Survey
{
    public class SurveyDetailsRequest
    {
        [JsonProperty("user_id")]
        public int UserId { get; set; }
    }
}
