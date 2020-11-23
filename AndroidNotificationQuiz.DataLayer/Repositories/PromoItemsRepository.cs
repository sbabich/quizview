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
    public class PromoItemsRepository : IPromoItemsRepository
    {
        private readonly AndroidNotificationQuizContext _context;

        public PromoItemsRepository(AndroidNotificationQuizContext context)
        {
            _context = context;
        }

        public async Task AddAsync(PromoItem item)
        {
            _context.Add(item);
            await _context.SaveChangesAsync();
        }

        public async Task<int> CountAsync(Expression<Func<PromoItem, bool>> predicate,
            params Expression<Func<PromoItem, object>>[] includes)
        {
            if (predicate != null)
                return await _context.PromoItems.Includes(includes).CountAsync(predicate);

            return await _context.PromoItems.Includes(includes).CountAsync();
        }

        public async Task Delete(PromoItem item)
        {
            _context.PromoItems.Remove(item);
            await _context.SaveChangesAsync();
        }

        public async Task<PromoItem> GetAsync(int id)
        {
            return await _context.PromoItems.FirstOrDefaultAsync(p => p.Id == id);
        }


        public async Task<List<PromoItem>> GetListAsync(int skip, int take, int promoCategoryId, params Expression<Func<PromoItem, object>>[] includes)
        {
            var query = _context.PromoItems.Includes(includes);

            return await _context.PromoItems
                .Where(o => o.PromoCategoryId == promoCategoryId)
                .OrderBy((arg) => arg.IsUsed)
                .ThenByDescending((arg) => arg.Id)
                .Skip(skip)
                .Take(take)
                .ToListAsync();
        }

        public async Task<List<PromoItem>> GetListByCategoryIdAsync(int skip, int take, int categoryId)
        {
            var query = _context.PromoItems.Where(p => p.PromoCategoryId == categoryId);

            return await query.OrderBy((arg) => arg.Id).Skip(skip).Take(take).ToListAsync();
        }

        public async Task UpdateAsync(PromoItem item)
        {
            _context.PromoItems.Update(item);
            await _context.SaveChangesAsync();
        }
    }
}
