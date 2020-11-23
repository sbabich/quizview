using System;
namespace AndroidNotificationQuiz.DomainLayer.Entities
{
    public class Like : IEntity
    {
        public int Id { get; set; }
        public DateTimeOffset LikedAt { get; set; }
        public int UserId { get; set; }
        public int SurveyId { get; set; }

        public User User { get; set; }
        public Survey Survey { get; set; }
    }
}
