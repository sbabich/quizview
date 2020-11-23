using System;
using System.Collections.Generic;
using System.Linq.Expressions;
using System.Threading.Tasks;
using AndroidNotificationQuiz.DomainLayer.Entities;

namespace AndroidNotificationQuiz.DomainLayer.Interfaces
{
    public interface IOrderRepository
    {
        Task<List<Order>> GetListAsync(Expression<Func<Order, bool>> whereClause = null, int skip = 0, int take = 0);
        Task<int> GetCount(Expression<Func<Order, bool>> whereClause = null);
        Task AddAsync(Order order);
        Task<Order> GetAsync(int id);
        Task UpdateAsync(Order item);
        Task Delete(Order item);
        Task UpdateAll(List<Order> allOrderOfUser);
    }
}
