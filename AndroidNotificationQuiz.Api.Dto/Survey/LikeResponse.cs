using System;
using Newtonsoft.Json;

namespace AndroidNotificationQuiz.Api.Dto.Survey
{
    public class LikeResponse
    {
        [JsonProperty("like_cnt")]
        public int LikeCnt { get; set; }
    }
}
