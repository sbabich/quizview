using System;
using Microsoft.EntityFrameworkCore.Migrations;
using Npgsql.EntityFrameworkCore.PostgreSQL.Metadata;

namespace AndroidNotificationQuiz.DataLayer.Migrations
{
    public partial class add_promo_orders : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.AddColumn<int>("PromoItemId", "Orders", nullable: true);

            migrationBuilder.AddForeignKey(
                name: "FK_Orders_PromoItems_PromoCategoryId",
                table: "Orders",
                column: "PromoItemId",
                principalTable: "PromoItems",
                principalColumn: "Id",
                onDelete: ReferentialAction.SetDefault);
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropColumn("PromoItemId", "Orders");
        }
    }
}
