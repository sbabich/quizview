using System;
using System.Collections.Generic;
using System.Linq;
using System.Linq.Expressions;
using System.Threading.Tasks;
using System.Transactions;
using AndroidNotificationQuiz.DataLayer.Database;
using AndroidNotificationQuiz.DomainLayer.Entities;
using AndroidNotificationQuiz.DomainLayer.Interfaces;
using Microsoft.EntityFrameworkCore;

namespace AndroidNotificationQuiz.DataLayer.Repositories
{
    public class GoodsRepository : IGoodsRepository
    {
        private readonly AndroidNotificationQuizContext _context;

        public GoodsRepository(AndroidNotificationQuizContext context)
        {
            _context = context;
        }

        public async Task AddAsync(Good good)
        {
            _context.Add(good);
            await _context.SaveChangesAsync();
        }

        public async Task<int> CountAsync(Expression<Func<Good, bool>> predicate,
            params Expression<Func<Good, object>>[] includes)
        {
            if (predicate != null)
                return await _context.Goods.Includes(includes).CountAsync(predicate);

            return await _context.Goods.Includes(includes).CountAsync();
        }

        public async Task Delete(Good good)
        {
            _context.Goods.Remove(good);
            await _context.SaveChangesAsync();
        }

        public async Task<Good> GetAsync(int id)
        {
            return await _context.Goods.FirstOrDefaultAsync(p => p.Id == id);
        }

        public async Task<PromoItem> PickUpPromoItem(Good good)
        {
            if (good.IsAutoIssuance && good.PromoCategoryId.HasValue)
            {
                using (var scope = _context.Database.BeginTransaction())
                {
                    //Lock the table during this transaction
                    _context.Database.ExecuteSqlCommand("LOCK TABLE public.\"PromoItems\"");

                    var cat = await _context.PromoCategories.FirstOrDefaultAsync(o => o.Id == good.PromoCategoryId.Value);
                    if (cat == null)
                        return null;

                    var promoItem = await _context.PromoItems.FirstOrDefaultAsync(o => o.PromoCategoryId == cat.Id && o.IsUsed == 0);

                    if (promoItem == null)
                        return null;

                    promoItem.IsUsed = 1;
                    await _context.SaveChangesAsync();

                    //Complete the scope here to commit, otherwise it will rollback
                    //The table lock will be released after we exit the TransactionScope block
                    scope.Commit();

                    return promoItem;
                }
            }

            return null;
        }

        public async Task<List<Good>> GetListAsync(int skip, int take, params Expression<Func<Good, object>>[] includes)
        {
            var query = _context.Goods.Includes(includes);
            return await query.OrderBy((arg) => arg.Cost).Skip(skip).Take(take).ToListAsync();
        }

        public async Task<List<Good>> GetListByCategoryIdAsync(int skip, int take, int categoryId)
        {
            var query = _context.Goods.Where(p => p.CategoryId == categoryId);
            return await query.OrderBy((arg) => arg.Cost).Skip(skip).Take(take).ToListAsync();
        }

        public async Task<bool> IsAvailable(Good good)
        {
            if (good.IsAutoIssuance && good.PromoCategoryId.HasValue)
            {
                var cat = await _context.PromoCategories.FirstOrDefaultAsync(o => o.Id == good.PromoCategoryId.Value);
                if (cat == null)
                    return false;

                return await _context.PromoItems.AnyAsync(o => o.PromoCategoryId == cat.Id && o.IsUsed == 0);
            }

            return true;
        }

        public async Task UpdateAsync(Good good)
        {
            _context.Goods.Update(good);
            await _context.SaveChangesAsync();
        }
    }
}