using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace AndroidNotificationQuiz.DomainLayer.Entities
{
    public class PromoCategory : IEntity
    {
        public int Id { get; set; }
        public virtual ICollection<PromoItem> Items { get; set; }
        public string Name { get; set; }
        public string Description { get; set; }
        public int Sort { get; set; }
        public DateTimeOffset CreatedAt { get; set; }
    }
}
