using System;
using System.Threading.Tasks;
using AndroidNotificationQuiz.DomainLayer.Entities;

namespace AndroidNotificationQuiz.DomainLayer.Interfaces
{
    public interface IAdminRepository
    {
        Task<Admin> GetByEmailAsync(string email, string pwdslt);

        Task<Admin> GetByEmailAsync(string email);

        Task<int> AddAsync(Admin admin);
    }
}
