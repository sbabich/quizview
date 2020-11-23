using System;
using Newtonsoft.Json;

namespace AndroidNotificationQuiz.Api.Dto.Survey
{
    public class Comment
    {
        [JsonProperty("id")]
        public int Id { get; set; }

        [JsonProperty("text")]
        public string Text { get; set; }

        [JsonProperty("comment_at")]
        public DateTimeOffset CommentAt { get; set; }

        [JsonProperty("nick")]
        public string Nick { get; set; }

        [JsonProperty("is_mine")]
        public bool IsMine { get; set; }
    }
}
