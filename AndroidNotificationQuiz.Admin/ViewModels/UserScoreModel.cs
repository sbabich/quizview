using System;
using System.ComponentModel.DataAnnotations;

namespace AndroidNotificationQuiz.Admin.ViewModels
{
    public class UserScoreModel
    {
        public int Score { get; set; }
        [Range(0, int.MaxValue, ErrorMessage = "Не указанны баллы")]
        public int ScoreDev { get; set; }
        public int Id { get; set; }
        public string UserName { get; set; }
        public int PageIndex { get; set; }
        public string SearchString { get; set; }
    }
}
