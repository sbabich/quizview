using System;
using Microsoft.EntityFrameworkCore.Migrations;
using Npgsql.EntityFrameworkCore.PostgreSQL.Metadata;

namespace AndroidNotificationQuiz.DataLayer.Migrations
{
    public partial class add_field_to_user_transaction : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.AddColumn<DateTimeOffset>("CreatedAt", "UserTransactions", nullable: true, defaultValue: null);
            migrationBuilder.AddColumn<int>("Type", "UserTransactions", nullable: false, defaultValue: 0);
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropColumn("CreatedAt", "UserTransactions");
            migrationBuilder.DropColumn("Type", "UserTransactions");
        }
    }
}
