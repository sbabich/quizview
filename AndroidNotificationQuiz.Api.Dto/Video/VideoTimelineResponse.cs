using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Text;

namespace AndroidNotificationQuiz.Api.Dto.Video
{
    public class VideoTimelineResponse
    {
        [JsonProperty("result")] public bool Result { get; set; }
    }
}
