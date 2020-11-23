using System.Threading.Tasks;
using AndroidNotificationQuiz.DataLayer.Database;
using AndroidNotificationQuiz.DomainLayer.Interfaces;
using Microsoft.EntityFrameworkCore;

namespace AndroidNotificationQuiz.DataLayer.Repositories
{
    public class LikeRepository : ILikeRepository
    {
        private readonly AndroidNotificationQuizContext _context;

        public LikeRepository(AndroidNotificationQuizContext context)
        {
            _context = context;
        }

        public async Task<int> GetLikes(int surveyId)
        {
            return await _context.Likes.CountAsync(p => p.SurveyId == surveyId);
        }
    }
}