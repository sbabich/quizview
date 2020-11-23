using System;
namespace AndroidNotificationQuiz.DomainLayer.Entities
{
    public class AuthToken : IEntity
    {
        public int Id { get; set; }
        public string Auth { get; set; }
        public string Refresh { get; set; }
        public DateTimeOffset RefreshExpiredAt { get; set; }
        public int UserId { get; set; }
    }
}

