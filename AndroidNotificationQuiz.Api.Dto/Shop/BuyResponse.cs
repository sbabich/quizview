using System;
using Newtonsoft.Json;

namespace AndroidNotificationQuiz.Api.Dto.Shop
{
    public class BuyResponse
    {
        [JsonProperty("msg")]
        public String Msg { get; set; }

        [JsonProperty("auto")]
        public bool IsAuto { get; set; }

        [JsonProperty("error")]
        public bool IsError { get; set; }

        [JsonProperty("promo")]
        public string PromoCode { get; set; }
    }
}
