using AndroidNotificationQuiz.Api.Auth;
using AndroidNotificationQuiz.DataLayer.Database;
using AndroidNotificationQuiz.DataLayer.Repositories;
using AndroidNotificationQuiz.DomainLayer.Interfaces;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.DependencyInjection;

namespace AndroidNotificationQuiz.Api.Extensions
{
    public static class DependencyExtensions
    {
        public static void ConfigureDependencies(this IServiceCollection services, IConfiguration configuration)
        {
            var sqlConnectionString = configuration.GetConnectionString("DataAccessPostgreSqlProvider");

            services.AddDbContext<AndroidNotificationQuizContext>(
                options => options.UseNpgsql(sqlConnectionString,
                    sqlServerOptions => { sqlServerOptions.CommandTimeout(5); })
            ).BuildServiceProvider();
            services.AddTransient<IAuthService, AuthService>();
            services.AddTransient<ISocialNetworkAuthService, SocialNetworkService>();
            services.AddTransient<IUserRepository, UserRepository>();
            services.AddTransient<ISurveyRepository, SurveyRepository>();
            services.AddTransient<IDeviceRepository, DeviceRepository>();
            services.AddTransient<IUserQuestionAnswerRepository, UserQuestionAnswerRepository>();
            services.AddTransient<ISurveyUserRepository, SurveyUserRepository>();
            services.AddTransient<IGoodsRepository, GoodsRepository>();
            services.AddTransient<ICategoryRepository, CategoryRepository>();
            services.AddTransient<IUserQuestionAnswerRepository, UserQuestionAnswerRepository>();
            services.AddTransient<ILikeRepository, LikeRepository>();
            services.AddTransient<IUserScoreRepository, UserScoreRepository>();
            services.AddTransient<IOrderRepository, OrderRepository>();
            services.AddTransient<IVideoTimelineRepository, VideoTimelineRepository>();
            services.AddTransient<IPromoCategoryRepository, PromoCategoryRepository>();
            services.AddTransient<IPromoItemsRepository, PromoItemsRepository>();
            services.AddTransient<IGeneralSettingsRepository, GeneralSettingsRepository>();
        }
    }
}