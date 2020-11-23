using System;
using System.Threading.Tasks;
using AndroidNotificationQuiz.DomainLayer.Entities;

namespace AndroidNotificationQuiz.DomainLayer.Interfaces
{
    public interface IGeneralSettingsRepository
    {
        Task<KeyValue> GetAsync(string key);
        Task<int> GetVideoViewPercentage();
        Task SetVideoViewPercentage(int value);
    }
}
