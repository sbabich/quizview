using System.IO;
using AndroidNotificationQuiz.DataLayer.Database;
using AndroidNotificationQuiz.DataLayer.Repositories;
using AndroidNotificationQuiz.DomainLayer.Interfaces;
using Microsoft.AspNetCore.Authentication.Cookies;
using Microsoft.AspNetCore.Builder;
using Microsoft.AspNetCore.Hosting;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.HttpOverrides;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.DependencyInjection;
using Microsoft.Extensions.FileProviders;

namespace AndroidNotificationQuiz.Admin
{
    public class Startup
    {
        public Startup(IConfiguration configuration)
        {
            //var builder = new ConfigurationBuilder()
            //.SetBasePath(env.ContentRootPath)
            //.AddJsonFile("appsettings.json", optional: true, reloadOnChange: true)
            //.AddJsonFile("config.json", optional: true, reloadOnChange: true);

            Configuration = configuration;
        }

        public IConfiguration Configuration { get; }

        // This method gets called by the runtime. Use this method to add services to the container.
        public void ConfigureServices(IServiceCollection services)
        {
            services.Configure<CookiePolicyOptions>(options =>
            {
                // This lambda determines whether user consent for non-essential cookies is needed for a given request.
                options.CheckConsentNeeded = context => true;
                options.MinimumSameSitePolicy = SameSiteMode.None;
            });

            var sqlConnectionString = Configuration.GetConnectionString("DataAccessPostgreSqlProvider");

            services.AddScoped<IAdminRepository, AdminRepository>();
            services.AddScoped<ISurveyRepository, SurveyRepository>();
            services.AddScoped<IPushRepository, PushRepository>();
            services.AddScoped<IUserRepository, UserRepository>();
            services.AddScoped<ICategoryRepository, CategoryRepository>();
            services.AddScoped<IGoodsRepository, GoodsRepository>();
            services.AddScoped<IOrderRepository, OrderRepository>();
            services.AddScoped<IVideoTimelineRepository, VideoTimelineRepository>();
            services.AddScoped<IUserScoreRepository, UserScoreRepository>();
            services.AddScoped<IPromoCategoryRepository, PromoCategoryRepository>();
            services.AddScoped<IPromoItemsRepository, PromoItemsRepository>();
            services.AddScoped<IGeneralSettingsRepository, GeneralSettingsRepository>();

            services.AddAuthentication(options =>
            {
                options.DefaultScheme = CookieAuthenticationDefaults.AuthenticationScheme;
                options.DefaultChallengeScheme = CookieAuthenticationDefaults.AuthenticationScheme;
                options.DefaultSignInScheme = CookieAuthenticationDefaults.AuthenticationScheme;
                options.DefaultSignOutScheme = CookieAuthenticationDefaults.AuthenticationScheme;
                options.DefaultAuthenticateScheme = CookieAuthenticationDefaults.AuthenticationScheme;
                options.DefaultForbidScheme = CookieAuthenticationDefaults.AuthenticationScheme;
                options.DefaultAuthenticateScheme = CookieAuthenticationDefaults.AuthenticationScheme;
                //options.
            }).AddCookie(options => //CookieAuthenticationOptions
            {
                options.LoginPath = new PathString("/Account/Login");
            });

            //services.AddAuthentication(CookieAuthenticationDefaults.AuthenticationScheme)
            //.AddCookie(options => //CookieAuthenticationOptions
            //{
            //    options.LoginPath = new Microsoft.AspNetCore.Http.PathString("/Account/Login");
            //});

            services.AddDbContext<AndroidNotificationQuizContext>(options => options.UseNpgsql(sqlConnectionString)
            ).BuildServiceProvider();


            services.AddMvc().SetCompatibilityVersion(CompatibilityVersion.Version_2_2)
                .AddRazorOptions(
                    options =>
                    {
                        options.ViewLocationFormats.Add("/Pages/{1}/{0}.cshtml");
                        options.ViewLocationFormats.Add("/Pages/Home/{0}.cshtml");
                        options.ViewLocationFormats.Add("/Pages/Login/{0}.cshtml");
                    }
                ).SetCompatibilityVersion(CompatibilityVersion.Version_2_2);
            services.AddAntiforgery(o => { o.Cookie.Name = "X-CSRF-TOKEN"; });

            /*services.AddHsts(options =>
            {
                options.Preload = true;
                options.IncludeSubDomains = true;
                options.MaxAge = System.TimeSpan.FromDays(60);
                options.ExcludedHosts.Add("example.com");
                options.ExcludedHosts.Add("www.example.com");
            });

            services.AddHttpsRedirection(options =>
            {
                options.RedirectStatusCode = StatusCodes.Status307TemporaryRedirect;
                options.HttpsPort = 443;
            });*/
        }

        // This method gets called by the runtime. Use this method to configure the HTTP request pipeline.
        public void Configure(IApplicationBuilder app, IHostingEnvironment env)
        {
            if (env.IsDevelopment())
            {
                app.UseDeveloperExceptionPage();
            }
            else
            {
                app.UseExceptionHandler("/Error");
                // The default HSTS value is 30 days. You may want to change this for production scenarios, see https://aka.ms/aspnetcore-hsts.
                app.UseHsts();
            }

            app.UseHttpsRedirection();
            app.UseStaticFiles();

            app.UseStaticFiles(new StaticFileOptions
            {
                FileProvider = new PhysicalFileProvider(
                    Path.Combine(Directory.GetCurrentDirectory(), "wwwroot", "Shop")),
                RequestPath = "/Shop"
            });

            app.UseCookiePolicy();
            app.UseAuthentication();

            app.UseMvc(routes =>
            {
                routes.MapRoute(
                    "default",
                    "{controller=Home}/{action=Index}/{id?}");

                routes.MapRoute(
                    "index",
                    "{controller=Home}/{action=CreateAdmin}/{id?}");
            });

            // For do not use IID
            app.UseForwardedHeaders(new ForwardedHeadersOptions
            {
                ForwardedHeaders = ForwardedHeaders.XForwardedFor | ForwardedHeaders.XForwardedProto
            });
        }
    }
}