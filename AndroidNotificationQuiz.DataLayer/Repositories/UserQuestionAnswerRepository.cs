using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using AndroidNotificationQuiz.DataLayer.Database;
using AndroidNotificationQuiz.DomainLayer.Entities;
using AndroidNotificationQuiz.DomainLayer.Interfaces;
using Microsoft.EntityFrameworkCore;

namespace AndroidNotificationQuiz.DataLayer.Repositories
{
    public class UserQuestionAnswerRepository : IUserQuestionAnswerRepository
    {
        private readonly AndroidNotificationQuizContext _context;

        public UserQuestionAnswerRepository(AndroidNotificationQuizContext context)
        {
            _context = context;
        }

        public async Task<int> AddAsync(UserQuestionAnswer userQuestionAnswer)
        {
            await _context.UserQuestionAnswers.AddAsync(userQuestionAnswer);
            await _context.SaveChangesAsync();
            return userQuestionAnswer.Id;
        }

        public async Task<List<UserQuestionAnswer>> GetAsync(int id)
        {
            return await _context.UserQuestionAnswers.Where(p => p.SurveyUserId == id).ToListAsync();
        }
    }
}