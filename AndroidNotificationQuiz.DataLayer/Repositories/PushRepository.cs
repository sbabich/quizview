using System.Threading.Tasks;
using AndroidNotificationQuiz.DataLayer.Database;
using AndroidNotificationQuiz.DomainLayer.Entities;
using AndroidNotificationQuiz.DomainLayer.Interfaces;

namespace AndroidNotificationQuiz.DataLayer.Repositories
{
    public class PushRepository : IPushRepository
    {
        private readonly AndroidNotificationQuizContext _context;

        public PushRepository(AndroidNotificationQuizContext context)
        {
            _context = context;
        }

        public async Task AddAsync(Push push)
        {
            await _context.Pushs.AddAsync(push);
            await _context.SaveChangesAsync();
        }
    }
}