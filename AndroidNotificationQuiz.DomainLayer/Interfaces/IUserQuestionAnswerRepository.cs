using System;
using System.Collections.Generic;
using System.Threading.Tasks;
using AndroidNotificationQuiz.DomainLayer.Entities;

namespace AndroidNotificationQuiz.DomainLayer.Interfaces
{
    public interface IUserQuestionAnswerRepository
    {
        Task<int> AddAsync(UserQuestionAnswer survey);
        Task<List<UserQuestionAnswer>> GetAsync(int id);
    }
}
