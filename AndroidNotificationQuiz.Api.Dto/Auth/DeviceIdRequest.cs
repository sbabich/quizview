using System;
using System.ComponentModel.DataAnnotations;
using System.Runtime.Serialization;
using Newtonsoft.Json;

namespace AndroidNotificationQuiz.Api.Dto.Auth
{
    public class DeviceIdRequest
    {
        [Required(ErrorMessage = "Device id устройства обязателен")]
        [JsonProperty("device_id")]
        public string DeviceId { get; set; }

        [JsonProperty("device_type")]
        public int DeviceType { get; set; } = 0;
    }
}
