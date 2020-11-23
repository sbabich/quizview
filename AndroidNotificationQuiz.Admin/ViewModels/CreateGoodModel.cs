using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;

namespace AndroidNotificationQuiz.Admin.ViewModels
{
    public class CreateGoodModel
    {
        [Required(ErrorMessage = "Не указано название")]
        public string Title { get; set; }

        [Required(ErrorMessage = "Не указано описание")]
        public string Description { get; set; }

        [Range(1, int.MaxValue, ErrorMessage = "Не указана стоимость")]
        public int Cost { get; set; }

        [Range(1, int.MaxValue, ErrorMessage = "Не указана стоимость в валюте")]
        public decimal RealCost { get; set; }

        [Required(ErrorMessage = "Не указана категория")]
        public int CategoryId { get; set; }

        public bool IsAutoGetting { get; set; }

        [Required(ErrorMessage = "Не указана промо категория")]
        public int PromoCategoryId { get; set; }

        //[Required(ErrorMessage = "Не выбран файл")]
        public IFormFile UploadedFile { get; set; }

        [BindProperty]
        public List<SelectListItem> Categories { get; set; }

        [BindProperty]
        public List<SelectListItem> PromoCategories { get; set; }

        public int Id { get; set; }

        //[Required(ErrorMessage = "Не выбран файл")]
        public string DBPathFile { get; set; }
    }
}
