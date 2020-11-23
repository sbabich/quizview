using System;
using System.Collections.Generic;
using System.Linq.Expressions;
using System.Threading.Tasks;
using AndroidNotificationQuiz.DomainLayer.Entities;

namespace AndroidNotificationQuiz.DomainLayer.Interfaces
{
    public interface IUserRepository
    {
        Task<int> AddAsync(User user);

        Task<User> GetByEmailAsync(string id);

        Task<User> GetAsync(int id);

        Task Update(User user);

        Task<List<User>> GetListAsync(int skip, int take, Expression<Func<User, bool>> predicate, params Expression<Func<User, object>>[] includes);

        Task<List<User>> GetListOrderedByScore(int skip, int take, params Expression<Func<User, object>>[] includes);

        Task<int> CountAsync(Expression<Func<User, bool>> predicate, params Expression<Func<User, object>>[] includes);
        Task Delete(AuthToken authToken);
    }
}