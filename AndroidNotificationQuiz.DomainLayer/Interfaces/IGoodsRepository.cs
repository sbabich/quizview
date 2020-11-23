using System;
using System.Collections.Generic;
using System.Linq.Expressions;
using System.Threading.Tasks;
using AndroidNotificationQuiz.DomainLayer.Entities;

namespace AndroidNotificationQuiz.DomainLayer.Interfaces
{
    public interface IGoodsRepository
    {
        Task<List<Good>> GetListAsync(int skip, int take, params Expression<Func<Good, object>>[] includes);
        Task<int> CountAsync(Expression<Func<Good, bool>> predicate, params Expression<Func<Good, object>>[] includes);
        Task<List<Good>> GetListByCategoryIdAsync(int skip, int take, int categoryId);
        Task AddAsync(Good category);
        Task<Good> GetAsync(int id);
        Task Delete(Good good);
        Task UpdateAsync(Good good);
        Task<bool> IsAvailable(Good good);
        Task<PromoItem> PickUpPromoItem(Good good);
    }
}
