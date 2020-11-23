using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Http.Internal;
using Microsoft.AspNetCore.Mvc.Filters;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace AndroidNotificationQuiz.Api.Middleware
{
    public class EnableBodyRewind : Attribute, IAuthorizationFilter
    {
        // migration
        // https://docs.microsoft.com/en-us/ef/core/managing-schemas/migrations/?tabs=dotnet-core-cli

        public void OnAuthorization(AuthorizationFilterContext context)
        {
            var req = context.HttpContext.Request;

            const string headerKey = "X-Secret";
            var h = context.HttpContext.Request.Headers;

            bool key_header_is_absent = !h.ContainsKey(headerKey)
                || string.IsNullOrEmpty(h[headerKey])
                || !h[headerKey].Equals("<X-Secret>");
            
            //key_header_is_absent = false;

            if (key_header_is_absent)
            {
                var output = "";
                context.HttpContext.Response.ContentType = "application/json";
                context.HttpContext.Response.StatusCode = 403;
                context.HttpContext.Response.WriteAsync(output);
            }
        }
    }
}
