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
    public class UserRepository : IUserRepository
    {
        private readonly AndroidNotificationQuizContext _context;

        public UserRepository(AndroidNotificationQuizContext context)
        {
            _context = context;
        }

        public async Task<int> AddAsync(User user)
        {
            await _context.Users.AddAsync(user);
            await _context.SaveChangesAsync();
            return user.Id;
        }

        public async Task<User> GetByEmailAsync(string id)
        {
            return await _context.Users.Include(p => p.AuthToken).FirstOrDefaultAsync(p => p.Email == id);
        }

        public async Task Update(User user)
        {
            _context.Users.Update(user);
            await _context.SaveChangesAsync();
        }

        public async Task<List<User>> GetListAsync(int skip, int take, Expression<Func<User, bool>> predicate, params Expression<Func<User, object>>[] includes)
        {
            var query = _context.Users.Includes(includes);

            return await query.Where(predicate).OrderBy(o => o.Id).Skip(skip).Take(take).ToListAsync();
        }

        public async Task<List<User>> GetListOrderedByScore(int skip, int take,
            params Expression<Func<User, object>>[] includes)
        {
            var query = _context.Users.Includes(includes);
            return await query.OrderByDescending(created => created.RegistredAt).OrderByDescending(x => x.Balance).Skip(skip).Take(take).ToListAsync();
        }

        public async Task<int> CountAsync(Expression<Func<User, bool>> predicate,
            params Expression<Func<User, object>>[] includes)
        {
            if (predicate != null)
                if (includes != null)
                    return await _context.Users.Includes(includes).CountAsync(predicate);
                else
                    return await _context.Users.CountAsync(predicate);

            return await _context.Users.Includes(includes).CountAsync();
        }

        public async Task<User> GetAsync(int id)
        {
            return await _context.Users.Include(p => p.UserScores)
                                        .Include(p => p.SocialNetwork)
                                        .Include(p => p.SurveyUsers)
                                        .Include(p => p.AuthToken)
                                        .FirstOrDefaultAsync(p => p.Id == id);
        }

        public async Task Delete(AuthToken authToken)
        {
            _context.AuthTokens.Remove(authToken);
            await _context.SaveChangesAsync();
        }
    }
}