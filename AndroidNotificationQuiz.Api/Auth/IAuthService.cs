using System;
using System.Threading.Tasks;

namespace AndroidNotificationQuiz.Api.Auth
{
    public interface IAuthService
    {
        Task<string> Generate(string userId);
        string GenerateRefreshToken(int size = 32);
        //Task CheckOuterToken(string token);
    }
}
