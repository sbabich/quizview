using System;
namespace AndroidNotificationQuiz.DomainLayer.Entities
{
    public class UserTransaction : IEntity
    {
        public int Id { get; set; }
        public int UserId { get; set; }
        public int? SurveyId { get; set; }
        public int Score { get; set; }
        public DateTimeOffset? CreatedAt { get; set; }
        public TransactionType Type { get; set; }

        public User User { get; set; }
        public Survey Survey { get; set; }
    }

    public enum TransactionType { Survey, GoodBuy, GoodReturn, AdminPlus, AdminMinus  }
}
