using System.Data.SqlClient;
using System.Net;
using AndroidNotificationQuiz.DomainLayer.Exceptions;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Filters;
using Microsoft.Extensions.Logging;

namespace AndroidNotificationQuiz.Api.ExceptionFilter
{
    public class ExceptionFilter : IExceptionFilter
    {
        private readonly ILogger<ExceptionFilter> _logger;

        public ExceptionFilter(ILogger<ExceptionFilter> logger)
        {
            _logger = logger;
        }

        public void OnException(ExceptionContext context)
        {
            switch (context.Exception)
            {
                case ValidationException ex:
                    context.Result =
                        new NotAcceptableObjectResult(new ErrorResponse {Errors = ex.Exceptions});
                    return;
                case NotFoundException ex:
                    context.Result =
                        new NotFoundObjectResult(new ErrorResponse {Errors = new[] {ex.Message}});
                    return;
                case SqlException ex:
                    context.Result = new TooManyRequestsResult(new ErrorResponse
                        {Errors = new[] {"Наблюдается повышенная нагрузка на сервис. Попробуйте позже."}});
                    _logger.LogError(
                        "exception - {0}",
                        ex
                    );
                    return;
            }

            _logger.LogError(
                "exception - {0}",
                context.Exception.ToString()
            );

            context.Result =
                new InternalServerErrorObjectResult(new ErrorResponse
                    {Errors = new[] {"Проблемы с сервером. Попробуйте позже."}});

            context.ExceptionHandled = true;
        }
    }

    public class ErrorResponse
    {
        public string[] Errors { get; set; }
    }

    public class InternalServerErrorObjectResult : ObjectResult
    {
        public InternalServerErrorObjectResult(object value)
            : base(value)
        {
            StatusCode = (int) HttpStatusCode.InternalServerError;
        }
    }

    public class NotAcceptableObjectResult : ObjectResult
    {
        public NotAcceptableObjectResult(object value)
            : base(value)
        {
            StatusCode = (int) HttpStatusCode.NotAcceptable;
        }
    }

    public class NotFoundObjectResult : ObjectResult
    {
        public NotFoundObjectResult(object value)
            : base(value)
        {
            StatusCode = (int) HttpStatusCode.NotFound;
        }
    }

    public class TooManyRequestsResult : ObjectResult
    {
        public TooManyRequestsResult(object value) : base(value)
        {
            StatusCode = (int) HttpStatusCode.TooManyRequests;
        }
    }
}