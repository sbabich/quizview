using System;
using System.Linq.Expressions;
using System.Threading.Tasks;
using AndroidNotificationQuiz.DomainLayer.Entities;

namespace AndroidNotificationQuiz.DomainLayer.Interfaces
{
    public interface ISurveyUserRepository
    {
        Task AddAsync(SurveyUser surveyUser);
        Task<SurveyUser> GetAsync(int id, int userId);
        Task Update(SurveyUser user);
    }
}
