using System;
using System.Collections.Generic;
using AndroidNotificationQuiz.DomainLayer.Entities;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Builders;
using Newtonsoft.Json;

namespace AndroidNotificationQuiz.DataLayer.Database
{
    public static class DatabaseMappings
    {
        public static void BindAdmin(this EntityTypeBuilder<Admin> admin)
        {
            admin.ToTable("Admins");

            admin.Property(x => x.Id).HasColumnName("Id");
            admin.Property(x => x.Email).HasColumnName("Email");
            admin.Property(x => x.CreatedAt).HasColumnName("CreatedAt");
            admin.Property(x => x.OwnerId).HasColumnName("OwnerId");
            admin.Property(x => x.PwdSalt).HasColumnName("PwdSalt");


            admin.HasData(new Admin
            {
                Id = 1,
                Email = "admin@admin.com",
                PwdSalt = "pjCodw+adNcHhO+3BK0+02HJjykAyp5t3kbSlusVS5Q=",
                CreatedAt = DateTime.UtcNow,
            });


        }

        public static void BindSurvey(this EntityTypeBuilder<Survey> survey)
        {
            survey.ToTable("Surveys");

            //survey.Property(x => x.AdditionalInfo).HasColumnType("jsonb")
            //                                    .HasConversion(v => JsonConvert.SerializeObject(v),
            //                                                    v => (AdditionalInfo)JsonConvert.DeserializeObject(v));
            //survey.Property(x => x.Questionary).HasColumnType("jsonb")
            //.HasConversion(v => JsonConvert.SerializeObject(v),
            //v => (List<Questionary>)JsonConvert.DeserializeObject(v));
            //survey.HasData(FillSurvey());
       }

        //private static ICollection<Survey> FillSurvey()
        //{
        //    var surveys = new List<Survey>();

        //    for (int i = 0; i < 30; i++)
        //    {
        //        surveys.Add(new Survey
        //        {
        //            Id = i + 1,
        //            Text = $"test{i}",
        //            Title = $"title{i}",
        //            Questionary = FillQuestionary()
        //        });
        //    }

        //    return surveys;
        //}

        //private static ICollection<Questionary> FillQuestionary()
        //{
        //    var questionary = new List<Questionary>();

        //    for (int i = 0; i < 30; i++)
        //    {
        //        questionary.Add(new Questionary
        //        {
        //            Id = i + 1,
        //            Question = $"Test{i}",
        //            RightAnswer = "yes",
        //        });
        //    }

        //    return questionary;
        //}


        public static void BindDevice(this EntityTypeBuilder<Device> device)
        {
            device.ToTable("Devices");

            device.Property(x => x.Type).HasConversion(v => (int)v, v => (DeviceType)v);
        }

        public static void BindUser(this EntityTypeBuilder<User> user)
        {
            user.ToTable("Users");

            user.HasAlternateKey(c => c.Email).HasName("AlternateKey_Email"); 
            //user.Property(x => x.SocialNetwork).HasColumnType("jsonb")
                                                //.HasConversion(v => JsonConvert.SerializeObject(v),
                                                                //v => (List<NetworkProfile>)JsonConvert.DeserializeObject(v));
        }

        public static void BindVideoTimeline(this EntityTypeBuilder<VideoTimeline> order)
        {
            order.ToTable("VideoTimelines");
        }

        public static void BindPromoCategories(this EntityTypeBuilder<PromoCategory> order)
        {
            order.ToTable("PromoCategories");
        }

        public static void BindPromoItems(this EntityTypeBuilder<PromoItem> order)
        {
            order.ToTable("PromoItems");
        }

        public static void BindGeneralSettings(this EntityTypeBuilder<KeyValue> order)
        {
            order.ToTable("GeneralSettings");
        }

        public static void BindOrder(this EntityTypeBuilder<Order> order)
        {
            order.ToTable("Orders");
        }

        public static void BindUserScore(this EntityTypeBuilder<UserTransaction> userscore)
        {
            userscore.ToTable("UserTransactions");
        }

        public static void BindSurveyComment(this EntityTypeBuilder<SurveyComment> surveyComment)
        {
            surveyComment.ToTable("SurveyComments");
        }

        public static void BindPush(this EntityTypeBuilder<Push> push)
        {
            push.ToTable("Pushs");
        }

        public static void BindSurveyUser(this EntityTypeBuilder<SurveyUser> surveyUser)
        {
            surveyUser.ToTable("SurveysUsers");
            //surveyUser.Property(x => x.Questionary).HasColumnType("jsonb")
                                                //.HasConversion(v => JsonConvert.SerializeObject(v),
                                                                //v => (List<Questionary>)JsonConvert.DeserializeObject(v));

        }

        public static void BindPhoneIdentificator(this EntityTypeBuilder<PhoneIdentificator> phoneIdentificator)
        {
            phoneIdentificator.ToTable("PhoneIdentificators");
            phoneIdentificator.Property(x => x.PhoneType).HasConversion(v => (int)v, v => (DeviceType)v);
            phoneIdentificator.HasOne(typeof(User)).WithMany().HasForeignKey("UserId");
        }

        public static void BindLike(this EntityTypeBuilder<Like> like)
        {
            like.ToTable("Likes");

            //like.HasOne(typeof(User)).WithOne().HasForeignKey("UserId");
            //like.HasOne(typeof(Survey)).WithOne().HasForeignKey("SurveyId");
        }

        public static void BindQuestionary(this EntityTypeBuilder<Questionary> questionary)
        {
            questionary.ToTable("Questionaries");
        }

        public static void BindUserQuestionAnswer(this EntityTypeBuilder<UserQuestionAnswer> userQuestionAnswer)
        {
            userQuestionAnswer.ToTable("UserQuestionAnswers");
        }

        public static void BindAdditionalInfo(this EntityTypeBuilder<AdditionalInfo> additionalInfo)
        {
            additionalInfo.ToTable("AdditionalInfos");
            additionalInfo.Ignore(x => x.SurveyId);
        }

        public static void BindAuthToken(this EntityTypeBuilder<AuthToken> authToken)
        {
            authToken.ToTable("AuthToken");
        }

        public static void BindNetworkProfile(this EntityTypeBuilder<NetworkProfile> networkProfile)
        {
            networkProfile.ToTable("NetworkProfile");
        }
    }
}
