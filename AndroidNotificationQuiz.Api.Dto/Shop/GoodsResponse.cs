using System;
using Newtonsoft.Json;

namespace AndroidNotificationQuiz.Api.Dto.Shop
{
    public class GoodsResponse
    {
        [JsonProperty("id")]
        public int Id { get; set; }
        [JsonProperty("title")]
        public string Title { get; set; }
        [JsonProperty("description")]
        public string Description { get; set; }
        [JsonProperty("image_path")]
        public string ImagePath { get; set; }
        [JsonProperty("cost")]
        public decimal Cost { get; set; }
        [JsonProperty("real_cost")]
        public decimal RealCost { get; set; }
        [JsonProperty("is_disable")]
        public bool IsDisable { get; set; }
    }
}
