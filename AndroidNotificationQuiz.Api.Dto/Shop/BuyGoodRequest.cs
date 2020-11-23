using System;
using Newtonsoft.Json;

namespace AndroidNotificationQuiz.Api.Dto.Shop
{
    public class BuyGoodRequest
    {
        [JsonProperty("id")]
        public int Id { get; set; }
    }
}
