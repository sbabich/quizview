using System;
using Newtonsoft.Json;

namespace AndroidNotificationQuiz.Api.Dto.Survey
{
    public class Questionary
    {
        [JsonProperty("id")]
        public int Id { get; set; }
        [JsonProperty("question")]
        public string Question { get; set; }
        [JsonProperty("answer")]
        public string Answer { get; set; }
        [JsonProperty("is_answered")]
        public bool? IsAnswered { get; set; }
        [JsonProperty("is_error_answer")]
        public bool IsErrorAnswer { get; set; }
    }
}
