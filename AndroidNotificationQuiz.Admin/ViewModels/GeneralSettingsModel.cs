using System;
using System.Collections.Generic;
using System.ComponentModel;

namespace AndroidNotificationQuiz.Admin.ViewModels
{
    public class GeneralSettingsModel
    {
        [DisplayName("% видеофайла, который должен просмотреть пользователь")]
        public int VideoViewPercentage { get; set; }
    }
}
