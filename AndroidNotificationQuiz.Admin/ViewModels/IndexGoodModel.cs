using System;
using System.Collections.Generic;

namespace AndroidNotificationQuiz.Admin.ViewModels
{
    public class IndexGoodModel
    {
        public IEnumerable<GoodModel> Goods { get; set; }
        public PageViewModel PageViewModel { get; set; }
    }
}
