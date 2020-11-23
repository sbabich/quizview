using System;
namespace AndroidNotificationQuiz.DomainLayer.Entities
{
    public class SurveyComment : IEntity
    {
        public int Id { get; set; }
        public int UserId { get; set; }
        public int SurveyId { get; set; }
        public string Text { get; set; }
        public DateTimeOffset CreatedAt { get; set; }

        public User User { get; set; }
        public Survey Survey { get; set; }
    }
}
