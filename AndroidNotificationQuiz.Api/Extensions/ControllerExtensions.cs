﻿using System;
using System.Linq;
using AndroidNotificationQuiz.DomainLayer.Exceptions;
using Microsoft.AspNetCore.Mvc;

namespace AndroidNotificationQuiz.Api.Extensions
{
    public static class ControllerExtensions
    {
        public static void ValidateRequest<T>(this Controller controller, T request) where T : class
        {
            if (request == null)
                throw new ValidationException("Тело запроса пустое");
            if (controller.TryValidateModel(request)) return;

            var messages = controller.ModelState.Values
                .SelectMany(v => v.Errors)
                .Select(e => e.ErrorMessage).ToArray();

            throw new ValidationException(messages);
        }
    }
}
