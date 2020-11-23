using System;
namespace AndroidNotificationQuiz.DomainLayer.Entities
{
    public class Push : IEntity
    {
        public int Id { get; set; }
        public string Title { get; set; }
        public string Content { get; set; }
        public int SurveyId { get; set; }
        public int AdminId { get; set; }
        public DateTimeOffset CreatedAt { get; set; }

        public Admin Admin { get; set; }
        public Survey Survey { get; set; }
    }
}
