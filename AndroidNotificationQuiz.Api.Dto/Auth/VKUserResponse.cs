using System;
using System.Collections.Generic;
using Newtonsoft.Json;

namespace AndroidNotificationQuiz.Api.Dto.Auth
{
    public class VKUserResponse
    {
        [JsonProperty("response")]
        public IEnumerable<Response> CheckResponse { get; set; }

        public class Response
        {
            [JsonProperty("id")]
            public int id { get; set; }
            [JsonProperty("first_name")]
            public string FirstName { get; set; }
            [JsonProperty("last_name")]
            public string LastName { get; set; }
            [JsonProperty("photo_200_orig")]
            public string Avatar { get; set; }
        }
    }
}
