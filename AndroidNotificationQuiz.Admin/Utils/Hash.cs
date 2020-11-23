using System;
using System.Text;
using Microsoft.AspNetCore.Cryptography.KeyDerivation;

namespace AndroidNotificationQuiz.Admin.Utils
{
    public class Hash
    {
        public const string Salt = "NZsP6NnmfBuYeJrrAKNuVQ=="; 

        public static string Create(string value)
        {
            var valueBytes = KeyDerivation.Pbkdf2(
                                password: value,
                                salt: Encoding.UTF8.GetBytes(Salt),
                                prf: KeyDerivationPrf.HMACSHA512,
                                iterationCount: 10000,
                                numBytesRequested: 256 / 8);

            return Convert.ToBase64String(valueBytes);
        }

        public static bool Validate(string value, string hash)
            => Create(value) == hash;
    }

}
