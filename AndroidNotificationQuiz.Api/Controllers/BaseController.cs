using System;
using System.IdentityModel.Tokens.Jwt;
using System.Linq;
using Microsoft.AspNetCore.Mvc;

namespace AndroidNotificationQuiz.Api.Controllers
{
    public class BaseController : Controller
    {
        protected string GetUserId()
        {
            if (User.Claims.FirstOrDefault(i => i.Type == Helpers.Constants.Strings.JwtClaimIdentifiers.Id) != null)
                return User.Claims.FirstOrDefault(i => i.Type == Helpers.Constants.Strings.JwtClaimIdentifiers.Id).Value;
            return null;
        }
    }
}
