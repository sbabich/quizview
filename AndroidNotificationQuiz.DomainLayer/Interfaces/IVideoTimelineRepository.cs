using System;
using System.Collections.Generic;
using System.Linq.Expressions;
using System.Threading.Tasks;
using AndroidNotificationQuiz.DomainLayer.Entities;

namespace AndroidNotificationQuiz.DomainLayer.Interfaces
{
    public interface IVideoTimelineRepository
    {
        Task<bool> AddAsync(int user_id, string video_id, long timeline, long duration, long realtime, int videoViewPercentage);
        Task<VideoTimeline> GetAsync(int user_id, string video_id);
        Task<bool> IsSawAsync(int user_id, string video_id, int videoViewPercentage);
    }
}

