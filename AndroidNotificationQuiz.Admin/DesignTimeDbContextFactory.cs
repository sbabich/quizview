using System.IO;
using AndroidNotificationQuiz.DataLayer.Database;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Design;
using Microsoft.Extensions.Configuration;

namespace AndroidNotificationQuiz.Admin
{
    public class DesignTimeDbContextFactory : IDesignTimeDbContextFactory<AndroidNotificationQuizContext>
    {
        public AndroidNotificationQuizContext CreateDbContext(string[] args)
        {
            var configuration = new ConfigurationBuilder()
                .SetBasePath(Directory.GetCurrentDirectory())
                .AddJsonFile("appsettings.json")
                .Build();
            var builder = new DbContextOptionsBuilder<AndroidNotificationQuizContext>();
            var connectionString = configuration.GetConnectionString("DataAccessPostgreSqlProvider");
            builder.UseNpgsql(connectionString);
            return new AndroidNotificationQuizContext(builder.Options);
        }
    }
}