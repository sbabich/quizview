
using System.ComponentModel;

namespace AndroidNotificationQuiz.Admin.ViewModels
{
    public class OrderModel
    {
        [DisplayName("#")]
        public int Id { get; set; }

        [DisplayName("Название")]
        public string Title { get; set; }

        [DisplayName("Описание")]
        public string Description { get; set; }

        [DisplayName("Цена")]
        public decimal Cost { get; set; }

        [DisplayName("Название категории")]
        public string CategoryTitle { get; set; }

        [DisplayName("Имя пользователя")]
        public string UserName { get; set; }

        [DisplayName("Id пользователя")]
        public string Social { get; set; }

        [DisplayName("Код активации")]
        public string PromoCode { get; set; }
    }
}
