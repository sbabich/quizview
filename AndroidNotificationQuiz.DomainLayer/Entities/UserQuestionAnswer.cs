using System;
namespace AndroidNotificationQuiz.DomainLayer.Entities
{
    public class UserQuestionAnswer : IEntity
    {
        public int Id { get; set; }
        public int SurveyUserId { get; set; }
        public int QuestionaryID { get; set; }
        public string Answer { get; set; }
    }
}
