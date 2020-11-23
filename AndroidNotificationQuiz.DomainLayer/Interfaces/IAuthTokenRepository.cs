using System;
using System.Threading.Tasks;
using AndroidNotificationQuiz.DomainLayer.Entities;

namespace AndroidNotificationQuiz.DomainLayer.Interfaces
{
    public interface IAuthRepository
    {
        Task<AuthToken> Get(int id);

        Task Update(AuthToken admin);
    }
}
