using System;
using System.ComponentModel;
using System.ComponentModel.DataAnnotations;

namespace AndroidNotificationQuiz.Admin.ViewModels
{
    public class SurveyModel
    {
        [DisplayName("#")]
        public int Id { get; set; }

        [DisplayName("Название")]
        public string Title { get; set; }

        [DisplayName("Дата создания")]
        public DateTime CreatedAt { get; set; }

        [DisplayName("Активный")]
        public bool IsActive { get; set; }
    }
}