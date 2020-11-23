using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using AndroidNotificationQuiz.Admin.Utils;
using AndroidNotificationQuiz.DomainLayer.Entities;

namespace AndroidNotificationQuiz.Admin.ViewModels
{
    public class CreateSurveyModel
    {
        [Required(ErrorMessage = "Не указан заголовок")]
        public string Title { get; set; }

        [Required(ErrorMessage = "Не заполнено описание опроса")]
        public string Text { get; set; }

        [Required(ErrorMessage = "Не заполнено максимальное количество участников опроса")]
        [Range(0, int.MaxValue, ErrorMessage = "Не заполнено максимальное количество участников опроса")]
        public int Limit { get; set; }

        [Required(ErrorMessage = "Не заполнено вознаграждение за опрос")]
        [Range(0, int.MaxValue, ErrorMessage = "Не заполнено вознаграждение за опрос")]
        public int Score { get; set; }

        [Required(ErrorMessage = "Не заполнена дата окончания опроса")]
        [DataType(DataType.Time)]
        //[DateCorrectRangeAttribute(ValidateStartDate = true, ErrorMessage ="Выберите будущую дату")]
        [DisplayFormat(DataFormatString = "{hh:ss}")]
        public TimeSpan NeedToBeFinishedFor { get; set; }

     
        public int Id { get; set; }
        public List<CreateQuestionModel> Questionaries { get; set; }

        public int? AdditionalInfoId { get; set; }
        public DateTime CreatedAt { get; set; }
        public int NumberOfUser { get; set; }
        public bool IsActive { get; set; }
    }
}