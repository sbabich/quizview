using System;
using System.Threading.Tasks;
using AndroidNotificationQuiz.Api.Dto.Auth;

namespace AndroidNotificationQuiz.Api.Auth
{
    public interface ISocialNetworkAuthService
    {
        Task<AuthTokenResponse> CheckVkToken(string token);
        Task<AuthTokenResponse> CheckGoogleAuthToken(string token, string channalId);
    }
}
