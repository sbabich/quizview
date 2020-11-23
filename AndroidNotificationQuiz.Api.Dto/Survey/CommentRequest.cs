using System;
using Newtonsoft.Json;

namespace AndroidNotificationQuiz.Api.Dto.Survey
{
    public class CommentRequest
    {
        [JsonProperty("user_id")]
        public int UserId { get; set; }

        [JsonProperty("text")]
        public string Text { get; set; }

        [JsonProperty("survey_id")]
        public string SurveyId { get; set; }
    }
}
