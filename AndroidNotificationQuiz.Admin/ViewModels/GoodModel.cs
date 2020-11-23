using System;
using System.ComponentModel;

namespace AndroidNotificationQuiz.Admin.ViewModels
{
    public class GoodModel
    {
        [DisplayName("#")]
        public int Id { get; set; }

        [DisplayName("Название")]
        public string Title { get; set; }

        [DisplayName("Описание")]
        public string Description { get; set; }

        [DisplayName("Цена")]
        public int Cost { get; set; }

        [DisplayName("Цена в валюте")]
        public decimal RealCost { get; set; }

        [DisplayName("Изображение")]
        public string ImagePath { get; set; }

        [DisplayName("Доступен")]
        public bool IsAvailable { get; set; }
    }
}
