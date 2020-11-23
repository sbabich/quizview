using System;
using System.Linq;
using System.Linq.Expressions;
using Microsoft.EntityFrameworkCore;

namespace AndroidNotificationQuiz.DataLayer.Database
{
    public static class Utils
    {
        public static IQueryable<TEntity> Includes<TEntity>(this IQueryable<TEntity> source,
            params Expression<Func<TEntity, object>>[] includes)
            where TEntity : class
        {
            foreach (var include in includes)
            {
                source = source.Include(include);
            }

            return source;
        }
    }
}
