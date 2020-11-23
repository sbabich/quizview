using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace AndroidNotificationQuiz.Admin.ViewModels
{
    public class IndexPromoItemModel
    {
        public IEnumerable<PromoItemModel> PromoItems { get; set; }
        public PageViewModel PageViewModel { get; set; }
        public string PromoCategoryName { get; set; }
        public int PromoCategoryId { get; set; }
    }
}
