using System.Threading.Tasks;
using AndroidNotificationQuiz.DataLayer.Database;
using AndroidNotificationQuiz.DomainLayer.Entities;
using AndroidNotificationQuiz.DomainLayer.Interfaces;

namespace AndroidNotificationQuiz.DataLayer.Repositories
{
    public class DeviceRepository : IDeviceRepository
    {
        private readonly AndroidNotificationQuizContext _context;

        public DeviceRepository(AndroidNotificationQuizContext context)
        {
            _context = context;
        }

        public async Task<int> AddAsync(Device device)
        {
            await _context.Devices.AddAsync(device);
            await _context.SaveChangesAsync();
            return device.Id;
        }
    }
}