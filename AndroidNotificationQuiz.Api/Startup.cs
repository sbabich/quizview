using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Reflection;
using AndroidNotificationQuiz.Api.Extensions;
using AndroidNotificationQuiz.Api.Middleware;
using AndroidNotificationQuiz.Api.Options;
using AndroidNotificationQuiz.DataLayer.Database;
using Microsoft.AspNetCore.Builder;
using Microsoft.AspNetCore.Hosting;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.WebSockets.Internal;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.DependencyInjection;
using Swashbuckle.AspNetCore.Swagger;

namespace AndroidNotificationQuiz.Api
{
    public class Startup
    {
        private readonly IConfiguration _configuration;
        private readonly IHostingEnvironment _env;

        public Startup(
            IConfiguration configuration,
            IHostingEnvironment env
        )
        {
            _configuration = configuration;
            _env = env;
        }

        // This method gets called by the runtime. Use this method to add services to the container.
        public void ConfigureServices(IServiceCollection services)
        {
            services.ConfigureCors();

            services.ConfigureSettings(_configuration);

            var authOption = new AuthOptions();
            _configuration.GetSection("Auth").Bind(authOption);
            services.ConfigureAuth(authOption);

            services.ConfigureDependencies(_configuration);
            services.AddMemoryCache();
            services
                .AddMvc(options => 
                {
                    options.Filters.Add(typeof(ExceptionFilter.ExceptionFilter));
                })
                .AddJsonOptions(options =>
                {
                    options.SerializerSettings.Converters.Add(new Newtonsoft.Json.Converters.StringEnumConverter());
                    options.SerializerSettings.NullValueHandling = Newtonsoft.Json.NullValueHandling.Ignore;
                })
                .SetCompatibilityVersion(CompatibilityVersion.Version_2_2);


            services.AddSwaggerGen(c =>
            {
                c.CustomSchemaIds(x => x.FullName);
                c.SwaggerDoc("v1", new Info {Title = "YTTEAM API", Version = "v1.0", });
                c.DescribeAllEnumsAsStrings();

                var security = new Dictionary<string, IEnumerable<string>>
                {
                    {"Bearer", new string[] { }},
                };
                c.AddSecurityDefinition("Bearer", new ApiKeyScheme
                {
                    Description =
                        "JWT Authorization header using the Bearer scheme. Example: \"Authorization: Bearer {token}\"",
                    Name = "Authorization",
                    In = "header",
                    Type = "apiKey"
                });
                c.AddSecurityRequirement(security);

                // Set the comments path for the Swagger JSON and UI.
                var xmlFile = $"{Assembly.GetExecutingAssembly().GetName().Name}.xml";
                var xmlPath = Path.Combine(System.AppContext.BaseDirectory, xmlFile);
                c.IncludeXmlComments(xmlPath);

                /*var cs = _configuration.GetConnectionString("DataAccessPostgreSqlProvider");
                services.AddDbContext<AndroidNotificationQuizContext>(options =>
                {
                    options.UseSqlServer(cs, b => b.MigrationsAssembly("AndroidNotificationQuiz.DataLayer"));
                });*/
            });
        }

        // This method gets called by the runtime. Use this method to configure the HTTP request pipeline.
        public void Configure(IApplicationBuilder app, IHostingEnvironment env)
        {
            if (env.IsDevelopment())
            {
                app.UseDeveloperExceptionPage();
            }

            app.UseStaticFiles();
            app.UseAuthentication();

            app.UseCors("MyCorsPolicy");
            
            app.UseSwagger();
            app.UseSwaggerUI(c => { c.SwaggerEndpoint("/swagger/v1/swagger.json", "YTTEAM API v1.0"); });

            app.UseMvc();
        }
    }
}