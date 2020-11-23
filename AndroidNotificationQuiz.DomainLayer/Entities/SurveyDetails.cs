using System;
using System.Collections.Generic;
namespace AndroidNotificationQuiz.DomainLayer.Entities
{
    public class SurveyDetails
    {
        public Survey Survey { get; set; }
        public IEnumerable<SurveyUser> SurveyUsers { get; set; }
    }
}
