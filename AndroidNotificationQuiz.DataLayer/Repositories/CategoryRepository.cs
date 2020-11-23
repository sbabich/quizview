using System.Collections.Generic;
using System.Threading.Tasks;
using AndroidNotificationQuiz.DataLayer.Database;
using AndroidNotificationQuiz.DomainLayer.Entities;
using AndroidNotificationQuiz.DomainLayer.Interfaces;
using Microsoft.EntityFrameworkCore;

namespace AndroidNotificationQuiz.DataLayer.Repositories
{
    public class CategoryRepository : ICategoryRepository
    {
        private readonly AndroidNotificationQuizContext _context;

        public CategoryRepository(AndroidNotificationQuizContext context)
        {
            _context = context;
        }

        public async Task AddAsync(Category category)
        {
            _context.Add(category);
            await _context.SaveChangesAsync();
        }

        public async Task<Category> GetAsync(int id)
        {
            return await _context.Categories.FirstOrDefaultAsync(p => p.Id == id);
        }

        public async Task<List<Category>> GetListAsync()
        {
            return await _context.Categories.ToListAsync();
        }

        public async Task UpdateAsync(Category category)
        {
            _context.Categories.Update(category);
            await _context.SaveChangesAsync();
        }
    }
}