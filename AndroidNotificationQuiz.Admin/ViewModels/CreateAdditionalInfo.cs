using System;
using System.ComponentModel.DataAnnotations;

namespace AndroidNotificationQuiz.Admin.ViewModels
{
    public class CreateAdditionalInfo
    {

        public string LinkToSite { get; set; }
        public string LinkToVideo { get; set; }
        public int SurveyId { get; set; }

        public int Id { get; set; }
    }
}
