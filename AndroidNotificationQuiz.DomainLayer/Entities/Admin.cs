using System;
using System.Collections.Generic;

namespace AndroidNotificationQuiz.DomainLayer.Entities
{
    public class Admin : IEntity
    {
        public int Id { get; set; }
        public string Email { get; set; }
        public string PwdSalt { get; set; }
        public DateTimeOffset CreatedAt { get; set; }
        public int? OwnerId { get; set; }

        public virtual ICollection<Push> Pushs { get; set; }
    }
}
