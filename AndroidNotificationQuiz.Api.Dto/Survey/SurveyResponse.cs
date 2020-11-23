using System;
using System.Collections;
using System.Collections.Generic;
using Newtonsoft.Json;

namespace AndroidNotificationQuiz.Api.Dto.Survey
{
    public class SurveyResponse
    {
        [JsonProperty("count")]
        public int Count { get; set; }
        [JsonProperty("items")]
        public ICollection<SurveyItem> Items { get; set; }
    }

    public class SurveyItem
    {
        [JsonProperty("id")]
        public int Id { get; set; }
        [JsonProperty("title")]
        public string Title { get; set; }
        [JsonProperty("description")]
        public string Description { get; set; }
        [JsonProperty("limit_cnt")]
        public int LimitCnt { get; set; }
        [JsonProperty("score")]
        public int Score { get; set; }
        [JsonProperty("current_cnt")]
        public int CurrentCnt { get; set; }
        [JsonProperty("like_cnt")]
        public int LikeCnt { get; set; }
        [JsonProperty("created_at")]
        public DateTimeOffset CreatedAt { get; set; }
        [JsonProperty("time_for_completing")]
        public DateTimeOffset TimeForCompleting { get; set; }
        [JsonProperty("time_for_completing_start")]
        public DateTimeOffset TimeForCompletingStart { get; set; }
        [JsonProperty("is_liked")]
        public bool IsLiked { get; set; }
        [JsonProperty("link_video")]
        public string linkVideo { get; set; }
        [JsonProperty("link")]
        public string link { get; set; }
        [JsonProperty("is_video_watched")]
        public bool? IsVideoWatched { get; set; }
    }
}
