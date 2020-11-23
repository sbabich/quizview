using System;
using System.Collections.Generic;

namespace AndroidNotificationQuiz.DomainLayer.Entities
{
    public class Good : IEntity
    {
        public int Id { get; set; }
        public string Title { get; set; }
        public string Description { get; set; }
        public string ImagePath { get; set; }
        public int Cost { get; set; }
        public decimal RealCost { get; set; }
        public DateTimeOffset CreatedAt { get; set; }
        public int AdminId { get; set; }
        public int CategoryId { get; set; }
        public int? PromoCategoryId { get; set; }
        public bool IsAutoIssuance { get; set; }
        public virtual ICollection<Order> Orders { get; set; }

        public Category Category { get; set; }
        public PromoCategory PromoCategory { get; set; }
    }
}
