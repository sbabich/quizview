﻿// <auto-generated />
using System;
using AndroidNotificationQuiz.DataLayer.Database;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Infrastructure;
using Microsoft.EntityFrameworkCore.Migrations;
using Microsoft.EntityFrameworkCore.Storage.ValueConversion;
using Npgsql.EntityFrameworkCore.PostgreSQL.Metadata;

namespace AndroidNotificationQuiz.DataLayer.Migrations
{
    [DbContext(typeof(AndroidNotificationQuizContext))]
    [Migration("20200217130634_add_promo_orders")]
    partial class add_promo_orders
    {
        protected override void BuildTargetModel(ModelBuilder modelBuilder)
        {
#pragma warning disable 612, 618
            modelBuilder
                .HasAnnotation("Npgsql:ValueGenerationStrategy", NpgsqlValueGenerationStrategy.SerialColumn)
                .HasAnnotation("ProductVersion", "2.2.4-servicing-10062")
                .HasAnnotation("Relational:MaxIdentifierLength", 63);

            modelBuilder.Entity("AndroidNotificationQuiz.DomainLayer.Entities.AdditionalInfo", b =>
                {
                    b.Property<int>("Id")
                        .ValueGeneratedOnAdd();

                    b.Property<string>("LinkToSite");

                    b.Property<string>("LinkToVideo");

                    b.HasKey("Id");

                    b.ToTable("AdditionalInfos");
                });

            modelBuilder.Entity("AndroidNotificationQuiz.DomainLayer.Entities.Admin", b =>
                {
                    b.Property<int>("Id")
                        .ValueGeneratedOnAdd()
                        .HasColumnName("Id");

                    b.Property<DateTimeOffset>("CreatedAt")
                        .HasColumnName("CreatedAt");

                    b.Property<string>("Email")
                        .HasColumnName("Email");

                    b.Property<int?>("OwnerId")
                        .HasColumnName("OwnerId");

                    b.Property<string>("PwdSalt")
                        .HasColumnName("PwdSalt");

                    b.HasKey("Id");

                    b.ToTable("Admins");

                    b.HasData(
                        new
                        {
                            Id = 1,
                            CreatedAt = new DateTimeOffset(new DateTime(2020, 2, 17, 13, 6, 34, 748, DateTimeKind.Unspecified).AddTicks(1986), new TimeSpan(0, 0, 0, 0, 0)),
                            Email = "admin@admin.com",
                            PwdSalt = "pjCodw+adNcHhO+3BK0+02HJjykAyp5t3kbSlusVS5Q="
                        });
                });

            modelBuilder.Entity("AndroidNotificationQuiz.DomainLayer.Entities.AuthToken", b =>
                {
                    b.Property<int>("Id")
                        .ValueGeneratedOnAdd();

                    b.Property<string>("Auth");

                    b.Property<string>("Refresh");

                    b.Property<DateTimeOffset>("RefreshExpiredAt");

                    b.Property<int>("UserId");

                    b.HasKey("Id");

                    b.HasIndex("UserId")
                        .IsUnique();

                    b.ToTable("AuthToken");
                });

            modelBuilder.Entity("AndroidNotificationQuiz.DomainLayer.Entities.Category", b =>
                {
                    b.Property<int>("Id")
                        .ValueGeneratedOnAdd();

                    b.Property<int>("AdminId");

                    b.Property<DateTimeOffset>("CreatedAt");

                    b.Property<string>("Position");

                    b.Property<int>("Sort");

                    b.HasKey("Id");

                    b.ToTable("Categories");
                });

            modelBuilder.Entity("AndroidNotificationQuiz.DomainLayer.Entities.Device", b =>
                {
                    b.Property<int>("Id")
                        .ValueGeneratedOnAdd();

                    b.Property<string>("DeviceId");

                    b.Property<int>("Type");

                    b.HasKey("Id");

                    b.ToTable("Devices");
                });

            modelBuilder.Entity("AndroidNotificationQuiz.DomainLayer.Entities.Good", b =>
                {
                    b.Property<int>("Id")
                        .ValueGeneratedOnAdd();

                    b.Property<int>("AdminId");

                    b.Property<int>("CategoryId");

                    b.Property<int>("Cost");

                    b.Property<DateTimeOffset>("CreatedAt");

                    b.Property<string>("Description");

                    b.Property<string>("ImagePath");

                    b.Property<bool>("IsAutoIssuance");

                    b.Property<int?>("PromoCategoryId");

                    b.Property<decimal>("RealCost");

                    b.Property<string>("Title");

                    b.HasKey("Id");

                    b.HasIndex("CategoryId");

                    b.HasIndex("PromoCategoryId");

                    b.ToTable("Goods");
                });

            modelBuilder.Entity("AndroidNotificationQuiz.DomainLayer.Entities.Like", b =>
                {
                    b.Property<int>("Id")
                        .ValueGeneratedOnAdd();

                    b.Property<DateTimeOffset>("LikedAt");

                    b.Property<int>("SurveyId");

                    b.Property<int>("UserId");

                    b.HasKey("Id");

                    b.HasIndex("SurveyId");

                    b.HasIndex("UserId");

                    b.ToTable("Likes");
                });

            modelBuilder.Entity("AndroidNotificationQuiz.DomainLayer.Entities.NetworkProfile", b =>
                {
                    b.Property<int>("Id")
                        .ValueGeneratedOnAdd();

                    b.Property<string>("Link");

                    b.Property<string>("Title");

                    b.Property<int>("UserId");

                    b.HasKey("Id");

                    b.HasIndex("UserId");

                    b.ToTable("NetworkProfile");
                });

            modelBuilder.Entity("AndroidNotificationQuiz.DomainLayer.Entities.Order", b =>
                {
                    b.Property<int>("Id")
                        .ValueGeneratedOnAdd();

                    b.Property<bool>("Completed");

                    b.Property<DateTimeOffset?>("CompletedAt");

                    b.Property<int>("GoodId");

                    b.Property<bool>("IsNotCalculated");

                    b.Property<DateTimeOffset>("OrderedAt");

                    b.Property<int?>("PromoItemId");

                    b.Property<int>("UserId");

                    b.HasKey("Id");

                    b.HasIndex("GoodId");

                    b.HasIndex("PromoItemId");

                    b.HasIndex("UserId");

                    b.ToTable("Orders");
                });

            modelBuilder.Entity("AndroidNotificationQuiz.DomainLayer.Entities.PhoneIdentificator", b =>
                {
                    b.Property<int>("Id")
                        .ValueGeneratedOnAdd();

                    b.Property<string>("DeviceId");

                    b.Property<int>("PhoneType");

                    b.Property<int>("UserId");

                    b.HasKey("Id");

                    b.HasIndex("UserId");

                    b.ToTable("PhoneIdentificators");
                });

            modelBuilder.Entity("AndroidNotificationQuiz.DomainLayer.Entities.PromoCategory", b =>
                {
                    b.Property<int>("Id")
                        .ValueGeneratedOnAdd();

                    b.Property<DateTimeOffset>("CreatedAt");

                    b.Property<string>("Description");

                    b.Property<string>("Name");

                    b.Property<int>("Sort");

                    b.HasKey("Id");

                    b.ToTable("PromoCategories");
                });

            modelBuilder.Entity("AndroidNotificationQuiz.DomainLayer.Entities.PromoItem", b =>
                {
                    b.Property<int>("Id")
                        .ValueGeneratedOnAdd();

                    b.Property<string>("Code");

                    b.Property<DateTimeOffset>("CreatedAt");

                    b.Property<int>("IsUsed");

                    b.Property<int>("PromoCategoryId");

                    b.HasKey("Id");

                    b.HasIndex("PromoCategoryId");

                    b.ToTable("PromoItems");
                });

            modelBuilder.Entity("AndroidNotificationQuiz.DomainLayer.Entities.Push", b =>
                {
                    b.Property<int>("Id")
                        .ValueGeneratedOnAdd();

                    b.Property<int>("AdminId");

                    b.Property<string>("Content");

                    b.Property<DateTimeOffset>("CreatedAt");

                    b.Property<int>("SurveyId");

                    b.Property<string>("Title");

                    b.HasKey("Id");

                    b.HasIndex("AdminId");

                    b.HasIndex("SurveyId");

                    b.ToTable("Pushs");
                });

            modelBuilder.Entity("AndroidNotificationQuiz.DomainLayer.Entities.Questionary", b =>
                {
                    b.Property<int>("Id")
                        .ValueGeneratedOnAdd();

                    b.Property<string>("Question");

                    b.Property<string>("RightAnswer");

                    b.Property<int>("SurveyId");

                    b.HasKey("Id");

                    b.HasIndex("SurveyId");

                    b.ToTable("Questionaries");
                });

            modelBuilder.Entity("AndroidNotificationQuiz.DomainLayer.Entities.Survey", b =>
                {
                    b.Property<int>("Id")
                        .ValueGeneratedOnAdd();

                    b.Property<int?>("AdditionalInfoId");

                    b.Property<DateTimeOffset>("CreatedAt");

                    b.Property<bool>("IsActive");

                    b.Property<int>("Limit");

                    b.Property<DateTimeOffset>("NeedToBeFinishedFor");

                    b.Property<DateTimeOffset>("NeedToBeFinishedForStart");

                    b.Property<int>("NumberOfUser");

                    b.Property<int>("Score");

                    b.Property<string>("Text");

                    b.Property<string>("Title");

                    b.HasKey("Id");

                    b.HasIndex("AdditionalInfoId");

                    b.ToTable("Surveys");
                });

            modelBuilder.Entity("AndroidNotificationQuiz.DomainLayer.Entities.SurveyComment", b =>
                {
                    b.Property<int>("Id")
                        .ValueGeneratedOnAdd();

                    b.Property<DateTimeOffset>("CreatedAt");

                    b.Property<int>("SurveyId");

                    b.Property<string>("Text");

                    b.Property<int>("UserId");

                    b.HasKey("Id");

                    b.HasIndex("SurveyId");

                    b.HasIndex("UserId");

                    b.ToTable("SurveyComments");
                });

            modelBuilder.Entity("AndroidNotificationQuiz.DomainLayer.Entities.SurveyUser", b =>
                {
                    b.Property<int>("Id")
                        .ValueGeneratedOnAdd();

                    b.Property<DateTimeOffset?>("FinishDate");

                    b.Property<bool>("IsAllAnswersCorrect");

                    b.Property<bool>("IsFinished");

                    b.Property<DateTimeOffset?>("StartDate");

                    b.Property<int>("SurveyId");

                    b.Property<int>("UserId");

                    b.HasKey("Id");

                    b.HasIndex("SurveyId");

                    b.HasIndex("UserId");

                    b.ToTable("SurveysUsers");
                });

            modelBuilder.Entity("AndroidNotificationQuiz.DomainLayer.Entities.User", b =>
                {
                    b.Property<int>("Id")
                        .ValueGeneratedOnAdd();

                    b.Property<string>("AvatarPath");

                    b.Property<int>("Balance");

                    b.Property<DateTimeOffset?>("BanFineshedAt");

                    b.Property<DateTimeOffset?>("BanStartedAt");

                    b.Property<string>("Email")
                        .IsRequired();

                    b.Property<bool>("IsBanned");

                    b.Property<string>("Name");

                    b.Property<string>("Nick");

                    b.Property<DateTimeOffset>("RegistredAt");

                    b.Property<string>("Surname");

                    b.HasKey("Id");

                    b.HasAlternateKey("Email")
                        .HasName("AlternateKey_Email");

                    b.ToTable("Users");
                });

            modelBuilder.Entity("AndroidNotificationQuiz.DomainLayer.Entities.UserQuestionAnswer", b =>
                {
                    b.Property<int>("Id")
                        .ValueGeneratedOnAdd();

                    b.Property<string>("Answer");

                    b.Property<int>("QuestionaryID");

                    b.Property<int>("SurveyUserId");

                    b.HasKey("Id");

                    b.HasIndex("SurveyUserId");

                    b.ToTable("UserQuestionAnswers");
                });

            modelBuilder.Entity("AndroidNotificationQuiz.DomainLayer.Entities.UserTransaction", b =>
                {
                    b.Property<int>("Id")
                        .ValueGeneratedOnAdd();

                    b.Property<DateTimeOffset?>("CreatedAt");

                    b.Property<int>("Score");

                    b.Property<int?>("SurveyId");

                    b.Property<int>("Type");

                    b.Property<int>("UserId");

                    b.HasKey("Id");

                    b.HasIndex("SurveyId");

                    b.HasIndex("UserId");

                    b.ToTable("UserTransactions");
                });

            modelBuilder.Entity("AndroidNotificationQuiz.DomainLayer.Entities.VideoTimeline", b =>
                {
                    b.Property<int>("Id")
                        .ValueGeneratedOnAdd();

                    b.Property<long>("Counter");

                    b.Property<long>("Duration");

                    b.Property<long>("RealTime");

                    b.Property<long>("Timeline");

                    b.Property<int>("UserId");

                    b.Property<string>("VideoId");

                    b.HasKey("Id");

                    b.ToTable("VideoTimelines");
                });

            modelBuilder.Entity("AndroidNotificationQuiz.DomainLayer.Entities.AuthToken", b =>
                {
                    b.HasOne("AndroidNotificationQuiz.DomainLayer.Entities.User")
                        .WithOne("AuthToken")
                        .HasForeignKey("AndroidNotificationQuiz.DomainLayer.Entities.AuthToken", "UserId")
                        .OnDelete(DeleteBehavior.Cascade);
                });

            modelBuilder.Entity("AndroidNotificationQuiz.DomainLayer.Entities.Good", b =>
                {
                    b.HasOne("AndroidNotificationQuiz.DomainLayer.Entities.Category", "Category")
                        .WithMany("Good")
                        .HasForeignKey("CategoryId")
                        .OnDelete(DeleteBehavior.Cascade);

                    b.HasOne("AndroidNotificationQuiz.DomainLayer.Entities.PromoCategory", "PromoCategory")
                        .WithMany()
                        .HasForeignKey("PromoCategoryId");
                });

            modelBuilder.Entity("AndroidNotificationQuiz.DomainLayer.Entities.Like", b =>
                {
                    b.HasOne("AndroidNotificationQuiz.DomainLayer.Entities.Survey", "Survey")
                        .WithMany("Likes")
                        .HasForeignKey("SurveyId")
                        .OnDelete(DeleteBehavior.Cascade);

                    b.HasOne("AndroidNotificationQuiz.DomainLayer.Entities.User", "User")
                        .WithMany("Likes")
                        .HasForeignKey("UserId")
                        .OnDelete(DeleteBehavior.Cascade);
                });

            modelBuilder.Entity("AndroidNotificationQuiz.DomainLayer.Entities.NetworkProfile", b =>
                {
                    b.HasOne("AndroidNotificationQuiz.DomainLayer.Entities.User")
                        .WithMany("SocialNetwork")
                        .HasForeignKey("UserId")
                        .OnDelete(DeleteBehavior.Cascade);
                });

            modelBuilder.Entity("AndroidNotificationQuiz.DomainLayer.Entities.Order", b =>
                {
                    b.HasOne("AndroidNotificationQuiz.DomainLayer.Entities.Good", "Good")
                        .WithMany("Orders")
                        .HasForeignKey("GoodId")
                        .OnDelete(DeleteBehavior.Cascade);

                    b.HasOne("AndroidNotificationQuiz.DomainLayer.Entities.PromoItem", "PromoItem")
                        .WithMany()
                        .HasForeignKey("PromoItemId");

                    b.HasOne("AndroidNotificationQuiz.DomainLayer.Entities.User", "User")
                        .WithMany("Orders")
                        .HasForeignKey("UserId")
                        .OnDelete(DeleteBehavior.Cascade);
                });

            modelBuilder.Entity("AndroidNotificationQuiz.DomainLayer.Entities.PhoneIdentificator", b =>
                {
                    b.HasOne("AndroidNotificationQuiz.DomainLayer.Entities.User")
                        .WithMany()
                        .HasForeignKey("UserId")
                        .OnDelete(DeleteBehavior.Cascade);
                });

            modelBuilder.Entity("AndroidNotificationQuiz.DomainLayer.Entities.PromoItem", b =>
                {
                    b.HasOne("AndroidNotificationQuiz.DomainLayer.Entities.PromoCategory", "Category")
                        .WithMany("Items")
                        .HasForeignKey("PromoCategoryId")
                        .OnDelete(DeleteBehavior.Cascade);
                });

            modelBuilder.Entity("AndroidNotificationQuiz.DomainLayer.Entities.Push", b =>
                {
                    b.HasOne("AndroidNotificationQuiz.DomainLayer.Entities.Admin", "Admin")
                        .WithMany("Pushs")
                        .HasForeignKey("AdminId")
                        .OnDelete(DeleteBehavior.Cascade);

                    b.HasOne("AndroidNotificationQuiz.DomainLayer.Entities.Survey", "Survey")
                        .WithMany("Push")
                        .HasForeignKey("SurveyId")
                        .OnDelete(DeleteBehavior.Cascade);
                });

            modelBuilder.Entity("AndroidNotificationQuiz.DomainLayer.Entities.Questionary", b =>
                {
                    b.HasOne("AndroidNotificationQuiz.DomainLayer.Entities.Survey")
                        .WithMany("Questionary")
                        .HasForeignKey("SurveyId")
                        .OnDelete(DeleteBehavior.Cascade);
                });

            modelBuilder.Entity("AndroidNotificationQuiz.DomainLayer.Entities.Survey", b =>
                {
                    b.HasOne("AndroidNotificationQuiz.DomainLayer.Entities.AdditionalInfo", "AdditionalInfo")
                        .WithMany()
                        .HasForeignKey("AdditionalInfoId");
                });

            modelBuilder.Entity("AndroidNotificationQuiz.DomainLayer.Entities.SurveyComment", b =>
                {
                    b.HasOne("AndroidNotificationQuiz.DomainLayer.Entities.Survey", "Survey")
                        .WithMany("SurveyComment")
                        .HasForeignKey("SurveyId")
                        .OnDelete(DeleteBehavior.Cascade);

                    b.HasOne("AndroidNotificationQuiz.DomainLayer.Entities.User", "User")
                        .WithMany("SurveyComments")
                        .HasForeignKey("UserId")
                        .OnDelete(DeleteBehavior.Cascade);
                });

            modelBuilder.Entity("AndroidNotificationQuiz.DomainLayer.Entities.SurveyUser", b =>
                {
                    b.HasOne("AndroidNotificationQuiz.DomainLayer.Entities.Survey", "Survey")
                        .WithMany("SurveyUser")
                        .HasForeignKey("SurveyId")
                        .OnDelete(DeleteBehavior.Cascade);

                    b.HasOne("AndroidNotificationQuiz.DomainLayer.Entities.User", "User")
                        .WithMany("SurveyUsers")
                        .HasForeignKey("UserId")
                        .OnDelete(DeleteBehavior.Cascade);
                });

            modelBuilder.Entity("AndroidNotificationQuiz.DomainLayer.Entities.UserQuestionAnswer", b =>
                {
                    b.HasOne("AndroidNotificationQuiz.DomainLayer.Entities.SurveyUser")
                        .WithMany("UserQuestionAnswer")
                        .HasForeignKey("SurveyUserId")
                        .OnDelete(DeleteBehavior.Cascade);
                });

            modelBuilder.Entity("AndroidNotificationQuiz.DomainLayer.Entities.UserTransaction", b =>
                {
                    b.HasOne("AndroidNotificationQuiz.DomainLayer.Entities.Survey", "Survey")
                        .WithMany()
                        .HasForeignKey("SurveyId");

                    b.HasOne("AndroidNotificationQuiz.DomainLayer.Entities.User", "User")
                        .WithMany("UserScores")
                        .HasForeignKey("UserId")
                        .OnDelete(DeleteBehavior.Cascade);
                });
#pragma warning restore 612, 618
        }
    }
}
