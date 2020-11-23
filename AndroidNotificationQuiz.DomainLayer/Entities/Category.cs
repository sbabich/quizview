using System;
using System.Collections.Generic;

namespace AndroidNotificationQuiz.DomainLayer.Entities
{
    public class Category : IEntity
    {
        public int Id { get; set; }
        public virtual ICollection<Good> Good{ get; set; }
        public string Position { get; set; }
        public int Sort { get; set; }
        public DateTimeOffset CreatedAt { get; set; }
        public int AdminId { get; set; }
    }
}
