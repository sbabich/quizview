using Microsoft.AspNetCore;
using Microsoft.AspNetCore.Hosting;
using Serilog;
using Serilog.Events;
using System.IO;
using System.Reflection;

namespace AndroidNotificationQuiz.Api
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

            CreateWebHostBuilder(args).Build().Run();
        }

        public static IWebHostBuilder CreateWebHostBuilder(string[] args)
        {
            return WebHost.CreateDefaultBuilder(args)

                /*.UseStartup<Startup>()
                .UseSerilog()
                .UseUrls("https://*:5000");*/

                // Windows
                .UseIISIntegration()
                .UseContentRoot(Directory.GetCurrentDirectory())
                .UseSerilog()
                .UseStartup<Startup>()
                .UseUrls("http://*:5005");

                // Ubuntu
                /*.UseKestrel()
                .UseIISIntegration()
                .UseContentRoot(Directory.GetCurrentDirectory())
                .UseSerilog()
                .UseStartup<Startup>();*/
        }
    }
}