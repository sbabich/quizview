using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace AndroidNotificationQuiz.DomainLayer.Entities
{
    public class VideoTimeline : IEntity
    {
        public int Id { get; set; }
        public int UserId { get; set; }
        public string VideoId { get; set; }
        public long Timeline { get; set; }
        public long RealTime { get; set; }
        public long Counter { get; set; }
        public long Duration { get; set; }
    }
}
