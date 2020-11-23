using System;
namespace AndroidNotificationQuiz.DomainLayer.Entities
{
    public class PhoneIdentificator : IEntity
    {
        public int Id { get; set; }
        public string DeviceId { get; set; }
        public DeviceType PhoneType { get; set; }
        public int UserId { get; set; }
    }
}
