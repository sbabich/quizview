using System;
using System.ComponentModel.DataAnnotations.Schema;

namespace AndroidNotificationQuiz.DomainLayer.Entities
{
    public class Questionary : IEntity
    {
        public int Id { get; set; }
        public string Question { get; set; }
        public string RightAnswer { get; set; }
        public int SurveyId { get; set; }
    }
}
