using System;
using System.Collections.Generic;
using System.Linq;
using System.Linq.Expressions;
using System.Threading.Tasks;
using AndroidNotificationQuiz.DataLayer.Database;
using AndroidNotificationQuiz.DomainLayer.Entities;
using AndroidNotificationQuiz.DomainLayer.Interfaces;
using Microsoft.EntityFrameworkCore;

namespace AndroidNotificationQuiz.DataLayer.Repositories
{
    public class SurveyRepository : ISurveyRepository
    {
        private readonly AndroidNotificationQuizContext _context;

        public SurveyRepository(AndroidNotificationQuizContext context)
        {
            _context = context;
        }

        public async Task<int> AddAdditionalInfoAsync(AdditionalInfo additionalInfo)
        {
            var id = await _context.AdditionalInfos.AddAsync(additionalInfo);
            var survey = await _context.Survays.FindAsync(additionalInfo.SurveyId);
            survey.AdditionalInfo = additionalInfo;
            _context.Survays.Update(survey);
            await _context.SaveChangesAsync();
            return survey.Id;
        }

        public async Task<int> AddAsync(Survey survey)
        {
            await _context.Survays.AddAsync(survey);
            await _context.SaveChangesAsync();
            return survey.Id;
        }

        public async Task AddCommentAsync(SurveyComment surveyComment)
        {
            await _context.SurvaysComments.AddAsync(surveyComment);
            await _context.SaveChangesAsync();
        }

        public async Task AddLikeAsync(Like like)
        {
            await _context.Likes.AddAsync(like);
            await _context.SaveChangesAsync();
        }

        public async Task<int> AddQuestionaryAsync(Questionary questionary)
        {
            var id = await _context.Questionaries.AddAsync(questionary);
            var survey = await _context.Survays.FindAsync(questionary.SurveyId);
            questionary.SurveyId = survey.Id;
            if (survey.Questionary == null)
                survey.Questionary = new List<Questionary> {questionary};
            else
                survey.Questionary.Add(questionary);
            _context.Survays.Update(survey);
            await _context.SaveChangesAsync();
            return survey.Id;
        }

        public async Task<int> CountAsync(Expression<Func<Survey, bool>> predicate,
            params Expression<Func<Survey, object>>[] includes)
        {
            if (predicate != null)
                return await _context.Survays.Includes(includes).CountAsync(predicate);

            return await _context.Survays.Includes(includes).CountAsync();
        }

        public async Task<int> DeleteAsync(Survey survey)
        {
            _context.Survays.Remove(survey);
            await _context.SaveChangesAsync();
            return survey.Id;
        }

        public async Task DeleteLikeAsync(Like like)
        {
            _context.Likes.Remove(like);
            await _context.SaveChangesAsync();
        }

        public async Task<SurveyDetails> GetAsync(int id)
        {
            var surveyDetails = await _context.Survays
                .Include(p => p.Likes)
                .Include(p => p.Questionary)
                .Include(p => p.AdditionalInfo)
                .Include(p => p.SurveyComment)
                .Include(p => p.SurveyUser)
                .ThenInclude(p => p.User)
                .ThenInclude(p => p.SurveyUsers)
                //.ThenInclude(p => p.)
                .Where(p => p.Id == id).Select(
                    p => new SurveyDetails
                    {
                        Survey = p,
                        //Questionaries = p.Questionary,
                        //SurveyComments = p.SurveyComment,
                        SurveyUsers = p.SurveyUser.Where(u => u.IsFinished).OrderBy(d => d.FinishDate).Take(3)
                    }).FirstOrDefaultAsync();
            return surveyDetails;
        }

        //public async Task<int> GetLikes(int id)
        //{
        //    return await _context.Survays.Include(p => p.Likes).Where(p => p.s == id).CountAsync();
        //}

        public async Task<List<Survey>> GetListAsync(string orderType,
            int skip,
            int take,
            Expression<Func<Survey, bool>> whereClause = null,
            params Expression<Func<Survey, object>>[] includes
        )
        {
            var query = _context.Survays.Include("SurveyUser.User").Includes(includes);
            if (whereClause != null)
            {
                if (orderType == "like")
                {
                    return await query.Where(whereClause).OrderByDescending(p => p.Likes.Count).Skip(skip).Take(take).ToListAsync();
                }
                else
                {
                    return await query.Where(whereClause).OrderByDescending(p => p.CreatedAt).Skip(skip).Take(take).ToListAsync();
                }
            }
            return await query.OrderByDescending(p => p.CreatedAt).Skip(skip).Take(take).ToListAsync();
        }

        public async Task Update(Survey survey)
        {
            _context.Survays.Update(survey);
            await _context.SaveChangesAsync();
        }

        public async Task UpdateAdditionalInfo(AdditionalInfo additionalInfo)
        {
            var id = _context.AdditionalInfos.Update(additionalInfo);
            var survey = await _context.Survays.FindAsync(additionalInfo.SurveyId);
            survey.AdditionalInfo = additionalInfo;
            _context.Survays.Update(survey);
            await _context.SaveChangesAsync();
        }

        public async Task UpdateQuestionary(Questionary questionary)
        {
            _context.Questionaries.Update(questionary);
            await _context.SaveChangesAsync();
        }
    }
}