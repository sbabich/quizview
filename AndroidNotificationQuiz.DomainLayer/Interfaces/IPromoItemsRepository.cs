using System;
using System.Collections.Generic;
using System.Linq.Expressions;
using System.Threading.Tasks;
using AndroidNotificationQuiz.DomainLayer.Entities;

namespace AndroidNotificationQuiz.DomainLayer.Interfaces
{
    public interface IPromoItemsRepository
    {
        Task<List<PromoItem>> GetListAsync(int skip, int take, int promoCategoryId, params Expression<Func<PromoItem, object>>[] includes);
        Task<int> CountAsync(Expression<Func<PromoItem, bool>> predicate, params Expression<Func<PromoItem, object>>[] includes);
        Task<List<PromoItem>> GetListByCategoryIdAsync(int skip, int take, int categoryId);
        Task AddAsync(PromoItem item);
        Task<PromoItem> GetAsync(int id);
        Task Delete(PromoItem item);
        Task UpdateAsync(PromoItem item);
    }
}
