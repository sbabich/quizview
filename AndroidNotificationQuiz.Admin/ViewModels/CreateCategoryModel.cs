using System;
using System.ComponentModel;
using System.ComponentModel.DataAnnotations;

namespace AndroidNotificationQuiz.Admin.ViewModels
{
    public class CreateCategoryModel
    {
        [DisplayName("#")]
        public int Id { get; set; }

        [Required(ErrorMessage = "Не указано название")]
        public string Position { get; set; }

        [Required(ErrorMessage = "Не указан порядок сортировки (чем ниже, тем больше порядок)")]
        public int Sort { get; set; }
    }
}
