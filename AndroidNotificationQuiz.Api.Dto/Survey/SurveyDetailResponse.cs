using System;
using System.Collections.Generic;
using Newtonsoft.Json;

namespace AndroidNotificationQuiz.Api.Dto.Survey
{
    public class SurveyDetailResponse
    {
        [JsonProperty("users")]
        public ICollection<UserResponse> Users { get; set; }
        [JsonProperty("questionaries")]
        public ICollection<Questionary> Questionaries { get; set; }
        [JsonProperty("survey_detail")]
        public SurveyItem SurveyItem { get; set; }
        [JsonProperty("comments")]
        public ICollection<Comment> Comments { get; set; }
    }
}