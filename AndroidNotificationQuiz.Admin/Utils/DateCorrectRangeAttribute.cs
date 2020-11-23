using System;
using System.ComponentModel.DataAnnotations;
using AndroidNotificationQuiz.Admin.ViewModels;

namespace AndroidNotificationQuiz.Admin.Utils
{
    [AttributeUsage(AttributeTargets.Property)]
    public class DateCorrectRangeAttribute : ValidationAttribute
    {
        public bool ValidateStartDate { get; set; }

        protected override ValidationResult IsValid(object value, ValidationContext validationContext)
        {

            //if (validationContext.ObjectInstance is CreateSurveyModel model)
            //{
            //    if (model.NeedToBeFinishedFor < DateTime.UtcNow.Date && ValidateStartDate)
            //    {
            //        return new ValidationResult(string.Empty);
            //    }
            //}

            return ValidationResult.Success;
        }
    }
}
