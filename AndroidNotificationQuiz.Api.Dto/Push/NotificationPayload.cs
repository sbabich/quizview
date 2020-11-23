using System;
using Newtonsoft.Json;

namespace AndroidNotificationQuiz.Api.Dto.Push
{
    public class NotificationPayload
    {
        [JsonProperty("notification_content")]
        public NotificationContent NotificationContent { get; set; }
    }

    public class NotificationContent
    {
        [JsonProperty("name")]
        public string Name { get; set; }
        [JsonProperty("title")]
        public string Title { get; set; }
        [JsonProperty("body")]
        public string Body { get; set; }
        [JsonProperty("custom_data")]
        public CustomData CustomData { get; set; }
    }

    public class CustomData
    {
        [JsonProperty("QuestionaryId")]
        public string QuestionaryId { get; set; }
    }

}
