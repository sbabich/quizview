using System;
using Microsoft.EntityFrameworkCore.Migrations;
using Npgsql.EntityFrameworkCore.PostgreSQL.Metadata;

namespace AndroidNotificationQuiz.DataLayer.Migrations
{
    public partial class add_field_to_order : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.AddColumn<bool>("IsNotCalculated", "Orders", nullable: false, defaultValue: false);

            migrationBuilder.CreateTable(
                name: "VideoTimelines",
                columns: table => new
                {
                    Id = table.Column<int>(nullable: false)
                        .Annotation("Npgsql:ValueGenerationStrategy", NpgsqlValueGenerationStrategy.SerialColumn),
                    UserId = table.Column<int>(nullable: false),
                    VideoId = table.Column<string>(nullable: true),
                    Timeline = table.Column<long>(nullable: false),
                    RealTime = table.Column<long>(nullable: false),
                    Counter = table.Column<long>(nullable: false),
                    Duration = table.Column<long>(nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_VideoTimelines", x => x.Id);
                });
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropColumn("IsNotCalculated", "Orders");

            migrationBuilder.DropTable(
                name: "VideoTimelines");
        }
    }
}
