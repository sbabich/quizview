using System;
using System.Collections.Generic;

namespace AndroidNotificationQuiz.DomainLayer.Entities
{
    public class SurveyUser : IEntity
    {
        public int Id { get; set; }
        public int UserId { get; set; }
        public int SurveyId { get; set; }
        public bool IsFinished { get; set; }
        public bool IsAllAnswersCorrect { get; set; }
        public DateTimeOffset? StartDate { get; set; }
        public DateTimeOffset? FinishDate { get; set; }
        public virtual ICollection<UserQuestionAnswer> UserQuestionAnswer { get; set; }

        public User User { get; set; }
        public Survey Survey { get; set; }
    }


}
