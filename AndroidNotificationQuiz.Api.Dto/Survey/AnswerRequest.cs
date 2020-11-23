using System;
using Newtonsoft.Json;

namespace AndroidNotificationQuiz.Api.Dto.Survey
{
    public class AnswerRequest
    {
        [JsonProperty("survey_id")]
        public int SurveyId { get; set; }
        [JsonProperty("answer")]
        public string Answer { get; set; }
    }
}
