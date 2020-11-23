using System;
using Newtonsoft.Json;

namespace AndroidNotificationQuiz.Api.Dto.Profile
{
    public class NormalResponse
    {
        [JsonProperty("status_msg")]
        public string StatusMsg {get;set;}

        public NormalResponse(string v)
        {
            StatusMsg = v;
        }
    }
}
