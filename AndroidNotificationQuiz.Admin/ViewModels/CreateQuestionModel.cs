using System;
using System.ComponentModel;
using System.ComponentModel.DataAnnotations;

namespace AndroidNotificationQuiz.Admin.ViewModels
{
    public class CreateQuestionModel
    {
        [Required(ErrorMessage = "Не указан вопрос")]
        [DisplayName("Вопрос")]
        public string Question { get; set; }

        [Required(ErrorMessage = "Не указан ответ")]
        [DisplayName("Ответ")]
        public string RightAnswer { get; set; }

        [DisplayName("#")]
        public int Id { get; set; }
        public int SurveyId { get; set; }
    }
}