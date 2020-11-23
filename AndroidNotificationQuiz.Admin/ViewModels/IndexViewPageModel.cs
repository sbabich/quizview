using System;
using System.Collections.Generic;

namespace AndroidNotificationQuiz.Admin.ViewModels
{
    public class IndexViewPageModel<T>
    {
        public IEnumerable<T> Items { get; set; }
        public PageViewModel PageViewModel { get; set; }
        public string SerachString { get; set; }
    }
}
