using System;
using System.ComponentModel.DataAnnotations;
using System.Runtime.Serialization;
using Newtonsoft.Json;

namespace AndroidNotificationQuiz.Api.Dto.Auth
{
    public class AuthTokenRequest
    {
        [Required(ErrorMessage = "Token обязателен")]
        [DataMember(Name = "token")]
        public string Token { get; set; }

        [JsonProperty("channal_id")]
        public string ChannalId { get; set; }
    }
}
