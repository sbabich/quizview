using System;
namespace AndroidNotificationQuiz.DomainLayer.Entities
{
    public class Order : IEntity
    {
        public int Id { get; set; }
        public DateTimeOffset OrderedAt { get; set; }
        public int GoodId { get; set; }
        public int UserId { get; set; }
        public int? PromoItemId { get; set; }
        public bool Completed { get; set; }
        public bool IsNotCalculated { get; set; }
        public DateTimeOffset? CompletedAt { get; set; }

        public Good Good { get; set; }
        public User User { get; set; }
        public PromoItem PromoItem { get; set; }
    }
}
