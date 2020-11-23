using System.Collections.Generic;
using System.Threading.Tasks;
using AndroidNotificationQuiz.DataLayer.Database;
using AndroidNotificationQuiz.DomainLayer.Entities;
using AndroidNotificationQuiz.DomainLayer.Interfaces;
using Microsoft.EntityFrameworkCore;

namespace AndroidNotificationQuiz.DataLayer.Repositories
{
    public class PromoCategoryRepository : IPromoCategoryRepository
    {
        private readonly AndroidNotificationQuizContext _context;

        public PromoCategoryRepository(AndroidNotificationQuizContext context)
        {
            _context = context;
        }

        public async Task AddAsync(PromoCategory category)
        {
            _context.Add(category);
            await _context.SaveChangesAsync();
        }

        public async Task<PromoCategory> GetAsync(int id)
        {
            var c = await _context.PromoCategories.FirstOrDefaultAsync(p => p.Id == id);

            if (c == null)
                throw new System.Exception($"Не найдена категория промокодов с ID={id}");

            return c;
        }

        public async Task<List<PromoCategory>> GetListAsync()
        {
            return await _context.PromoCategories.ToListAsync();
        }

        public async Task RemoveAsync(PromoCategory category)
        {
            _context.PromoCategories.Remove(category);
            await _context.SaveChangesAsync();
        }

        public async Task UpdateAsync(PromoCategory category)
        {
            _context.PromoCategories.Update(category);
            await _context.SaveChangesAsync();
        }
    }
}
