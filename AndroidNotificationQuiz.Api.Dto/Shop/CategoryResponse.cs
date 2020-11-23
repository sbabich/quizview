using System;
using Newtonsoft.Json;

namespace AndroidNotificationQuiz.Api.Dto.Shop
{
    public class CategoryResponse
    {
        [JsonProperty("id")]
        public int Id { get; set; }
        [JsonProperty("position")]
        public string Position { get; set; }
    }
}
