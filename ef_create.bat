cd .\AndroidNotificationQuiz.DataLayer
dotnet ef --startup-project ../AndroidNotificationQuiz.Api/ migrations add Initial
cd ..
dotnet ef database update