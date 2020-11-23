using System;
using System.Threading.Tasks;
using AndroidNotificationQuiz.Api.ExceptionFilter;
using AndroidNotificationQuiz.Api.Options;
using Microsoft.AspNetCore.Authentication.JwtBearer;
using Microsoft.AspNetCore.Http;
using Microsoft.Extensions.DependencyInjection;
using Microsoft.IdentityModel.Tokens;
using Newtonsoft.Json;

namespace AndroidNotificationQuiz.Api.Extensions
{
    public static class AuthExtension
    {
        public static void ConfigureAuth(this IServiceCollection services, AuthOptions authOptions)
        {
            services.AddAuthentication(JwtBearerDefaults.AuthenticationScheme)
                .AddJwtBearer(options =>
                {
                    options.RequireHttpsMetadata = false;
                    options.TokenValidationParameters = new TokenValidationParameters
                    {
                        ValidateIssuer = true,
                        ValidIssuer = authOptions.Issuer,
                        ValidateAudience = true,
                        ValidAudience = authOptions.Audience,
                        ValidateLifetime = true,
                        IssuerSigningKey = authOptions.GetSymmetricSecurityKey(),
                        ValidateIssuerSigningKey = true,
                        ClockSkew = TimeSpan.FromSeconds(1)
                    };

                    options.Events = new JwtBearerEvents
                    {
                        OnTokenValidated = OnTokenValidatedAction,
                        OnChallenge = OnChallenge
                    };
                });


            async Task OnTokenValidatedAction(TokenValidatedContext context)
            {
                context.Success();
            }

            async Task OnChallenge(JwtBearerChallengeContext context)
            {
                if (context.AuthenticateFailure != null)
                {
                    var exception = new ErrorResponse {Errors = new[] {context.AuthenticateFailure.Message}};
                    context.Response.StatusCode = StatusCodes.Status401Unauthorized;
                    await context.Response.WriteAsync(JsonConvert.SerializeObject(exception));
                }
                else
                {
                    var exception = new ErrorResponse {Errors = new[] {"Запрос без токена"}};
                    context.Response.StatusCode = StatusCodes.Status401Unauthorized;
                    await context.Response.WriteAsync(JsonConvert.SerializeObject(exception));
                    context.HandleResponse();
                }
            }
        }
    }
}