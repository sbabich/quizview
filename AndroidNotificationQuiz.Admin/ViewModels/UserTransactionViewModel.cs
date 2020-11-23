using System;
using System.ComponentModel;

namespace AndroidNotificationQuiz.Admin.ViewModels
{
    public class UserTransactionViewModel
    {
        [DisplayName("#")]
        public int Id { get; set; }

        [DisplayName("Дата транцакции")]
        public DateTimeOffset? CreatedAt { get; set; }

        [DisplayName("Тип транцакции")]
        public string Type { get; set; }

        [DisplayName("Баллы")]
        public int Score { get; set; }
    }
}
