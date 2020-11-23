using System.Linq;
using System.Threading.Tasks;
using AndroidNotificationQuiz.DataLayer.Database;
using AndroidNotificationQuiz.DomainLayer.Entities;
using AndroidNotificationQuiz.DomainLayer.Interfaces;
using Microsoft.EntityFrameworkCore;

namespace AndroidNotificationQuiz.DataLayer.Repositories
{
    public class SurveyUserRepository : ISurveyUserRepository
    {
        private readonly AndroidNotificationQuizContext _context;

        public SurveyUserRepository(AndroidNotificationQuizContext context)
        {
            _context = context;
        }

        public async Task AddAsync(SurveyUser surveyUser)
        {
            await _context.SurvaysUsers.AddAsync(surveyUser);
            await _context.SaveChangesAsync();
        }

        public async Task<SurveyUser> GetAsync(int surveyId, int userId)
        {
            return await _context.SurvaysUsers.Where(p => p.SurveyId == surveyId && p.UserId == userId)
                .FirstOrDefaultAsync();
        }

        public async Task Update(SurveyUser user)
        {
            _context.SurvaysUsers.Update(user);
            await _context.SaveChangesAsync();
        }
    }
}