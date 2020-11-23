using System.Collections.Generic;
using AndroidNotificationQuiz.Api.Dto.Survey;
using Newtonsoft.Json;

namespace AndroidNotificationQuiz.Api.Dto.Rate
{
    public class UserRateResponse
    {
        [JsonProperty("user_place")] public int? UserPlace { get; set; }

        [JsonProperty("user_score")] public int? UserScore { get; set; }

        [JsonProperty("users")] public List<UserResponse> Users { get; set; }
    }
}