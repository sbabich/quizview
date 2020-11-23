using System.Collections.Generic;
using System.Threading.Tasks;
using AndroidNotificationQuiz.DomainLayer.Entities;

namespace AndroidNotificationQuiz.DomainLayer.Interfaces
{
    public interface IPromoCategoryRepository
    {
        Task<List<PromoCategory>> GetListAsync();
        Task AddAsync(PromoCategory category);
        Task RemoveAsync(PromoCategory category);
        Task<PromoCategory> GetAsync(int id);
        Task UpdateAsync(PromoCategory category);
    }
}
