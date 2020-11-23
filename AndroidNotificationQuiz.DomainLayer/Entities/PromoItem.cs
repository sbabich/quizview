using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace AndroidNotificationQuiz.DomainLayer.Entities
{
    public class PromoItem : IEntity
    {
        public int Id { get; set; }
        public string Code { get; set; }
        public DateTimeOffset CreatedAt { get; set; }
        public int IsUsed { get; set; }
        public int PromoCategoryId { get; set; }

        public PromoCategory Category { get; set; }
    }
}
