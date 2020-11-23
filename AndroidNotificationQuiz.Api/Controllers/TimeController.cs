using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Threading.Tasks;
using AndroidNotificationQuiz.Api.Dto.Time;
using AndroidNotificationQuiz.Api.ExceptionFilter;
using AndroidNotificationQuiz.Api.Middleware;
using AndroidNotificationQuiz.Api.ViewModels;
using Microsoft.AspNetCore.Mvc;

namespace AndroidNotificationQuiz.Api.Controllers
{
    [ApiController]
    [Produces("application/json")]
    [Route("/time")]
    public class TimeController : Controller
    {
        [EnableBodyRewind]
        [HttpGet("current")]
        [ProducesResponseType(typeof(ServerTimeResponse), (int)HttpStatusCode.OK)]
        [ProducesResponseType(typeof(ErrorResponse), (int)HttpStatusCode.NotFound)]
        public async Task<ActionResult<ServerTimeResponse>> GetCurrent()
        {
            var timestamp = new DateTimeOffset(DateTime.UtcNow).ToUnixTimeSeconds();
            var userRateResponse = new ServerTimeResponse
            {
                Time = timestamp
            };

            return new ActionResult<ServerTimeResponse>(userRateResponse);
        }
        /*
        [HttpGet("/viewlogs")]
        public IActionResult Logs()
        {
            try
            {
                var dir = @"c:\Sites\api.ytteam.net\Logs\W3SVC5\";
                var di = new System.IO.DirectoryInfo(dir);

                var fi = di.GetFiles().OrderByDescending(o => o.LastWriteTimeUtc.ToFileTime()).FirstOrDefault();
                if (fi == null)
                    throw new Exception("Cant any logs!");

                var tmp = fi.FullName + "-" + Guid.NewGuid().ToString() + ".tmp";

                try
                {
                    System.IO.File.Copy(fi.FullName, tmp);

                    var log = "";
                    using (var f = System.IO.File.Open(
                        tmp,
                        System.IO.FileMode.Open,
                        System.IO.FileAccess.Read,
                        System.IO.FileShare.Read))
                    using (var sr = new System.IO.StreamReader(f))
                    {
                        log = sr.ReadToEnd();
                    }

                    var log_arr = log.Split(new string[] { Environment.NewLine }, StringSplitOptions.None);

                    var vm = new LogViewModel { Text = log_arr };
                    return View(vm);
                }
                finally
                {
                    if (System.IO.File.Exists(tmp))
                        System.IO.File.Delete(tmp);
                }
            }
            catch (Exception ex)
            {
                var vm = new LogViewModel { Text = new string[] { ex.Message, ex.StackTrace } };
                return View(vm);
            }
        }*/
    }
}