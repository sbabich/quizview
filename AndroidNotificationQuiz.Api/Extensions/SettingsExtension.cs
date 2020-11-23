using System;
using AndroidNotificationQuiz.Api.Options;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.DependencyInjection;

namespace AndroidNotificationQuiz.Api.Extensions
{
    public static class SettingsExtensions
    {
        public static void ConfigureSettings(this IServiceCollection services, IConfiguration configuration)
        {
            services.Configure<AuthOptions>(configuration.GetSection("Auth"));
        }
    }
}
