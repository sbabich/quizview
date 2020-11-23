using System;
using Microsoft.EntityFrameworkCore.Migrations;
using Npgsql.EntityFrameworkCore.PostgreSQL.Metadata;

namespace AndroidNotificationQuiz.DataLayer.Migrations
{
    public partial class add_promo_categories : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.CreateTable(
                name: "PromoCategories",
                columns: table => new
                {
                    Id = table.Column<int>(nullable: false)
                        .Annotation("Npgsql:ValueGenerationStrategy", NpgsqlValueGenerationStrategy.SerialColumn),
                    Name = table.Column<string>(nullable: true),
                    Description = table.Column<string>(nullable: true),
                    Sort = table.Column<int>(nullable: false),
                    CreatedAt = table.Column<DateTimeOffset>(nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_PromoCategories", x => x.Id);
                });

            migrationBuilder.CreateTable(
                name: "PromoItems",
                columns: table => new
                {
                    Id = table.Column<int>(nullable: false)
                        .Annotation("Npgsql:ValueGenerationStrategy", NpgsqlValueGenerationStrategy.SerialColumn),
                    Code = table.Column<string>(nullable: true),
                    CreatedAt = table.Column<DateTimeOffset>(nullable: false),
                    IsUsed = table.Column<int>(nullable: false),
                    PromoCategoryId = table.Column<int>(nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_PromoItems", x => x.Id);
                    table.ForeignKey(
                        name: "FK_PromoItems_PromoCategories_PromoCategoryId",
                        column: x => x.PromoCategoryId,
                        principalTable: "PromoCategories",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Cascade);
                });

            migrationBuilder.AddColumn<bool>("IsAutoIssuance", "Goods", nullable: false, defaultValue: false);
            migrationBuilder.AddColumn<int>("PromoCategoryId", "Goods", nullable: true);

            migrationBuilder.AddForeignKey(
                name: "FK_Goods_PromoCategories_PromoCategoryId",
                table: "Goods",
                column: "PromoCategoryId",
                principalTable: "PromoCategories",
                principalColumn: "Id",
                onDelete: ReferentialAction.SetDefault);

            migrationBuilder.CreateIndex(
                name: "IX_Goods_PromoCategoryId",
                table: "Goods",
                column: "PromoCategoryId");

            migrationBuilder.CreateIndex(
                name: "IX_PromoItems_PromoCategoryId",
                table: "PromoItems",
                column: "PromoCategoryId");
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropColumn("PromoCategoryId", "Goods");
            migrationBuilder.DropColumn("IsAutoIssuance", "Goods");

            migrationBuilder.DropTable(
                name: "PromoItems");

            migrationBuilder.DropTable(
                name: "PromoCategories");
        }
    }
}
