using System;
using System.Collections.Generic;
using System.Linq;
using System.Linq.Expressions;
using System.Threading.Tasks;
using AndroidNotificationQuiz.DataLayer.Database;
using AndroidNotificationQuiz.DomainLayer.Entities;
using AndroidNotificationQuiz.DomainLayer.Interfaces;
using Microsoft.EntityFrameworkCore;

namespace AndroidNotificationQuiz.DataLayer.Repositories
{
    public class OrderRepository : IOrderRepository
    {
        private readonly AndroidNotificationQuizContext _context;

        public OrderRepository(AndroidNotificationQuizContext context)
        {
            _context = context;
        }

        public async Task AddAsync(Order order)
        {
            await _context.Orders.AddAsync(order);
            await _context.SaveChangesAsync();
        }

        public async Task Delete(Order order)
        {
            _context.Orders.Remove(order);
            await _context.SaveChangesAsync();
        }

        public async Task<Order> GetAsync(int id)
        {
            return await _context.Orders.Include(p => p.Good).FirstOrDefaultAsync(p => p.Id == id);
        }

        public async Task<List<Order>> GetListAsync(Expression<Func<Order, bool>> whereClause, int skip, int take)
        {
            var query = _context.Orders
                .Include(p => p.Good)
                .ThenInclude(p => p.Category)
                .Include(p => p.User)
                .ThenInclude(p => p.SocialNetwork)
                .Include(p => p.PromoItem)
                .Where(whereClause);

            if (whereClause != null)
                query = query.Where(whereClause);

            if (take > 0)
                query = query.Skip(skip).Take(take);

            return await query.ToListAsync();
        }

        public async Task<int> GetCount(Expression<Func<Order, bool>> whereClause)
        {
            var query = _context.Orders
                .Where(whereClause);

            if (whereClause != null)
                query = query.Where(whereClause);

            return await query.CountAsync<Order>();
        }

        public async Task UpdateAll(List<Order> allOrderOfUser)
        {
            _context.Orders.UpdateRange(allOrderOfUser);
            await _context.SaveChangesAsync();
        }

        public async Task UpdateAsync(Order order)
        {
            _context.Orders.Update(order);
            await _context.SaveChangesAsync();
        }
    }
}