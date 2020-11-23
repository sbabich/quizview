using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;

namespace AndroidNotificationQuiz.Api.Controllers
{
    public class DescriptionController : Controller
    {
        private const string _access_key = "hXLOx04NHqBxQsdWbAis";

        [HttpGet("/api")]
        public IActionResult ViewApi(string token)
        {
            if (string.IsNullOrEmpty(token) && !_access_key.Equals(token))
                throw new System.Net.Http.HttpRequestException();

            return View();
        }
    }
}