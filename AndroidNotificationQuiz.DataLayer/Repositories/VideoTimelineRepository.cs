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
    public class VideoTimelineRepository : IVideoTimelineRepository
    {
        private readonly AndroidNotificationQuizContext _context;

        public VideoTimelineRepository(AndroidNotificationQuizContext context)
        {
            _context = context;
        }

        private bool GetDecide(VideoTimeline vtl, int videoViewPercentage)
        {
            if (vtl == null)
                return false;

            //if (vtl.Duration > 300000)
                return vtl.Counter >= vtl.Duration * videoViewPercentage / 100;

            //return vtl.Counter > 60000 * 5;
        }

        public async Task<bool> AddAsync(int user_id, string video_id, long timeline, long duration, long realtime, int videoViewPercentage)
        {
            var vtl = await GetAsync(user_id, video_id);

            if (vtl != null)
            {
                if (GetDecide(vtl, videoViewPercentage))
                    return true;

                vtl.Duration = duration;

                // Если таймлайн не двигается или был перемотан назад, ничего не делаем
                if (timeline <= vtl.Timeline)
                {
                    vtl.Timeline = timeline;
                    await _context.SaveChangesAsync();
                    return GetDecide(vtl, videoViewPercentage);
                }

                // Вычисляем сдвиг
                var tl = Math.Abs(timeline - vtl.Timeline);
                var rt = Math.Abs(realtime - vtl.RealTime);

                // Берем минимальные значения сдвига
                var counter = Math.Min(tl, rt);

                // Обновляем значения
                vtl.RealTime = realtime;
                vtl.Timeline = timeline;
                vtl.Counter = vtl.Counter + counter;
            }
            else
            {
                vtl = new VideoTimeline
                {
                    UserId = user_id,
                    VideoId = video_id,
                    Timeline = timeline,
                    RealTime = realtime,
                    Duration = duration,
                };
                await _context.VideoTimelines.AddAsync(vtl);
            }

            await _context.SaveChangesAsync();
            return GetDecide(vtl, videoViewPercentage);
        }

        public async Task<VideoTimeline> GetAsync(int user_id, string video_id)
        {
            return await _context.VideoTimelines
                .FirstOrDefaultAsync(o => o.UserId == user_id && o.VideoId == video_id);
        }

        public async Task<bool> IsSawAsync(int user_id, string video_id, int videoViewPercentage)
        {
            var b = await GetAsync(user_id, video_id);

            return GetDecide(b, videoViewPercentage);
        }
    }
}
