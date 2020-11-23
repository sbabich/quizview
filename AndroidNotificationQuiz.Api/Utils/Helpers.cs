using System;
using System.IO;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Http;

namespace AndroidNotificationQuiz.Api.Utils
{
    public class FileHelpers
    {
        public static async Task<string> SaveFile(IFormFile file,
            string userPath,
            string uploads,
            string fileName)
        {
            if (file.Length > 0)
            {
                if (!Directory.Exists(uploads))
                    Directory.CreateDirectory(uploads);

                var saveDbPath = Path.Combine(userPath, $"{fileName}.png");
                var filePath = Path.Combine(uploads, $"{fileName}.png");

                using (var fileStream = new FileStream(filePath, FileMode.Create))
                {
                    //await fileStream.WriteAsync(file, 0, file.Length);
                    await file.CopyToAsync(fileStream);
                    fileStream.Flush();
                }

                return saveDbPath;
            }

            return null;
        }
    }
}