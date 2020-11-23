using System;
using System.Threading.Tasks;

namespace AndroidNotificationQuiz.DomainLayer.Interfaces
{
    public interface ILikeRepository
    {
        Task<int> GetLikes(int surveyId);
    }
}
