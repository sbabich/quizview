using System.IO;
using Microsoft.AspNetCore;
using Microsoft.AspNetCore.Hosting;
using Microsoft.Extensions.Configuration;
using Serilog;
using Serilog.Events;

namespace AndroidNotificationQuiz.Admin
{
    public class Program
    {
        public static void Main(string[] args)
        {
            Log.Logger = new LoggerConfiguration()
                .MinimumLevel.Override("Microsoft", LogEventLevel.Error)
                .Enrich.FromLogContext()
                .WriteTo.ColoredConsole(
                    outputTemplate: "[{Timestamp} {SourceContext} {Level:u4}] {Message} {NewLine} {Exception}"
                )
                .WriteTo.File("log.log", rollingInterval: RollingInterval.Day)
                .CreateLogger();

            var config = new ConfigurationBuilder()
                .SetBasePath(Directory.GetCurrentDirectory())
                .AddJsonFile("hosting.json", true)
                .Build();

            CreateWebHostBuilder(args, config).Build().Run();
        }

        public static IWebHostBuilder CreateWebHostBuilder(string[] args, IConfigurationRoot config)
        {
            return WebHost.CreateDefaultBuilder(args)
                //.UseKestrel()
                .UseIISIntegration()
                .UseConfiguration(config)
                .UseContentRoot(Directory.GetCurrentDirectory())
                .UseSerilog()
                .UseStartup<Startup>()
                .UseUrls("http://*:5005");
        }
    }
}