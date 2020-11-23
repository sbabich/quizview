using System;
using System.ComponentModel;
using System.ComponentModel.DataAnnotations;

namespace AndroidNotificationQuiz.Admin.ViewModels
{
    public class UserModel
    {
        [DisplayName("#")]
        public int Id { get; set; }

        [DisplayName("Имя пользователя")]
        public string Name { get; set; }

        [DisplayName("Дата регистрации")]
        public DateTime RegistredAt { get; set; }

        [DisplayName("Дата начала блокировки")]
        public DateTime? BanStartedAt { get; set; }

        [DisplayName("Дата окончания блокировки")]
        public DateTime? BanFineshedAt { get; set; }

        [DisplayName("Баланс")]
        public int Balance { get; set; }

        [DisplayName("Заблокированный")]
        public bool IsBanned { get; set; }
    }
}