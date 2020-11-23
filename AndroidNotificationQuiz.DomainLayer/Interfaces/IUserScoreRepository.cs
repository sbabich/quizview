using System;
using System.Collections.Generic;
using System.Threading.Tasks;
using AndroidNotificationQuiz.DomainLayer.Entities;

namespace AndroidNotificationQuiz.DomainLayer.Interfaces
{
    public interface IUserScoreRepository
    {
        Task AddAsync(UserTransaction userScore);
        Task<UserTransaction> GetAsync(int userId, int surveyId);
        Task<List<UserTransaction>> GetAllAsync(int userId);
        Task Update(UserTransaction userScore);
        Task Delete(List<UserTransaction> ids);
        Task UpdateAll(List<UserTransaction> userScore);
    }
}
