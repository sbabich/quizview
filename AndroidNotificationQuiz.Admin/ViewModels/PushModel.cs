using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using AndroidNotificationQuiz.DomainLayer.Entities;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using Microsoft.AspNetCore.Mvc.Rendering;

namespace AndroidNotificationQuiz.Admin.ViewModels
{
    public class PushModel 
    {
        [Required(ErrorMessage = "Не указано название пуша")]
        public string Title { get; set; }

        [Required(ErrorMessage = "Не указан пароль")]
        public string Content { get; set; }

        [Required(ErrorMessage = "Не выбран опросник")]
        public int SurveyId { get; set; }

        [BindProperty]
        public List<SelectListItem> Surveys { get; set; }
    }
}
