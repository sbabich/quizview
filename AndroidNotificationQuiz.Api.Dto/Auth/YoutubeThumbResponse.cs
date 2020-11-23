using System;
using System.Collections.Generic;
using Newtonsoft.Json;

namespace AndroidNotificationQuiz.Api.Dto.Auth
{
    public class Default
    {
        [JsonProperty("url")]
        public string Url { get; set; }
        [JsonProperty("width")]
        public int Width { get; set; }
        [JsonProperty("height")]
        public int Height { get; set; }
    }

    public class Medium
    {
        [JsonProperty("url")]
        public string Url { get; set; }
        [JsonProperty("width")]
        public int Width { get; set; }
        [JsonProperty("height")]
        public int Height { get; set; }
    }

    public class High
    {
        [JsonProperty("url")]
        public string Url { get; set; }
        [JsonProperty("width")]
        public int Width { get; set; }
        [JsonProperty("height")]
        public int Height { get; set; }
    }

    public class Thumbnails
    {
        [JsonProperty("default")]
        public Default Default { get; set; }
        [JsonProperty("medium")]
        public Medium Medium { get; set; }
        [JsonProperty("high")]
        public High High { get; set; }
    }

    public class Snippet
    {
        [JsonProperty("thumbnails")]
        public Thumbnails Thumbnails { get; set; }
        [JsonProperty("title")]
        public String Title { get; set; }
    }

    public class Item
    {
        [JsonProperty("snippet")]
        public Snippet Snippet { get; set; }
    }

    public class YoutubeThumbResponse
    {
        [JsonProperty("items")]
        public IList<Item> Items { get; set; }
    }
}
