using System;
namespace AndroidNotificationQuiz.Api.Dto.Auth
{
    public class UserNamePayload
    {
        public UserNamePayload()
        {
        }

        public UserNamePayload(string firstName, string channalId, SocialNetwork network, string thumb)
        {
            FirstName = firstName;
            //LastName = lastName;
            ChannalId = channalId;
            Network = network;
            Thumb = thumb;
        }

        public string FirstName { get; set; }
        public string Thumb { get; set; }
        public string LastName { get; set; }
        public string ChannalId { get; set; }
        public SocialNetwork Network { get; set; }
    }

    public enum SocialNetwork { Youtube, Vk }
}
