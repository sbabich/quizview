using AndroidNotificationQuiz.DomainLayer.Entities;
using Microsoft.EntityFrameworkCore;

namespace AndroidNotificationQuiz.DataLayer.Database
{
    public class AndroidNotificationQuizContext : DbContext
    {
        public AndroidNotificationQuizContext(DbContextOptions options)
            : base(options)
        {
        }

        public DbSet<Admin> Admins { get; set; }
        public DbSet<Survey> Survays { get; set; }
        public DbSet<User> Users { get; set; }
        public DbSet<AuthToken> AuthTokens { get; set; }
        public DbSet<Device> Devices { get; set; }
        public DbSet<UserTransaction> UsersScores { get; set; }
        public DbSet<SurveyComment> SurvaysComments { get; set; }
        public DbSet<SurveyUser> SurvaysUsers { get; set; }
        public DbSet<Push> Pushs { get; set; }
        public DbSet<PhoneIdentificator> PhoneIdentificators { get; set; }
        public DbSet<Like> Likes { get; set; }
        public DbSet<Category> Categories { get; set; }
        public DbSet<Good> Goods { get; set; }
        public DbSet<Order> Orders { get; set; }
        public DbSet<Questionary> Questionaries { get; set; }
        public DbSet<UserQuestionAnswer> UserQuestionAnswers { get; set; }
        public DbSet<AdditionalInfo> AdditionalInfos { get; set; }
        public DbSet<NetworkProfile> NetworkProfiles { get; set; }
        public DbSet<VideoTimeline> VideoTimelines { get; set; }
        public DbSet<PromoCategory> PromoCategories { get; set; }
        public DbSet<PromoItem> PromoItems { get; set; }
        public DbSet<KeyValue> GeneralSettings { get; set; }

        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
        }

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            modelBuilder.Entity<Admin>().BindAdmin();
            modelBuilder.Entity<Survey>().BindSurvey();
            modelBuilder.Entity<User>().BindUser();
            modelBuilder.Entity<UserTransaction>().BindUserScore();
            modelBuilder.Entity<Device>().BindDevice();
            modelBuilder.Entity<SurveyComment>().BindSurveyComment();
            modelBuilder.Entity<SurveyUser>().BindSurveyUser();
            modelBuilder.Entity<Push>().BindPush();
            modelBuilder.Entity<PhoneIdentificator>().BindPhoneIdentificator();
            modelBuilder.Entity<Like>().BindLike();
            modelBuilder.Entity<Questionary>().BindQuestionary();
            modelBuilder.Entity<UserQuestionAnswer>().BindUserQuestionAnswer();
            modelBuilder.Entity<AdditionalInfo>().BindAdditionalInfo();
            modelBuilder.Entity<AuthToken>().BindAuthToken();
            modelBuilder.Entity<NetworkProfile>().BindNetworkProfile();
            modelBuilder.Entity<Order>().BindOrder();
            modelBuilder.Entity<VideoTimeline>().BindVideoTimeline();
            modelBuilder.Entity<PromoCategory>().BindPromoCategories();
            modelBuilder.Entity<PromoItem>().BindPromoItems();
            modelBuilder.Entity<KeyValue>().BindGeneralSettings();
        }
    }
}