using System;
using System.Collections.Generic;
using System.Linq.Expressions;
using System.Threading.Tasks;
using AndroidNotificationQuiz.DomainLayer.Entities;

namespace AndroidNotificationQuiz.DomainLayer.Interfaces
{
    public interface ISurveyRepository
    {
        Task<List<Survey>> GetListAsync(string orderType=null, int skip=0, int take=0, 
                                            Expression<Func<Survey, bool>> whereClause = null,
                                            params Expression<Func<Survey, object>>[] includes);
        Task<SurveyDetails> GetAsync(int id);
        //Task<int> GetLikes(int id);
        Task<int> AddAsync(Survey survey);
        Task<int> DeleteAsync(Survey survey);
        Task<int> AddAdditionalInfoAsync(AdditionalInfo additionalInfo);
        Task<int> AddQuestionaryAsync(Questionary questionary);
        Task<int> CountAsync(Expression<Func<Survey, bool>> predicate, params Expression<Func<Survey, object>>[] includes);
        Task AddCommentAsync(SurveyComment surveyComment);
        Task AddLikeAsync(Like like);
        Task DeleteLikeAsync(Like like);
        Task Update(Survey survey);
        Task UpdateQuestionary(Questionary questionary);
        Task UpdateAdditionalInfo(AdditionalInfo additionalInfo);
    }
}
