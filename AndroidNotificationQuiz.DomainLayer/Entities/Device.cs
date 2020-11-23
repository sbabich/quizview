using System;
namespace AndroidNotificationQuiz.DomainLayer.Entities
{
    public class Device : IEntity
    {
        public int Id { get; set; }
        public string DeviceId { get; set; }
        public DeviceType Type { get; set; }
    }

    public enum DeviceType { android, ios }
}
