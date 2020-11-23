using System;
using System.Collections.Generic;
using System.Linq;
using System.Linq.Expressions;
using System.Threading.Tasks;
using AndroidNotificationQuiz.DataLayer.Database;
using AndroidNotificationQuiz.DomainLayer.Entities;
using AndroidNotificationQuiz.DomainLayer.Interfaces;
using Microsoft.EntityFrameworkCore;

namespace AndroidNotificationQuiz.DataLayer.Repositories
{
    public class GeneralSettingsRepository : IGeneralSettingsRepository
    {
        private readonly AndroidNotificationQuizContext _context;

        public GeneralSettingsRepository(AndroidNotificationQuizContext context)
        {
            _context = context;
        }

        public async Task<KeyValue> GetAsync(string key)
        {
            if (string.IsNullOrEmpty(key))
                return null;

            return await _context.GeneralSettings.FirstOrDefaultAsync(o => key.Equals(o.Key));
        }

        private const string KEY_VIDEO_VIEW_PERCENTAGE = "KEY_VIDEO_VIEW_PERCENTAGE";

        public async Task<int> GetVideoViewPercentage()
        {
            var kv = await GetAsync(KEY_VIDEO_VIEW_PERCENTAGE);
            if (kv == null)
                return 50;

            if (int.TryParse(kv.Value, out int res))
                return res;

            return 50;
        }

        public async Task SetVideoViewPercentage(int value)
        {
            var kv = await GetAsync(KEY_VIDEO_VIEW_PERCENTAGE);
            if (kv == null)
            {
                kv = new KeyValue { Key = KEY_VIDEO_VIEW_PERCENTAGE, Value = value.ToString() };
                await _context.GeneralSettings.AddAsync(kv);
            }
            else
            {
                kv.Value = value.ToString();
            }

            await _context.SaveChangesAsync();
        }
    }
}
