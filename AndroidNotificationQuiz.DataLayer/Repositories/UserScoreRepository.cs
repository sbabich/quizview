using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using AndroidNotificationQuiz.DataLayer.Database;
using AndroidNotificationQuiz.DomainLayer.Entities;
using AndroidNotificationQuiz.DomainLayer.Interfaces;
using Microsoft.EntityFrameworkCore;

namespace AndroidNotificationQuiz.DataLayer.Repositories
{
    public class UserScoreRepository : IUserScoreRepository
    {
        private readonly AndroidNotificationQuizContext _context;

        public UserScoreRepository(AndroidNotificationQuizContext context)
        {
            _context = context;
        }

        public async Task AddAsync(UserTransaction userScore)
        {
            await _context.UsersScores.AddAsync(userScore);
            await _context.SaveChangesAsync();
        }

        public async Task Delete(List<UserTransaction> ids)
        {
            _context.UsersScores.RemoveRange(ids.ToArray());
            await _context.SaveChangesAsync();
        }

        public async Task<List<UserTransaction>> GetAllAsync(int userId)
        {
            return await _context.UsersScores.Where(p => p.UserId == userId).ToListAsync();
        }

        public async Task<UserTransaction> GetAsync(int userId, int surveyId)
        {
            return await _context.UsersScores.FirstOrDefaultAsync(p => p.SurveyId == surveyId && p.UserId == userId);
        }

        public async Task Update(UserTransaction userScore)
        {
            _context.UsersScores.Update(userScore);
            await _context.SaveChangesAsync();
        }

        public async Task UpdateAll(List<UserTransaction> userScore)
        {
            _context.UsersScores.UpdateRange(userScore);
            await _context.SaveChangesAsync();
        }
    }
}