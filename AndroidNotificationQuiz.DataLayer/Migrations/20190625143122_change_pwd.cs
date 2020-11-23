using System;
using Microsoft.EntityFrameworkCore.Migrations;
using Npgsql.EntityFrameworkCore.PostgreSQL.Metadata;

namespace AndroidNotificationQuiz.DataLayer.Migrations
{
    public partial class change_pwd : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.UpdateData("Admins", "Email", "admin@admin.com", "PwdSalt", "pjCodw+adNcHhO+3BK0+02HJjykAyp5t3kbSlusVS5Q=");
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.UpdateData("Admins", "Email", "admin@admin.com", "PwdSalt", "u96IsV97bAhrjz0yWKkLcjkMHMEZUB1HDsjZlN/JZWc=");
        }
    }
}
