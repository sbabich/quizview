using System;
using System.Collections.Generic;

namespace AndroidNotificationQuiz.DomainLayer.Entities
{
    public class Survey : IEntity
    {
        public int Id { get; set; }
        public string Title { get; set; }
        public string Text { get; set; }
        public AdditionalInfo AdditionalInfo { get; set; }
        public virtual ICollection<Questionary> Questionary { get; set; }
        public DateTimeOffset NeedToBeFinishedFor { get; set; }
        public DateTimeOffset NeedToBeFinishedForStart { get; set; }
        public int Limit { get; set; }
        public int NumberOfUser { get; set; }
        public bool IsActive { get; set; }
        public DateTimeOffset CreatedAt { get; set; }
        public int Score { get; set; }
        public virtual ICollection<SurveyComment> SurveyComment { get; set; }
        public virtual ICollection<Push> Push { get; set; }
        public virtual ICollection<SurveyUser>  SurveyUser { get; set; }
        public virtual ICollection<Like> Likes { get; set; }
    }


}
