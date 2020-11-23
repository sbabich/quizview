using System;
using System.ComponentModel.DataAnnotations;

namespace AndroidNotificationQuiz.Admin.ViewModels
{
    public class LoginModel
    {
        [Required(ErrorMessage = "Не указан Email")]
        public string Email { get; set; }

        [Required(ErrorMessage = "Не указан пароль")]
        [DataType(DataType.Password)]
        [MinLength(8, ErrorMessage = "Минимальная длина - 8 символов")]
        public string Password { get; set; }
    }
}
