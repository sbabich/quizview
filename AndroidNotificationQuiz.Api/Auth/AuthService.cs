using System;
using System.IdentityModel.Tokens.Jwt;
using System.Security.Claims;
using System.Security.Cryptography;
using System.Threading.Tasks;
using AndroidNotificationQuiz.Api.Options;
using Microsoft.Extensions.Options;
using Microsoft.IdentityModel.Tokens;

namespace AndroidNotificationQuiz.Api.Auth
{
    public class AuthService : IAuthService
    {
        private readonly IOptions<AuthOptions> _authOptions;

        public AuthService(IOptions<AuthOptions> authOptions)
        {
            _authOptions = authOptions;
        }

        public Task<string> Generate(string userId)
        {
            var authToken = GenerateToken(userId);
            return Task.FromResult(new JwtSecurityTokenHandler().WriteToken(authToken));
        }

        public string GenerateRefreshToken(int size = 32)
        {
            var randomNumber = new byte[size];
            using (var rng = RandomNumberGenerator.Create())
            {
                rng.GetBytes(randomNumber);
                return Convert.ToBase64String(randomNumber);
            }
        }


        private JwtSecurityToken GenerateToken(string userId)
        {
            var claims = new[]
            {
                new Claim(JwtRegisteredClaimNames.Sub, "dotnetru@dotnetru.com"),
                new Claim(JwtRegisteredClaimNames.Jti, Guid.NewGuid().ToString()),
                new Claim(Helpers.Constants.Strings.JwtClaimIdentifiers.Rol,
                    Helpers.Constants.Strings.JwtClaims.ApiAccess),
                new Claim(Helpers.Constants.Strings.JwtClaimIdentifiers.Id, userId)
            };

            var key = _authOptions.Value.GetSymmetricSecurityKey();
            var creds = new SigningCredentials(key, SecurityAlgorithms.HmacSha256);
            var authToken = new JwtSecurityToken(
                _authOptions.Value.Issuer,
                _authOptions.Value.Audience,
                claims,
                expires: DateTime.UtcNow.AddMinutes(15),
                signingCredentials: creds
            );

            return authToken;
        }
    }
}