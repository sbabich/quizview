using System;
using System.Collections.Generic;

namespace AndroidNotificationQuiz.DomainLayer.Entities
{
    public class User : IEntity
    {
        public int Id { get; set; }
        public string Nick { get; set; }
        public string Name { get; set; }
        public string Surname { get; set; }
        public string AvatarPath { get; set; }
        public string Email { get; set; }
        public DateTimeOffset RegistredAt { get; set; }
        public bool IsBanned { get; set; }
        public DateTimeOffset? BanStartedAt { get; set; }
        public DateTimeOffset? BanFineshedAt { get; set; }
        public int Balance { get; set; }
        public virtual ICollection<NetworkProfile> SocialNetwork { get; set; }
        public virtual ICollection<UserTransaction> UserScores { get; set; }
        public virtual ICollection<SurveyComment> SurveyComments { get; set; }
        public virtual ICollection<SurveyUser> SurveyUsers { get; set; }
        public virtual ICollection<Like> Likes { get; set; }
        public virtual ICollection<Order> Orders { get; set; }
        public AuthToken AuthToken { get; set; }
    }

    public class NetworkProfile : IEntity
    {
        public string Title { get; set; }
        public string Link { get; set; }
        public int Id { get; set; }
        public int UserId { get; set; }
    }
}
