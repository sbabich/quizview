using System;
using System.ComponentModel.DataAnnotations.Schema;

namespace AndroidNotificationQuiz.DomainLayer.Entities
{
    public class AdditionalInfo : IEntity
    {
        public int Id { get; set; }
        public string LinkToSite { get; set; }
        public string LinkToVideo
        {
            get; set;
        }

        [NotMapped]
        public int SurveyId { get; set; }
    }
}
