using System.Threading.Tasks;
using AndroidNotificationQuiz.DataLayer.Database;
using AndroidNotificationQuiz.DomainLayer.Entities;
using AndroidNotificationQuiz.DomainLayer.Interfaces;
using Microsoft.EntityFrameworkCore;

namespace AndroidNotificationQuiz.DataLayer.Repositories
{
    public class AdminRepository : IAdminRepository
    {
        private readonly AndroidNotificationQuizContext _context;

        public AdminRepository(AndroidNotificationQuizContext context)
        {
            _context = context;
        }

        public async Task<int> AddAsync(Admin admin)
        {
            await _context.Admins.AddAsync(admin);
            await _context.SaveChangesAsync();

            return admin.Id;
        }

        public Task<Admin> GetByEmailAsync(string email, string pwdsalt)
        {
            return _context.Admins.FirstOrDefaultAsync(p => p.Email == email && p.PwdSalt == pwdsalt);
        }

        public Task<Admin> GetByEmailAsync(string email)
        {
            return _context.Admins.FirstOrDefaultAsync(p => p.Email == email);
        }
    }
}