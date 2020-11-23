using System.Collections.Generic;
using System.Threading.Tasks;
using AndroidNotificationQuiz.DomainLayer.Entities;

namespace AndroidNotificationQuiz.DomainLayer.Interfaces
{
    public interface ICategoryRepository
    {
        Task<List<Category>> GetListAsync();
        Task AddAsync(Category category);
        Task<Category> GetAsync(int id);
        Task UpdateAsync(Category category);
    }
}
