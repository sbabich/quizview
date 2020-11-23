using System;
using System.Collections.Generic;
using AndroidNotificationQuiz.DomainLayer.Entities;
using Newtonsoft.Json;

namespace AndroidNotificationQuiz.Api.Dto.Survey
{
    public class UserResponse
    {
        [JsonProperty("id")] public int Id { get; set; }
        [JsonProperty("nickname")] public string Nickname { get; set; }
        [JsonProperty("completed_at")] public DateTimeOffset? CompletedAt { get; set; }
        [JsonProperty("score")] public int Score { get; set; }
        [JsonProperty("is_banned")] public bool? IsBanned { get; set; }
        [JsonProperty("banned_at")] public DateTimeOffset? BannedAt { get; set; }
        [JsonProperty("name")] public string Name { get; set; }
        [JsonProperty("email")] public string Email { get; set; }
        [JsonProperty("surname")] public string Surname { get; set; }
        [JsonProperty("registred_at")] public DateTimeOffset RegistredAt { get; set; }
        [JsonProperty("avatar_path")] public string AvatarPath { get; set; }
        [JsonProperty("survey_cnt")] public int SurveysCnt { get; set; }
        [JsonProperty("network_social")] public ICollection<SocialNetwork> SocialNetworks { get; set; }
    }
}