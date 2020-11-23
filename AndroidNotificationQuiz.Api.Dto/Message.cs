﻿using System;
using System.Runtime.Serialization;

namespace AndroidNotificationQuiz.Api.Dto
{
    [DataContract]
    public class Message<T>
    {
        [DataMember(Name =  "IsSuccess")]
        public bool IsSuccess { get; set; }

        [DataMember(Name = "ReturnMessage")]
        public string ReturnMessage { get; set; }

        [DataMember(Name = "Data")]
        public T Data { get; set; }
    }
}
