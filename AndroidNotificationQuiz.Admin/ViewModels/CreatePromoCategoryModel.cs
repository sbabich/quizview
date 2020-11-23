using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace AndroidNotificationQuiz.Admin.ViewModels
{
    public class CreatePromoCategoryModel
    {
        [DisplayName("#")]
        public int Id { get; set; }

        [Required(ErrorMessage = "Не указано название")]
        public string Name { get; set; }

        public int Sort { get; set; }
    }
}
