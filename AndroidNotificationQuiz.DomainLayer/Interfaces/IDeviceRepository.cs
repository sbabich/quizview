using System.Threading.Tasks;
using AndroidNotificationQuiz.DomainLayer.Entities;

namespace AndroidNotificationQuiz.DomainLayer.Interfaces
{
    public interface IDeviceRepository
    {
        Task<int> AddAsync(Device device);
    }
}
