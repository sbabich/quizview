--
-- PostgreSQL database dump
--

-- Dumped from database version 12.1
-- Dumped by pg_dump version 12.1

-- Started on 2020-02-10 13:42:25

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 204 (class 1259 OID 17082)
-- Name: AdditionalInfos; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."AdditionalInfos" (
    "Id" integer NOT NULL,
    "LinkToSite" text,
    "LinkToVideo" text
);


ALTER TABLE public."AdditionalInfos" OWNER TO postgres;

--
-- TOC entry 203 (class 1259 OID 17080)
-- Name: AdditionalInfos_Id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."AdditionalInfos_Id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AdditionalInfos_Id_seq" OWNER TO postgres;

--
-- TOC entry 3085 (class 0 OID 0)
-- Dependencies: 203
-- Name: AdditionalInfos_Id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."AdditionalInfos_Id_seq" OWNED BY public."AdditionalInfos"."Id";


--
-- TOC entry 206 (class 1259 OID 17093)
-- Name: Admins; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Admins" (
    "Id" integer NOT NULL,
    "Email" text,
    "PwdSalt" text,
    "CreatedAt" timestamp with time zone NOT NULL,
    "OwnerId" integer
);


ALTER TABLE public."Admins" OWNER TO postgres;

--
-- TOC entry 205 (class 1259 OID 17091)
-- Name: Admins_Id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Admins_Id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Admins_Id_seq" OWNER TO postgres;

--
-- TOC entry 3086 (class 0 OID 0)
-- Dependencies: 205
-- Name: Admins_Id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Admins_Id_seq" OWNED BY public."Admins"."Id";


--
-- TOC entry 218 (class 1259 OID 17171)
-- Name: AuthToken; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."AuthToken" (
    "Id" integer NOT NULL,
    "Auth" text,
    "Refresh" text,
    "RefreshExpiredAt" timestamp with time zone NOT NULL,
    "UserId" integer NOT NULL
);


ALTER TABLE public."AuthToken" OWNER TO postgres;

--
-- TOC entry 217 (class 1259 OID 17169)
-- Name: AuthToken_Id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."AuthToken_Id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AuthToken_Id_seq" OWNER TO postgres;

--
-- TOC entry 3087 (class 0 OID 0)
-- Dependencies: 217
-- Name: AuthToken_Id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."AuthToken_Id_seq" OWNED BY public."AuthToken"."Id";


--
-- TOC entry 208 (class 1259 OID 17104)
-- Name: Categories; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Categories" (
    "Id" integer NOT NULL,
    "Position" text,
    "Sort" integer NOT NULL,
    "CreatedAt" timestamp with time zone NOT NULL,
    "AdminId" integer NOT NULL
);


ALTER TABLE public."Categories" OWNER TO postgres;

--
-- TOC entry 207 (class 1259 OID 17102)
-- Name: Categories_Id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Categories_Id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Categories_Id_seq" OWNER TO postgres;

--
-- TOC entry 3088 (class 0 OID 0)
-- Dependencies: 207
-- Name: Categories_Id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Categories_Id_seq" OWNED BY public."Categories"."Id";


--
-- TOC entry 210 (class 1259 OID 17115)
-- Name: Devices; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Devices" (
    "Id" integer NOT NULL,
    "DeviceId" text,
    "Type" integer NOT NULL
);


ALTER TABLE public."Devices" OWNER TO postgres;

--
-- TOC entry 209 (class 1259 OID 17113)
-- Name: Devices_Id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Devices_Id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Devices_Id_seq" OWNER TO postgres;

--
-- TOC entry 3089 (class 0 OID 0)
-- Dependencies: 209
-- Name: Devices_Id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Devices_Id_seq" OWNED BY public."Devices"."Id";


--
-- TOC entry 216 (class 1259 OID 17155)
-- Name: Goods; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Goods" (
    "Id" integer NOT NULL,
    "Title" text,
    "Description" text,
    "ImagePath" text,
    "Cost" integer NOT NULL,
    "RealCost" numeric NOT NULL,
    "CreatedAt" timestamp with time zone NOT NULL,
    "AdminId" integer NOT NULL,
    "CategoryId" integer NOT NULL
);


ALTER TABLE public."Goods" OWNER TO postgres;

--
-- TOC entry 215 (class 1259 OID 17153)
-- Name: Goods_Id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Goods_Id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Goods_Id_seq" OWNER TO postgres;

--
-- TOC entry 3090 (class 0 OID 0)
-- Dependencies: 215
-- Name: Goods_Id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Goods_Id_seq" OWNED BY public."Goods"."Id";


--
-- TOC entry 224 (class 1259 OID 17219)
-- Name: Likes; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Likes" (
    "Id" integer NOT NULL,
    "LikedAt" timestamp with time zone NOT NULL,
    "UserId" integer NOT NULL,
    "SurveyId" integer NOT NULL
);


ALTER TABLE public."Likes" OWNER TO postgres;

--
-- TOC entry 223 (class 1259 OID 17217)
-- Name: Likes_Id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Likes_Id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Likes_Id_seq" OWNER TO postgres;

--
-- TOC entry 3091 (class 0 OID 0)
-- Dependencies: 223
-- Name: Likes_Id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Likes_Id_seq" OWNED BY public."Likes"."Id";


--
-- TOC entry 220 (class 1259 OID 17187)
-- Name: NetworkProfile; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."NetworkProfile" (
    "Id" integer NOT NULL,
    "Title" text,
    "Link" text,
    "UserId" integer NOT NULL
);


ALTER TABLE public."NetworkProfile" OWNER TO postgres;

--
-- TOC entry 219 (class 1259 OID 17185)
-- Name: NetworkProfile_Id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."NetworkProfile_Id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."NetworkProfile_Id_seq" OWNER TO postgres;

--
-- TOC entry 3092 (class 0 OID 0)
-- Dependencies: 219
-- Name: NetworkProfile_Id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."NetworkProfile_Id_seq" OWNED BY public."NetworkProfile"."Id";


--
-- TOC entry 236 (class 1259 OID 17331)
-- Name: Orders; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Orders" (
    "Id" integer NOT NULL,
    "OrderedAt" timestamp with time zone NOT NULL,
    "GoodId" integer NOT NULL,
    "UserId" integer NOT NULL,
    "Completed" boolean NOT NULL,
    "CompletedAt" timestamp with time zone,
    "IsNotCalculated" boolean DEFAULT false NOT NULL
);


ALTER TABLE public."Orders" OWNER TO postgres;

--
-- TOC entry 235 (class 1259 OID 17329)
-- Name: Orders_Id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Orders_Id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Orders_Id_seq" OWNER TO postgres;

--
-- TOC entry 3093 (class 0 OID 0)
-- Dependencies: 235
-- Name: Orders_Id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Orders_Id_seq" OWNED BY public."Orders"."Id";


--
-- TOC entry 222 (class 1259 OID 17203)
-- Name: PhoneIdentificators; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."PhoneIdentificators" (
    "Id" integer NOT NULL,
    "DeviceId" text,
    "PhoneType" integer NOT NULL,
    "UserId" integer NOT NULL
);


ALTER TABLE public."PhoneIdentificators" OWNER TO postgres;

--
-- TOC entry 221 (class 1259 OID 17201)
-- Name: PhoneIdentificators_Id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."PhoneIdentificators_Id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."PhoneIdentificators_Id_seq" OWNER TO postgres;

--
-- TOC entry 3094 (class 0 OID 0)
-- Dependencies: 221
-- Name: PhoneIdentificators_Id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."PhoneIdentificators_Id_seq" OWNED BY public."PhoneIdentificators"."Id";


--
-- TOC entry 226 (class 1259 OID 17237)
-- Name: Pushs; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Pushs" (
    "Id" integer NOT NULL,
    "Title" text,
    "Content" text,
    "SurveyId" integer NOT NULL,
    "AdminId" integer NOT NULL,
    "CreatedAt" timestamp with time zone NOT NULL
);


ALTER TABLE public."Pushs" OWNER TO postgres;

--
-- TOC entry 225 (class 1259 OID 17235)
-- Name: Pushs_Id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Pushs_Id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Pushs_Id_seq" OWNER TO postgres;

--
-- TOC entry 3095 (class 0 OID 0)
-- Dependencies: 225
-- Name: Pushs_Id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Pushs_Id_seq" OWNED BY public."Pushs"."Id";


--
-- TOC entry 228 (class 1259 OID 17258)
-- Name: Questionaries; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Questionaries" (
    "Id" integer NOT NULL,
    "Question" text,
    "RightAnswer" text,
    "SurveyId" integer NOT NULL
);


ALTER TABLE public."Questionaries" OWNER TO postgres;

--
-- TOC entry 227 (class 1259 OID 17256)
-- Name: Questionaries_Id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Questionaries_Id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Questionaries_Id_seq" OWNER TO postgres;

--
-- TOC entry 3096 (class 0 OID 0)
-- Dependencies: 227
-- Name: Questionaries_Id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Questionaries_Id_seq" OWNED BY public."Questionaries"."Id";


--
-- TOC entry 230 (class 1259 OID 17274)
-- Name: SurveyComments; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."SurveyComments" (
    "Id" integer NOT NULL,
    "UserId" integer NOT NULL,
    "SurveyId" integer NOT NULL,
    "Text" text,
    "CreatedAt" timestamp with time zone NOT NULL
);


ALTER TABLE public."SurveyComments" OWNER TO postgres;

--
-- TOC entry 229 (class 1259 OID 17272)
-- Name: SurveyComments_Id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."SurveyComments_Id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."SurveyComments_Id_seq" OWNER TO postgres;

--
-- TOC entry 3097 (class 0 OID 0)
-- Dependencies: 229
-- Name: SurveyComments_Id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."SurveyComments_Id_seq" OWNED BY public."SurveyComments"."Id";


--
-- TOC entry 214 (class 1259 OID 17139)
-- Name: Surveys; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Surveys" (
    "Id" integer NOT NULL,
    "Title" text,
    "Text" text,
    "AdditionalInfoId" integer,
    "NeedToBeFinishedFor" timestamp with time zone NOT NULL,
    "NeedToBeFinishedForStart" timestamp with time zone NOT NULL,
    "Limit" integer NOT NULL,
    "NumberOfUser" integer NOT NULL,
    "IsActive" boolean NOT NULL,
    "CreatedAt" timestamp with time zone NOT NULL,
    "Score" integer NOT NULL
);


ALTER TABLE public."Surveys" OWNER TO postgres;

--
-- TOC entry 232 (class 1259 OID 17295)
-- Name: SurveysUsers; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."SurveysUsers" (
    "Id" integer NOT NULL,
    "UserId" integer NOT NULL,
    "SurveyId" integer NOT NULL,
    "IsFinished" boolean NOT NULL,
    "IsAllAnswersCorrect" boolean NOT NULL,
    "StartDate" timestamp with time zone,
    "FinishDate" timestamp with time zone
);


ALTER TABLE public."SurveysUsers" OWNER TO postgres;

--
-- TOC entry 231 (class 1259 OID 17293)
-- Name: SurveysUsers_Id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."SurveysUsers_Id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."SurveysUsers_Id_seq" OWNER TO postgres;

--
-- TOC entry 3098 (class 0 OID 0)
-- Dependencies: 231
-- Name: SurveysUsers_Id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."SurveysUsers_Id_seq" OWNED BY public."SurveysUsers"."Id";


--
-- TOC entry 213 (class 1259 OID 17137)
-- Name: Surveys_Id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Surveys_Id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Surveys_Id_seq" OWNER TO postgres;

--
-- TOC entry 3099 (class 0 OID 0)
-- Dependencies: 213
-- Name: Surveys_Id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Surveys_Id_seq" OWNED BY public."Surveys"."Id";


--
-- TOC entry 238 (class 1259 OID 17349)
-- Name: UserQuestionAnswers; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."UserQuestionAnswers" (
    "Id" integer NOT NULL,
    "SurveyUserId" integer NOT NULL,
    "QuestionaryID" integer NOT NULL,
    "Answer" text
);


ALTER TABLE public."UserQuestionAnswers" OWNER TO postgres;

--
-- TOC entry 237 (class 1259 OID 17347)
-- Name: UserQuestionAnswers_Id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."UserQuestionAnswers_Id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."UserQuestionAnswers_Id_seq" OWNER TO postgres;

--
-- TOC entry 3100 (class 0 OID 0)
-- Dependencies: 237
-- Name: UserQuestionAnswers_Id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."UserQuestionAnswers_Id_seq" OWNED BY public."UserQuestionAnswers"."Id";


--
-- TOC entry 234 (class 1259 OID 17313)
-- Name: UserTransactions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."UserTransactions" (
    "Id" integer NOT NULL,
    "UserId" integer NOT NULL,
    "SurveyId" integer,
    "Score" integer NOT NULL,
    "CreatedAt" timestamp with time zone,
    "Type" integer DEFAULT 0 NOT NULL
);


ALTER TABLE public."UserTransactions" OWNER TO postgres;

--
-- TOC entry 233 (class 1259 OID 17311)
-- Name: UserTransactions_Id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."UserTransactions_Id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."UserTransactions_Id_seq" OWNER TO postgres;

--
-- TOC entry 3101 (class 0 OID 0)
-- Dependencies: 233
-- Name: UserTransactions_Id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."UserTransactions_Id_seq" OWNED BY public."UserTransactions"."Id";


--
-- TOC entry 212 (class 1259 OID 17126)
-- Name: Users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Users" (
    "Id" integer NOT NULL,
    "Nick" text,
    "Name" text,
    "Surname" text,
    "AvatarPath" text,
    "Email" text NOT NULL,
    "RegistredAt" timestamp with time zone NOT NULL,
    "IsBanned" boolean NOT NULL,
    "BanStartedAt" timestamp with time zone,
    "BanFineshedAt" timestamp with time zone,
    "Balance" integer NOT NULL
);


ALTER TABLE public."Users" OWNER TO postgres;

--
-- TOC entry 211 (class 1259 OID 17124)
-- Name: Users_Id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Users_Id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Users_Id_seq" OWNER TO postgres;

--
-- TOC entry 3102 (class 0 OID 0)
-- Dependencies: 211
-- Name: Users_Id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Users_Id_seq" OWNED BY public."Users"."Id";


--
-- TOC entry 240 (class 1259 OID 17385)
-- Name: VideoTimelines; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."VideoTimelines" (
    "Id" integer NOT NULL,
    "UserId" integer NOT NULL,
    "VideoId" text,
    "Timeline" bigint NOT NULL,
    "RealTime" bigint NOT NULL,
    "Counter" bigint NOT NULL,
    "Duration" bigint NOT NULL
);


ALTER TABLE public."VideoTimelines" OWNER TO postgres;

--
-- TOC entry 239 (class 1259 OID 17383)
-- Name: VideoTimelines_Id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."VideoTimelines_Id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."VideoTimelines_Id_seq" OWNER TO postgres;

--
-- TOC entry 3103 (class 0 OID 0)
-- Dependencies: 239
-- Name: VideoTimelines_Id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."VideoTimelines_Id_seq" OWNED BY public."VideoTimelines"."Id";


--
-- TOC entry 202 (class 1259 OID 17075)
-- Name: __EFMigrationsHistory; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."__EFMigrationsHistory" (
    "MigrationId" character varying(150) NOT NULL,
    "ProductVersion" character varying(32) NOT NULL
);


ALTER TABLE public."__EFMigrationsHistory" OWNER TO postgres;

--
-- TOC entry 2814 (class 2604 OID 17085)
-- Name: AdditionalInfos Id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."AdditionalInfos" ALTER COLUMN "Id" SET DEFAULT nextval('public."AdditionalInfos_Id_seq"'::regclass);


--
-- TOC entry 2815 (class 2604 OID 17096)
-- Name: Admins Id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Admins" ALTER COLUMN "Id" SET DEFAULT nextval('public."Admins_Id_seq"'::regclass);


--
-- TOC entry 2821 (class 2604 OID 17174)
-- Name: AuthToken Id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."AuthToken" ALTER COLUMN "Id" SET DEFAULT nextval('public."AuthToken_Id_seq"'::regclass);


--
-- TOC entry 2816 (class 2604 OID 17107)
-- Name: Categories Id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Categories" ALTER COLUMN "Id" SET DEFAULT nextval('public."Categories_Id_seq"'::regclass);


--
-- TOC entry 2817 (class 2604 OID 17118)
-- Name: Devices Id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Devices" ALTER COLUMN "Id" SET DEFAULT nextval('public."Devices_Id_seq"'::regclass);


--
-- TOC entry 2820 (class 2604 OID 17158)
-- Name: Goods Id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Goods" ALTER COLUMN "Id" SET DEFAULT nextval('public."Goods_Id_seq"'::regclass);


--
-- TOC entry 2824 (class 2604 OID 17222)
-- Name: Likes Id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Likes" ALTER COLUMN "Id" SET DEFAULT nextval('public."Likes_Id_seq"'::regclass);


--
-- TOC entry 2822 (class 2604 OID 17190)
-- Name: NetworkProfile Id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."NetworkProfile" ALTER COLUMN "Id" SET DEFAULT nextval('public."NetworkProfile_Id_seq"'::regclass);


--
-- TOC entry 2831 (class 2604 OID 17334)
-- Name: Orders Id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Orders" ALTER COLUMN "Id" SET DEFAULT nextval('public."Orders_Id_seq"'::regclass);


--
-- TOC entry 2823 (class 2604 OID 17206)
-- Name: PhoneIdentificators Id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."PhoneIdentificators" ALTER COLUMN "Id" SET DEFAULT nextval('public."PhoneIdentificators_Id_seq"'::regclass);


--
-- TOC entry 2825 (class 2604 OID 17240)
-- Name: Pushs Id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Pushs" ALTER COLUMN "Id" SET DEFAULT nextval('public."Pushs_Id_seq"'::regclass);


--
-- TOC entry 2826 (class 2604 OID 17261)
-- Name: Questionaries Id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Questionaries" ALTER COLUMN "Id" SET DEFAULT nextval('public."Questionaries_Id_seq"'::regclass);


--
-- TOC entry 2827 (class 2604 OID 17277)
-- Name: SurveyComments Id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."SurveyComments" ALTER COLUMN "Id" SET DEFAULT nextval('public."SurveyComments_Id_seq"'::regclass);


--
-- TOC entry 2819 (class 2604 OID 17142)
-- Name: Surveys Id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Surveys" ALTER COLUMN "Id" SET DEFAULT nextval('public."Surveys_Id_seq"'::regclass);


--
-- TOC entry 2828 (class 2604 OID 17298)
-- Name: SurveysUsers Id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."SurveysUsers" ALTER COLUMN "Id" SET DEFAULT nextval('public."SurveysUsers_Id_seq"'::regclass);


--
-- TOC entry 2833 (class 2604 OID 17352)
-- Name: UserQuestionAnswers Id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."UserQuestionAnswers" ALTER COLUMN "Id" SET DEFAULT nextval('public."UserQuestionAnswers_Id_seq"'::regclass);


--
-- TOC entry 2829 (class 2604 OID 17316)
-- Name: UserTransactions Id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."UserTransactions" ALTER COLUMN "Id" SET DEFAULT nextval('public."UserTransactions_Id_seq"'::regclass);


--
-- TOC entry 2818 (class 2604 OID 17129)
-- Name: Users Id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Users" ALTER COLUMN "Id" SET DEFAULT nextval('public."Users_Id_seq"'::regclass);


--
-- TOC entry 2834 (class 2604 OID 17388)
-- Name: VideoTimelines Id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."VideoTimelines" ALTER COLUMN "Id" SET DEFAULT nextval('public."VideoTimelines_Id_seq"'::regclass);


--
-- TOC entry 3043 (class 0 OID 17082)
-- Dependencies: 204
-- Data for Name: AdditionalInfos; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."AdditionalInfos" ("Id", "LinkToSite", "LinkToVideo") FROM stdin;
1	https://www.youtube.com/watch?v=7wtfhZwyrcc	https://www.youtube.com/watch?v=7wtfhZwyrcc
2	https://www.youtube.com/watch?v=kJQP7kiw5Fk	https://www.youtube.com/watch?v=kJQP7kiw5Fk
3	https://www.youtube.com/watch?v=kJQP7kiw5Fk	https://www.youtube.com/watch?v=kJQP7kiw5Fk
4	https://www.youtube.com/watch?v=kJQP7kiw5Fk	https://www.youtube.com/watch?v=kJQP7kiw5Fk
5	https://www.youtube.com/watch?v=kJQP7kiw5Fk	https://www.youtube.com/watch?v=kJQP7kiw5Fk
6	https://www.youtube.com/watch?v=kJQP7kiw5Fk	https://www.youtube.com/watch?v=kJQP7kiw5Fk
7	https://www.youtube.com/watch?v=0I647GU3Jsc	https://www.youtube.com/watch?v=0I647GU3Jsc
8	https://www.youtube.com/watch?v=0I647GU3Jsc	https://www.youtube.com/watch?v=0I647GU3Jsc
9	https://www.youtube.com/watch?v=uAcALH67-2A	https://www.youtube.com/watch?v=uAcALH67-2A
10	https://www.youtube.com/channel/UCS5xcRuD89qhg7YGL8DQPeA?view_as=subscriber	https://youtu.be/pR2zNdhCTUk
11	https://discord.gg/fREpPD	https://www.youtube.com/watch?v=XVS7v5D_nfk
12	https://discord.gg/D2aC4mS	https://www.youtube.com/watch?v=XVS7v5D_nfk
13	https://www.youtube.com/watch?v=XVS7v5D_nfk	https://www.youtube.com/watch?v=XVS7v5D_nfk
14	https://www.youtube.com/watch?v=q-1ZOrPRTTY	https://www.youtube.com/watch?v=q-1ZOrPRTTY
15	https://youtu.be/hTNnb_tXUEQ	https://youtu.be/hTNnb_tXUEQ
16	https://www.youtube.com/watch?v=YvUzvPnCJ9Y	https://www.youtube.com/watch?v=YvUzvPnCJ9Y
17	https://discord.gg/D2aC4mS	https://www.youtube.com/watch?v=YvUzvPnCJ9Y
18	https://www.youtube.com/watch?v=8UwQHnff1TI	https://www.youtube.com/watch?v=8UwQHnff1TI
19	https://www.youtube.com/watch?v=CGrWxSuB0MU	https://www.youtube.com/watch?v=CGrWxSuB0MU
20	https://www.youtube.com/watch?v=3spJkLU-qX4	https://www.youtube.com/watch?v=3spJkLU-qX4
\.


--
-- TOC entry 3045 (class 0 OID 17093)
-- Dependencies: 206
-- Data for Name: Admins; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Admins" ("Id", "Email", "PwdSalt", "CreatedAt", "OwnerId") FROM stdin;
1	admin@admin.com	pjCodw+adNcHhO+3BK0+02HJjykAyp5t3kbSlusVS5Q=	2019-04-03 00:03:13.277941+03	\N
\.


--
-- TOC entry 3057 (class 0 OID 17171)
-- Dependencies: 218
-- Data for Name: AuthToken; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."AuthToken" ("Id", "Auth", "Refresh", "RefreshExpiredAt", "UserId") FROM stdin;
1	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiI3OTIyMWQwMy1kNzBmLTQ1M2ItOTc0NS02MjFhOTgwM2NhZmIiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiJVQ1RDV2xFSlZMbHU2ZXZ0X29reVQwX0EiLCJleHAiOjE1Nzg3NTIzNTcsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.AEkuMs-TDEmT3QY7SwJl_faFbP9ppWqk1NsBlY5uZmc	w/mYFosXD7kTz5aB6PphQh2u3+GEOlBcLw+s8VBJigY=	2020-01-11 17:19:17.434007+03	1
2	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiJhNzQzNzIxOC00ODI3LTQ5ODUtOTU4ZC01ZmRlNGZiODlhZjciLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiJVQzJTeG9PdGVBSzc3Mko3QWgwZHh6QVEiLCJleHAiOjE1Nzg3NjY0MDgsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.Uh2-nexBQWS6gFMXe5seosIcmAHQcn7m_QKVnF5YMOk	QkEzGkliXQo2LmSwJWy5m67uFda4oYRr/rZ6oc1csZM=	2020-01-11 21:13:28.642634+03	2
713	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiJiMTZhZGRlNC01OWQ3LTQzZGItOGI1Ni0xYjY5YTk1MGQyMjIiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiIzMzE1NTI4MDEiLCJleHAiOjE1ODAyMjgyMDksImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.SbojBeyl9p9pry5BgYPbrGl-sshUfN2Lk4ejtnNugIM	IDr6lzW7cDruyeYd1WKAQfl6sFPVsUoB5Ir1RsGD4v0=	2020-01-28 19:16:49.341978+03	603
6	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiJkYjI3OWM1MS1mMDJmLTRhYzMtYWEwNy0zNDJkYmExZTlhNWQiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiJVQ0JmWU16OGNvMEc1dnkyem96UkJKdXciLCJleHAiOjE1Nzg4MzMxNDQsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.oi-E2q_ZmPffOEsHcc72u77eXwvznJHpIE4qVWkjKEE	0o9dwM5XYArUqdBJOAm344D5bOXwN8JRdWuEAupF9Mc=	2020-01-12 18:30:44.455824+03	4
7	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiI3ZWRmMGQwOS05NTkxLTQ0ODAtOTFiMi1jNjAwMWVjYzhlNmMiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiIzOTczMDE3NTUiLCJleHAiOjE1Nzg4NDAwOTIsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.Cip7IxcU3c125BJi90g9OzgQluc9x0dLY35OXVxDWhQ	FXLn+Jrb1ERTqT/JxBrwqdDOXDB+VgOS6pqmTuEz6CY=	2020-01-12 17:41:32.656791+03	5
8	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiIxZDczYWZkNS05OTcxLTQ3NWQtOTlkOS1iNDY0OGI0NTVjYWYiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiJVQ3VQRXRtWG5QVmY3VU51TDVWc2tNQVEiLCJleHAiOjE1Nzg4NDk1OTQsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.zx4LLUmNIyeo7kyhGJt_NH-HyzTl1ODANZtSpz4MbdA	FmtkJmAVOznGC6enmFAf6w1UThvZVjJWeA/UMfJOO2s=	2020-01-12 20:19:54.721465+03	6
9	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiI0MGEzMTE5Mi1iOTY4LTQzZTUtOTE5OC00MWJkYjAzN2IyMTkiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiJVQ1NqVGZyQWJEOHJQcEFIU0Q1VXV3X0EiLCJleHAiOjE1Nzg4NjU4OTgsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.DBTz_gPhucLPoUlHuEHdACj9oS3biBz8t0bJhtC9eR8	EarFleJz/U4MaxwDXawqvovP7+6eZwxww/Z5BaiGrlM=	2020-01-13 00:51:38.668761+03	7
10	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiI0YjMyZDliMS00ZTExLTRhOGItODA1MS0yNDMyZDAxMTI5YWQiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiJVQy1CUThoZ2hpSWlUMXhzaUI0bWVKa0EiLCJleHAiOjE1Nzg5MDg2MTksImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.WKvUekv9CrqNl2W_qI_wuaXFL60K4bFOIx6fbV9WOGE	mB8Y+2btR0U8g9E3q2k8PziLD7gmGoeMa4IbTPBnyrk=	2020-01-13 12:43:39.368644+03	8
11	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiI0OGE1MGE3ZC0wMmQwLTQ4NzUtOTEyYi0wNzNjOWFmYmI4YjUiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiIzMTE2NzUxNzQiLCJleHAiOjE1Nzg5MTk5NDUsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.GxUvtmwwUMMgRBtRFMJwGxG49X6ENrD7U9LEEf8nzfg	YOrSPFrWEGKMwRSL2M8RlkL/k13HtxHt+Pi0Ad4qp9E=	2020-01-13 15:52:25.738503+03	9
12	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiI4NDRlYzY2Ni1jZGMyLTRjYWQtYjgyYy04YjRiYWVhMTM5ZWIiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiJVQ1NKcDlFSGNEUDhuTngxZ3NhU0tEYVEiLCJleHAiOjE1Nzg5MjEyOTgsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.h2wgcJsH5JtndcmasTqbWpgKnKdCBKVH4nv7vb9Pcrw	dQ2OPwHoPGgJngS4kmsg2Cq5gwUEG1KarpfJK7ezA2o=	2020-01-13 16:14:58.503082+03	10
147	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiI5MDQ2MjJjNS04N2MzLTQzNjctYjY3NS1hZTliMzA2MWM5MjgiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiIxNjM1MzY3ODQiLCJleHAiOjE1ODA1Njc4NjAsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.ZxC_yrIg2wwRq8oH3JBVDAru8UKq-mSZInJitetRKEU	TE+irnVSpq6Tyxw3ich7PdfpiRZEAhP9BnG1+qhHeSA=	2020-02-01 17:37:40.287073+03	115
650	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiJkNDU1NWRjYy05YzU4LTRiYTEtYjg1Yi1hNmRkNTUwNzExYTQiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiIzNjUzOTkxMTkiLCJleHAiOjE1ODAzOTQzODMsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.DznEUcz9PR3VDjs_-5D5EyB3InvxLTUXN3v8yzm9BmE	fieMk6kx/ES6Egav4jJa++vklWDfEqd0hb6nZIIub+A=	2020-01-30 17:26:23.468102+03	556
802	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiI3OWU1ZTcwZi0yM2FlLTQzODYtODZmMS1kNjA4OWY4MDRiN2MiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiJVQ0VoTjJ2cXNabkJRSjZhcW5sNF9SZmciLCJleHAiOjE1ODA1Njc4ODQsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.QSzMA_YWB7FzNE5nH014AAyboatXTA--oorYYGZAE7k	JGHYTkeCdaISzGrpmM+h6wOpvALAMAaChKHQfkoh90Q=	2020-02-01 17:38:04.842967+03	675
21	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiJjYmM5NDZkNC1iNmIyLTQxMGEtODM4Yi0xYTQzZmVmOGNjMzUiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiJVQ3BLS0xqSnhGVkVNZmFUUHhVTHdfcFEiLCJleHAiOjE1NzkwOTI0NDMsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.F2fWln7E-Rf7UVK0HlHR6pu55zOx93bAJB2upppSfpQ	x0+1mONIVibwc6PcuT66g20L1sJP6xewK/DMVTVMdnY=	2020-01-15 15:47:23.618214+03	17
4	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiJlNjI5NTEyZi04YmM4LTQ3N2MtYWRjOS03OTM0MDE3NTRlOGUiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiIzMzAwNjgzMzciLCJleHAiOjE1Nzk1MTY3NzgsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.olZYdWdFk5UkEFiiA8SIUnh8g3ShpE4FX2iQIHEx0eM	LJbJ6wmrp8P0iYG9mC4FB+3d9FudpyMO9xajq2Hfulc=	2020-01-20 13:39:38.935606+03	3
652	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiI4MDUyZWExMC1kMjI0LTQ1MmMtOWM0NS01MGQzMzJkOGE3ZTMiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiIyMDA5NTc2NDEiLCJleHAiOjE1ODAxMDYyMjYsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.hWG-fW_b-dPGvk-smoMEoTeSmeiuF3Mzj6JCnQ9G4oI	lZp1q6jVR1sMhs0lmJoKLKcUUlLHG6HQp1Hv01oPd1c=	2020-01-27 09:23:46.473632+03	558
653	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiI2Yzg4Yjk0Yy01YjYxLTQ1MWQtOWY4Yi1mZmQ1ZDBiMTliZTIiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiI0MzM0OTYzNDgiLCJleHAiOjE1ODAxMDY0MTEsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.-N9xTb_fapS9JiDGsSpCyvgJdd0aAMkL__flpSCaJ-Y	b0ajWENeZqRK7Ajw2iBkItYJflaQ1qZxZNUL8FHRB20=	2020-01-27 09:26:51.401474+03	559
654	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiJhOWI0NjI4NS01ZTdjLTQzZjItYmY3Ni0yMTgwZjlkNGE5OTgiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiI0NDMxODUyODUiLCJleHAiOjE1ODAxMDcyMDYsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.bTacMuadQJWiwOP-h4gA4jGXGxgmwz38qZXZWf2h_nQ	7XcMVZ5LPMLxBG9yvj38jyg/eSTxnkBNBdYESx2RxSA=	2020-01-27 09:40:06.430439+03	560
750	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiI2ZmFmYjg5Yy04YzljLTRjNWItYjlmZi0yMjhlOTFmMjE2NzQiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiJVQ2ZQUDFGekU1Y2NxWXRtZUk4SU1RMnciLCJleHAiOjE1ODA1NTI2NTcsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0._03Vl6DWZ7XDuXyrpGaKGq9LSaD8OZOVuFsBjhvA6Ek	4XafkiV4BTye6PG1lnx5+rsEprQv9oW3ylEdT99MaKI=	2020-02-01 13:24:17.067849+03	633
833	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiI0ZDMyYmQ5Zi00NmRjLTQ3YTMtODU0Zi0yNDU1NjBlMTUzZTgiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiJVQ1ZiSmtKTWN5ckxRY2VLeHMtTXRybEEiLCJleHAiOjE1ODA4MzM0MTEsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.EB2t2ypZ5Df_7Ue7DKYo5gphimjPPfyPveNJ3Wwwr94	6IxgRce/mOW7Y3YUWNZk87h1vZ5Ay4ZdiJbFro1p438=	2020-02-04 19:23:31.723185+03	696
744	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiI0NjRkMzU1ZC04NGFjLTQ2MjQtYTYwNS02ZTk1MWU3ZWUyNjYiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiI1MjQ0ODI2OTUiLCJleHAiOjE1ODA1NDkyMTYsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.TNb4KoUVyMeg3lLBt9s9cJhGipvRUb02r0OhR0j6me0	0oDLS53gDO6lQQAUBgntEuZOjeXgUxCVosp98iW71H8=	2020-02-01 12:26:56.593426+03	629
745	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiJkZGI4YzBjYS0yZjdlLTRkMjYtYmU4My1mOWY5M2M2YjZhMjUiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiJVQ2wwMFRCU1dFa2FjM2QyVlpieVdYU3ciLCJleHAiOjE1ODA1NDkzMzksImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.Bph2I9-zYCcwOAhqUpWLR_FOfwyBimvfiRrtVaBtek8	NPLlWIyLLmNKzQPmnXqgvB9nBgyDXA29OACMR6gjRnA=	2020-02-01 12:28:59.599671+03	630
291	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiI3YWVhN2UzYS0wMDM1LTRmODUtODJmNC0zM2M5ODhhZGFhNmMiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiIyNjAyMzQ0MDYiLCJleHAiOjE1ODA1NTA1MzYsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.02yAUxeC0ZqxCPTo2o9KyPc20YKAlyh5biN_vU2QQD0	mzygUiS3nMxX85LThPQospxFLlnJ8rlZNb8ZncZ8DNY=	2020-02-01 12:48:56.440109+03	238
747	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiIzOWI0NTZmZC02NzczLTQ0N2EtOWEzNC1lNTJlOThmOWNlZjQiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiIxODY2MjQ1MDMiLCJleHAiOjE1ODA1NTEyMzAsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.86vX0-2KVR4LE7LtZOv1kjVemAGKFPKIG2P9WYsZ3As	q3UUemcnK+iN34KZmo6bCd8kp91MbhriV9T+y487gJg=	2020-02-01 13:00:30.274493+03	631
810	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiI5M2RhNDY1My1hMzFkLTRiMzEtYTZkNC1hMmQ5MTgzMmViYWEiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiJVQzRaRmFfWGFZc3NDM2RySVNROU1UR2ciLCJleHAiOjE1ODA1NzAzNDUsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.P0yLAuKTdf9pBKL-iC9ISE-eNcpMUN-Jx66jETHvLuM	wdC+1Nxi6+BbJ9OxlbWP62NzDnRTSFjHbcC9C/boVBs=	2020-02-01 21:04:05.973237+03	681
803	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiJiMWJlYjJiMy04M2RiLTQ2N2YtOWIxYS1iNWRhNGZlZGQyODkiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiJVQ2FRaGxvV3MxaTFKNFZWajFBak9jWlEiLCJleHAiOjE1ODA1NjgwNDYsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.CKmj7_9LFLPIQRf_be7oSiuGa9YWLQlJDkrlkh_lb1g	vDKVjwnbubHA+ClkZgHditJXAZ4P6nlBcKh7+z/0I0c=	2020-02-01 17:40:46.18944+03	676
807	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiJjZTE2NDhhNS01YzQ4LTQxMTktYjUyNi1mZDUwMzkzZWRjNDEiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiI1MDUyNDc3NDMiLCJleHAiOjE1ODA1NzAwNDcsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.x0gYicRtlDx3yYWvnz4qUl5w58DpehPiOZwnPQqiP3k	eFowU9jFlwT2uQxXjLejYfOJeeI5UYlt/m0ch0A7FQY=	2020-02-01 20:59:07.85286+03	65
751	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiI1NjQ5NGM4MC02NjQyLTQyOGUtOWEzNi1lNDQ0MmIwZTJkZTMiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiJVQ1VLQkNweV85SGttTV9TQjBGUEdKcUEiLCJleHAiOjE1ODA2NDE5MjQsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.Qf9MOJszGYJkkHduDKbBQDWxLUdmw9bvgEzyzdz2ZZg	SPdzd4ANPD8UNqe1SDv0k7ynr+TZgbwZtyc2HeDe9ps=	2020-02-02 14:12:04.607884+03	634
820	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiJkN2ExMjY1OS1kYjI1LTQ3ZmEtYWNmZi0zMGZjMDA4MTBhYjUiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiJVQ1lUbTBKOVBfa3BndDN1cXJNQ2NfTWciLCJleHAiOjE1ODA2NTAzNTIsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.faWwaDhIsgDvNOGExK_i_8D66WAbo6E50aYKUHxyCi4	Otx7q6uNcv9O9vApDZqR9xylteO2n4hH4+ydlmiQzwg=	2020-02-02 16:32:32.212695+03	688
840	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiJjNGFiNDI2MC03ZDJjLTQ4MDQtYjE3YS1hODRkMWUwMzQ3NjgiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiIxODYwNTkyODYiLCJleHAiOjE1ODA4OTcyMzAsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.fBDZcJXCpCjnEixXRFAUn0E8HLjB3Zs4AbOVcBbjgsA	1Wzhp+B4gSRgeqnDDdLrAHc5rcScl3F8HTrbuQsOy8U=	2020-02-05 13:07:10.973611+03	702
825	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiI5OGQwYmM2OS0zMzlkLTQ1Y2ItOTE0Mi0yYTY2YjA0Zjg0Y2QiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiJVQ05YcHJrR2EtY1gyaDVza1NiZktLdGciLCJleHAiOjE1ODA3MTU4NjAsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.6tE8uJGvvAkvaRqEwVfsIqcRsI3FCPHnq1uX0sk-AaY	bx5cAHSdleO2bnWzDSZEmHTqWz6xxVfu+Ubn8enxBtc=	2020-02-03 13:29:20.636062+03	256
25	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiJmMThlNGEzOC0zNzM4LTQyNmUtYWRjMS01MDlmMGY3NTA4ZWIiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiI0NDAwMDkwNzAiLCJleHAiOjE1NzkwOTUzMDIsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.X_51nVkqSVYFe0C4lGjIz3yWdcGuy78Uq3OOLQGUifQ	Ks+mSp2JcE53IJHEW1cusXyIDM0aObvjs9z4xqz8r5Q=	2020-01-15 16:35:02.788208+03	20
26	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiI4YmUyMTI2Yy04MjAyLTQ0YzctODQzZC1iOGQ4ZWY0MmQ5Y2UiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiJVQzZ4TnR4WGNXQm9MdDdTSC0wSGoxMkEiLCJleHAiOjE1NzkxMzA1OTgsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.3CZf9aOnGf3FhEmDaATM6Mvq4_wIhC0_EQFCxxD25Ug	HRCj8o//bRQfZSYHAizh2/Hz50auU91uDSOBfMV63yw=	2020-01-16 02:23:18.400746+03	21
27	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiIwNDQ2ZWZhNC0xYjZkLTRiZTEtYWUyMy0yNWRiZjYzMmI0MTUiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiI0MTgwNzUwMzkiLCJleHAiOjE1NzkxNTc2OTcsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.E0CQkWBqSiAR7YkEnI6xyBeH_zBbdTUqSMPJVf6CNnQ	33URcarGZCfGwPbyYTZMDyyPxS7QQaXf30ozCfxGd38=	2020-01-16 09:54:57.720987+03	22
28	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiJhNTEwN2UzNC1iNzZkLTRjMzAtYmQ0Yi1iNGFjMThlNDEyYWUiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiJVQ1ZIajFsM1JYR0Jma0I2ZkRFOXVYbkEiLCJleHAiOjE1NzkxNjk1MjcsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.o2QKCe81MPoBGX0w__t5TYMC1hAteKINx4SQ7u3rKvw	bDZC1lT65WLZ+/PgpL85R3r75sYQVlsa48cXDnyVg/c=	2020-01-16 13:12:07.458195+03	23
716	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiI5ZGMzZTQxOS03ODJlLTQwZjYtODZmMS04ODcyYmI0MjYzZTgiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiJVQ1VCTGVHRnBWLXMzSm1HUzZZZFdEMXciLCJleHAiOjE1ODAyMzIzMzYsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.2DDnPFHd4nclOKdOkHnYeMI4Vi8CMzpvHAgeO7FHjbA	V6Xq7BmT6XkWGpuXKrjn4NW40MvqONYlBnufg3UGDcI=	2020-01-28 20:25:36.53796+03	605
35	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiI0NzZjYTFhZi04M2Q3LTQ0ZGItOWI2NC1hZWU0NGU3Nzk1NzQiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiJVQ0tud1BYRDF5a09GaElMWDMzQUNLQ0EiLCJleHAiOjE1Nzk1Mzc1MDUsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.VQU6Mf2NlRA4LVipTzfpykOd-Bzkc3T45LEPT1PVYkU	LOHklfcv6jmFxP3jMaIFuKDl7ztijqhkW+u8m32OrZc=	2020-01-20 19:25:05.916988+03	29
37	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiI3MGEwYjRkNC0zYjhhLTRmYTktYTQ3YS02NGI0YmVlZjJhYTEiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiJVQ1BaZm1PRFRLdHBzYW56MjJ5dmZCMVEiLCJleHAiOjE1Nzk1NDAxNzQsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.8hUydzHKdThcxYKbi48ymsflTQa64kpwmkcR6b40mJQ	ZRO/XglUrbfyPC5+5BclLbCDkqJyzAj1l1srWIGE3C8=	2020-01-20 20:09:35.022879+03	31
38	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiIzZGE3NzI0MS0xMGU4LTQyNjctOTQ0MC02ZTQxYjBjYTAyMzYiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiIzNDE5Nzc2OTYiLCJleHAiOjE1Nzk1ODUwMjQsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.Kux7cMxC15EYwoh1a_6MzQzr6BNqaXXAH4yS5eSECQI	u2arweC3HCM4zZIyd8CKpOgceFcNp1v8gmtMgK0TX60=	2020-01-21 08:37:04.449568+03	32
39	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiJlNTBiMmVkOS1kZWJmLTRjNDUtYjUwYS0xZWNiMmEwYzYyMDkiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiJVQ0IxYUNjMWFMcnkxUXVPc1liSVRhbkEiLCJleHAiOjE1Nzk1ODUyMDgsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.ihVWWv4GIOzWwfl1iAw0uTgKskLUX92lJfkU-96TAIg	aBY/PXmNLqH8v5aFLlB8YnKNA6V65z5X1XbPfVwkMoE=	2020-01-21 08:40:08.598478+03	33
36	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiJhYWNhYTVmMC1iNzVmLTQzYmEtOTRkMC0zMDdmZmI3ZmU0NTYiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiJVQ1VPS3dSbnpaTENkU2ZXZVhnLXBNTkEiLCJleHAiOjE1Nzk3MTY2MTQsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.q1y810WWHB060hJ4Tkvg5Mnsv9sOSyvHt1xIuK2PLtw	x+NCHamBTi9VPlMWSWCV6+H3C5Si67N20qcEO0wV+NE=	2020-01-22 21:10:14.470011+03	30
42	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiIxZjg4YTkzOC03MzM1LTQwY2MtODQwNy1kMzkyMTY3ZWVmZWUiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiJVQzdQTlQ3alIzSlphaXJtSEpCMVdCNWciLCJleHAiOjE1Nzk3MTY2NDIsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.Uoy0NCHwAPqYUMWzBc3A90HnlMZHSTamD1REl4Urxqw	HLpYhuN3sgezH5yij20hgAVBrXYltu/px8QiMA1zQQM=	2020-01-22 23:55:42.269734+03	27
43	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiJmNTgzZjUxNi1jZDcwLTRjNTItOGE3ZC1kMTNmZTA3NGJmMjkiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiJVQzhDOVdvVDR3Nk9OcHIxRDRqWWFnSGciLCJleHAiOjE1Nzk3MjcyMDksImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.GhhfARq62KLIsVjppGIvj0g_18VKNjXjEYG7jo5LlSA	UYxG28yFFYvN2FDVjvXLKoWl7f3J5MWbgDaIml0MDw8=	2020-01-23 02:51:49.073069+03	14
30	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiJhZGY1ZjUwYi03NDVjLTRkZWEtOTJmNi05NjMxMGM2ZmRlMzYiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiJVQ2FuMmdyLXh2TGNYSG95STlZc0lOTmciLCJleHAiOjE1ODAwMzYyMjYsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.UUAZcfhszCnU_njT8C7CcI85W_iuvRGju0OB2EmqK0I	5z+1R4Y5N2xRQqyf+HCJ9Lyw+mGGO4BvhddrUPCofFs=	2020-01-26 13:57:06.174866+03	25
23	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiJmZWZiM2E2Yi02NzVjLTRmNjAtOTRjOS0xMDFjMDUzMjIxYTAiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiJVQ19PM2xxUTd3WDZIVmVmUWZWNDNmdVEiLCJleHAiOjE1Nzk4MDAxNzQsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.q8t72i-tnzLB2BQqYRzYXot33rU3awEQ21nIMTdg1o4	G1Acmw6uwbDgm+yISsfaj6NXXiqpslt2a5T1bE8xeqg=	2020-01-23 20:22:54.846795+03	19
29	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiJmNTUwM2EzNS00N2NmLTQ2ODktYTFjMC05MDNhNmFiMzBiMzkiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiIyMDQ5ODc3MzkiLCJleHAiOjE1ODAwMzY1NjYsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.qSkQWNGFhpDIZm3nMtCFoHGdEN6yrjhRcRR3H2r3ito	wf49natnfn9KGcCGJXDIzoTUB9WF8fG2NPJk6MiWJQk=	2020-01-26 14:02:46.344867+03	24
657	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiIxYWU3Y2YzNS0wZGJjLTRhMGEtOWVjYy1hNjE5NzI2N2QzOWQiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiI1NzEzMjU5NTgiLCJleHAiOjE1ODAxMDk2NTIsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.0OvhXFUgRM8iB_KAdipFTJfRwfbfX1YRm31m_SbqjwA	zaJV/ja6S8gu5qnfoXax3qApBYpnBxMbdyDedhaGduQ=	2020-01-27 10:20:52.462941+03	561
47	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiI4ZGQzMTE0ZS00ZGI3LTRlYzUtOThmZS1hODkzNGI4ZGU3YzYiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiI0MDY4MDIzODAiLCJleHAiOjE1Nzk3ODExOTgsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.1DAvLeMjTHefuwyOIkg6MFM_RaBChhGJ_M3XTBKOuuw	O7bTNs2LexARsYti2Iwlkrtm0nuu4eNfjd2ojX+oGP8=	2020-01-23 15:06:38.586537+03	35
48	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiIyNzZiYzBiMS01MzBmLTRkYjUtYjVhYy03Yjk2ZTBlNjQxODgiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiJVQ1UxUDlCdEFGLVBCREs4VjJ1WHAwYlEiLCJleHAiOjE1Nzk4Mjk4MDQsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.VvJQ2LWXX8Nx47P86g9haaZlHIcUOEwkv8TDivvFDf4	TJED2xtJzMPDEyJvPwHwJyTqnq0YPI8wkni0mTmA34Q=	2020-01-24 04:36:44.288528+03	36
50	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiI3N2M2MGIzMi0wODM5LTQwNWQtODc0Ni04NjI1ZGJmOTkxZDgiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiJVQ19URV81OWRIWUlQVFdMOWlucmZldmciLCJleHAiOjE1Nzk4MzAzNTQsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.Vnupcp-XxZbIX2t8l3Sv23HDCy8HjyTDrvF6KbmlStk	aNFtdtjJCWGAHmEprp2Fq5dFqQ3nrY8MLYctWrRhfPo=	2020-01-24 07:30:54.430423+03	37
51	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiJkMmZhODgwNS02OWY2LTQzNjMtYjNhYy00NjgyOTgzMTgxODIiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiJVQ2tvNW0tY25ZemtwVTAyalMzY3lIQWciLCJleHAiOjE1Nzk4MzA0MjUsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.1V4IqWV9DWcApdmYZY38C_aX3zcOzS8gnku4_7hlenk	YYUE6TOZtSta5/dcP5c3ZIJZjZ4KpvVK3olUe3X7CFU=	2020-01-24 04:47:05.145999+03	38
53	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiI4Nzc2MjVmMy0wZmQ2LTRlYTctYmU3Mi02MTYzNTI3MDgxNWQiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiJVQ2dpTWNkeGk4a3MxMkNBbUF2VWd1dVEiLCJleHAiOjE1Nzk4NjUzNTMsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.KpqxL7J6wz4HefZ5yq9_BwdcGI_6XDU2Lsa5_I_ktcU	jrtvam3Zn0SbSdSiuigYJbChH+MSBT9x2bRYMhD+ZWQ=	2020-01-24 14:29:13.896864+03	40
54	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiJhMTc3ZmZkMy1jYTRkLTQ4MjktOTQxNC03YzlkMjRhMjk2ZTkiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiJVQzYtOTFyVW9IakJzSXlma0xUVmRXVmciLCJleHAiOjE1Nzk4NjU0MjAsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.Sx2KK1hxTgKpSOFjOzCLU9C9DpJGHLX7P-keTa_dVzg	40lK37Qw+IzmkkJ2h4JIlJLo4xXvIcdD79WittKPrqM=	2020-01-24 14:30:20.686039+03	41
717	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiIyMzI1YTU3MS1kYTE4LTQ4YmUtOGE1MS1mYWZlN2JlYTg4ZDIiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiIzOTU0MTk5NzgiLCJleHAiOjE1ODAyMzQyMTcsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.gtokryoD6zv5sNDDVPjXQZF2R5vHbofDdRPo043yuM4	ScuyNI5/SsJg8xIIJcYi46NLWTCorX0FQS4tN4OZjd0=	2020-01-28 20:56:57.094731+03	606
658	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiI1Y2RkOGMxNi03MDc3LTRhM2QtODE1Mi0wZTY5OTZkYmQ2YjAiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiI0ODYwMzgxMzAiLCJleHAiOjE1ODAyODAwNDAsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.zQ4xx_jprSjx71iRprtmEtwjnwXu-lGO5zxWQpOibOQ	oBoMhXDPgLZQc1IABv2dl/4Wa6m8qWYOLq242e97PsE=	2020-01-29 09:40:40.334448+03	562
799	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiIyZjEzYTU3Mi0zMjJhLTQ2NmQtYWMxZC1lMDJjNzUzMDYwM2YiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiJVQzRJWHJ6dUlEQjVMMkh4VHZvMXRWcWciLCJleHAiOjE1ODA1NzAxMzEsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.v3wxdfMDTqCBg4gR8l5Cnc1VAU3aRaftJt4hu4SXt44	3CeKLurdQmKmZJvD9LIs2LXnaHw39Evy+Q5VYIbDyB4=	2020-02-01 18:15:31.527644+03	672
748	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiI2ZTA2ZTBkMi00MGIxLTQ1NDMtOTNmNC1hNjc1N2ExNWFjNzciLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiI1MTE2Nzc3MTIiLCJleHAiOjE1ODA1NTAyNDIsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.dO7cFDBMe23FIOKZyXq0FaBhEZmsyTaU1Q-WIB5WjEY	1e4f1oqWb77Bc5U0Cvph+oXrZdp8EbmWFGQsD+DOfmE=	2020-02-01 12:44:02.777321+03	632
523	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiI2ZmM3MTgxYi0wZGM0LTQ5NzUtODFiNi05OGRkOGUyY2E1ZGQiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiI0ODI4OTA0ODUiLCJleHAiOjE1ODA1NTA3MzUsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.vElI8wOaipJguz9YGnd3NI6hDR6FZ27bLXw3DhecHtw	myAy/1uxCfgB+Twne/FSVZXehJzN0whbzO+kI0JpBr0=	2020-02-01 12:52:15.056926+03	450
61	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiIwMDc2ZWUzZS0xYzJmLTRlMjgtOWYzMy1mM2Y0Yzg5MWJmYmUiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiIzNzA5NjY3NDMiLCJleHAiOjE1Nzk4OTk3MTEsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.agD7T0Hes7xk_jgC3kaSQ2j7WRVYukf4nbNV8uhFaGE	XOU0She0GS7J+8wEkjZi2MgN88NZ7FuqPkqdzd2WcwQ=	2020-01-25 00:01:52.014735+03	45
68	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiJmYjA0YWViZC0yZmEzLTQwYTgtOWZlMi0yM2I1MGZkNTRiYmMiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiIyNTUwMjMzMzgiLCJleHAiOjE1ODA5MjU3MTYsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.9kc60N4m8ZVQa0T3ODzLRl00AU4a5kwRYtfdtwzJSME	jERDG13W8nSeO+fGZ8dma9dRGKvtD/VLQ6Tzu2KBGZk=	2020-02-05 21:01:56.694368+03	48
67	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiI3NjJmZTg1MS1hM2NhLTQ0OTgtODEzMi03ZWI5NzZjYjhlZDYiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiI0Mjg0MDM0NTIiLCJleHAiOjE1ODAwNTg4NjUsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.xGbeXjv-sxAUVEHuxeKXbVFhv1dZ-IvGVu5DeqDKDw8	CLKGGbf6p7ZokBre6aCguWRFOYmKM4g6aPiLjMejfy4=	2020-01-26 20:14:25.371395+03	47
66	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiJiMGY2ODE3Yi0xMzk1LTRmNDItYTYwNy1kZTU0ZjFmYzliYzgiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiI0ODY2MjAwODAiLCJleHAiOjE1ODAwNTc3MDcsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.N9VtXkv5uWGN1JataCWI69M4NQFZtNO2BBP-56nmbN8	4kl4aAfSn8GU9pyVfiw2mb8JczoF9ZM7G3LR1HKiADM=	2020-01-26 19:55:07.075338+03	46
659	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiIzNmE0YWQzZS02Y2VmLTQ2MDktYTFhYi1kNWEzNmExZDMyZDEiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiIyODE4MTU5ODciLCJleHAiOjE1ODAxMTA1MDYsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.mRIDLUoNovxgx_Y9Vg6gClWsuE5zIqN8V87hYprn0Xo	wt+V40hDenhmPsnbkx6Klou7ZU61Nz1AnXMRmdTFYMM=	2020-01-27 10:35:06.714733+03	563
84	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiIxMTY1YzM4NC0yN2EzLTQ2ZjItYmEwNi02MjVmMzdlMmE0N2UiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiIxOTA5NDc0MzkiLCJleHAiOjE1ODA2NTk1OTcsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.hVUb0HcSqBVqf1dJZ8alL6NWug0rXGfio1no-d2zrug	/IkVfok8AqHW+vM6jVn7PLMPRrC4bJKug6qZJ1Lg2fU=	2020-02-02 19:06:37.864418+03	59
72	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiI4ZDY5MjE4YS0zODIzLTQzODQtOWViMy03MThiMzhkYWQ2ZWMiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiJVQzNLd0xnOXgwd0FhWXlkcDN3RjhzMHciLCJleHAiOjE1Nzk5NDQzNTEsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.s4eQOJVyxGKA2KjCGq6v0tMsUxxfEqrZUNBYLxINDhA	JKp/YlIxBZ1rkGzssBv1PqKhQ/YaYI4hcGm0jZkrCRM=	2020-01-25 15:10:51.661458+03	50
74	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiJiMmFmOTYzYS1hNDQ0LTQwYzItYWU4Ny0yMmFkZDFlZjJmZWEiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiIyNDAzODE4MTEiLCJleHAiOjE1Nzk5NDUwMTMsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.GxVsHIhWs73qAIqcdu55Td6iqb7TzuBRHfgXEY9_xMc	cL/gVugFZXjurF7OY1SWnGbQGT3eg7fWQAW2SOC6tv4=	2020-01-25 12:36:53.732122+03	52
75	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiI1ZTRjNzZlMS1lODdiLTQ2ZGEtYTIxNy00NDk3OWRlOTcyMDUiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiJVQ0dNa29jb3pqNjdFRUlQVmhhR1MzTnciLCJleHAiOjE1Nzk5NDU0MTYsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.hq7fCVIZePeHuQEwj16GDnelL7uWU92NDUpa0R41bf8	TTd2oEwUOQ2xQrttg5XwBvkH/9aGCLFgwEp1bSZjPkI=	2020-01-25 12:43:36.98866+03	53
76	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiI2ZDE4MzU4Yy0xMjBjLTRlNjgtOGQxNy0zMzFlMzQxNTE2ZTMiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiIzNDgwMTMxMTgiLCJleHAiOjE1Nzk5NDU0NzAsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.srxlQIle2A3WhWKTG9hpNJ3cXydsgEpiPTRO2Jnha9w	NcyhM3gEWDEn1Lx6YNOrJa4yL+CP76KKwer++vbIvSw=	2020-01-25 15:29:30.27233+03	44
718	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiIzMDU5Y2Y4Zi1mYmM0LTRkY2YtOWZkMi1jZjBjMGNiOTRhNjAiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiJVQ1lwRFl4X2luZFFOanV2RzRadWJoRnciLCJleHAiOjE1ODAyMzUwODQsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.gHzeK5XXUdCGaoePybD5WHnWi6UvMhT_jrMWIvyhmlw	Zt/VAyvxe7Rrm7baqXm7WtGCUyxk4RiHJq9autmZRRY=	2020-01-28 21:11:24.670419+03	607
80	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiIwYjI4NzBhOC0xZTg4LTQ0ODYtOGJjNS0xY2YyNWJjNzdkMTMiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiIyMzQ4MzExMTAiLCJleHAiOjE1ODA0MTc3MDcsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.1ETXykPlMf58_lW27UMMwcAU2xVkz0Yl6p-tGLxd3tw	AqzqAgBsYKiR+MkMJM6QoINiqBhOAeVZ1ZUqn16m3Es=	2020-01-30 23:55:07.654299+03	42
83	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiJlMmUyMDNiZi04YjY1LTRlM2MtYWYwMC1jOGE4NTg0MjdkNDIiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiIyMzM2ODkzMzciLCJleHAiOjE1Nzk5NDc0NDcsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.JzbxjZswxnIDQ2pfWcFEwa3p4kIfB0kgIkV-G28T7cA	JldypONnTFIjI1LGgLBPv8uqhworGrpnzuip2J7sBgc=	2020-01-25 13:17:27.753298+03	58
752	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiJjNWJmOTgxOC03NjUwLTQ1MWQtYTExMy0xNWRmYjVkYWM0YjkiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiJVQ2RmVVJFYzZfSWFzTXpJV2FEd0RudnciLCJleHAiOjE1ODA1NTM4NTksImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.KWPoYOTnkXh7acU-qEG7LZaan4GLWw9gamHsq6h0Pg0	ezrpcs3PGQL06fGRxs7KdJerI/P+wQmIeAp9Qp7jDUw=	2020-02-01 13:44:19.102551+03	635
85	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiJlM2E3ZDAxYi1lMmQ4LTRkZjMtYTQzMS1jYzc1MzM0ZDkxMGYiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiJVQzliYlRUSWpYdnFlTjdGdnA2cWF1WXciLCJleHAiOjE1ODAwMzIwNjcsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.k2dvDZH4A4-_YfUY2g7xHrEFy2dEANjsX7FOwwKw2-w	xRRk9vfCrgebjvLc/G/09qWEoEXYMmA6S7pd14lBKTI=	2020-01-26 12:47:47.768944+03	60
86	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiI3YmJjNzQ2OC00ZmVhLTQ5ODMtYTg3ZS05YmViOWJhNzAwMzYiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiJVQ19nMk1RU2tTeUNWYVNiZ21lR2pkWGciLCJleHAiOjE1Nzk5NDgzMDAsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.IhIMh7Kfd9V06fQDegiu5_rl5oGm-sE3BoKaHGCig_Y	Kjlqgv+NF/D9IzjL4azYFUvFLHznkUgksAiRqz6h7KQ=	2020-01-25 13:31:40.093199+03	61
79	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiIzODRjYWExYS1mYTcyLTQxMjUtOGEyZS0yMjY3ODMyYWU1OTEiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiJVQ2IyT2haem1SRy1OandxM3RTbEdDa2ciLCJleHAiOjE1ODA5MjI2ODIsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.AOptzmhF2gM3KQagrvPL8XFzRtCYlU9MICdQWiqRMzY	HMzB2fsCDzQITkEMqNd1x7H59QthynvRTLd7OrKAjBk=	2020-02-05 20:11:22.438385+03	55
73	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiI0YzcwNTAyNS02MTVlLTQxNzgtYWZmMi1hOGMwZDFkYzdiY2UiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiJVQ0l6SXBMS3F4Z0lvN2t3cS1oN05nTGciLCJleHAiOjE1ODAwNjYxNTcsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.MwYWrZYG1L0ezd7qHRxzvNmm3sJZpoElFy6j-yhOC0c	mVIRMzrqgadWnw6uApYGwZO/JSrXuPgQfFixt0Mukvo=	2020-01-26 22:15:57.963025+03	51
660	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiJlMTIxMGM0ZC03MWY4LTQwM2MtOWRlMy01MWE2MWI3MGUyYmIiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiJVQ2x0R1VpUGVNcnpZbWxMWUZicExvdlEiLCJleHAiOjE1ODAxMTIzNzQsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.pBT0eH8j1j0vIt_TEJYyRIaqWRi5h-5NrL2tcsyILA4	4m/9vfhup04VdZ1pBQqyhol4heOjA6H4Wr7Qt+XECJs=	2020-01-27 11:06:14.711696+03	564
661	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiJmODJjNDEzZi02N2M0LTRlODQtYTNjZS1mMTA3ZmFiMWU1ZTIiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiJVQ2Fwa2JBQ0NlejNxaVVFdFZtd1BqN0EiLCJleHAiOjE1ODAxMTM3NzYsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.cvM_gkyVJdHN207oGdPt6540W78SH43ypDzO9F8qTRc	MsdEs84DP2YtpMcFxY1mYiRdCcOZ3sdFwJKeFBOnRxs=	2020-01-27 11:29:36.920052+03	565
91	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiI1NjVmZGEwNy1jZTAzLTQwZTgtYmFkYS0yMDkyNjM1YzVhYjgiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiJVQ0FtY3lEbjZ3Nzl4bl85WWQ3UmVMaWciLCJleHAiOjE1Nzk5NTcwMTIsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.C_ziV9hpmzAT_TK-INZMZHnz79XGjJuzMlZO-dxpTWY	JZooDAFACHdXdrOytdfzAEoJr0Kpbt5BFVBfHQKKZr4=	2020-01-25 15:56:52.870397+03	66
92	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiIxNzc5NjM1NC0yZWQ3LTQzMTUtYjQyZC0wOGI5ZDFlZjNjOTUiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiIzMDM4MjMzNzIiLCJleHAiOjE1Nzk5NTcwOTAsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.DWeimsotobSutTN7pcF3eKitDbR2W4GFzcsYEKVrsNo	9BHWVjMHpQqzFL/UXTSiIo73rh8Lo4C03W4rh5EYnXU=	2020-01-25 15:58:10.502249+03	67
808	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiIxOWE3YjE0Zi03ZTdlLTRmOTEtOGYxOC04NmM2YTcwNmU0NjAiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiJVQ3JFdzI1ZmxBN0tBd085cTF5WjVQNHciLCJleHAiOjE1ODA1NzAxNTMsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.zZx6eX3MGDwigI_JcTb3p6q1zGqfiSDQCN1GdHGBpuc	/ED+4XRGwwo8l7/AQWa+Fqec02GFHTtDBzVbY96gIJk=	2020-02-01 18:15:53.432476+03	680
719	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiJlZGU3ZGZhYi0xYzg1LTQ1OTQtOWZiZi0zZmNkMjdmMWFiMmIiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiI0MzE2OTA3MjMiLCJleHAiOjE1ODAyNDQ4MjgsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.-Rq81Jv5JdZ78YbOA7zpoeYxtQXmuASvjjjarS6QKuM	2/rQzpOFqLPqJyvqhn6F8UsX8QnIPM6Sy0nzEU0kS0A=	2020-01-29 02:38:48.994162+03	11
100	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiIzMmYyZDI1YS1jNmFmLTQ5ZTgtOTA5OC1hNzIzMDUyYzMyMTgiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiIyOTc2NTc1NDUiLCJleHAiOjE1ODExNDI2MjEsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.gotZ-D7TsfzFE_nyH9mQdSWKxU7kZEbEK8OkwRvR0hA	I0Eb32IVkBv2n85NGVFU3irqqv1b/JSAwtFakos6ads=	2020-02-08 09:17:01.425791+03	73
102	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiJkNjgyYjY1MC05YjAzLTQzMGItOGRjZS1mNGJhZDI5NWYyNTMiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiJVQ2JDSWhjMmJiTDhFZS1NbW4xaWR1VWciLCJleHAiOjE1Nzk5NzU1MjIsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.tfGLplJJzJu7yCWjM5XhIt-DBCe4RESbOaS9Tc6ZjM4	4ctCR/T09zvfTDAD4n0RaPZDv8bWhWqhX3B5rOM5LXs=	2020-01-25 23:50:22.462908+03	74
104	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiJiYzg5NDYwMS1jNjEwLTQ1MGQtYjU4My00MDFkZGU3ZmUyZTYiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiIzMjU4MTYxNzQiLCJleHAiOjE1Nzk5ODI0NDIsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.rCtWHjTqXpQfi71nAtwDn_2ZtNeG-YmFNO197ZbFpUY	CKCDika2mYxSJ8GkvnZrZHUnKRT9bzivMMbHu72i/yA=	2020-01-25 23:00:42.390201+03	76
107	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiI5MThmZjBhYi1kODkzLTQzNDItYmQxZS1jNDMyZWE1NzhmMjciLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiIzNzE4OTI1OTgiLCJleHAiOjE1Nzk5ODk1NDUsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.eCPCFBUSGcOEXecrvJCcnEAhOiK6gU5G1Fs7wEoONRk	Sw5OE1FR8HaTaTVbpS7ZRCU2DfFg1Hj336IgdkigCuk=	2020-01-26 00:59:05.192042+03	79
97	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiJkYmZiNGFiMS1mYTczLTQ1NjAtOWIzNi04NmJlZDgwNTBjZGYiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiJVQzJ1eUFUT1dJSkYyZ1VqOUFjcGRKanciLCJleHAiOjE1ODAwMzcwMDgsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.MywKGrbqD-_tIiUxhkuDabBx-8_Daty8jV-TXWtZxVA	oWWQ04Y/AJIW4mAR4PNWPx+is4XXpOC3lk5hPlOUkHc=	2020-01-26 14:10:08.912608+03	71
105	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiJlYjMxNDNhNy1iOTlmLTQ3YzAtYmQ2MS05MmI1OWEzYTY0OGIiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiIyNTY1MDI4MzAiLCJleHAiOjE1ODAwNDg4MTksImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.whmOXpr4aOGZVflRojIYuitGTXoDOeqGZS-lnGwoaC8	SCzjpMXcaByfOK8qumySyK0Ta7wb/3y4zRncDyZ/bRg=	2020-01-26 17:26:59.828242+03	77
106	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiJlYTkxZmRkMC1iZDFhLTQzZWYtODU1NC1iMjAwYzEzODFkOWQiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiIzODQ4NTI5NTQiLCJleHAiOjE1ODA5Nzg5MjAsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.YgVEujck1Nq5MErC6W-Y7TNNBIGja8nPVEQ_EVXZkLc	Hs53noX7RNgRAXifOUfJ0e2VJSgE3khYjYoI2ehZrh4=	2020-02-06 11:48:40.909537+03	78
753	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiI1NjRkOWQ2MS02ZDg4LTRiNDItODFkNS1jMDIzOWQ0Y2MwYjEiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiI0OTk4OTM1NTciLCJleHAiOjE1ODA1NTQzNjcsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.udXYX9tpMkmj6RfxxHh1-MuPpa44kUkxTd4-GlQOFtQ	82EbLFP3yu1BZVz8gJvjvWsM+GfqkB0Xflq7qPoiKVs=	2020-02-01 13:52:47.017027+03	636
99	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiJhODgyNDIwNi1jMjQzLTRiMWItOWUzNi02MGE4N2JmMmQ1NDkiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiJVQzNOc3J0NGl1SW5HQUVQcDRqUDZPTnciLCJleHAiOjE1ODA5Mjc5OTEsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.b3Fnzlcl1jak98JqdZg70u8iC0Q42eivKhJS4DHOC8U	mhgunu0HqWEzKoCJMxnYZeFFOErAAWDb6LYDj7pp5dg=	2020-02-05 21:39:51.610447+03	72
95	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiJiOGZlMzhkNi02YjBjLTRkZTctODFiYi01MjllNzBjMWY5YzYiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiJVQzhwX3Y3eXhVaEs2cFNUQXZpdFZRd1EiLCJleHAiOjE1ODA5MDU4NDAsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.buC8ljfttbP1MwRWd8zS1Ud5mOiSYzrcaOpc01fTj94	abktRWC7j0EpV6nkm0sRHhrNrbDwljFOfkt3L/py+Zc=	2020-02-05 15:30:40.639649+03	69
108	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiJjMDM1ZjhmMy1lOWFhLTQzZGItODk4MC0wNTRjZWRmN2Y2NWYiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiJVQ09rRXZ5LUkyUDdGR1dTcGpkZW01cWciLCJleHAiOjE1Nzk5OTA5NDksImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.sXi_0jDnXsQOfqZ-j_UuliBOWfdmlsqwZUnXgaZmQMU	ycX/NV8RUbbPksk7sq612r3uv5Pu5sgzVpO3dvWkVDw=	2020-01-26 01:22:29.211277+03	80
109	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiIwNzc2YThlMS1mMDBhLTRmNDItOGViZi1jMmEzNWE2YjMwODIiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiIxNTc2MTU5NzgiLCJleHAiOjE1Nzk5OTIzMDcsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.rsqvYhDgNZ4suFgtdrZ2I_aOQ4kK0MKQxypsreFB3cI	C8PXt6hg/YQ+SA6xhl2NswrJcOQ8i+Evn7Bxgx/bgio=	2020-01-26 01:45:07.652284+03	81
111	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiI3MzA0NDczMy0xZGQwLTRhMjMtYmEyZS1jYmRjYWU4NGYyYzAiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiJVQ080OGNpN3hWaGh0NTYyS210al9HN1EiLCJleHAiOjE1Nzk5OTQwMDksImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.k9B_jjS670AroyBv4I4gugSAfWMZSrR4etRC22a3B2U	pNQeUiNF4SML8pAteg3uCWAosX0HziFkL5MQJoMbMfE=	2020-01-26 04:58:29.940907+03	82
113	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiI0Y2RiZTU4OS02YzlhLTQzYTgtYjFkOC0yMTQ5Y2M0MzdhYTciLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiJVQ3FzbW9YUDYwNUFBYjZCNERDVkNaS3ciLCJleHAiOjE1ODAwMjU4MzYsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.kjj6HzSQna4ZbAXeawt3sqmY0xbKSb-JmKU9PK_bLYY	IUkaEwWM0zeGdD0915kxjY1uEVgvLX0+ayWKRHke+xg=	2020-01-26 13:48:56.419184+03	64
115	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiI4ZDIzZWRiNS0xZmRiLTRmMjktOTMxYi1lY2FkODFmOGQ0OGEiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiI1NDI2NTAxMzUiLCJleHAiOjE1ODAwMzI2NTcsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.j_iOlxOFAme-Kh3hoUE6WMYfNm--q-BLGFAVCcEWnnI	q/7PBe/hD6rwkUhPVt6Hg6dbo9IzuwSu75q+2/0pKag=	2020-01-26 12:57:37.152151+03	85
116	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiIzNDIyMWFkMy1jMjZjLTQyMzMtYjcwMS02MDMxYTQxMzg4MmQiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiJVQzRCZFE0bEhiQ3VnTldpSE92akp2dFEiLCJleHAiOjE1ODAwMzI3MDUsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.lsofhhi0Bnd1sEAWBqxUtOGF8jFZpiJ1rQmu7CO_xM8	4shPfQ5m509BT48MNteDa+0XKRFtCNzr5fDD1Irbww8=	2020-01-26 12:58:25.241486+03	86
117	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiJiZGViZGJmNi03MGY0LTQ4NmMtOWNjNi1kZDNkMTZmYzkzMWIiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiI0NTUxNjczMjkiLCJleHAiOjE1ODAwMzUwNjMsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.V03xQcZr8qd6nyLeXV60RWcDh6_C9VS5Jy3GIVkyLis	cTHWDVclP7c6L1zE7Ife4lNcMTN+JkDXMPqNKusQO9Q=	2020-01-26 13:37:43.241319+03	87
119	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiJjMjVhNTBmZS1kM2I3LTQ0YWEtYTIxOC0wMzc4MjE4YzhiMDkiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiIzMzc1MDgxOTgiLCJleHAiOjE1ODAwMzUzNTcsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.JLOgJLl-LqtX34CPOibeVENdil97-_fBw1fWINMlnjs	HSeqs3nKzxWum1MgoAdUhfwcgxJp07Qchva44GF1blI=	2020-01-26 13:42:37.332764+03	89
121	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiIwNjhhZjc3NC05OWE0LTRjYjYtODEzNy1kNzU0ODE5MzU0MjgiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiJVQ3kxS3h2M0dobzZRSFlzUFR2T3BQNGciLCJleHAiOjE1ODAwMzU0NDksImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.AGrAElnb_hZv-9S75-6fBsxvziFOgtvEGkWGQyf8-fo	XU9oOmP3lRbkgBiIqR3jflOmn8Nx1d0FzyjFdFXyyuQ=	2020-01-26 13:44:09.639551+03	91
663	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiIxZGVhMThkOC05Yjc1LTQzMGYtYmNiYS1iMjU2MzgyMmY1OGYiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiIxOTM5NzM4ODEiLCJleHAiOjE1ODAxMTU0NTksImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.CDY0NGnc_mMzZM0wFdgsp4wFGyMwfTzXo3bIRYs2U5U	GBpQU7ZZjh5B8nhmnvc43eTFGFqhHAF7b43f51BcpVg=	2020-01-27 11:57:39.10826+03	567
112	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiJmYjZhYmM2My0yZmFjLTRlNjYtYTc4My1iMzE1MzdhYjFmNzQiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiIxNjA2NDUwNTMiLCJleHAiOjE1ODA5MjU0MTcsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.cCtRxEh8mcS2RX4eDbQl7Niap3niqEf_ACaRmfMpRFc	jbGQKn1qdsHNEYYu4RqU2VLuQiWzXw72B+u3Q/lMoRM=	2020-02-05 20:56:57.231715+03	83
123	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiIyZGQ5ODUxOC0wZWQwLTQ4NTctODgyYy03ZDE0ZjNiNjZkNGUiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiJVQ0U5VHdCVExDUXQ4bURsMTByMnB4X0EiLCJleHAiOjE1ODAwMzcwNzQsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.LynRAojfyLVE7hCIgLONWia3IDzNiFlIStedPP5dtu0	Fq0xbvCW4KK0TWgLCQ2u14lkXxr6bb69m3MqkhJXVbA=	2020-01-26 14:11:14.795882+03	93
122	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiI4NDNmM2ZlOC1iNTcyLTRhZmItOTgzYi1lNjZhNzVmOWQyMWUiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiJVQzVZbWxESEF4T24tRnUtWHFHaUd3UmciLCJleHAiOjE1ODExNTQ0MjAsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0._KvccBJnsaaZ0vqifyYZf8Vr2EeaqX1l1ehA-xunjsE	A+jIAXL+fX+xTos2lMJVNsU9Vn0foNDZg+z0uCUkoxI=	2020-02-08 12:33:40.251043+03	92
120	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiJkMzk4MjY0Yi0yM2MyLTQ3YzQtYjIyZC04ZmJkYzYyOWM3ZWEiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiJVQ1lDeEEzajd0S19BQ19scElUb25oY2ciLCJleHAiOjE1ODA3MjQ5MzUsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.gOFgpg1qujyax6JB6OSN86mgRTqRRTC2BEP4gRK7IPk	MEYBT5Eie9FwPV8matRlHk55Ns1Sx4YOeA3rXuUqeDc=	2020-02-03 13:15:35.382369+03	90
118	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiJlODVmN2QzNS01YWMyLTRiOTUtOTc0My1lM2JiYmQyZTFhMjEiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiI0MDEyOTkxMzgiLCJleHAiOjE1ODAwNTg3OTYsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.lBypt33lOY6WG8izo9rPwQLOnfrmX69by9UZaf695ng	kEAEhXXaeEffNrjgaXMkjZV0z74s/ZFbUH5cZcFVXCA=	2020-01-26 20:13:16.711313+03	88
126	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiJiZjUzMGE5Yy01N2RhLTRmY2UtYjEzYS02ZTA3ZGRiMDMzYjAiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiJVQ1NrR2dLTzF2ejczUmh3bjBYQ1pYUlEiLCJleHAiOjE1ODAwMzU2NzIsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.BzriPUf-uo0cvkj3Sok5iYdX79sgFxl3n4rcr8bfnZ4	sIbHj/wU4H5QEL0O98ZydYwmUxnon7fN9k5EBnBvcKo=	2020-01-26 13:47:52.136234+03	96
127	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiJiNTBmNDA5YS00M2ExLTRjYmYtOGQ1My0zOGRmZjAyZjVhMDAiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiIzNzExMDUwMzIiLCJleHAiOjE1ODAwMzU2ODYsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.-FH2xRbZ2BSLmw_fMkiD3ebydcIWWSJw-uj0vj1Eb1Y	TIuOomr2V9sqhUwD7CSHSHyZsAncdWueN17b8tz+80M=	2020-01-26 13:48:06.218763+03	97
128	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiIyNzk1NDE0ZC1lNmNkLTRlZDUtODJiNi0xZTk4YzhhYzdhOTAiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiJVQ1VWMWZIQkxzaXE3ek92V2RkNGdhY1EiLCJleHAiOjE1ODAwMzU3MDYsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.SMfZCOnTCIGCkiqtWidiHdptSysd54xGhDReSVSaS4M	+4o2IGd7jSlz6fxjRdbfMtNXU0LWJBauskDm66vBiyM=	2020-01-26 13:48:26.210028+03	98
129	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiI2ODUxZGNmYy04ZDI2LTQzNjAtODVhOS1lMThlMDY4N2Y4NjciLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiJVQ1dhaEYtT203NkhxMk1IazJXaWR6SFEiLCJleHAiOjE1ODAwMzU3MjEsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.vrVW3bDsGYdU1qe8K06IKsu8fT-XdusOpMFtq1lv_Mg	A1nz1xoVnhtQ57qi4Qzg5/uXyyz3EFdXVi2ZW/ABC7o=	2020-01-26 13:48:41.909856+03	99
662	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiJmMDQ5YTgwZi00NGRhLTQzNTQtYThjZC0zNjE0ZmU3NWFiYzciLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiIyMTcwODczNjMiLCJleHAiOjE1ODAxMTU3NDUsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.jFj0v4yL6sSWsdwpgutTMNeUkdQW6KL1gtfFH9dv5Qw	VUxHyXmSyOloMbR45AXByunp610UMiKJKuzo9wlARu8=	2020-01-27 12:02:25.612912+03	566
664	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiJiZjVlZDU0Yi0wYWIwLTRiNDQtODIzMC00YmI0NjkxYjI0ZjEiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiI0NTk1NzczNjQiLCJleHAiOjE1ODAxMTkwMDUsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.iQOtScxWuyYYQ8YU0jRTjqSKsC6RVINqVPUPoSgFNdU	3jw/LKsz4B/noMbfqyXiwkcoRz/LtSWG4nw8jr8ERVk=	2020-01-27 12:56:45.691612+03	568
135	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiJmOGRkYzFiZS1lMDZlLTRmNDUtOGJkNi0zMGE4NTViYjc2NjciLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiIyNzg3ODAxMjciLCJleHAiOjE1ODAwMzU4NjMsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.falCij3lXdMLQg3-srE5oCX9enw6yzGruWFKuQxlg2Q	dElmFV7RzwOBnD46Kk1doM21TXQGmlAtCUt8JeIPx24=	2020-01-26 13:51:03.82066+03	104
138	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiJiZDI5NDk0Mi02NDliLTRhMWItOTllZC04ODQxM2Q1MWI2MTAiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiIyNjQ3MzM2ODMiLCJleHAiOjE1ODAwMzU5NTMsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.XguN86YsuozbocJ-1ek9yPuZl82GpSHsyMKicuo7FbY	Ttik/xKujpW3X1aRasGAZkaM2YlOY4kn+4YS77kOD1s=	2020-01-26 13:52:33.662681+03	107
139	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiIyOGNmZmRhMy1kYjczLTQ3MGEtOWM2OS1kNTA5MmExZTVjYTciLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiI1MTQxMzg2NzAiLCJleHAiOjE1ODAwMzU5OTksImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.inzvQM9SM1UIRsco1EJaHUecMMMhBtQvVp59yeT2PAs	gLRTmethXlgPBOo6+kVV7gZKxSLpxQ7CUQ2e8wmjM34=	2020-01-26 13:53:19.44103+03	108
145	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiJiNDFhMjVkOC0xNGViLTQ3OGEtYWQzYy02ZmE2OWRhNzYyNjAiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiIzODM3OTM5NjgiLCJleHAiOjE1ODAwMzYxMjQsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.MgWxCJTcYkuFn4ZP8mgzcM6ica7MEf_bRPcM1caycIQ	togr0Hc7sH4BDWqZuj0MpLi/iIhZg7JK09h3j/aG2tc=	2020-01-26 13:55:24.31641+03	113
150	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiJjNTA5Zjg5OS04Mzc0LTRkNGMtOWIwMS04Mjc2NDQzYmJkZjMiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiJVQ2lROXBWTnNNOWtjMU1wNEhtWkYwMWciLCJleHAiOjE1ODAwMzYzNjYsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.AjQ2XBKBQdaFhltajZtNnZkrSeEv1R2iDaEWr-vI9Gs	i2J9/1yL1Ms/9J3/J1xqldyNuuKU2E6k9CeWByXnoDo=	2020-01-26 13:59:26.318397+03	118
153	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiIxOTVkNjFiOS1kZWQ5LTQ5ODMtYWU4Mi0yNjk4ZjgwZWNiYTgiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiIxNjQwNDQ1NDciLCJleHAiOjE1ODAwMzY1MjgsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.Hy8bN0HFTdeP96ds6weGQXLEIy53MIQp2dag6QUV-GY	syeCdJ0hmsY9INobFqAnvmJlUrs6PUCr4J9T9psD+yc=	2020-01-26 14:02:08.736+03	121
720	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiJiM2E2NjVhZS1lZTY0LTQ2YzktYWIwNy1jMmU4NTU1NjU4YTQiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiJVQ2hwQTk0V3pNSmFIVUpBaXlkWHZIZUEiLCJleHAiOjE1ODAyNjYzNDEsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.ryPJTtMZG4b7qZu-aOia9WEDCDkhF_yaiJUn46kd6os	+tfMz50p437Y7grNkUfuEYWJMKJzziYJf32tve45+o4=	2020-01-29 05:52:21.089304+03	608
754	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiJmZTEzOTA5My0xNjI0LTQ4OTUtODFlYS01ZDk3MjA0ZTE1MTIiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiIyNjk4NTgyNjQiLCJleHAiOjE1ODA1NTQ2NjUsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.BluZzNBXNi13xm8RclE5XqzGZPXeJKqm8WzbPBHkhSw	c4Jskps/+8FpR7PFv28e9RiSC0vEqbAGKYdvY2WBmSs=	2020-02-01 13:57:45.874199+03	637
144	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiJhNzVkNWMzMy03NDMzLTQyYjItYWUzOC1mZTVhNTcxNDhkNzEiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiJVQ0s0UEJ0WDNNQllJS2JTdGJRSWVuSUEiLCJleHAiOjE1ODAwNTk0MjEsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.9-FrNsaR6H6B7n1tqeEd0Jn-5jh73h8F_ZOR1Ajh6-Y	EXCy4AJ2VsfSN75luFeVZ7HmRlZAMygO3bQ//STAdyo=	2020-01-26 20:23:41.181304+03	111
136	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiJkMjRhN2RlNy1hNmU4LTRjMmMtYjlkZC01YzY4NTg5MmZkOGQiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiI1NDM2OTE2NDciLCJleHAiOjE1ODA5MjQ5OTksImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.SuN4WUMHSvtNYwrbgIIGhARcBpxTXcrVbN9QsGaS9ys	d7BOKnbCyy/gRMqbLVM5o+kkyqAivOGb5/0yvLpBlx4=	2020-02-05 20:49:59.129506+03	105
137	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiI0NTc3NzdmYi1hOTA5LTRlNzMtYTk3OS0wZWQ2ODVkMjFlN2MiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiIyNDU5MTM5ODUiLCJleHAiOjE1ODExNTgxNDMsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.agWdmkd0yTpioeq35mwcH1qVVT-dh5zBmMHqo-Oihsk	qK6d/xQ4IdiVCxWZ1HwSijoj0OsGd52T6/g87/EQ5Aw=	2020-02-08 13:35:43.534429+03	106
130	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiJhOTA0MzdlZS05YjU1LTQwODQtYmQ0NC0yYjMzMWIxYmY3YTciLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiJVQ29TclYxVzhEQjc5QV93aEtkSGVHWWciLCJleHAiOjE1ODAwMzU3MzcsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.Lxd-m0GAA9xyDTcongpBJQBhtBM0dJBWQ20qLVO-Co4	+ZnvE4Qz2Sy29c96iD+X9L0nmai+x/q6kCujRczohf0=	2020-01-26 13:48:57.827418+03	100
140	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiJmODhkZGRjMS03Yzc4LTQzZGUtYjUzNy1jZTQzYjUzMzYzNTgiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiJVQ0thRW1nakdmVjBmTW83Z1ZyZkJfbkEiLCJleHAiOjE1ODAwMzYwNjcsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.xenW52XsmeoleL-knqFP7B2P9xNJlSjvBDD5Z9EX3lY	oxhzZNRGbetg/yIRrsI/nN6/i9g9hx1FvRyyorlo/6o=	2020-01-26 13:54:27.696921+03	109
141	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiIzMThmMGRkYy03MjQ2LTQ5Y2ItYmExOC0zMGI5MDkyNzMxMTMiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiIzOTY2OTIwOTQiLCJleHAiOjE1ODAwMzYwODEsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.NpIBNxBeX-lSfS5OEMWs8E5uYakc3hu8nVOUqiyZ7kM	yv24hTG+43+auWgQp3Y6bhVJqm95EBRaZdmhld+CXBY=	2020-01-26 13:54:41.870969+03	110
148	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiIzYjhlM2ZlZC00YjIwLTQ0NzktYmI2OC0xNDFhMDI3OTc0MGUiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiJVQ1ZYZ1lyRzFuYTd1OVVuMk5EYm9HSnciLCJleHAiOjE1ODAwMzYxODQsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.lmp7ves-JAsHGra6ogilIbIOjior_HRgfSgNnwlSNWg	gj3QiOuY6woC7Q1OOkUViBiX5YHfZmAsyeAxgMI2LUY=	2020-01-26 13:56:24.598742+03	116
149	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiI4MTY2NzViNS00YmFiLTRiMWUtOWUzOC0xZDQ2NGJiMzlkYjEiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiI0Mzk4ODc0OTUiLCJleHAiOjE1ODAwMzYyMjUsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.xmZhy94kpEuvDjnh5LTaRaxNV5mvZoTRhaP2BQON5zc	dI+7yXfTOGZkdvbSfAHVDwNjAHmB6l+M6ysBXlGQ20Y=	2020-01-26 13:57:05.019627+03	117
152	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiI1ODAxMTUyYS02MWVlLTQ3YTItYjI3MC0xYWNhZWU2NjFkNmQiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiJVQ09YVUVSeWpnc29sYWtwcG5RVk1qV3ciLCJleHAiOjE1ODAwMzYzOTYsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.7LUas5G9uT2n0C31Dp2HEZyetb4wdQ6u1diGWmYIp9w	ON67TE0LCTOJ5G+hY3F5T/V4YXMAsd+zLYAM45eJGKs=	2020-01-26 13:59:56.934468+03	120
154	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiJhMjFlNzQ1MS1jMGEyLTQ0YzQtOWMzYi1lYzJmNmM4OTMyNzAiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiJVQzNWUl9ZdXJ1bGlVTTNPOGd2emVoX3ciLCJleHAiOjE1ODAwMzY1NDksImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.eKQmOL8sm3XWTEXXKP0i9PyL_XoUUR0jOOW-wUXDaqk	7VtR+69Vlonv2cu0sG6zyg1SviQEGoutxja/rrMLXgc=	2020-01-26 14:02:29.305002+03	122
155	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiI2ODIyYTkyNC1hOTRkLTQxYzUtOTYyMC1hNjg3NGRmMGIyMmUiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiI0MDY2NzU0ODIiLCJleHAiOjE1ODAwMzY2MDgsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.npmXakIrfWcfNOouNlHnDP2MKYwot3x865FW048bTT0	Jb1gP7/CKQ85sWx5mAxt0q7+Kyhz7UliuvWqd2VgAP8=	2020-01-26 14:03:28.156785+03	123
157	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiI0Y2I4OWU4MS03NmY5LTRmZDMtYWFjZS1lZWE4ZmQyNThkYWEiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiIyNzA4MDU1NjYiLCJleHAiOjE1ODAwMzY2ODAsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.xDJvDiy0SFnXWovlc2z4P_DNR2k0NiUFTeXE2PkvPUo	Qt15CmrGIrmQXErKzM+PHfmdy+rhmt2gXzBJMoC7G+o=	2020-01-26 14:04:40.688184+03	125
151	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiJiNmU1MTMwMS0zYjk5LTRlYTItOTU5OS01OGRlOWU5OGIyYzAiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiIyMzg2MjMyNjEiLCJleHAiOjE1ODAwNjA5ODUsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.A-uizVP8GYR15NjlCZsF_GD7hczX1ESaW5eS_s7dBgE	OmZQCYxUklWVCn1MuLVozgiCcJHuBKP1D52poSWIlDk=	2020-01-26 20:49:45.987144+03	119
721	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiI2MjM5ZGM3NS1iNDQ5LTRmZDgtYjU0ZC04MmU2ZTA3YjFkMWUiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiIyNDI5MjYwMjkiLCJleHAiOjE1ODAzMDAwNTAsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.CE1DcPFJaoOFJJu9a8CNXNB0sBUV7FpLb2QYupxk2Ms	VIZuSqcRrHznvdX5FO0D6C46+bVH5S5CUp/wzoUuoA4=	2020-01-29 15:14:10.22906+03	609
143	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiIwZTk0ZmJjYi04NDdiLTQ3MDYtOTQzYy1lYjgzNGMyNzNlZDgiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiIxNjM3NTgzNTQiLCJleHAiOjE1ODAwMzcxODYsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.dLJ5grkHWCw8pkn1IV86IeP3Kex100AFKf80w_hiV4o	Ij+K3YEFJ6gsZFBFT95L6G9dI2mVk7aWxBdDiR0TusU=	2020-01-26 14:13:06.78983+03	112
131	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiJhN2FkOTYxOS0wMWZjLTRhMzctYTU3NC01MGFkNmY0MDM4YzIiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiI1NTE3NDUzMTciLCJleHAiOjE1ODAwNTk2NDEsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.z7emi9OAJneR_YSrlgD09Vv4uO3Br9q-cEG_AryikMg	lGSiHj0q4uG+C50P1MnAOMX7/T/rAdRA7QD4fHoW6wc=	2020-01-26 20:27:21.837095+03	101
156	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiJkNDg2MTg2Ni05ZDhiLTQxYmYtYTNlYi1lMzllM2U3MGM0MDMiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiJVQ3J0ZngzOUJXSTd2NzJ4Z29VSE02aUEiLCJleHAiOjE1ODAwMzk0OTgsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.2-hYC3Zic8VwF5_avBojiT53y_VcvQKG68BKk39Np9I	JlQVWea5ljwJiO6x3Jr2+J8j8UlS2+n+p7Ff9HYmszo=	2020-01-26 14:51:38.788902+03	124
132	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiI4ZmEwYTg2NC1mY2IyLTQ5ZjUtYWU2ZC0yYjVhZjliZWJjMTEiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiIzODAwMjE2OTMiLCJleHAiOjE1ODA5MjU5NjMsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.guyxeE0IJp8VeQfo4GHV4dZtDbxoCSGRDV9P9FyqLfA	gaopMs0V+N8XWBs1aGeSzToM9W5VXSscbnszixnoeZM=	2020-02-05 21:06:03.655443+03	102
161	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiI2ZjhlYzA4Yy04MzM5LTRhNjUtODUwNC1iZGFkYzdjMmYwZWMiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiIyNjcyNDMzMzAiLCJleHAiOjE1ODAwMzY3OTEsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.sRva8DI9xtk7ily_lhvn13RKTnF-6FSnWT-HQ9drwb0	4AQljZWGZMFDgFO2vCM+H5o/TR+Ej+Lq10ViUFmapEU=	2020-01-26 14:06:31.713598+03	126
176	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiJiYjkzYjI4My02YzVmLTQ4NmItOTYwYy1mMTJkZWI4YjFmNGEiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiJVQ0xmRzloV1VqX3pfWVpNQ0piUDFPTEEiLCJleHAiOjE1ODA2NDgyNjQsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.qI2Rh3ClPOx2_UVnPdgZhOW_SbewuM7y7xo2R1Zh30s	lLN3xKhiINTzc4PuKqVA8QoBzwzHsoeT0bOsj4oi64w=	2020-02-02 15:57:44.486685+03	138
163	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiI1YmM0MjM3Ny1mMWQ0LTQwMDctOWVjOC1lNmNkMGU1Zjg3MTEiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiJVQ0JLM1JKTThLZXlBVGUwTmJBRzUydWciLCJleHAiOjE1ODAwMzY4MTQsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.5jlqfAck6tnHJuFw-iyzzKVhLaPCzSbTLRvUAE5MERk	LG211Tq9BT8mF+e1wVNwoSgoWHvZSawC9MKapkpEV6c=	2020-01-26 16:51:54.164378+03	127
164	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiJkMTE4NTUzYS1iMzI1LTRlZGYtODAwMi01ZTY2YTliM2I3OGEiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiIyOTM4NTU1MzQiLCJleHAiOjE1ODAwMzY4MzYsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.DZe1C1KAiDJHzv4PjW28gAaIhoPQbLaD0nA_WVQRYrQ	ltAT+m0yhRW2BO45nsdcRrcVhOLOAPIcsb0UKVkr2YQ=	2020-01-26 14:07:16.722486+03	128
166	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiIyZWVmNTM1ZC1jYWQ4LTRjMzctOGNiZi1lYzJjMzYyNGNlYjQiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiI0MTc0NTg2MDUiLCJleHAiOjE1ODAwMzY5NDIsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.E5GBHECxKI52jKuC55uVZu2fbORJlC6q23DZL8fR07w	CT+lMzirII6FbZ29jDb0QyzmVtmKag/My6vIkljgmQk=	2020-01-26 14:09:02.858132+03	130
668	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiJjMWI3YzkyZS05NmZmLTQ1ZGUtYTZkYi1mY2NmMWE3ODFkMDYiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiIyMjY5NjQ3MzkiLCJleHAiOjE1ODAxMjg5MTAsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.-bfhj1oeu85dEi8iHTtBA7566jQOkOQCw1HAyf4d5pU	erGvo9fV1Y4IyMvDoq2NlWTwU7L6QwNepL77tX8v1cc=	2020-01-27 15:41:50.07245+03	569
672	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiI2MDM2NmM2ZS01ZWJkLTRiMGItOWE5Yi1lYTZiODc3M2ZiYzgiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiI0Mzk4MDI0MDIiLCJleHAiOjE1ODAzMDg0NjAsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0._TWDOQTX4fUiCVhfQqmTG26f4C0X4pSWOd28RoOTIvI	xJ6eKonhFQ1BP67D+rgl7PamTTnfzDOVLqYco31gjAA=	2020-01-29 17:34:20.250173+03	573
171	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiJiNDZkY2I4OS0wOGE2LTRhMDMtYWNjOC1kYmM2MzNhMzQyNjEiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiJVQ0FRZHFyTmlOaWVVQUdpNEhhbS0wNFEiLCJleHAiOjE1ODAwMzcwODQsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.shpu4tY0YcpyvP85ujZ8B-Nq-UBPqpoxfgJT_wtY06s	P3kru9DwtQHKb71d79vKb9SaKFYUM2eWIfSlZ+YN5cw=	2020-01-26 14:11:24.57088+03	133
173	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiIzZjdlYWI1NC05YmU3LTQ1YzYtODZiNC0yM2E3ZTEyNDU5NGEiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiIzNzI4MDIyMTYiLCJleHAiOjE1ODAwMzcxMTksImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.Mz0HJgroOohNEaNOoaqcesgs3k9I_tuE1WSSnY3wVg4	GmCJiiXikgBcO/7tVEPQqDRn1lT/BL/naeIq5309c1I=	2020-01-26 14:11:59.636612+03	135
175	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiIxMWJiMmYwZi04YmJkLTRmOTAtOGUwMC1jMWVmNzU2MTYyMmMiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiIzOTc4OTk2NzkiLCJleHAiOjE1ODAwMzcxODksImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.SvXCDPdTXD-xy0nwyURVilUEa4BZYAgmn-zeqIyOqBw	1NDnLDzoIfitNODbc+G1ZlpG5ZiDonuHvmnKS8Y6Fy4=	2020-01-26 14:13:09.748083+03	137
170	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiIzNmMyMTJkNS0xOTUxLTQ4MTItOTM1MC1lYjcxODA0NWYwNjYiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiI0NTg4OTUxMTciLCJleHAiOjE1ODA3ODk2MjAsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.Rk0as55m2QE_4clcIqPoaIoZvMM2jWuVJRyKnTBI9dM	JObYb3J7zLSukO/3Ai0zD5eyFy3rgK92ugA0fac4NjI=	2020-02-04 07:13:40.242923+03	94
179	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiIzZjZkM2JiNi03ZWIzLTRiOWMtYjg1ZS03ZTdjODAyNWExYjAiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiIzOTI3MzYzNjMiLCJleHAiOjE1ODAwMzczNTgsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.F5F8YExrVyRgfNHF0r4GkHwkHZs0xndArHftPcOpBBw	3CMcodou9N4M/1dCpysno3wVAXnr/YKELGIW1WlfnKs=	2020-01-26 14:15:58.806328+03	141
165	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiIzOTE5MzZjOC0wMzI2LTRlMGItYjQ0Zi0zOTc5ZDJiYmE0M2MiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiI1MjkwNDM4MzMiLCJleHAiOjE1ODEwMTgxNjUsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.NsAghvGjPcje0tTI1Y53-VXXGySVk-wxNwRtXbj3En4	Xu8FFA2d/L+EqNGpSqUDsVKsolycpiQUOv0YeNxOlDs=	2020-02-06 22:42:45.576062+03	129
174	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiJiNGMxNjMxZC1hNTE0LTQ4OWMtYmIxOS1lYWI5OTA2OWJkMWEiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiIzNjM1MTk4MDgiLCJleHAiOjE1ODAwNTg0NzAsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.1iYGLeGKYPsCt7Da7ufZKaAroXpe0qZ3k4m1MfXxERc	c6GLyZRbsj0WvBM0VJm6oVBDaNoL1DEDc4VosZ8zDME=	2020-01-26 20:07:50.229655+03	136
178	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiI0N2U5MDUzMi1lMzQ4LTQ1ZWItYTFmNy0wM2U0MjE0ZmQ2MWUiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiI1NzQzMDg3NjMiLCJleHAiOjE1ODAwNTg2NzEsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.Mm5f8huTZbbWDMqcebCg4mtqE-eP5KqL3VsAS1oBo08	UEeiZSrf7s0XYwV7xBjRWjX9KVUgI4SJ6Mpao0NeSxQ=	2020-01-26 20:11:11.797678+03	140
172	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiI0M2NkNWRjNC00NzQxLTQyOWYtOTY3My01OWViNTU4Mzg1OGEiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiIyMDUyMTUzNzkiLCJleHAiOjE1ODA1NzA5NjEsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.VmAACyWlH7w1bh46hH4Ve44a9jT2nYiJqe2BcXyMYH4	Dnmh56LxWH77iwrODrVBe1OJ5kp+ImQEVFPyovFnMjU=	2020-02-01 18:29:21.341182+03	134
160	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiI5Y2QxMjJmMS00Zjg5LTQ1MWEtYjlkZi0wODBkNDNhM2E2YjkiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiJVQzJSTFYzbVJ2U1dwS1Z1dlFHeFE5Q0EiLCJleHAiOjE1ODA5MjUyNDMsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.rNdWWJXJ7WYEGNWEkxCSPGgeA8P8y2kvCCVuHHO3UYY	OMAUEVKYqcVRWeoBw3CRIXEU5FefFZwaqRUNeo8MQU0=	2020-02-05 20:54:03.936287+03	103
180	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiI3NzJjOTYxNy1mNThmLTRhYmUtOGU5Ni1kZjg1ZDcwYThjNjYiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiJVQ2ZmNUxBWUxPd2NrcWJiaEhFYjV2U1EiLCJleHAiOjE1ODAwMzc0NTIsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.Y0J1oovnd8L-nhodf4qvMaf1q_jsi8g8WBqObHxTBwI	QYIH0W9YJomcxLl/yCbeGwxOfwN5A1iJnISnFR07K7o=	2020-01-26 14:17:32.112056+03	142
196	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiJkNTgyZjE2ZS1mNDgwLTQ5ZDctOTg4Yi1jMjAwMTFjZmU2YjUiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiJVQ1Y0czg4V3dndnRnQ053a2FYZTd6OHciLCJleHAiOjE1ODAwMzgxNjAsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.7pFC21jj_YRs7gkgkf4EG9YPUIDEAg3z5KdovekfrCw	XAzUjMqECMPxtTK+qi3h/mUZ1DBudJqGhki5kZE+ZTk=	2020-01-26 17:14:20.018277+03	154
181	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiJkODkzNGMzYi1kMDg3LTQyY2EtYmU2My0xM2E2ZDZlYmM3ZjEiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiIyOTM4NDY2ODIiLCJleHAiOjE1ODAwMzg0NzQsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.4EZJdUq9GTgNZp8r4_zTPFDUKxdmkY7b4SOOSOH5FfI	Exg1FHyO62/baBtKe+SqMg6Z6YeC7RR/R36EoQ2CjBI=	2020-01-26 14:34:34.204099+03	143
543	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiJmYzE0MjZjNC0wODEwLTQ1MGUtYmM0MC01NWI5YTZkZDBhNGEiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiI1NzM2ODc3NDciLCJleHAiOjE1ODAzMDk1NzgsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.hAEyURDiq0pzlDjDlQxstxTFIv_ej3xcdqbCGefTF44	BV0u3VzwQd592X5PhGGHc6OJE94KmXJbQOSq/b4T1/Y=	2020-01-29 17:52:58.749347+03	468
194	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiJmZjdkZTQyOS01ZjZjLTRmNTAtOTkyZC0xYmRhOWNiNWI1MTEiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiJVQ0ZGOGNBdExmSGl2TWJNVWJBZV9MVGciLCJleHAiOjE1ODAwNTgyODcsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.btw_QvsPqKlt1XTlWwNSm63fNpMEFpqrYMMMYrGRXJE	haZnUNzy7aE52puVw5JLJsshdc0FdkqHCm+yoGajRiU=	2020-01-26 20:04:47.910705+03	153
201	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiI1NTY4NGFhMy1jY2U0LTRkN2QtODgwMy00YmQwNmRlNWY4OGQiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiIxODU1OTg2MTciLCJleHAiOjE1ODAwNTg4ODUsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.JQgLPYF8REptv92z5CF9Qdcjj_hpewaYNINdysSgZvM	ldIN9Q4pwj7FRJos31pWn9wCJBdraSUCYMAoP0j0mxs=	2020-01-26 20:14:45.688385+03	159
759	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiJhMTE5OWY4YS1mMzExLTQyNGYtODVkMy0wNGY2ZjFkMmI5ZjYiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiI1Mzc5Mjc2MDEiLCJleHAiOjE1ODA1NTU5MjMsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.lj5eCzc6tBH-QleSJEzuGvSqFM-kckj5QEGRVt4WSIE	bT5kEbtcuZZfhY6UdPZwtmk7L9NT7uShqYSaO8QqDAM=	2020-02-01 17:03:43.649383+03	639
749	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiI3ZmM2OGU5Ni00NGQ3LTRmNWQtOGM2My1kMmUwN2JkNWM0NDYiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiJVQ19lbTJ5YTlJdnpWNVp1SWctWXkxdEEiLCJleHAiOjE1ODA1ODcwMDUsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.k4q1ZWZXQzVX_C69YRRVIqGUuLE-U3Yy_n2C7dQyFGY	MeVTkE2ZSCAvUK5usjOtf2z1+sjz3wlVvnup30FckWI=	2020-02-01 22:56:45.546425+03	555
821	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiJkM2UyMWI2Yi0zMjBlLTRkNjItOGQ2OS1lZjA0YmNhYzU5NWEiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiI1NDY0MTQ4NzEiLCJleHAiOjE1ODA2NjQzMjQsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.Hn34Qy5c23LTBjyC9M8dvF8rcjHqLKeiWpt-L5-Ik1Q	XuSOiB0tnwawtR+ziHC5j1X9u5xqL0papPmfR04yPLk=	2020-02-02 20:25:24.620011+03	689
826	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiJmYzA0NGIzZC1jZTUwLTRiYmMtOWE3Ni04N2UxYzk2Y2Q3N2IiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiJVQ0ZlXzFCUm5qOGpiNktXUmRZcG92bVEiLCJleHAiOjE1ODA3MjEzMjEsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.7Z6FDCqtnzLlDN3T8akN0N_w7vIFs1enbG-ZcrIbn6o	zEfCQp5XUb3PR2zvA/D4sn+4/Zo1nVBgnoVx+6Qxw3g=	2020-02-03 12:15:21.958829+03	692
846	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiI1NDYxYzE4OS1lZWIzLTQxNDEtODZlOC02YjI4YTQxZmIyM2MiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiJVQ1U0OUx4WkNJaWY4bUowZ1dyWUxTclEiLCJleHAiOjE1ODExNjgxNzgsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.Am6Rf_flf8jK3SfqlnpeuPpQ7UNDXvZMtCANpfOCCBw	WwDiH5wnrvzpjWhlFV6DO/SK/bElRrSds2oxndpGB3w=	2020-02-08 16:22:58.645709+03	704
834	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiIwOTAxNmE1Yi1iYmJlLTRkNjUtYTNkYS1lOWQ2ODllOGQyNzMiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiJVQ3FKdjJpNG40YTJyRHVaVHVSazBaY3ciLCJleHAiOjE1ODA4NDczODMsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.l0v8K5mZJPOU4gz3k9X2TGoIsq7J-d5xSYZRGlfT8bc	kSYtdhkRlYZRvqcV1BAcBIdw/XohmON82hxSon26cCs=	2020-02-04 23:16:23.266163+03	697
841	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiJmZWJkZDljMS1kOGRiLTQ5ZWQtODA0My00MmE2MDYxYzc5YTgiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiJVQ2pKLThnWlh0c3ROY1R5emg3bHdET1EiLCJleHAiOjE1ODA4OTgwMjYsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.S7P2SUW_k6xxiOkwoKK-0iFIrpApBu6f-kY1eS991Lw	3eNABhAqSMaY0boydU/Mv28LxhauBdoh211qEIoCRxU=	2020-02-05 13:20:26.458052+03	703
845	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiJjMjJhMDQ0My1lNWRlLTRlMDYtOTljNi00ZjYxMjFhZTVlZWEiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiJVQ2I5OWd4UFNTQ0JjakZFN1NfT252SHciLCJleHAiOjE1ODA5MDMzNTUsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.yekc0x55h44HArPmjbyQZtgCdV3Pv3TyjTpGwZK0FYE	sZx8rJbAUoW3i71RYlEa8+Lo4zQH9dww1c8YfBzkh+8=	2020-02-05 17:34:15.998412+03	588
849	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiIyNGU4NDRhZi05ZmNkLTQ3YTUtOTVhMS04NGU1OTY4NTIyZWIiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiIxOTcwMzE0OTciLCJleHAiOjE1ODA5MjU1NTMsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.6MYxiRKpO5-ognhoaQ9Ojh_spvC9G_tJRl75jJNcyP8	S32+QATuXonxrOr+zXpA6n108kOu2iFSyuaz1eERHeE=	2020-02-05 20:59:13.4717+03	709
757	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiIwY2Q0MWY5Yi0wNDUxLTRlZDItOTk1OS01MGYxMWUyMDcxMzMiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiJVQ1Fra2ZKZGQwc3o5NlhfS1IxbTQzM2ciLCJleHAiOjE1ODExNTE5MDQsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.ybEfoPFxJjMiQ5QlcEsO1AGrCB-CVYEKH-jc4tdNDQA	fUFh5gsKWeGU3umQyTkcn6N0BiDlTyO1wwLDE7Sx2g8=	2020-02-08 11:51:44.66235+03	604
187	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiJlYjQ0MzMwNy0wZTNhLTQ3YjEtOWZmMS1kYzdkZjAzY2RiZWYiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiJVQ2ZzVjFDaUNKWnZQbGpCaEM5YXc5bkEiLCJleHAiOjE1ODAxMDAyMTksImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.rPi90VN4k-uHNK-_yMONPN_1-msDjblZErvaqaYA2Qo	ZIuSo+dAvVh/wgosD9W4+ibNb0tSke8XsVp4/IVE0mY=	2020-01-27 07:43:39.573537+03	147
184	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiJkY2U1ZmI2MS0wOTQ2LTQ1NWQtOTUzMC1kNGY1NDRhNzc0ZGEiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiJVQzkwUjFab1pUTGpMTjBiTVY0X0pvWGciLCJleHAiOjE1ODAwMzc2MDEsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.Y0c_1fmy_C_wrPOdatJ9bLy1PraNxPCUanT2xgIMCD4	IQ1qrKNAUt/H5xyPhBFAZ9YrNoR2o1XQBuO+FXdIz6k=	2020-01-26 14:20:01.784258+03	145
670	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiIzOTIzOTQ1Ny04MmViLTQ5ZTItYjI0YS1jZDU3ZmQwMTk3ZDgiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiJVQ0t6OWx1VzRtREZLNUtsdll6cXJlcHciLCJleHAiOjE1ODAxMzMzNzEsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.8ysbd0NluQ9iEJfloLUOGsSNTSVfTAPiFOqTE8osxhI	6TCHkLPRIhCMpbF3O1t7JjgzdVd2wFdswIG69Lcbu1I=	2020-01-27 16:56:11.132295+03	571
186	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiIyYjhkNDkzMC0zZTI4LTQyOWQtYmYxNC0xZTZjNmUzMmI4MDIiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiJVQzZ1U2RhMTc3WG5iNW9zSzcwWjVFd0EiLCJleHAiOjE1ODAwMzc2MjEsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.P5p6L0LB6AsoP9alqbgsROW3pe7SgmQA0Uet1jb_vN4	aKRr9e+ZgmX0iUchQAcibKekRq49DwKh8ZkA/Opk+jI=	2020-01-26 17:05:21.351476+03	146
189	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiJlYTExNDU2YS1kNmUyLTQyNGQtYTBkZC1iNTRiMzMzZjFhZTUiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiI0MzAzNTI0NjIiLCJleHAiOjE1ODAwMzc4NzksImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.FacY8E91gtwzRt9Fh-GVl1ddsR3H_tTUT19vDl--wrI	Mgp9widoyf5Em8vSxWJaSOvWmflGJwlwT4RuYpStc1M=	2020-01-26 14:24:39.416439+03	149
190	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiI2NTk3ODUxOC1iNzQ0LTQ3NTgtYmZlYS0wNjAwNmFjZTcxMzUiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiJVQ1JrX2FwQUJZOWhUUVlKUUo5QTJhVXciLCJleHAiOjE1ODAwMzc5NDIsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.6mHU3bmHs0hUFpS50EyWc7iZRhc8-GxqdD_sYbddK6U	BgEkUHkRuGRC7vFYsvizNS/wakNYgO4UPLeFEADEC60=	2020-01-26 14:25:42.52262+03	150
191	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiJkYmYyMzZiOS1lMWNkLTQ5MjctODE1Mi04ZjNlOWZkMzJiYzQiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiJVQzJKOHloZWxsQk1GUnZmTGw0Qk1lc3ciLCJleHAiOjE1ODAwMzc5NDcsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.6SRC8FNrSaxyGR2DHqVMDUkdgYPVBsQSXQFEqE2uw2c	9vIxUbNAPfO7atV7jwFM7Hk6/AXwtlXrd5BwqTAE5cY=	2020-01-26 14:25:47.029181+03	151
192	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiI2ZTJhNWQ0OS02MjczLTQ1NTgtYWVkOS0xNWJmYTY1MjQ0NjEiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiIzNzQwMDI5NjciLCJleHAiOjE1ODAwMzc5ODIsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.JuKYhfR2w8po4a7NzlTV4fLskoG8fxzz8D0oZwjOBIA	TSgdlZyNioZ9rBbpZxasAzeIiP3nDcNpBAzoBnVXnJw=	2020-01-26 14:26:22.104045+03	152
199	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiJkMmQ0MTMyNS02ZjdiLTQwNTMtYmU1Zi1jY2MwZWI0MmM2ZmYiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiI1MzQzODY0MDAiLCJleHAiOjE1ODAwMzgzNzIsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.TLXpn4JVeWydJ5Xh2Ebwl5Hf0RfOvHWv__KwxlXNAAU	1jn9ogRji9pwRv1pqgPjpGekXRcN/rSNHlUQfDuEcEc=	2020-01-26 14:32:52.507554+03	157
200	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiJmNTcyYmMyZi0yMTU1LTQwMmQtODljMC01ZmE3NDI5NTlkZTkiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiI0Njg5MDEzOTYiLCJleHAiOjE1ODAwMzgzODUsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.Tx3pe6m1BF9E5QbSIXa0MVB5cK5ymMqa4qz34x0yNLo	yxW2la6V/BVkzQBOXhb/QvKjd9b/kfR90xoWFip2XUs=	2020-01-26 14:33:05.235308+03	158
183	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiJlYzg3OTIwZi02Y2E1LTQ5YmItOGQ5NS05ZWJlMTIxZWExMjciLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiJVQ0N2Ynk2MXhnMDBEcE1yZ0RKVGt4cGciLCJleHAiOjE1ODAwMzkyMjYsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.UqxXKds2NaBNmdTJrZ2C4cUkNKvhc6cDrfl2XSMhaIY	TdrE82OrPhzgNFfpsfKtcc21HuDh6ADK/oT3YP0c/z4=	2020-01-26 14:47:06.156452+03	144
722	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiI0ZGNjNTRmMy03NmVlLTRlNjYtOWIzOC1kOWQzZWVmMGEzNGQiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiJVQ20tUlVNNzFLQW03cUwyZTVQcUk0ZHciLCJleHAiOjE1ODAzMTMzODMsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.oSQlimuE2veKMwumbgKVxVluwshxjArd7utnEq8dUPk	idgb31nv9gG1yIEpk3nyJb3xsjn89YJ7H0YWg0dC6Nk=	2020-01-29 18:56:23.695243+03	610
678	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiIxZjZhNzdjYy03YTRkLTRiY2UtYmJmNC0xYTkxNTljZjQ5NjAiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiJVQ2xjcWxqcndSVmVxdWVCSC13QTRicWciLCJleHAiOjE1ODAyMDE1MzAsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.mybBNe5nyareoCoPkYs2FfUxwtQYjo7aGfb2Mf7FrHo	CIfAnignuINv2clHKdtMuYPTmWzEAnMfvfWsa/SUWa4=	2020-01-28 11:52:10.211866+03	578
193	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiIwN2FkMGQzOS1kN2FjLTRkYmUtYTViNS1iODY0YWVkNzU5ODUiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiIyNjAyMDQxMzkiLCJleHAiOjE1ODA1Njc5OTksImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.rNCezyAMra3XxPlXIU2x320KeWc3x1PSuqMHfGCrff0	QMfLEpYLSi+e/TLN4Jj1kyY4clGhVBhYIAvuYVlzYKI=	2020-02-01 17:39:59.347746+03	39
198	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiJkOThlZDMzMi1mZDJmLTRhZTAtYTJhMS0zNTZiOTk0OGQwNzUiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiIzMTIzODk5ODEiLCJleHAiOjE1ODAwMzgxOTQsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.r0Nwzi1mvdhVsFjM-J6qpZGMKbUl0jX8pLqQdHllGeg	ohQwB1RCDnVFHrx8tajC1tsZUGaY2LXVk8ELizAPawY=	2020-01-26 14:29:54.883308+03	156
177	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiIzMDc3MWEzNS0zNDljLTRmOTQtODdhMi0wYWVlNTlkYzE1M2UiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiIzNzkwODIyMjciLCJleHAiOjE1ODAwMzgyMDIsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.hLCM5BYtbJzhYMiLOVLpcLyfwPznOTzNeoFf1IpJIkM	a39O2Kj+QPGABoYRTeP+0kzX3UA+cKocs3kUZmY4GHI=	2020-01-26 14:30:02.906272+03	139
202	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiI5MmI1YzgyNy1iY2Q2LTRkZjAtYTk5OS0yZGMxZDU0YmUxMDkiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiI1MTI5NTcwODMiLCJleHAiOjE1ODAwMzg1NDgsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.JpE1lLlczjAqDOa0a2ZoG8tDhL2wFqQsCVAbBp43fwE	i+vFdiZopjvOKQuBEIxRTW0Dkf1V/C1wvJh+k+5xef8=	2020-01-26 14:35:48.778416+03	160
203	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiI5NWRiM2VjMS0xYzdjLTRlYzctYmRlMy1hZDNlNjQzYTg3NDIiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiI0NzA0OTc3ODAiLCJleHAiOjE1ODAwMzg1NTIsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.8QKTVYPa6_WwSZQ9P997XBEPCxVllsdrJRkqj6PE9jU	YwRIEy/G4tPq18V8AC2qw7DB2f+p33rSOnsNqf81daA=	2020-01-26 14:35:52.343782+03	161
188	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiJmYTA2OGEzNS04OTYxLTRlZmQtYWM3My04M2I2MjUxYTBlZjgiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiJVQ1RIa0o3TzliVGxxc3lyMzlGWGhxWWciLCJleHAiOjE1ODA4MjU2NjcsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.vVrCscnc8SwNFHpOVHGryx1lno_7940NshKUoQRBznw	SVm3QGw0xFDepP2NGKyBtu3DoIE/hpuOo/OiflXF/uc=	2020-02-04 17:14:27.027216+03	148
212	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiJjNGUxOGM3Ny0xM2Y0LTRmNDgtODc0YS0wZjczOGQ1YjA4NDkiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiJVQzFjRVM4ZFFwZVI4YW8xd1BpcldHQXciLCJleHAiOjE1ODA4MzM1MDQsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.XNciO0l_ar5HUhZXlmz5DAg3XXSkttPJ2p7fhvFieeU	xJ3tgzXxBCWHIB0/Fv2ja7klkgStzev6VgnE02mg6+U=	2020-02-04 19:25:04.004124+03	168
210	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiIzY2EwZmIyYy0zN2U0LTQ1NDctYTliMC03MjhmMjA4NWFmYmIiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiIzMzY3MzcyNTIiLCJleHAiOjE1ODAwMzg3MjYsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.eYPG5Ll67QJonzG3OUQODRUDCZ-AHtNShUlUt9e17ao	DD1PqCtpuic4p6hxAe3Wp5KRkWR3ZzJxLkKnw1GyzW0=	2020-01-26 17:23:46.491577+03	166
197	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiI2MGY2YmQ3NS1kMWMyLTQyN2YtYTA4OS1mYmZkOTZjZTllMjUiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiJVQ2RPUmc0alZEdTZ5SFN6VmExNDhXaWciLCJleHAiOjE1ODA4MjU5NTUsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.zBKy-1U0aTziPQ45qw7l7HlAgegLtHj67gwCMxowAXo	U+KicbgrbRGCZ0iYmvELzUJaE1feNB+zwH2pLJPkxsU=	2020-02-04 17:19:15.671324+03	155
211	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiI4ZDUzNjJkOS01N2RjLTQ5YjAtYjI4MC00ZWEyMWYwMTRkZjUiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiJVQzZYX2QtVEdPRHByamF0MmVNSGxLMkEiLCJleHAiOjE1ODAwMzg4MjUsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.2oeJKszptxtuCgvqGDlly5bexOl7KcluYIBRueFD_Kc	IRZG3JQZ4sYcE1zM3k6f08jD6x/uJdkl0Xj6vqLGfj8=	2020-01-26 14:40:25.255175+03	167
214	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiJiODk3MDkwMy03ZmIwLTRkNGItOGM4Mi1lM2E4YjExNDY2ZDUiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiI1NTM4OTY3MjIiLCJleHAiOjE1ODAwMzg5MzQsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.ZxTsEdr5lYlRMFGBgx4-mNQVi4vRDp_ZYIV5S4ZuhV0	iZdoj55B8XTd4ovYJO35dJ3nHbaHRPiXHYLO5SIj5ik=	2020-01-26 14:42:14.597137+03	170
215	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiJjZDkwMjhmNS0wZTdkLTQzN2EtOThhNS05Nzc3NjBlNmJiNzkiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiIxNjA3Nzc5MjgiLCJleHAiOjE1ODAwMzkwMTQsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.Y1lRWsxXsRZJQRDwbhkGX40R5ZvCH-awpqgYn8EhC2c	LrTUGhVsfIG5WD4ybNVM4IQDxbJCqBbfOBhMsjl6U0c=	2020-01-26 14:43:34.256154+03	171
213	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiI4ODE5MGU2NC1iODU1LTQ1YmYtOTI1Yi0yOWU3MzdjMTU3YjgiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiJVQ2I3dDhWdlpYUGs3a21fdFJ3bVN6blEiLCJleHAiOjE1ODAwNDAwMDAsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.1dXTiU7Dc6wGOZr9o5cII86hz9y-SeXK8HbeVvVsFOE	ub9LsRlyA+QIGcDXo4nLQ4Lj1Bw9Wb9k3vRl6AEOeNg=	2020-01-26 15:00:00.677764+03	169
226	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiJlYWJlYTRmOS1kNWU2LTQzNDUtODNlMC02ZmExMjhmZTEyOWIiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiI1Njg3NDI0OTMiLCJleHAiOjE1ODAwNDA5MjMsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.PWutXLu1Z0QZPNSggSC4XZLl6_Y59k_-iMNCY3D9_HQ	4RZLUCTMlHEvsQDWE1j1H1GZ/b1R/jRnRrBZ2E1TUuY=	2020-01-26 15:15:23.313419+03	182
216	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiI4MzUzMjNhYy03MmQ2LTQ1YWQtOTY3ZS1jNDkyZjcyOTJmNjYiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiI0NDU3NzYyMzYiLCJleHAiOjE1ODAwNDY0NzUsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.seeDrko2J5dKT9Gcyxfuoftua4QdtAjNn6t6BDdihQc	l6wwLptrIkRWoKjnC+dEp4okFt6R529GcFX4TLECYm8=	2020-01-26 16:47:55.018476+03	172
204	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiJhN2UzMTYzZi03YjBmLTRmNDctODRkYy1kNjg4NTYyZWZkMGYiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiJVQ0EyYjhZcTNwSVl3SERNa2Z4dkdUdmciLCJleHAiOjE1ODA2NDQ1NDEsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.D_6nNFNxSS23XRKGBqvtEfNTIHZYW7LRj-7YgZJLzXY	yd+LSpAe9tJUkz+VT7+WSnKH7cbfZY35UWmU/aOZJI8=	2020-02-02 14:55:41.922551+03	162
217	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiI2ZmUxODA5MC01NTFjLTQxMTItYWRiMi1kMTU5ZDFkMzEzYmQiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiI0Njg5NzUzMTYiLCJleHAiOjE1ODAwMzkxMjEsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.AAFL-BRY3XfepEK619omm_lAHG9IkpYH_TwV0eM84wU	Qns4lxql7aFoU235UbNmlE0JmpztbK7EUcpmiOKeCVY=	2020-01-26 14:45:21.031935+03	173
220	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiJjNjdhMDM0YS0wMjA2LTQ3MDMtYjJiMi0xYzZlNDQzNTVmYTgiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiI1MDY4MDA2NjciLCJleHAiOjE1ODAwMzkzNDEsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.PSrZGadf37CCD05mp3h3eflqSJp1PPe4yOKr7IBToi8	0LlsY+nVcZPEFiw8XuA2lLNcJJk17B5+7GalxeNLAjI=	2020-01-26 14:49:01.495314+03	176
238	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiJlMTg2OGVlYS01NGY5LTQ4MzAtYjc2NC04OGQ4OTBlNzg1MTUiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiJVQ190M0U0aklKUENRc2J6NXBzY2RPdkEiLCJleHAiOjE1ODAwNDA5MjQsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.NCnTCrannCgNWA-QLg6vpXWbBHqLCg--r_ciEjSlUzE	c2tV5oPHBExiTPaM+tI/7y0XYuebYOKr8OeBE/0ujaw=	2020-01-26 15:15:24.09455+03	191
243	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiJlMDEyZDI2Yy0xYTQwLTRhNmItYTNhNy1hZTJhYjQyNWEyNDUiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiI1NDE3MjM3MzUiLCJleHAiOjE1ODAwNDE0MDUsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.BVp634YuUhAfTac73Diq3zHXfkwzTkdNV7K_4Ti78Y8	nidcguNJiY5O2sckPfgSqp0OVe5Y7oOB4003/nnVPzk=	2020-01-26 15:23:25.800586+03	195
244	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiI2M2JmNjA1NC1hODliLTQ1ZjctOTNmNS1kYjgzZTU1NmI1M2QiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiIyNjU5Nzc0OTMiLCJleHAiOjE1ODAwNDE0NDksImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.KkOhSC_fhr8cRinaIoBsdQmXs_APsno3n1Mg2W2_Od4	3y7GWfn6v0FGFdrHiQU+dYrb3/TjrO27tGj0Yqhfg6o=	2020-01-26 15:24:09.94588+03	196
673	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiI4NThkOWZlMC01ODQ1LTRjNjctYmE4YS1lNTE3MDgyNDExZGEiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiJVQzN4SW40TVFVUjBnTHlKNUJMbC13emciLCJleHAiOjE1ODAxMzQ3MDUsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.83KeIeGEigF3Mz04OLnsES8lVwKJrVwXLBTh9u0ZrXo	rRnlzi8/JgnPpBeTiPPdA8nw020AOAtPEkzhke0lRNk=	2020-01-27 20:03:25.672902+03	572
237	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiIwNzJjNGE4Ni1hMWQzLTQ3NTktYmE1OS02MDQ3ZjliYjViNWUiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiIzOTM1NzU4NzYiLCJleHAiOjE1ODAwNTM4MzMsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.Gl9luCop3XDFBZgUOq51gxNEYVO4YGD6WfAukfcC3zE	pDzQYPMs3s4wKm2ZKw+YbY8ifijIyZkTj297XQjwDiU=	2020-01-26 18:50:33.020395+03	190
724	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiI0ZTgwODFlMi03OGZhLTQzNjEtYmQ2My0zYmYyY2JhYzQ0MTciLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiJVQ25DWHpIVmdhTXdNQmpNN1lWOGwwNXciLCJleHAiOjE1ODAzMTM3ODgsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.W4RJmsWZ9gzZn9pfmdarFR5fgpCW94lIYLwaG_aU-Vw	7SAx38e6wOc6Nzokvgeu4qywdNPexx/kidSNplLnbAc=	2020-01-29 19:03:08.439651+03	612
755	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiIzZDJiYjIwOS1iNGE2LTRmNTMtODVhYi1kODA4NTVmOTlhNDEiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiJVQ1JXVy1GVEtwOG5qTWVxRkZJVTFCZFEiLCJleHAiOjE1ODA1NTYxNTUsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.fkTUjZOQrk8qm4juzzSCLSBSqcfjRx1AxTJGN8QU3vg	9FqAd1XQMZARhhZyaLtzdLXs6xrYBjZc4WDk4pcAYN8=	2020-02-01 14:22:35.082387+03	638
541	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiJmYzEyOTQ0ZS1lZGUxLTRhZTItYmRhZC1hMDFhYWQ5ZmEzMzAiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiJVQ3dBWnVQOTF2RjBReFU1cWQ0dFBUQ3ciLCJleHAiOjE1ODA1NTYyMzUsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.cG28u4mP8kilX_sVIMNBPPOIH1x8kSQC9DQ_BeRXuB0	36nUrC3lyWmrTIBPfd9P7m0N5XPYkhawgqjU+f2KBUk=	2020-02-01 14:23:55.941805+03	466
760	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiIyMTU4YzNiOS0yN2I2LTQ4ODYtYjNlMC00MjQ1MmI3OGM1MWQiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiJVQzNzb08zZUdFbnFOQ3I3MW9rRzJ6ZXciLCJleHAiOjE1ODA1NTcxNDgsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.J4Wn7GusyL7cGfpTOzARgtZ6_IibKfnOf4jb5AWxZBE	pNBIuTBpiKNZdKP1FSliuYZ6izE9pR4rbASnkLJYDIs=	2020-02-01 14:39:08.476097+03	640
761	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiI0MGRhNWFjOC1lYWFkLTQ5NTEtYjI4Mi00MjZlOGJjMmUyZDkiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiJVQ0RSTWJIaTZYMEJndTY5OGpwaVFQd1EiLCJleHAiOjE1ODA1NTc0MDgsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.Yy5cM8UIdZwFYWRskVN7-y2XSE9zvlVrUI6pyHSlex4	P+n+S1yaRETvZUhHanhtnjweAlSwOUHZ9Q3/GlLBWs8=	2020-02-01 14:43:28.943288+03	641
240	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiI5ODBhZjA1Ni04ZDFlLTQ2MDMtOWUzZC05NWIwNWRjYWNlNWIiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiIyMTE3ODk4MjQiLCJleHAiOjE1ODEwMTM5ODksImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.z6i6gjVFfcdlVIDqOvb0lU7foLbvbyYzyCIghqgG3O0	T6bm9tkQI1XwBdHzdUzYiBZ4aSkwFpYxwCSsfZACR60=	2020-02-06 21:33:09.270916+03	193
813	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiJjMTFiYWY5YS0zOTdlLTRhZDUtOTY5MS03NmRlZGE4OWFlNTkiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiJVQy1yWU9HMU1TRTUtNVZydXpyNGZYNVEiLCJleHAiOjE1ODA1ODc2MjUsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.N7x4dSj8ywObpMQ3j_tfnWkBKKSZV8s7yO-mGbpHd-g	nqQLIdbrE0+GYvojojhFhs2xqq/cOzOa61T+lLD3pKY=	2020-02-02 01:52:05.602936+03	682
221	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiI0YTMwOTkxOS1jNTUzLTQyZDgtYWRlNS05OTdjYjVlYWQ0MzAiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiJVQ2EyX0NGY0VfeXd0T0liU1l2UjBoMkEiLCJleHAiOjE1ODA5MjU1NzYsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.i81UaUB_9zb6p0BVMHID-I6BVE_1rZQikmFMfLarMVQ	bd1dYAvMkO0gkG+cThFPgWETttA5dRtDwU7M1YUeRu4=	2020-02-05 20:59:36.797055+03	177
103	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiI5NDM3MmYwYi1iYzNmLTRhMTgtOWIxYy03MmI1YmZkNDI4YTEiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiJVQzh3Ujk1WVRrVVN3M0wySHlmQ2dqbnciLCJleHAiOjE1ODA5Mjk1NTgsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.ohNYxsCAlX83jankb48edjDmI8ePC7eXEgW0N-YRvns	tdbgJwCkjtfmXl3bwWkROEleary9KP1TapWV0caPt+c=	2020-02-05 22:05:58.850018+03	75
219	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiI3MWMxMDRjYi1jZWIwLTRiNGEtYmI0MS0xY2UyMTkzNDI3YmIiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiIzNjgyNTAyMzYiLCJleHAiOjE1ODAwMzkzMzgsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.J5EPJtPxybaLprePw375QB1A5S0LNQIBvSPkncyywPk	+DntipoTgDHK/QOco3EGWbJnSUgI6PzJxanPO7//sp0=	2020-01-26 14:48:58.97873+03	175
223	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiJkYmNlMTZkZi0wYzE4LTRmMTQtOWFmNi1hMjllNzVhNmQzMzgiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiJVQzlKRmhfaE5ocGRBeW45dm5tSTZJLXciLCJleHAiOjE1ODAwMzk3MDksImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.EUwlMSksJ0i7xEoUp0at6pY-w4zh_L5gUVGco0k_Dak	lcFtC4tygUW3bJ7UjXiXHyLEK9jC2ZgTanvjQnzEGwA=	2020-01-26 14:55:09.403552+03	179
206	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiIwNTYzY2M3MC1kNDg5LTQyOGUtOGZkNy03YzhhMTQxZjQ0NDgiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiIyNjY4MTcyOTMiLCJleHAiOjE1ODAwMzk3MzMsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.XzwqhV0d3jiJ2OZSwVGHb7H43vwYcLQiGbmvmaCoKCk	xQTJXE+Phk71G8GJmzahKG/zM3gYrUyIM35Iqr65z5o=	2020-01-26 14:55:33.851302+03	164
225	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiJkMzE1MGQwMS01ZDgxLTQwYWUtYjUwNi0xYzM1M2E3YTYxOTciLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiI0NTE3NzIyNjEiLCJleHAiOjE1ODAwMzk4MTcsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.VrG3JEnfIWMUt5GhQpcEGT-wth3vJ_Nl5OMO1q4VN1Y	qnG/q0Vs4xIjJEO+hLt6x1yFNhGDTF0lUSB6WmhedCs=	2020-01-26 14:56:57.915505+03	181
676	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiJhM2MxNWYwMy1jYzM3LTQ3YTktYTc4Ny1mMmQ5NWJhZmQ4MjYiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiI1MjMxMTk3NDciLCJleHAiOjE1ODAxMzkwNzksImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.fPojwdIJsu3SdYzWBvoKkRzLt9SxDl2e8AITnn6OO-k	V5yIcfPlnBr7x8vOmvMeaWvE7nQzfDvdekOfbvou//E=	2020-01-27 18:31:19.600227+03	576
234	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiJiZTRmZTgwOC0yZDZmLTQwMzMtYTg1My1jMjIyMzg0NDY3ZTYiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiIxNTUxMTg4NTkiLCJleHAiOjE1ODAyNjkxNTksImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.zb4RGK-qIcI1ChxiId1408Z07lt1HkvfSaJ6FeuUsvY	BtW9j0wm018Z++V/Y88LOj+kowc/iUEEot1eucuRqrs=	2020-01-29 06:39:19.264014+03	187
235	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiJhY2NlMjBjOS1lZDg2LTRkNGMtOGIzNy0wNTQ1M2NiMTAwMjYiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiJVQ0t4ajVhbGlCWUlPWFlkTG9mNFl0V3ciLCJleHAiOjE1ODAwNDA1NTIsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.sJIH38V68qcBjmjl1PvvpUfriX6qdZI9dSZUGlVq9oE	2kzV1nfhrJZ+gCmGqquBFCsynP1IXud19kyadXVvgR0=	2020-01-26 15:09:12.604833+03	188
239	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiJlMmU4M2EyZC03N2Q5LTRiZTktYTg2MS0wOWE1MGUwZGNiY2EiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiIzODA2MTIzMDQiLCJleHAiOjE1ODAwNDA5MzgsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.F6PD2XyZTRtdEd5yCbxxS1nJBt5svN0uIPUIaAoFPxU	rMrWxN5pgpE3ie/tLGsFLGaLh65Myyv8g+imJa8E4Mk=	2020-01-26 15:15:38.928764+03	192
247	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiI4MDgwNjJlMC05ZTgxLTQ3Y2YtYThmZC04MGU1ODIxZDg1OWEiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiIzMzQ2MjcyNzYiLCJleHAiOjE1ODAwNDE0NjIsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.wEqykqLkgTWW2Lq_bPonk_WC5VrX25tAGk5VoHMAFgM	eKUhtY1BlyHjqz/4bFaeHqWpZtS+nnnuvx7OdqJnJQA=	2020-01-26 18:09:22.615994+03	198
218	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiIzMTg5YWMwNS0yZTFmLTRlMjctYmQ2YS03NGViOWUwY2YxODgiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiI1NTUzNDQwNTciLCJleHAiOjE1ODA1Njc4NDksImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.Wcfzis8Ucun5Krk3nx1e23d_7pU62waegz9scgDmQI0	KNRNrTp2Tbo2P0sYtiNJv/EfANmv9TQieSlnkXj5xqM=	2020-02-01 17:37:29.922093+03	174
269	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiIyYjRmZDE1NS1lZjk0LTRjNzUtYWJmOC1kMjJkNjU2NjljMWQiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiI0MzY4MjEzODgiLCJleHAiOjE1ODAwNDMxNTYsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.ytbtEgGvzPblB0g_PTrJ6wd-kUxoQAqdSw4sZKNsMYA	wtqWqNiJR96QLzkesNd5/6u/1pc71QaS9ugK556f++k=	2020-01-26 15:52:36.2057+03	218
263	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiI5Mzg5ZDIzOC0wNmM1LTRiOWYtYjJjOS05ZjExYjI0NjZhNDEiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiI0NjUwOTI3MzEiLCJleHAiOjE1ODAwNDMzNjksImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.5EeM1H6th6UZLoCvRcYZSxaMlVMHylzxLmPClp2navo	efeRP5x6SwehZwT1q8LGCoKjIRSV+sDuyuBj9In3BSI=	2020-01-26 15:56:09.998159+03	212
236	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiJkMGFmNjQyZS1iNzdkLTRkYTQtOTc5Zi1jMjE3NDZiMDYwMzAiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiIzNTM4MjQyMDYiLCJleHAiOjE1ODAwNTc3MTUsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.2ZRZXwKZmEYeFExrsaCPBeE6H0Nrq8Mw0sl_RxNjAAM	oMefIme+Gn8TyGsVAEWSdT1RUhQtGUCyY7Kz/+oXMEk=	2020-01-26 19:55:15.106212+03	189
222	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiI3NTc4OWJmMC1mNzIyLTQzNzgtYTVhNy00NmRhMzI3MjU5MzQiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiJVQ1hzRld2TFZpX1ZqeW9HTzdpS29FX1EiLCJleHAiOjE1ODAwNjY2MDIsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.qqn8MtVNZY_sTIWyL21KhhbcXFLpp_AhzWQhw7j0CMo	wc+icEATXcCRHWJTHYDoNf5hqAaDTdcb+c+xtPGsmHU=	2020-01-26 22:23:22.116996+03	178
224	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiI3YmNiZTc1OC03NzVkLTQwNzEtYTQyNi1kNTliNDE2NDE5YzMiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiI1MzkzMzcwNTkiLCJleHAiOjE1ODExNTc0NjMsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.stk4UYo2E4jHQnUw_y9v4Mr-612rJufeevZ81AKpNF8	93P+lUipDOzJNRchok9i/zuqc401OJ6oMsWVW49Ln94=	2020-02-08 13:24:23.863822+03	180
233	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiJmZTFhYTNmOS0xMDEwLTQ1YTEtYmJhNC1jOGY2ODkxY2MwYmQiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiIyOTg4NjU0MDgiLCJleHAiOjE1ODA4NTAxNDEsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.YhKWyXqrOmtSGkjXBrcelidtqiYroC9oqQpYJAV4zQQ	eXik+lraGqjwCSn3I89YenNiTieRVgi32gORKAx47NI=	2020-02-05 00:02:21.116061+03	186
677	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiI4YjY4NDc3OC1iMzYzLTQyYzAtODg0NC1jYjc3NzU0Mzk3ZGMiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiIzNjQ4NTY3MDQiLCJleHAiOjE1ODAxMzk2ODQsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.-TpS-uHaNQMt7p_38I7Y0Qe_JohkHNK-9o4Bcb1a9Ms	rer1lzmuBynR9g6S5Qu6omDidGjyWZcBSD7u1fnoR1I=	2020-01-27 18:41:24.717874+03	577
241	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiI4YjljNzhkNy1lYzVlLTQzZTYtOWRmMS1hZDFkMjUyODA5MGQiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiI1NDg3MDAxNDAiLCJleHAiOjE1ODAwNDEwNDcsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.yDLLmDMyrhys30WE3T26WKgAfEyuO0coD-i_XVoDeHI	/OuC52E2vp0FmZKMCkGnbMOZDkfjWZEE7HKc2tX3vPI=	2020-01-26 15:17:27.736773+03	194
245	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiJjNDZhNzNmYi1mMWFkLTQ3YjItYjM1YS1mNjU0MDEzZGIyNjciLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiIxNTA3NTAwMjciLCJleHAiOjE1ODAwNDE0NTgsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.XhYeqad070z7RYFSNcLbIHmz2S9wgWijHEchKvQhkp4	vzSnENjEddtOnLopCUvHm6sRwFkxV8uUdWxjoJs26Tw=	2020-01-26 15:24:18.91778+03	197
229	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiJlZTUyN2U2ZC05OWVhLTQ4YjYtODc0Yi01NDNjZWUzNDgyN2MiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiJVQ1pMWkppUjlid0xoSlJocDNwY3F5QVEiLCJleHAiOjE1ODAwNDE1NjMsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0._MgwhHjVQXRJcvzVOK8W-052SVzGU3C3dOFbX-5l6cU	sUEsEC6dM0ch/G0ZxgUu2Np/6GZiCXPmLOy84j3i0Oo=	2020-01-26 15:26:03.233301+03	183
251	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiI4N2JhN2NiNi0wODk0LTQyNjUtODQ3Mi03NWJkMGM4OGJiMjkiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiIyNTI2MTkzNDMiLCJleHAiOjE1ODAwNDE1ODIsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.ncqf4AD3P-2YkXH_HuTbl4X8_L3UBS_GS3l1xjaOAt8	4zUAn2Fits9R0uve0rNTDkHqMkrMy0VmKM4rq+oi09g=	2020-01-26 15:26:22.004909+03	201
231	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiJhZTBiZjQ1MS0yNTc1LTQ1MWEtOWYzOC05ODBhYzZmMTBhYzYiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiIxODY3NzA3NTciLCJleHAiOjE1ODAwNDE4MTIsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.L3mXu8BgNHiQIfzwczDxNV0JHovZlhOY0qXOH57YRjk	R0N/VAgtBL5yAT1Beobgz1qCKgcCwxWsCYcgUnXf+Gk=	2020-01-26 15:30:12.450763+03	184
78	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiIyOGI5NDUyYy0yZmZmLTQ1ZTYtODJmYi04YjcxZjkxYmY4MTUiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiI1NDA4NDg5ODgiLCJleHAiOjE1ODA1NTcwNzgsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.3yUJsNUTaOevoP_bCR0-VYd_IC2nKVB-5148VVTwV6Q	tz9OevCOUwVUZcJeXd8vc7goBmTpOLCxsDw4W3hQtqs=	2020-02-01 14:37:58.908897+03	54
814	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiJjMjJlZmNhMC1kMDdmLTQxMDAtYTU0Ni04OTIxZDM3MWQxYTEiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiIyMjA3NjU3NTYiLCJleHAiOjE1ODA1ODgwNDksImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.2iimWRmuUUu7Pucfe0eCjIUQBTtHHurc9Q-1r2c6vxk	3cX+S+lgcYjmKrXcuF+zDWdNJNBVipOYzAqq6syW57A=	2020-02-01 23:14:09.898284+03	683
815	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiIyYWZjZWZjYi0xYTIzLTRmNzEtODIwYy05MzQwYzNkMmIyM2QiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiJVQzdlZTZHcEh5d1ZlamtuclhTWjJRNWciLCJleHAiOjE1ODA1ODgzMjMsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.uNYtwbY5u6QW7de7Cn7D74ByRVNeo5WtO1cym2TFnsw	4fEqyCGnYsJ8JLTH3z1iP5S2MX1GBCnyNkTZBpGBOEw=	2020-02-01 23:18:43.578246+03	684
274	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiJmMDNiOWQ2NC0zN2UxLTRhNGEtYWQzZi02MTYxYTY0M2UyNjMiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiIzNzcwOTEwNTkiLCJleHAiOjE1ODA5MDE5OTgsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.GNeDJjQIE3s4xjm9-u5Qb_khzRRrC_-_9nwSbS9CJVc	xUcURJNNyQFzx59tteX20AZVa4NrzSwzoDkW49gDfJk=	2020-02-05 14:26:38.392578+03	223
822	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiI0YWE0OGVhNS00OWM2LTQxNTgtYTY5YS1iYjdmYjBjMGJjYmUiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiJVQzFaYklkNVJwekFJYU5QQ1E4UU1WN3ciLCJleHAiOjE1ODA4MjQ3MzUsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.lCpj9sDq3rpjsqggx9yL56Ml2SDCm-eU3C6brQhESUg	Ttmnz5l6q5bhewzpo62IypjkPVm3EoG+mRtiqd+Fx7s=	2020-02-04 16:58:55.249987+03	690
851	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiIyZjYxMjE1Ny0xNmM0LTQ2YzQtODQ4Yi1kNDQ4ZGY5NTI4YmQiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiJVQ2dVd05EM0hzN1NZWHg0d25jbl9pR1EiLCJleHAiOjE1ODA5MjQyNDMsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.8C-FIIJCZBN3h88wlcbwrj803TFuTlCtj4WYvozT5Eg	xqfSL72ngflQRmN+31/XNohMWIuu60UZxv/EwQ73JZk=	2020-02-05 20:37:23.445863+03	710
257	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiIxYjdiNWQ4Ny1iZDM2LTRkMDgtYTFlZC1jMDhjZTMwZWMyNDQiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiI0Mzc0NTE1NTYiLCJleHAiOjE1ODA5MDk4MTksImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.0NbEW9AUsfY1nIayxKWFdvlOKuqZTwfAQYMfcae_Q-w	xjFmmj9sfoXKpgshj/K9d7Z/Jhya21mnZbymdjeaAPA=	2020-02-05 16:36:59.550636+03	206
847	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiJhZTg1YzgxYS0wYmM3LTQxNDItYjJlZC1hYzY2MmEwZDFkZjgiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiJVQ2tDUnF1V2FlZlZ2Q0E3THkxdGdaVWciLCJleHAiOjE1ODA5MjAwNTAsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.bbKivD4H6XPux1Rfh3vHcowV3aa7pXyi5bv9LvpItL4	WttunBXna0haqWJGFUWqpA+7AW4733lwDwJHtpb1Kl8=	2020-02-05 19:27:30.306762+03	707
852	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiIzZGFjNGI5OC1iMWU3LTRiN2QtYjkwNC1iNzE4YTdlNGQyMjgiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiJVQ19tcUNhTVE5NXk3Y0xIck5KalBMOXciLCJleHAiOjE1ODA5MjQyNzYsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.blOvn4yOJ-5CCL4TJABlnk8Oy6-deXHWxIHZ42gMghA	3Z6J4LONVzb2dbcBS5G8+5kAcduTg57zk8BIUusUE3U=	2020-02-05 20:37:56.176553+03	711
446	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiJkYmMyNzhhMS1iMDZmLTQ5YjQtOWE5NS05OGIyYWZkOTIyMDAiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiI1Njc1ODQ0MDkiLCJleHAiOjE1ODA5NzU4NjUsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.VTCd6INjmfsQ3x0i_sqX3no1vVw_9EPiieqI5IUa-sc	aVOhegLUpfkQcBA75V0hVIOISc186WRf2THy2OwWyRY=	2020-02-06 10:57:45.15517+03	379
741	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiIxN2YzZWRkZS1lODUyLTRjNDgtYmFiMS03OTE2NTgyMTlhN2MiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiIyNjkzNTQ0NDQiLCJleHAiOjE1ODA5ODQxMjcsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.p7HyDpcTyj_Yb3PG-E-YiYUZhCQ7mP3nL_bLCuG9-X8	MKyKBb6nDdMj304E/KGM/pnN9p6S4k9wnU1g3DYltls=	2020-02-06 13:15:27.644677+03	627
250	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiI0ODY1OTIyNi02YWY4LTQ1ZDMtOWU3Yy1lNGFhYThmNzMzODkiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiJVQ1U3SHc4cGxyOTREUHBCbEVRZ0N2NGciLCJleHAiOjE1ODAxMTU2OTEsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.0RyNqx3qYe_MTahLS7K-BzYQvfaTwVczQld0unZHC78	hbSbSoXuxZ4zeuk8bGzlX9QcKxfCiGKesM/2DsmqQZ0=	2020-01-27 12:01:31.581046+03	200
253	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiJkNTJlYmMyNy1jMTAzLTRiMDktYmFhMC1hNzFiZjVhN2M4MmUiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiI1NDQ5MjMxNTIiLCJleHAiOjE1ODAwNDE4MTQsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.-k6V-iY_VOaHl3AczFIZT2CElujJXjE3Graa8300P4o	ewZpZHYRmUGrnTiOEsH348F1BHQdbuoHuqV/PCX+/JI=	2020-01-26 18:15:14.321029+03	131
254	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiJiYjM2NGZmMi01NGQ5LTQwOGYtOTY3Ni03NTY3OTMxMTdiODciLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiI0NTc3NDkyMDIiLCJleHAiOjE1ODAwNDE4NDYsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.ShE62r1uu8JwYYxysjCeeFhHpaUmO5l1OZmO1joNDSA	Pemrt4iH3F4qCvSZOXrQdw4ppRZnlvhslhsOmnt/K3M=	2020-01-26 15:30:46.134158+03	203
255	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiI3MDc4YWNmMy0wYmNkLTRkNmYtYWNjZS01MWNlNTlhZWNkZDYiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiJVQ1lKMHM0V09JNEIwQUhkTmdDVzRVTVEiLCJleHAiOjE1ODAwNDE4NzAsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.bTBJt-ItwdYQ2IUj5V6FpxV1jzUBXlJHrzYuPzTCnuE	WBjslDBEOIR1u7pQENgcsgIHOzsvn5NiWwvw4yYR8F0=	2020-01-26 15:31:10.932423+03	204
256	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiJhYTM4MzAyOS0yYjg3LTQ0Y2EtODViZC1jZmI4YWQ2ZjdiNDkiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiIyODk2ODk0OTciLCJleHAiOjE1ODAwNDE5OTMsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.kF3XSz6q9AQqcFfltldr6nBf5uuj8wICpAHDEwP5VYE	Q26fM6B71f7xsqRP8Uin0Az7CTBmhQ9PnmMP106N6AI=	2020-01-26 15:33:13.485342+03	205
258	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiJjZGI4NDU0ZS01M2YzLTQ3NTAtYjljNi00ZGE2MzRmZTc2NWUiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiJVQ1ZjcWozbTE0eERwSUNkS2lRMWFOU1EiLCJleHAiOjE1ODAwNDIyMDIsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.aJad6zpBV3UQQUme0Z7gKTrpS8VtVcjWd-0EXpya5og	WUSJ+4cA2R3kGwXQq1L3xknn5RBDyle2BHkFGy0kJ4s=	2020-01-26 15:36:42.139909+03	207
259	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiJjNWQyYWRjMy1kOGFhLTRmNmItYTE2NC1kNjUzYzAwN2M0ZDgiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiIzMTk5NzM3NjciLCJleHAiOjE1ODAwNDIyMzIsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.gbTpiZ4Yw1CgkYvW-v7Nm0fkv2v5bMGYzf8r6G3tx4w	oAMnA1wHHsQYpWv7fuhmVdlV1RbeVHGWNwIoWwqKrHw=	2020-01-26 15:37:12.036929+03	208
260	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiI2YjI5MmQ3Zi1mZGRiLTRlYjUtYTY1MS1hYzQyNjM1YWU1MWIiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiJVQ2ZLaWR6cVhXTE9GdFIzb1JoVnBoaHciLCJleHAiOjE1ODAwNDIyNTYsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.p2Uv9-8Mv3eOg1TncbytA8eZs2a3icH7lgLbLWZnBog	fp5QHpNis3kCBqPse8nbcEUPp0zMgHIw4bb1l5qw+SI=	2020-01-26 15:37:36.174386+03	209
261	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiIxMjc4MDE1Yy0yOTQ1LTQ3NWMtOGUxOS1kMmMxYmU4Y2Y3YmIiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiIxMzI0NjA0ODMiLCJleHAiOjE1ODAwNDIzMTksImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.rMaU5kyJrlESdfaUKu6CBpgfuaw5XdWYoYsCr_PeuDs	/oUiHKnWd7n8gyVQyIQUpYQ3Oeh7VooV6qqEVCirybI=	2020-01-26 15:38:39.267318+03	210
262	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiIyODZiOTkzYy1lY2I5LTRmMmItOWE1OC03MWEwN2E4YWIwYzkiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiIzMTU2NjAyMjIiLCJleHAiOjE1ODAwNDIzMzYsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.jEZTy1oT935B2YczurbcA7z3robzhMz8C7WcsajolkM	zbrqN2Zkncrmnp7YDwe4M6AwVI4a5BM0Ud5gj0lEO3s=	2020-01-26 15:38:56.253714+03	211
88	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiI2ZDcyYWQ3MC1jODM3LTQ5ZWQtYmVjZS0xMTk3NDhiODg3Y2YiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiIyMDc0NzM0ODkiLCJleHAiOjE1ODAzMTY0MDUsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.yxl1anx04ZEGjpIQBHnkg0gO-c4k9r4SEmJq9ELjzwQ	GMGqo/rrDclftYnW8kH8TXa4wvVJqPsxyw4BV6KA7bg=	2020-01-29 19:46:45.443827+03	63
264	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiI2ZDg4ZWFjNy1jOGFjLTRhNmEtOGViZi1jNDM5YmIyZDJlZWYiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiJVQ0ZBRnJEVVFvcFBsMEUyLVlmXy1hOWciLCJleHAiOjE1ODAwNDI2MzMsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.pU_EGgbl6PLwm2_PR3Qna-2VEhf7jNkdRshXQ_F4nz0	UB5N+UBs4g7PXE4pg99C5bV3GLuQAbBCPzbWx8jZ45c=	2020-01-26 15:43:53.909771+03	213
265	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiJhMDZjNjlkZS1lMTIwLTQzM2EtOGQ5Mi0zMjQ2YjJkNjdkODkiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiI0MDU0NjY3OTYiLCJleHAiOjE1ODAwNDI3ODksImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.2kZLwZ4HWTuc7Zv31iId1_mUZmRg0lKg4dxTvyI-128	6+DpGej0Ml9PzIqn/VXVgOgNHj+Rp2lZ1rr5MKtUYiA=	2020-01-26 15:46:29.678691+03	214
266	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiJjNDMwZThkYS05YjViLTQ5MjMtYjljNi0xMzM0NjFhOGJlMzIiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiJVQzJlTHA0MG9NeHdXVnpObFE2d3VOdlEiLCJleHAiOjE1ODAwNDI5NTcsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.dk_fSHUkuvQPh7nRQMELI-s-rwQVWlNnZ75n8VO_z_4	WqH5wDJxX9tYt2BOHmRRVprGLNWM/+OaxzV2bOw9abc=	2020-01-26 15:49:17.602273+03	215
267	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiJkZGFkNzhhMC05MzZkLTQ1YjQtODEzOC00YzllNjM4MWQ2NzMiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiI1Mzc5MzUzMDYiLCJleHAiOjE1ODAwNDI5OTQsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.eAJrboSwyLGgRuHTPNZluURvN_OdRnzhhUl_uvtSFS8	mVfT8868VyX88HjNF4rGUQvC7CKmYnuP8KY6nuVXsL0=	2020-01-26 15:49:54.034877+03	216
268	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiJjY2M4NGZmZi1lMWYyLTRiYzEtOTAzYy04NGRmNTlmMDIyNDEiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiJVQ19PZm4zOE5WLVFjMHNVMnpuZ0JvMGciLCJleHAiOjE1ODAwNjExOTQsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.LcVnpvyaUFBHpZUJWFEQlOYtf2rPsa7rWNBr7h2XbhM	RwPkU75C4zmThbxndX5Xts1nX/oyaVMPVY9qQ3TabEA=	2020-01-26 20:53:14.475882+03	217
270	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiJiNTg3Y2Y0NS1jZjFmLTQ4NmUtYWZjMy1jZTkwNDlhOTMyZDkiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiJVQzJ2QmNtRGlVM1NlN1pOM19odGc0ZXciLCJleHAiOjE1ODAwNDMyMDQsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.ae9yvlnyfnYmI7VpWuLsWfpHyRYFBwi2wx7dnC1S-pY	3bbTCMdlyr+uYfeMejCIRMjVSf/d9hGFXqczNwrq2qU=	2020-01-26 15:53:24.008252+03	219
272	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiI3NzE0NzY4YS1iZDcxLTQ2N2ItYWYzNC03NTgzMjJlMDg0ZjIiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiIyODkxODIwNjEiLCJleHAiOjE1ODAwNDM1MDMsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.2zKU0M_-c66UrXXiMEdZLtkPSrBYQgGq0omlNdwGpbU	D0LID0SszhT3Lp/2o6Z+sNWt8zEJCdPHqFwmgx0rgR0=	2020-01-26 15:58:23.290974+03	221
276	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiI4ZmYwYjdlNi0yNWE1LTQ2NmUtYjVmOC1hZTdkZGJmOGVjNTAiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiJVQ2prZFVjTXdEeXFZNEFtWnNuUEk2QnciLCJleHAiOjE1ODAwNDM4NDgsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.3K7ReaPebsgALl9qUbHvzAEZgflnXSlLjsuAVkT1Hng	NZ1pWyJ8VWxgcjzgEs7Lc3Xy6wKq16+IenWEUeSwYyE=	2020-01-26 18:49:08.592393+03	224
278	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiIyOWM4Njk0MC1kMTMzLTQ4YjktYjIyMi02MWMzZmIxOGZmMmEiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiI0NTUyMzk1NDAiLCJleHAiOjE1ODAwNDQxNTAsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.t1UzBxnr2MmnNvt0E_YneL9UV1h6AXuBJqlfkS5p8ts	nX466MAylaJhi5UhyjJAZe8aCY/pufAxk/bwyaA/45Y=	2020-01-26 16:09:10.940429+03	226
279	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiI4ZWE2YTBiZi05NzhhLTQ3OGMtYWIxNy1mNzkwYzE2YTYwZTUiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiIzNTE5MzY1MDgiLCJleHAiOjE1ODAwNDQzMTQsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.VMteA0u9MIWfPT5TGOgm3WWhjCqt2F1AwUpQH4VpcwY	w7N6S5xfVyXz+OekXuQ5h5w03XSQaH45eWq93Ri/xEg=	2020-01-26 16:11:54.188442+03	227
281	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiIwMTBlZTA3ZC03MDhhLTRiNDQtOWRhNi1jZDVkMjJjNjY3MmIiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiJVQ0xBVGhqcFhIekI5czA3VEt1cHhTelEiLCJleHAiOjE1ODAwNDU3NTEsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.mkW_ktztY5KUOX_P9lmGWeXEmAokglnwMehY6Fn7GiA	+Dt7RqBquyramqgipuo5jlvQGHVtkOFtFeetPNaz59w=	2020-01-26 16:35:51.13089+03	229
301	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiI5NmRjMjRmMC03ODAwLTQzY2MtODBiMS00ZjZlZDY4NzA1YzAiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiJVQ0xSRVdmZU1mQWxLVXgwaS1tNElXeWciLCJleHAiOjE1ODAwNDcxMzcsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.x0OoHJe8p9U5eAkCWv4ZS2oLuimKrTziYGyKmsKgrF0	XHZ8Qqvj93jnEcIcYt0mBDWBG5TjvLpuzYlknQYVuAU=	2020-01-26 16:58:57.572952+03	247
298	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiJhNTM2YTAyYy05MmMxLTQxZDMtOTFjMC0yNDQwNjFhNWUxMWYiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiIyMjM4NDA4NTMiLCJleHAiOjE1ODAwNjgyMjUsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.a9Miw3379jZL4YpuV7S3aZpHGtdwml8m92E1xIk8H1Y	jPAsKd1yCzodL0von71+2GOJFzE31aj6Ea103o+PPds=	2020-01-26 22:50:25.758866+03	244
300	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiI3MjI5YjJhNS1iODZjLTQ1ZmEtYTJmOC1jOTM3NGE4MDFjNWEiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiIyMTg1NTgzNTgiLCJleHAiOjE1ODAwOTg2NjEsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.2xGaH2D6TD_xu4xjkgH1OJAKUukKYVaZur2dl7XqBss	ELUd+rEULTlSqfExZkd08XQiq792uNfOJzFyrzrSoeU=	2020-01-27 07:17:41.723293+03	246
726	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiJlZjljNmE2Yy0xMGM4LTRjN2UtYjExMS0yYzY1N2FjZGJkZDgiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiJVQ2x4eHpTYUZXLWJVWVlndFVJWWNYOHciLCJleHAiOjE1ODAzMTczMTAsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.wUWdv2Tjst21ecx8o5jMpudqIL6wkL-jaUkEEP6vmyM	d3JxNb7vqqHKFmDwt2b7Pp9TPZk4VjriVVNXbw16iJk=	2020-01-29 20:01:50.10103+03	613
843	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiIyMWRhNTA0YS05NGE4LTRjYTYtOGFmNC02NjAwMTlhYmMzMWUiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiJVQ09ZdnFlay1VcWdNc1FBODB0Nm93akEiLCJleHAiOjE1ODA5MDE0NzMsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.H8f1TrpfmajJrQs50RDkCOWLy9KpYGrqo0CMGAfKfyM	2/T3I3hwJizPDP84ijsS7sctVMAsPIH1QmTUUheyzhg=	2020-02-05 14:17:53.150957+03	705
816	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiIxOWI0OWYwZC0xM2FkLTRhZjItOGEwZS0yNDZiOTI5NWFkMGIiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiIyNjE0MTY2NTEiLCJleHAiOjE1ODA1ODk2MjMsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.h19SZ1prFJKKNUSDT3zYbrMPaYs6op-0hRrPHXx8o2o	R0Yeh2xvFgbd8qbzNj17Wnwe+Bfn4c9cbwmcXFJAak0=	2020-02-01 23:40:23.71118+03	685
823	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiI5YzNiNjBjYS1lNjY4LTRiNzUtYmI2NC0xNTEyOGUzZTA2ZDAiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiJVQ3J0TnZhT2N5dXBKbWg3ZmR2aFpVZ2ciLCJleHAiOjE1ODA3MDQ0MDQsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.gkKwz7cVvnjnhkNhjf__I5Zxm3ubpbnOxt3mK4hEWII	kzSQuGkcvWk7C3Q2LM5gJgmhm0Ua64q2Fw+CX20E36Q=	2020-02-03 07:33:24.793347+03	691
827	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiJkOTAzMWViNi01NWU1LTQwOTUtYTc0Zi1jYzkxNjE0OGRmZjkiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiJVQ3N1NVVXRnEycmRONTBGcEF0dkNrU1EiLCJleHAiOjE1ODA4MDQ3MzUsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.M_5icYRYJ6xq_V5rFBCoiBMInHiKx-O8Ru9jIDE6qJM	0SUBMkUZYjjJg3WpFT2DWK4ITie2Asqgctn94DG0i4c=	2020-02-04 11:25:36.014918+03	693
271	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiIwODBkODRmZS0yOGY5LTQ3NGItYjM0NS0xYzYwZjI2NzJlZDEiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiI0NzAzNDI2ODAiLCJleHAiOjE1ODAwNDM0ODYsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.uNm_2Rx1WMljN5yU6EU9Y7G5TxjvsrlfnUJsX3cTabg	+jtHCprXbm8OCs8qB0gI+G7EZK3lJI3bCAc9hBp4Fe0=	2020-01-26 15:58:06.284321+03	220
286	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiI2Yjg3N2FlMy00MmQ5LTRhZjAtYmRiMS1mMjVkNzgxOWQ4ZDgiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiIyMjg0NzI4OTgiLCJleHAiOjE1ODAwNDUyOTEsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.rYhnJLWnPF7FfekbRT4M_UrFOQHuJdBIfRFD4z5OzRQ	CwFlfXvvqjXTk1XdVN3mX5zUWHCcVQ1tADPwB7R4dlI=	2020-01-26 19:13:11.729807+03	43
287	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiJmZmMzZTkyMi03ZmRjLTQ2YzEtYmVhZi0xYjczNmI5OTNkODIiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiIxOTI1NjE0OTUiLCJleHAiOjE1ODAwNDUzNzIsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.gMeu_j0Mt3CipBdNJtAJimObfcMQSen4CSXVPYm9qCc	T9rrO2WFieU2Qz9NMSioZqEqnRQIdVOuEPcq6xknqOg=	2020-01-26 16:29:32.646521+03	234
289	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiJiZWIxMDBlNi00ZjEwLTQ5M2QtODlkNi1mYTdmMDkxYWFjZmIiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiIyMTA1MjA0MDEiLCJleHAiOjE1ODAwNDUzOTMsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.-uRKdoGFVhkyfu7fR8FedNfpqpRHY1TRKhCDOMk36kI	qy4fmZvLvgUBTfSbBBd3FfzjAwxQQkn+/RyG5qF7hZ4=	2020-01-26 16:29:53.056807+03	236
302	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiI2ZThhMGQ5YS1lNDc1LTQwMmUtODY4Yy0xZmZiNjQ2N2U3MTgiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiI1NjAzOTYxMDgiLCJleHAiOjE1ODAwNjU2OTQsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.GJt3vjgVOS-jgMSsxqR7J5qeXwASfKYvt2rE_f_QFlY	o5C742FZLy/+UQlPtcXb/6chLzhvbHHNI+OMsLVc/Zg=	2020-01-26 22:08:14.141813+03	248
681	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiIyZDhhZWJiYS04ODFkLTRkZTgtYTQ5Mi1kMjhhNzNlMzc1ZGQiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiIzNzA5NjY4MjEiLCJleHAiOjE1ODAxNDQ1ODQsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.2Mw7C6R0J70JVURqajEW9ljn2TctXmzid5jzEa5DBco	6hc7knMcUTqso2RhBVcvEtYnvPiz2Fz/HH+UF5RA8qU=	2020-01-27 20:03:04.70994+03	581
297	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiI5OWJhNDA4ZC1kZDI0LTQ0NzItYTY4Zi0wMjY1YjdhOWRhNmMiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiI1NDUwMjUwMTYiLCJleHAiOjE1ODAwNDY0MDYsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.oMFnBZeLvFipgSVApbKkRRBTAhIFQXm8P1GemfwrpGw	RsBVG06ROdTkKVMikonoRdPB6pAO1x8waO6I0fiKOn0=	2020-01-26 16:46:46.748935+03	243
303	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiI4MmI4OTNjZi1mMzM5LTRkZDYtYmI2MS04NGUwMjYyNDc4OGQiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiIyNDQzNTM0OTkiLCJleHAiOjE1ODAwNDc2NjksImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.sOnwWJgrtmcIa_Ub1GmDdpi7Y1rMcyr_GhSEt_dYGD4	gDonkkxmdAt3HRbU7bF4XwQbzzV1YKp5vquIAUndzlw=	2020-01-26 17:07:49.803768+03	249
283	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiIxZWIyYWZiNS0xYmQzLTQ3OGUtYjM4OS0xYjU3NDg3MTQ4NWYiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiJVQ29nYWw2TXFFb0tDZ0h3Q3UtVVk0QVEiLCJleHAiOjE1ODAwNTAxMTIsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.j8t0yGvkD1ioRaRmoa-0oNSq8HFEOydLw80f-NrsEPw	uDlcwbN53UOROdAwxNWEX1VDqxPRN1j7fUtu8/6Ejgg=	2020-01-26 17:48:32.924878+03	231
280	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiI1NWY1MjgzMy1hMzdhLTRiMGItODVkZC1mNDZlMzFlZjYzNGQiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiIzMTMwMjA1MDYiLCJleHAiOjE1ODAwNTg1NTAsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.CN8mzia_h27yB19SXQuHx67c4WE6BKO8fRwOzmuAgOw	XD9nsCa/8dl8wz9NZ03beibzCUT23earj7QYTRbU6qU=	2020-01-26 20:09:10.230492+03	228
284	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiIwNjViMzUxMC1lNDIyLTRiZTgtOGJjNy0yNWQ3ZWUzNGRiZDgiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiJVQ3RIc2l5dnE2TmF1c2VIazNqcUVXZ0EiLCJleHAiOjE1ODA5MzkyNjksImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.VHgyURlI_89pzaXuSK7-WgOpq6VPfrHcMvfjqIbzss8	YzxKctO7FVdYLLmFhHGLfQ3SA97oGDn8cAPU/7CxC78=	2020-02-06 00:47:49.007527+03	232
285	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiIyY2RiYjc1OC1kZDAxLTRjNTItYWZjMC0zMTU4YjY1NDM1NTAiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiIzNDE0Mjk2NzkiLCJleHAiOjE1ODAxMzcwMzEsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.5cXQvPpApI1RDf_rLuXHHi3YbaQkQqxz8k2KFd9aGJE	g05mRi5xN4xC/aCSa3VHsGgempXvSOFIYseygj5mcRY=	2020-01-27 17:57:11.723829+03	233
680	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiIzOTRmMmEwNy1hZjUwLTQyYTItYTE3MS0wYzk2ZTlmMDY3YmQiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiIyMzkzNzM2NzQiLCJleHAiOjE1ODAxNDQ0OTUsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.UxAj4vSb7pkxZwHR87Y7bfdUR5MMmMXlaKVyHpqPxAI	ewjvIPQMX/ypOV2qqgDjTxoZ5evKfK90t/qHXuvrZXI=	2020-01-27 20:01:35.240097+03	580
294	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiJmMmVlZjYzYy1kYzQ5LTRlMWItYjE3Mi1mYmRiYzY2OWZiZTQiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiJVQ1ZYQmdUb0duOGFSenpFbEhnUHRwZVEiLCJleHAiOjE1ODAxNTY4OTUsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.quVvJHjAcjeCtlcnmys6cFW0voPY8b199sRWQxwvaZA	jM8oSdvidGWYWAVayfFU3+HUlR1Rkq6X7ouakWwDfEM=	2020-01-27 23:28:15.618181+03	240
728	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiIwNjFhNDM3OC0wNWMyLTQzMWQtOWMzYS0zYWU0Yjg1NjgyMWIiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiJVQ09OVVVQUkw3Y1ltbmd2SzhRWjFQc2ciLCJleHAiOjE1ODAzMjA4NjksImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.Tnw94Gne1FX1dweKSCbJr26J4mYzAK4yqJojcXkfNNc	pPkw8BgN3I/1N0Wr3wacCUuyz8sPOnKB6a4TETYID38=	2020-01-29 21:01:09.07209+03	615
273	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiI2Mzc0YzY4Mi02NjE5LTRjNzktODc2ZS1hNGZkOWU5OGM4NjEiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiI1NzIwMjI5MjQiLCJleHAiOjE1ODAwNDM1OTEsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.yxNSrfuBWfLKlkSoo300glenk1oz9hOTIHEV1QYrcqI	YZT+KG9cI/t4J2PyTSH4XLtdjF/aRNio5f2U8UfCJJ8=	2020-01-26 15:59:51.669887+03	222
282	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiJhMGYxZjAzNS1kYWQxLTRjYWEtODRhMi0yMjY0YjNjYzk1OGMiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiI0MDk2NDQ3NzYiLCJleHAiOjE1ODAwNDQ4NjgsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.5KwSVWX0TMykUPeAhCB8OWAtB7r7jGWe9JHWHBEEbPc	vWFHTv4LJ2h5GFC2sczAhk9c8ZWYutJuEiSRO25LaX0=	2020-01-26 16:21:08.844527+03	230
290	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiIzZGNmNzNjMS1hMmIzLTQ0OGItOTM0ZS03Y2NhM2M4ZDgzYmIiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiJVQzlpNzN5RmZvTEFIYXlGNnIwR0FQVWciLCJleHAiOjE1ODAwNDU1NzUsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0._OcR19lESNCS3pxZByHhYSKkmZOYeAsADs-NpmT37o4	EIUXHZp7cNwnubeCj5v8p+2NtHWyhJObNOloqkkFcE8=	2020-01-26 16:32:55.902823+03	237
307	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiIyMjEzYzY5OC03MmNhLTQ3YjAtODRhNS01NGE5YTc5ZmJjOWIiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiIyMjMyMDgzNzMiLCJleHAiOjE1ODA1NTUzNzgsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.6ccAPX7NeK2gQiHjyXkpqz0Dk7cxtUAhY6Uy6ebyB0g	+1O8yJwi38n6nP19YbF2ouYYWhuFDrCNjKofovTntSk=	2020-02-01 14:09:38.732569+03	253
295	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiI2ODU3YmIwYy0yMGMyLTQ3YzQtODQwNC0zMWYwNjMxZTQ1MDUiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiI1MjgzMDc0NTciLCJleHAiOjE1ODAwNDYxNjAsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.ys-ob1Yr3cxLS44boHr1hNY8exIcB9RAMkeT8g-u9_8	D5cM76gNDkYo4DmfpObxQ+KhZoGMfoXd8b5J6G0aE0c=	2020-01-26 16:42:40.108318+03	241
305	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiI2ZmRiNWQ5Yi00NzA3LTQ4YjUtYWNjMC0wZDE4NWFjYTMwMWMiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiI0NzIzMzQwNzMiLCJleHAiOjE1ODAwNjE1MTMsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.7b1ETEHt1qht1w6R0qBs6KLXcVWNz-AphaowacnEW5w	mypxhGMbV0AzgvEACEXMWeFNCHfiJOFGidpQEJ/2MAA=	2020-01-26 20:58:33.65687+03	251
306	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiIyMjY1YjhhYi05NjZjLTQ2NjctYmI0Ny1jMDg1ZTgwZWRlOGYiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiI0MjMzMTYyNTQiLCJleHAiOjE1ODAwNDgxMTEsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.-D6XM1KJpuofnUTO1XH1R-2WGv-LyPgHZtV5ArCcEGw	CPosmra24IXGCySH60+01WrKm6OyKLrpPByIYsvjxKk=	2020-01-26 17:15:11.937293+03	252
308	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiJiOTFkZjJhZS1lN2FkLTRlNDEtYThmMi03OTI1ZTRmNTc4ZmMiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiI1MjA5NjYwMDEiLCJleHAiOjE1ODAwNDgzMTAsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.k623BT2SfPI0BMY1vMsHkkYiifOudYofs0YeHKpP-jw	CFGfqe9/nGDRV/bfnxdQ4hUYXk551Lm404I2gR4a74c=	2020-01-26 17:18:30.913553+03	254
682	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiI4ZjJlMjYxMi05YTI1LTRjMGUtYWM5ZS1kNjAyNzZjMzgyOWYiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiIyMTY2NjI3MjAiLCJleHAiOjE1ODAyMDkyNjksImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.03F0BoOgw2_APPDGlgJE00VOl95Dw1T5eMOVub9lnwM	Y67qfWqj8Z0SjeUQ0M0pPyuw8mcdjRtnTCoLVpJRWoc=	2020-01-28 14:01:09.939537+03	582
310	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiJhNTcwMGQyOC01ZjcyLTQyNzItYWUxMi1hMGZmYjI0NmI5NTMiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiJVQ0F0bjdWeXMyaXJKLXptd2QxM0dUN2ciLCJleHAiOjE1ODAwNDg1MzAsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.vPDjpUnHT8gkSU_eGK79TzETQS46E1zEFQXEEb9qdpE	t0h2RDmY5FD1tfcSIcc/aXXcJLKbMCCSEhw/SAHv7hs=	2020-01-26 17:22:10.641227+03	255
312	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiJiMTk2NzQ1OC1mYWE0LTQ2NmUtYjYxNC1kZWFmYzJlNDBiMDkiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiJVQ25NT09XVHJBSTltZ1JwbmNQWDk2S1EiLCJleHAiOjE1ODAwNDg1NzgsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.pTUPVZecPL-aav1Zl-0GPIdMRud3-OWXiDl12GJIF-0	Z+rDod/jp1qphKEnSBC2NykxQvN+y0SaLoF1M/Brrho=	2020-01-26 17:22:58.757922+03	257
314	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiI5NTBiMTBmYS00ODliLTQ0MTktYmYyMS1jNTNlOWI5NjdjN2YiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiI1NjE0ODAzMDAiLCJleHAiOjE1ODAwNDg1ODYsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.1uErDfMIreTBXeEHQqyRZwcUDbJL0ro0KQSP1F1giDo	56O5E9vgCS0qqcnTV9JGupJSG42VpMLIb3uqmYzQis0=	2020-01-26 17:23:06.576385+03	259
315	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiJjZDVhZWQzMy1hMTU1LTRmYWQtYTUyZC1kNGNjNWEzZDczNjYiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiJVQ0tra1NHLTc1MU15NTZtcUdsR0NRNlEiLCJleHAiOjE1ODAwNDg4MzAsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.cEg3qFwJoHufEkeWAFe2ZdLQS1Ur07YF66mvDRVngMg	CEFXjJJhGNtyFMcU4OA53FwODD5RDygAtfc4nBoMQRY=	2020-01-26 17:27:10.134346+03	260
817	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiIzMDQyNzI5My04MDNhLTQ3ZmYtOGExNS00OTA4ZTYxNjQzYjgiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiI1MDMyMjgxNDAiLCJleHAiOjE1ODExNDg0MTYsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.KQIh_2m3KSp6T4xdhgSp1IbiEvfICQQ9ebuyQ0aJyV8	2FLIMQm7Qx18Ipz3HdLs6+ai2/LJ6U7k6jaPsFcanUA=	2020-02-08 10:53:36.087362+03	262
729	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiI3ODg5Nzg0OC0zMzAyLTQwNmUtOTE4Mi0xZWI1NmY4OGNlOTMiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiJVQ3BCd1o1S3JaTzdnWG5aVjgwdUxvX0EiLCJleHAiOjE1ODAzMjM1MDIsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.ujYBu2cVJKEXXUlPZ4F-Yb_MyxUDPapbPB_y7a733I0	uZE7GT5y9I1z9/QJCBiXyp8sdJ+v/8etUSszCadGNQs=	2020-01-29 21:45:02.285366+03	616
299	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiJkZmYyZWQ1NS00Y2IxLTQ3NGMtYmRmYy0yZGIzMDdkNjRhMDYiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiI1NTE2MjM4OTgiLCJleHAiOjE1ODA4ODY2MzgsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.ZKB-6pDmn5JGJKDC_R_JDee6lmOjeyFLcbfV_bvp3oQ	mXY5tqHW/Tiv+EgcigxpGsvCxBWNITfFvRb04PGwgr4=	2020-02-05 10:10:38.489806+03	245
848	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiI2NWZkY2NmNS0xMzAwLTQ5NmMtOTNiMS0zZWFhNDcyNTI5MjgiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiI1NzYxNDExNDMiLCJleHAiOjE1ODA5MjMyMzcsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.tIVKh-SQy6yZ5-bvWhICapz6tgNsZanKEXbloOf-zks	MR8keWKu8MQx8fu7R3gUQ2HYuOqHcvtPqIIHdazEnZY=	2020-02-05 20:20:37.664966+03	708
321	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiIzMDU0NjkzZS0xNzg3LTRmY2YtYTM1NS04ZTQ2ZjgyODQ1ZTkiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiJVQ3g5YjlRMzhhM3ZwdENRVHlmRVlMR3ciLCJleHAiOjE1ODAwNTAyMzEsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.FGMYHbcnS2yiunEfJ0QQ6sfIX3SjiVE2Wz7tLqGLVvs	y8UsgU+5J/AhqCh8+/EYQ2e1Wtstn9iR9T0D+mgyWKQ=	2020-01-26 17:50:31.657128+03	266
344	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiJjNTQ1MGJkYy1kMzU2LTQzZmEtOTQ3YS02YTQyMjQyZjczYTAiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiJVQ3pOaU9kRXVaZEhXb0JsWlVRUm9RbUEiLCJleHAiOjE1ODAwNjc1NDMsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.Csi-zP7B0CE0mIO73pqv8e254lemcvNzLyfuZvccwEM	Uro/c/Lu+BhjjTDAXj5OhPiB9xYbnw4KeNHgoYmdcto=	2020-01-26 22:39:03.547993+03	288
326	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiI5ZmY0ZWJjMy01YTg3LTRiN2UtYmVjNi0xZDdhMGJiNGVmYWYiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiJVQ0lMSUNvWWRWelB0Nk5BZmxjdGVXUlEiLCJleHAiOjE1ODAwNTIwNjQsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.XfQzVf3FpVWB5TAdHJOtOh6eS3oUi-FWLkGwd1f--So	dU9whtkxfKwkqQhYTes2nEokkVr+JPfTfXy5lFjDQIs=	2020-01-26 18:21:04.670507+03	271
327	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiIwYWM2ZjE5OS04ZjJkLTQwN2ItOWY5My1jMWEyMDE4MjRiNmQiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiIyMTczNzI1NjEiLCJleHAiOjE1ODAwNTIwOTYsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.x_n-_Num1UiCIegnAyuMJ3faTFjuhLMEHsPDVloEbN0	kUraZaq63r3ACLWHln9p2598W8H8t0aOOhAFPuS4PcE=	2020-01-26 18:21:36.387377+03	272
329	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiJiMDRmODBkNy1mYmU1LTRmM2UtYTYwMy0xNGVkNDRhZmQ0NTIiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiIxNDkxODUyNDEiLCJleHAiOjE1ODAwNTIzMDAsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.Ey_bJJRHmCwiCtXdvlw1xEltBOKTJJ2iBNZilxixWIU	05rtLSslkz7jeunkvLjFI8b6PxHdTN75PGXpB2T57vo=	2020-01-26 18:25:00.179295+03	274
232	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiI2OTU4OTMwMy0yZTgxLTRlMzYtYjUxMi1mMTVmNmI2OTkwMjkiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiJVQ2l3VEhNVy1iaU9qTEZGemp0dUlqZmciLCJleHAiOjE1ODAwNTI1NjgsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.L4vJyvw0_NlAjGR1AIr9HFA0gvlRKKASqeUCWDiFpIg	uKrceW1fqIDhZ80MH+gqhhA75LjVCsvzc/ZymWX85Xc=	2020-01-26 18:29:28.498587+03	185
683	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiI0YzViOTFlYS0xYzViLTQ1MjYtOWE4Ny03MmU1OGNhYjA3NDgiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiJVQ2R6STlBeldtZ0RSNGIwYlk0WFNwOHciLCJleHAiOjE1ODAxNDk5MTAsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.0kU3x96od5EURYGut3xpc3WYQuNIA5XJ0mwkkKf98-E	qR6H5x1ng4DGtIFshPF/oyCNHH8DyYESW12nCgeTsvk=	2020-01-27 21:31:50.564253+03	583
335	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiI0NmQyMjhhOS04OThiLTRmMzUtYWE1Zi00OTBhNmViODdmZjQiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiIyODgwNTUwMTMiLCJleHAiOjE1ODAwNTM5NzgsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.UbdXAJU7NfOHV6HcOHbMY-C4lgG6BEDaxIrtOHsC1Mk	d9KH+IBw4JUKbqDvD4V/zDFGDbRH/mQ6Cm5i/IC8AQg=	2020-01-26 18:52:58.204594+03	280
337	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiIzOGVmZWIwMi03YzZlLTQwZTgtODk1Yi0wNDk4NDcxMDBiMjMiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiI0NDcxNzk0NTciLCJleHAiOjE1ODAwNTQzNDgsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.3ZiFaYxnH3BKD7cwGFHGHqRzGopAwrfdjl0xa7n1j2U	I3JAnAud3ZQ6gf0HfAAVVkv4zkL3+XHr1CoBs+gMU1Q=	2020-01-26 18:59:08.563607+03	281
342	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiI3NTg4YzdhMi1hMmNjLTQwZGItYmJiMS04M2IxNjBlM2QyZmYiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiI1MzY4MTc1NTYiLCJleHAiOjE1ODAwNTUyOTcsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0._k4Ma5VAn6-oiBA6htSPg79in5dgeYkpcDbddPCt8B4	RHWiICWU8fJXCS3+0R/NZI2VDd4pXXWheMd3RFrXSA4=	2020-01-26 19:14:57.588574+03	286
340	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiI2NzdkOTk3OC05Mjg3LTQzZGItYTcxYi05NzA4MDQ1MjAyNTMiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiIzMTU5NDcxMjIiLCJleHAiOjE1ODAxMTkyMTcsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.4QMvntG1ns0alIoBSyw_CMSC2uiD0P48AhzEspZzoOk	eiVnqlh/HOgEkPdPiRzxtODiI+aWVm0whGFoFeUgpts=	2020-01-27 13:00:17.28742+03	284
345	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiI5OGUxODgwZC1hZWQ3LTQ3ZWUtOTA1Ni01YjRkZjI3Y2M3MmYiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiIzMzk1NDUxMjkiLCJleHAiOjE1ODAwNTU4MTAsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.UcQnK5Nocc0TMYQdd1DrrX5d--_P5sB2nskyGRkOcYg	yDTPGp5smwNPff51YjsTvVRTm7axnpg7EH3OAvEz2mU=	2020-01-26 19:23:30.544514+03	289
348	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiIwNjI3ZDBmNy1lMzYxLTQ2YWQtOGQwMi04ZmIyN2M4ODM3MjAiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiIxNTcwOTI5NTkiLCJleHAiOjE1ODAwNTYyNTksImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.79dy-i0rc5GwzL_vcjJ3MjwwNfaX40CHMzGEOnenxOc	S/v2pQJAozur2oLu/Dw5D05qR9tE7gma3xVZmK+9K+8=	2020-01-26 19:30:59.958703+03	290
351	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiJmMTkyOTQwZC04NmE5LTQ4OWMtOTZiNi0xMzMxODU5ZjlhMjEiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiIyMzg1NTYzNTgiLCJleHAiOjE1ODAwNTYzMDcsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.uYTBFYXwNCXwRrUWWh06WmxgQhCcad-4qj05L-1jOvE	7A5orFeQxGGILs7zhDg2jBLPgD5XIWRiF76T5sK9PFc=	2020-01-26 19:31:47.402054+03	293
316	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiIwMzQ2NjM5YS1hYzBiLTQzNjctYmQ4ZS1mZmZhNjA2YmUzY2EiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiI1MDI5MjA0MjUiLCJleHAiOjE1ODAwNjIzMTYsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.RYZqv9SFI0kbsn4giLd6OJUOk-tTtv0CzvrySpAaFQ8	mY/c+NrZCm4v9X7EpTQNLozEH4JPQecj2WuQbunV8eI=	2020-01-26 21:11:56.959367+03	261
350	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiI3NDQ4YzI1Zi1lMmZiLTQ0M2UtOGQwMC0yMzQwMjQyMTI2YTAiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiI0NzkwMDMwMjUiLCJleHAiOjE1ODEwOTMwODcsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.iDCeQ4jru0ZhiI_4QCG303kjW6UvTLnCMkzJDGCOe7E	YkELM8BZ8oTgXYjpB2CgUeJgXGlpq5/dhHCthAD7nxQ=	2020-02-07 19:31:27.590894+03	292
763	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiIxNGEyMDg1NS00NWI1LTQzY2EtYjUzNi0yMDVjZmMyNDljODkiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiJVQ3BaNGl1a05hVDZZRzlGU3ZZX2trNFEiLCJleHAiOjE1ODA1NTkwMDksImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.UcUpI2byrk064pIzlGLE_gPjshggrYyVO8FJ6jhzX6U	u+GMyzENgJqZnv7Jc1LHCx+zuDlYh1yTcZWdXDMqrSQ=	2020-02-01 15:10:09.841448+03	642
322	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiJkZjBlODc2OC1hMDg5LTQ2NjEtOWI2Mi0wYmE0ZDEzOTBhOWEiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiI0ODQwODI1NTIiLCJleHAiOjE1ODAwNTAyOTMsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.QHnjGBFnRKGKzj8ukogoNA0GUfVMqItIlQBYhccLgSQ	86KsBCpYOdIi1MCOijUVVF8MKoOFDkIEY/GPQExVEvE=	2020-01-26 17:51:33.533354+03	267
684	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiJhNzRlMWJiYi1lZjI4LTRkOTctYmQ3My02ZTQwZjU4YTU1MTkiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiJVQ0ZfZ1RrYlVWb0RNeXNFbkxaTGZiWVEiLCJleHAiOjE1ODAxNTAxNzcsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.im7h3dbhLipbXEI6nbqzN9RcvUUzKSbvmdIpAgstcJY	dFjvkDJo5BESxtTdRVC1ziT0PbvIOp4E4GppwerNbfw=	2020-01-27 21:36:17.993673+03	584
318	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiJhOWZkODJlZi02YmU5LTRlMGYtODUyYS0zOWU5NDUyN2U5ODkiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiIzODk0MjYxNzkiLCJleHAiOjE1ODAwNTc2OTcsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.ymJXdM3lrfRZsoHyTVHaSfvaZyxaeGflA1WNvCooT8k	kXAutNDQwNsWVfeJnA7I71vYBn2X48IS/Rsf5Vp9uho=	2020-01-26 19:54:57.695762+03	263
685	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiI4YzJhMTYyNi05Y2VkLTQzYjYtODRmMy1jOWY1NDNlNzUzZDQiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiIzMzgwNDk1MTgiLCJleHAiOjE1ODAxNTE5MTUsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.5s33uQCVtPk0EEPuhp1OiA-g1zQ0OCS5MfEsDIahXNU	PFHFDYBUkVdp91A9uOrDLCR3P48InQlHx+Wv+wU75gE=	2020-01-28 00:50:15.052983+03	570
248	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiJlZTdhZmJlOC0wOWRjLTQyODEtYTgwYy1iOWFlMzIxYjU5MGMiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiJVQ0wxRFNRbHBkd2pFNXMxUnhJSDFibmciLCJleHAiOjE1ODAxNTI2ODUsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.Qn13JWkbvaTysBNbV6tdU4nwaOBIv5oT82DrGbRIhv8	1oDNv9XZk3k2qtcGfzADF8L9fT4oVBfdtqUxtPWZA+4=	2020-01-27 22:18:05.036177+03	199
686	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiI0YWI0NmQyYS1lNjQ3LTQ5NTgtYjg3YS04NjVhZDRmZDU1NGUiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiJVQ0staURkOTB3aWlpNTFxMnQ0TDVwekEiLCJleHAiOjE1ODAxNTQxNTIsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.xpWltNQQioKiYFs33uztgKnIFp8NPBm-dxk1ywwX4jo	qO/fpGz+H+A3+QAinbSy+hxOlhnAcbOeaxzZwsM8uf8=	2020-01-27 22:42:32.759638+03	585
688	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiIxYmIyNDIwMy0zMTljLTRlZjQtOGRkMC01NGEyZDNjMmJlNzYiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiJVQ2NZVHFISU5YVWI0QWJfWkZyaXhuMFEiLCJleHAiOjE1ODAxNTUwOTcsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.YFyIHVhk7Xwa9GsMqycWEt7dFURsrQy2zCVcdRCym4U	RswLgImb/2zUvlSBMMHhkrpvBnBULI+zdQ+6l8uqEjc=	2020-01-28 01:43:17.088289+03	586
731	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiIzYWUzZjBjMi1jNjBhLTRiYmItOTczMS0wNjExNTM1ZjdmMTUiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiJVQ19UQVhsMnRjeDZadkpNTE5WOURnTXciLCJleHAiOjE1ODAzMzY4MTQsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.ikS5LpC4QN5kQmkT2JWssnmtI63RW0j_y3I9-YJTScs	tmGxXEk6dHmtkQYwgVLBVTBddCKdvWmbQNS/ponZhPM=	2020-01-30 01:26:54.846112+03	618
596	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiIwMTEzOGYzYi0xYzdiLTQ5ZWQtOGU0Yy05MDMyZDViNjkzZDAiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiJVQ2FWaXlTYW9VQ1NaSzc1RHE2TEh0S3ciLCJleHAiOjE1ODA2MjU2MjUsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.MomEBg9Fx8Pf3AZPNBUb7PhV8vIs_Mz42lkkEXvfxV0	EF5Ag6Wh7gjBDTppO6vKL5of+jRuWu9BEblr6ukMGTs=	2020-02-02 09:40:25.11233+03	513
330	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiI1Zjg0MzZiNi03NTM4LTRkZTctOGU5YS03ZmVkNjRlNjE1NDQiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiIyODIzNzA1MzIiLCJleHAiOjE1ODEwOTMyNTAsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.3GsL6pMRIvy3M2SYDs4reZgqloUWG9TPBAfHdn-1GaY	DUL2gfh5unJl/qPkxy86jlUn/fDBCshnSGmyyuxAaT0=	2020-02-07 19:34:10.632732+03	275
727	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiJlYmFlMDYzNC0zZmViLTRiYjktODA5ZS1lZGRmNmUyOGVjYmMiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiJVQ1YweXJteXpBVVRlQWRKZXA4YWpvY0EiLCJleHAiOjE1ODA3MDY3MzIsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.aXGeVZbek7cRJuRdzj898HKZBTrzobZLcTgOd9l1orI	kNDZQs2otWpdw378ZqszNE2nEjZn0kZroOKkyQio9x0=	2020-02-03 08:12:12.485293+03	614
836	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiI0YmFhZTVlNi01NTQxLTRmMmQtODhhMS01ZjUxMmZlMTg5Y2MiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiIyMDU2MDIzNTAiLCJleHAiOjE1ODA4OTUyMzgsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.nWzfI7nN7CZSRYgirhg67U1kE4TsMX_Ne_v5v_2czHI	kmy9++OYulZGriMxvBi54jvw/KIBZEPHK8vs9kusbvw=	2020-02-05 12:33:58.611958+03	699
837	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiIwMTE5NmVmMy1kOGQxLTQ2MmQtYmFmYi1hODkyMTE0NWZlYzIiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiJVQ1RvM1FSTGdlLU1HcUlVQjVPUjRuSEEiLCJleHAiOjE1ODA4OTYwOTQsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.povngnANefXiKk98C_tAjC4Gd09aEXvVcNHupkH_I0c	KABuhWefZ9tm1TOhvNtjn4vVa7+ke+IY3D4Y2N2zaZ0=	2020-02-05 12:48:14.126296+03	700
838	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiJhYmQxZGE4OC00YzliLTQ4ZDItYmVhYi03ZTBjNTg2ZjI4ZjQiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiJVQ2FhX3E1YW1jSkRQOS1xRXFKSFNCaEEiLCJleHAiOjE1ODA4OTYxNzcsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.v3X1bEXwaLpzOaZjwhktf22xyLfwy5SuW-A0inQfWRg	bXC8/JNdAERB9GO262reiRKWZRN5AKM7TAi1856Noos=	2020-02-05 12:49:37.960325+03	701
844	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiJhODk5YzFiNy04Y2Q3LTRhMDEtOWQ4MS0zNDM3Y2YxYzlmZTUiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiJVQ1laamptdmhBZ3dVSERna0g4THdHSUEiLCJleHAiOjE1ODA5MDMwODksImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.b0tQsK3yagqfXr0zxuY02lnLAM2evBl1rZ6qBoUc__4	69rPSql47uRwsrLAcS3n0cep9t9l5eyXeqevLZz8GdY=	2020-02-05 14:44:49.890773+03	706
319	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiI3NWI5NzQyNS04Y2U0LTRkZGItODZkOS01ODQ5NTQ2OTc2YjkiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiIzNzc1MTQ5ODkiLCJleHAiOjE1ODAwNTAwMTcsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.IYE4te99JxBf0K4MAXfFm43QoHJsrk1EmY2Dj-Ayo84	TeYr8VONPu/w5HA4NjUJFsL1AvRn42fXO04CuP6UzZ8=	2020-01-26 17:46:57.799651+03	264
320	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiI5NzEzYjE5MS0zMDBmLTQyMTQtOTNhYi02OGEyNWJhZDBiN2MiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiJVQ3JxaEJ2Z0dQZXZ0T0Y3S3FIMkp2S3ciLCJleHAiOjE1ODAwNTExNjksImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.oJBlyKEHZknYypFeMWsBQ25ATrVk3xBByu0NfnVEEFU	EcWdAjXoxNCxw02kcwdcS9MYMuK7HfaBeE7xNrmxA0Q=	2020-01-26 18:06:09.300687+03	265
323	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiJiMTUyZDQ4YS0xZWY5LTQxZDktYjRmOS1jMjg0MGQ2NzE4NGEiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiIzMTk3MTU5MTUiLCJleHAiOjE1ODAwNTE0NzQsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.ms2boeH002YOT1isHGdu4x_OrNrzLAa3NiLQ5LEUoZY	4kB7q+/6Cty8hqOmXadS0Gs6h2TDF0VzgvYuF6FlJqo=	2020-01-26 18:11:14.095111+03	268
324	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiJkYzA2MjRhZC1hMTM4LTQyNWItYTYxZi0wNjVkYTNhZDg2YjUiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiJVQ09GM1FTUjFYdFdTeGNGUlVxNnRUeUEiLCJleHAiOjE1ODAwNTIwMTEsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.vhP7ZRF_bL7T__q39xIS696y_-VwPOP6_BvFcom1Sms	nZeZbbB38HSqmX1Nrj/2Us6msjl3rzeCyZLkTqjVAXo=	2020-01-26 18:20:11.639874+03	269
325	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiIzOTk0ZjI5Ny05YWFmLTRkNjAtOTQ1Yi1hNTQyZTFlMWRlODgiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiIxNDM5ODY4OTAiLCJleHAiOjE1ODAwNTIwMTMsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.Bw95j7pzKv_0cPEpz2yyEUskUY6aUPy2Z-CL5mspyfc	FdrWQC+uGgvvS/V2U06Ftb9GAjTwIrdqgebDx9Ebgwo=	2020-01-26 18:20:13.664843+03	270
328	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiI4NDMyMDhjNC02OWVmLTRhNzItYjQzMy1jZTgwNzRmOWIzZTciLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiJVQ3BzWm1DMlpzbG1lRnFtWllZOFg5Z2ciLCJleHAiOjE1ODAwNTIyMDIsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.rrB2wyoDfDdeQKj-r3j6dVRRIazkqF4S2GB0Yf05hgM	IonLjKCn6V/wzF2iNbAFbqax4ED7J8jawuPWXIEeOa0=	2020-01-26 18:23:22.487406+03	273
331	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiJhYTE2ODNjZi00MDdmLTQzZDQtODA4Yy0zYjUwMzE2YjhiZWEiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiI0MTA5MjA4MTgiLCJleHAiOjE1ODAwNTI1MTIsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.GSmCUTVdUMEIgHI9X0pa3hkqzwFkvO8csHs3Emo2eEw	VNrp4US035ICTco/4zawWzQ3sDDJnv8vAfKvsCFwhj0=	2020-01-26 18:28:32.460465+03	276
333	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiJiNmJiMmUyMy0yNTA4LTQ5M2YtOGI0Ny05YTNmZTNmNTU4NWIiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiI1NzA3MDEwOTQiLCJleHAiOjE1ODAwNTMwMDMsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.F9hSjdyigAFg0RMWDLBvS7o4csn8QV6HqoN_H0fzruY	YfDu2a1wwVjJuS2qIB5unSVHJ1FlhzZooqmWyPNZONM=	2020-01-26 18:36:43.000529+03	278
334	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiIzMmYyMzg0Ny0yNjg2LTRhY2UtOWRhZC1lZTBlODMyNDJjOTkiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiJVQ0dKLVFIMXNKbE0wOXZoczRvTGxya3ciLCJleHAiOjE1ODAwNTMyNDcsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.Zsr-U6Ho0nru9dRSDcNXRIUU4Whp1Hj7sGnBqclq5YI	PoPM7Q8LV4mNp2VppQ5ph5tH5kzaC2JGOTmi436SmTo=	2020-01-26 18:40:47.794454+03	279
332	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiI5Mzg3NDRiMy0zNTdiLTQ2NDUtYWJjZi1iNmFjMTNiODY2MjIiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiI0Nzc2NzEzNTgiLCJleHAiOjE1ODAwNTM5MDEsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.vcDjSYqJtdEq-A6QrZm_LW9AX6F5Wyah20rNMXOlpAI	BphONPiUu5a6lI+OFgqbtQMTlbE/LjGHFyQGnQsGdPM=	2020-01-26 18:51:41.620994+03	277
689	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiJkOTE1NjM3My1lNDk3LTRjYjEtYjNmMC1hYTk4NDVjNzQ5MTgiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiI0NDMzNjY3MDgiLCJleHAiOjE1ODAxNTY1NzIsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.tAf2v8DDU7X0oMdIRJK57im1ABT1nMyC0PZkl04qaSA	uUfD8HlRGqsOAn8CLIg9kjKPDbhX43+HVRqpKZdkiUY=	2020-01-27 23:22:52.499806+03	587
252	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiJkNDA0YTUwZi0xNTk3LTRkODUtOTVjZS1jNGE5ZDZkZjZkMzAiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiI1MTMzMzM0NDMiLCJleHAiOjE1ODExNjE4MjAsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.aGc31Wd5PSl41TT3blLACFdYot62ZRdJa8ms_z_8Rio	5wdDJhdml2JDBNQr7wMv1P0BGuCr4FHepx90oQK4zV4=	2020-02-08 14:37:00.369547+03	202
341	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiIxYTdiY2FjNy1hNzRkLTQ2NDItOTg3NC01NTYxNjk3MGNhOWEiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiIyNjYzMzg1MDUiLCJleHAiOjE1ODAwNTUxODgsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.4RphSM2507--UkZ53rU0I6_ER6kPqJMvlg_sY9GIW1k	fj0Nk875dME/qkJAQRFd5XU+E3cAZhm57wdUAG4DWmk=	2020-01-26 19:13:08.859302+03	285
346	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiIyMzdmNGNhZi03N2ZhLTQwNzgtYWNlNC04NjlhYTdlYjM2ZDciLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiJVQ3Q3cjhFYnVXdXRNM21uTVgzcEpQaEEiLCJleHAiOjE1ODAwNTYxMDQsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.Y7w9F4AzPjtpXkv1X4ecinBX8MPcE1j6Snf94GVILL8	EmOVbtl2h7Rz10zSXg8rviaIk0qhXcLzU8CSqw+n+X4=	2020-01-26 22:13:24.758334+03	282
349	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiJiMTRlNTVjNi0xNGU0LTQ5ZGMtYTQ0Mi04NjU5MjIyMzZiMWMiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiJVQ3dfRzhHYnBmWDdKTmU3RS0zS2s4VnciLCJleHAiOjE1ODAwNTYyNzIsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.n4QObo7o7hdGJFgtIRpWhYgIL_dKvO7HrgRhwJdwvBc	rKuTl4dtiHUmUp5bybXRPyEPbbhVJTLWMXAVT3J5+AY=	2020-01-26 19:31:12.311683+03	291
354	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiI2Yjg3MDg4Ny0yMWU1LTQ3M2YtYmMwMi1lZjA3ZGUwNzVmYzAiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiIyMDE1OTUyMzMiLCJleHAiOjE1ODAwNTYzODAsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.KtsFhAt_Xb-MFWISfyAO0tM6ivHEP2RDISe-wqV8sgA	YiaN2gu7QgdlMC4CE/FuFnou3JA7saeY0uqKo8DIhp8=	2020-01-26 19:33:00.367355+03	296
352	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiIxNWRhZTJjMS0zZTRiLTQ3NjktODQyNi1mYmM5YjFjMjc3N2EiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiI0NjQxNjU4MTIiLCJleHAiOjE1ODAwNTYzMDgsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.3vaDuoUgSpeAL3NCMcG6TkOizUndrBrCJHouRIo127A	xU6Qc9eD3EDCIQOtTpceVQCLkChXHd2DS1GPgPZ08OI=	2020-01-26 19:31:48.344852+03	294
360	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiJlNGZlZWY1Yy04YzBmLTRhM2UtYTA0ZS1mZTJiY2Q2MmQ1YjEiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiJVQ0ZwaHA2NGRhblFPLTVKcGlBRmpicnciLCJleHAiOjE1ODAwNTY0NTEsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.jkOt1am0Gz7zv8Cs6CtsIYjSPq_AdCxynAe0N2fz940	O81CQoOLMvYZ5xpXlkRlpf3baFQknm3ixQ/DUW9ofA8=	2020-01-26 19:34:11.398477+03	302
361	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiIyNWY4ZGVjMi1hZThmLTQwYjQtODA5MS1lNThiOTIzMzdjZmIiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiIyMTY0MTA0NTUiLCJleHAiOjE1ODAwNTY0NTMsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.QV6h3XpuTENyeum3DiQOpgx1MYYdyp_iySkUfusnwQ8	W7V93cxVWjUhMIEtADcAATAht0UFQp2WeEiExlCW8Mo=	2020-01-26 19:34:13.983819+03	303
362	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiJkMWQxZDNjOC05Njc5LTRhZTEtYTY0MS1iZmMyNzRmMDlhNTQiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiI0MjEwMTM0NTIiLCJleHAiOjE1ODAwNTY0NTUsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.GXkD7m-A5I6eGkanVLRf6isOmqt7G710dQmhW-OuPvo	qitA+ohE+mIbYg3XeXqLMlDfeSUzwc85bgqtcAaOo3U=	2020-01-26 19:34:15.275354+03	304
365	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiI1ZGYyZGU4Yi0xNjMzLTRlMzMtOTk0NS1hMWFlZDljMmZkNGMiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiIzMDMxOTYxNTIiLCJleHAiOjE1ODAwNTY0NjQsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.KOe2cluwYKeqsNVMzvx4oFNT5-RCTSTZBDihKub9Hjo	SLswHsqM3adOQg9UCOWILqcvXeoS7Tjg1Uiq1nuOS54=	2020-01-26 19:34:24.903497+03	307
353	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiI3M2Q1Y2VkMy05NjdkLTRjMmEtOTdkOS00ZWRiNTVmNmU2NmUiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiIyNTA4MDMyOTciLCJleHAiOjE1ODAwNTg3MjEsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.rHu01Q330GL6dfAPgefYsEOkCrpG26Uvti5JTpTAMio	PG9O8Gr5JVhxOObljCaHzqoCKuLIODdGi7w4YJCyynU=	2020-01-26 20:12:01.552534+03	295
363	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiIyNzU4YTQ4NC03NzUxLTRlMDgtYWYwNi1lZjE2MzI2YTllZDQiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiIyNTMwMjY1MTgiLCJleHAiOjE1ODAwNTg5MDcsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.uhdIRcXoWha3jGSkh8NJeL0F7IxleY8Fa72uuNE6nAI	PXFIC7zzivityvV8UJvrxqSvJdncXHNIFPmRBOSb628=	2020-01-26 20:15:07.260918+03	305
366	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiJmY2MzMzMzZS05M2M0LTRiNTAtODNhZi1kOGVlMzE3ZTg1NWEiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiI0MTE2OTQ2NTIiLCJleHAiOjE1ODAwNjUxMTEsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.AISCpgBAEUZA-SA-LLyiPhab_hYAe2cXbV9gC07KdV4	lIelHwSF0nEcGPfFuZbRpCCuGFlrFAt4mvRRiWYpDc4=	2020-01-26 21:58:31.696793+03	308
364	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiI5MTZkNjI3ZC00M2FjLTQ3NWMtOWE1Mi0zM2EzMWQ0MDUxOGIiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiJVQ3d0dGZLWnFBOTVZN0dSemlrMXRwdVEiLCJleHAiOjE1ODAyMjkyNDAsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.S46kTp4qPcYv7tUYd_0H8GF5vjeJDhIHLfNqNT33Nig	rv+hb78ltAEiGJ5/rZWW/FChZ+u/1Jpk/SXaSgASuQM=	2020-01-28 19:34:00.193118+03	306
733	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiI0Zjk0MWZhYy0zMDgwLTQ4YjMtOTY5NS0yZDAwMDIwZWMzZTIiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiJVQ2dUc1N5Y0lrN0Vmc1ZzTnlhZXhaaWciLCJleHAiOjE1ODAzNzgzNzIsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.2l3FdJFVin5rYUCI6BTZ1GPe7k8h8qllbDViVKDcmpo	u8N1hXvakjdItFNoiMyIzAcT76Sbjy/UXn0ieMQnUhU=	2020-01-30 15:44:32.060423+03	611
732	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiJhY2ZiNTliYi1hMTgxLTRjZWQtOTE2OC1hYmEyYWQwMjRjMGUiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiIxNjY0OTM2MjMiLCJleHAiOjE1ODAzNzkwMDEsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.evS4TV3HhB5vuivFdGXpT7iqCdhNKLbMT1hXNvK0mKs	sjfSXj0NMC+/Z7wfDjwwDP3NeDHBd8rrF9HeJiEgpCk=	2020-01-30 13:10:01.431568+03	619
304	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiJiOTI4MzY4OC0zNDExLTQ0MTEtYjIxNC05NDM1YWEzYmIzY2YiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiIzMTMwMDc2MzciLCJleHAiOjE1ODA1NjQ4NzksImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.eUY9YCD5Jdn6qi8jBCrFqlpB7kPYJ_nmiRHt8lfglvs	K2Cj4rBGvtSIsKdGJLaDN8m/9SWqWuYfcDNXEXYtkZc=	2020-02-01 16:47:59.055155+03	250
824	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiI5MTEyZmFhYS0yODNiLTQ3YTAtYWM3NS1hMGRlNTViNDZkNjYiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiI1MjMzOTMxMDIiLCJleHAiOjE1ODA3MTMyNjIsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.o84TbhCcEjSGbkfL1x2K9KQzQrTFFkAl1rRqVrDh6K0	Z4PwHp+4DoSldCG4VtrGDc7QZS9C8CTuTNqY9ilMwgQ=	2020-02-03 12:46:02.58607+03	239
830	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiJlN2E4YTZlMC00YTFmLTQwOTktOTU0Ni1lODdiODdkMWNlOGYiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiJVQzB6WXMwWkoxcHRaVHdHV0wycjBNVWciLCJleHAiOjE1ODA4MjM1MzcsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.PFRMXbJ5T6WFYuzwh9arbT-_LCMWi3osT8klo7uPL1A	Wd0PzAo7eIIBnzrCIRIyHdVoc07iu84c8PFWkkb3cVI=	2020-02-04 16:38:57.512016+03	695
831	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiI5YmJiOGRjOC0wYjIxLTQ3NmEtYmJkZi1mZTJjZGU5NDExNDMiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiIyNjY4Nzk4ODMiLCJleHAiOjE1ODA4MjM1ODcsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.-awlFrwwcumX8NqGuVdEeliKkS09_iLP2qwAM6Ho_Ks	in3oPFXC+LqZUOdl7X28FNMxDUBgc5vROiEqRol3zts=	2020-02-04 19:24:47.655675+03	694
692	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiI2ZmE4ZjNmMS1mZTJjLTRjZjYtYWZkMi0xODI2M2ZmNjZmZjUiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiJVQ1RxWDluMDc1aGU3ZThuWGpTTk9LY3ciLCJleHAiOjE1ODA5MzY0NjAsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.ngGnBTiEUJ_wsX5pV6V6nK0Jhus4mK113JeZYItwcHs	Fubja9ba2iwViYIyw6CSfpE0BXv4IXm2aiFTz9it31M=	2020-02-06 00:01:00.099343+03	165
356	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiJhNDJjZmE4ZS1mOTE4LTQ2Y2EtYmU4My0zODIzNmJiNjA4MTEiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiJVQ25CNUpDLVh6RVIxRnFlRmNZWFh6QVEiLCJleHAiOjE1ODAwNTY0MDIsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.QL3SYSzfCZAuo5aegeQQ79G2LutnK_6WmPs2fwZtEd4	AYm3cd++Oq/0WADmOoFt9CNLpTof0k00u+aSjPhsxq8=	2020-01-26 19:33:22.865008+03	298
367	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiI2M2MwNGU3My1hZTEyLTQ0ZTMtODFjOS05NGRjMTM4MzBjMTMiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiIzMDc5MDkxOTkiLCJleHAiOjE1ODAwNTY1MDIsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.Tg4tn1HYx34wPDpzR9-QzdWp13QdDdx9sYHhPcpMYQ0	a2N9fH1BpjzVseUWchKrTddS+i66T7hwzTMTPUqIRvQ=	2020-01-26 19:35:02.777077+03	309
372	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiIzMDJhNjg5Yy03Mzg3LTQ4ZmEtYWRhOC05ZDBlMzAxYjEwM2MiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiIyMjY2NDAyNTIiLCJleHAiOjE1ODAwNTY1NjEsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.ixFEMJRwFuyCk03lYiXH5-Jfga3CVRQjMa-OcTDoLTU	s9t7zEUGf/efV52V7+v8UKvF8P37xIUgmLFPlBAkVfQ=	2020-01-26 19:36:01.965732+03	314
373	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiIxZmZkZGUyNy03MjVmLTRhZmUtYjRkZS1jNGZiZjE2OWViMGUiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiIzMDIzMzQzNjEiLCJleHAiOjE1ODAwNTY1NjksImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.wmEvFUOxBMvtGeRTF4Rv-fIcRWFrIDZXgdOXO2Sp0Kc	qpIOqgy0OvWmvre/MhlOrL4jWYjuTTeKKlQ/zc/Hq1I=	2020-01-26 19:36:09.06516+03	315
374	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiI4OTc0M2NiZi05YWM5LTQzY2MtOTlmZi1hMzliMzk3MDQyMzUiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiI1NTMxNDkzODEiLCJleHAiOjE1ODAwNTY1NzksImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.UjCy381DMN63FCCwYiR6bXfbNMD7H1EPwluP58K-p_o	Vm0gE9rH7d3BS1DkgmR/qM7nbJ0eEIwB+h6E780zWbA=	2020-01-26 19:36:19.723363+03	316
376	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiI2MDA1YWU0Zi1lZWY2LTQxOWEtOWNjMC00YWQzODA2NTkxZjUiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiIzNTE0MjI3NTYiLCJleHAiOjE1ODAwNTY1ODQsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.hJ7hy5tOkKcplU7KHScUiUeGHjZuYmzvf4c-LZh6geE	Z0QqUiRdy4pftCp13iXvjUw/TGO4tlNLqfGYRovbNTw=	2020-01-26 19:36:24.838459+03	317
370	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiJlNTI5ZjBhMy1iYjQwLTQ4ZDMtODMzOS0yYjM1N2E4YmZkMWUiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiJVQ3pXWk1FUHVFWG9fNTB3endMZTVIRUEiLCJleHAiOjE1ODExMTEyNTEsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.7O7tedVHAMfPC0caHsIjyczjKKBvILpy7Ys2QRlMz2E	WjtuYWuYHyNmBv0EhfDzqtgP+emfLr8BBaT1JLBI4/4=	2020-02-08 00:34:11.684673+03	312
355	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiJiNGZiMDY3Yi01NWIyLTRkMTgtYWU4ZS00YjhlZDdjYTI2MjIiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiI1MDg5NTUwODkiLCJleHAiOjE1ODAxMTkxODAsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.YUQPj7f-E2xFjsFfKgffoNEvdtD7s-WOMR8s2nB4HaA	jpjln5M2qg6Pz0DPBRjV4lpQbTpYtPRuILoPTgmb608=	2020-01-27 12:59:40.630678+03	297
358	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiJjODZhZTA4Ni0xNGVhLTRlODQtODVjYS1lZGY4MzJhYWJhZWYiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiI1MTMzMzgwNDQiLCJleHAiOjE1ODAwNTc1OTMsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.aA6zNjbFLOJKrbnQ7nBGvXpTBbGbRDJHZkigaXfMsF0	pr4ecDNwiCM2TmXeYR/C4AA3k1Fp5UEHz1te9FFSuN4=	2020-01-26 19:53:13.512281+03	300
371	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiIyNTQzYTlhNC03ZWJlLTRmODUtODc0Ni1hZGQ4YzgyMmY3OGIiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiJVQ2FHOHdLWHRqTW9NZHBCbVE3eHdtekEiLCJleHAiOjE1ODAwNTc2ODMsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.V-WIdPHoOQAGVwA9NYwJpXeCSaPJ2V9lsJeMEeybJXE	PkJT5cHa3dRNqU6FtxCbzhufBUqAzAfsJ9UL/iYv9ps=	2020-01-26 19:54:43.569434+03	313
369	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiIyMDZiZDE4ZC0zODA2LTQxYmUtYWUxZS1kMTRhYmQ0ZTkzMTQiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiIzNzI1MTkxMDEiLCJleHAiOjE1ODAwNTc4NDYsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.CJz9zbaErzWG0XOK49igV6uSuI5tF8co8B5htY3g3lU	edOg60DRQRFUy+DS28odxVZiAdxdjRZghX00dkOiw1U=	2020-01-26 19:57:26.628192+03	311
368	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiIwZDA2ZWQ0Yy0zZjFhLTQ5ZGItYjkwOS0xZWFjMzVmMWY5YjUiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiI0ODM1OTA1NTgiLCJleHAiOjE1ODAwNTc5MzQsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.pcKmd3AIcZGgDdKcGksZjA6hTfZrhdSq-mUCvEkUW3Y	xEzVrSFj9C6Mttv+ZPLSIHpJPDLNJJwJfl2j5Q9IlNw=	2020-01-26 19:58:54.892801+03	310
359	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiJjMmNlOWIyNi0yMmIzLTQ2YjItOWE1MC0yODExMzZlZjNmZWIiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiJVQ3VrdGhFWl9udEZZVlhRaUg1UlVYY0EiLCJleHAiOjE1ODAwNTc5NjEsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.nqcJJSPqMSidYYFvE_MQb8AQuqJ7s_fYUiKfHUhaGBU	Zky+u7TO/cbMt6ql84J3FYna2ubs6O0E2ieicMyCwpc=	2020-01-26 19:59:21.843826+03	301
357	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiIwODVlNGUxNC1kNGMyLTQ4MTktYmY2My1mNjY0MjIzODYxYTYiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiIzNjg5NTg2MTIiLCJleHAiOjE1ODAwNTg3MzUsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.3utOImJRRc6fKZajuYx6S7bNE6brVED0TmH7NW8WpLI	krV6p/xbhS2Kw4tzrNLR5+7XWZ55KygLUn261o39PXQ=	2020-01-26 20:12:15.682004+03	299
691	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiJhODg1YWNlNi1kMGNlLTQ2NjQtYmNhNS1jMWU5YjI4MzkzMzciLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiJVQ0k1S0lXMmJMMTJCdXd3aEw1eGtjTXciLCJleHAiOjE1ODAxNTc1MTIsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.IuXJpnPvMeQtv_nS8kKQys0VQCROXRB8wYTyRQ5sCu0	un5Kaz45Vs2kUA3nm2qFouacyyaGvGEfexglIcSAn0k=	2020-01-27 23:38:32.824586+03	589
380	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiIxMTNhNzMxMi00NDY2LTRmZDQtYWQwMi1kMzM2ZjY0NjYzNTMiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiJVQ2dvN2hqRml1elRWdUZ0djJaSzJHU0EiLCJleHAiOjE1ODAwNTY2MTgsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.kf6uQ8TCKZI8KdruCbH_cwLX0HmkvkYLyjJ3OL2MjJ8	hbN+0v6DAboap/AgbOFy5QdoKN5HUoUtg+mVd4Nmvi0=	2020-01-26 19:36:58.931516+03	320
382	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiIyODE4MDM1Ny04YzZkLTRlNzgtOGZjZi1kMTY2YTkxNzg2YjQiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiI1MzM4MTAyNzEiLCJleHAiOjE1ODAwNTY2MjcsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.wQa7dNf8GeoXgTRRMv02qtFVgrlX6Td34k3YUNsxWFU	0yEssjowhygs4zScmgTSYZK7odthMbuHGK2l9iDgYU0=	2020-01-26 19:37:07.808617+03	322
693	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiJhYzE1YjBjYS05MDJlLTQ4MWUtODFkOS0wY2VhZTA2OWViMTAiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiI0OTUyMDc1MDMiLCJleHAiOjE1ODAxNjM4MDksImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.RqNE4PlDsLtESwdqcspjjLgT9oPiF450Cm5rv5edsKA	N9V2LSh3wbTkN/V9CTzrSAW3/GBddQK0/Dh1ollfmNw=	2020-01-28 01:23:29.411467+03	590
411	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiI1MmY3NWUyYS00ODk0LTQxYTMtODU1My0wZWQwNjdjNzFmYjgiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiJVQ0pZMnBGaUttT0dIOHktR2RrWlVyVHciLCJleHAiOjE1ODAwNTY5NTQsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.nU_YHSVNbKE6lEtmSpiZAbnHbiA1sqGqKDG91Exz3hs	lYrAT56sHHWGElmfYiXtv8UYGgnr78Bxc+0y88C8mfE=	2020-01-26 22:27:34.686258+03	346
734	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiJkNDdiYjJlYS1kMjk0LTQ1OGItYWYyOC0wZDdlZmQ2ZDI5ZTQiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiIzNTcxMTQ0MzAiLCJleHAiOjE1ODAzOTQ0ODksImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.V8_QXrMr_x9OI3bZrcHIDM76SiFvjsJDGLzSLAbRFDw	6I7K9rQuMQvhypINdBew7E2nn7gTRhxulIUv395g7cY=	2020-01-30 17:28:09.797591+03	620
419	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiJlNzJkOWY5ZS1kZDkzLTRkNTQtYjkwZi1lNTM4NDI5NzFiNTIiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiI0OTYwNzcxODkiLCJleHAiOjE1ODAwNTcwODksImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.PXuGiLMd8XtEiIUcehGULjSJ38RFgcGsvLQiXp9iFLE	aqlWUZkg96RR6QDXsnLz+EG0TbknVSkBFASouUtrsds=	2020-01-26 19:44:49.679406+03	353
427	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiI5MzViMGE1ZC04YzQ3LTRmYTEtYjNhNy01ZmM0MzExNDliNTQiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiJVQ3pYZmM0TFRsZkpIZjhfbGpWVUVsTFEiLCJleHAiOjE1ODAwNTczMDMsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.qZtbR4FVvTbHmOLh8ldeU1WcoKugHvI1eu_0JeiTNeU	V4JWwEwnzChuAIWNXOR8V+ooZLiSyTVQn4WJobd1ALQ=	2020-01-26 19:48:23.8049+03	360
428	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiJmY2ZlNGY4NC1lYTllLTQ0MDQtYWFkMS0yYmU2MzlmNzRiNDEiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiIyMzMxODUzMzMiLCJleHAiOjE1ODAwNTczMDksImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.-JIwh580XgZPMl80lNn6hCmxFa4KyCh6cUowvwcQBEw	/38z6b3qjgacgIsJmVpMUjGANJTvMgOKnFz0fbMWtFE=	2020-01-26 19:48:29.142878+03	361
430	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiIzMmY3YjkxMS02OWNhLTQ1YjEtOTAzZi04Yjg1MTdjODM4OGMiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiJVQzlBeDVtWERsVjEyODktRng5N0VKeVEiLCJleHAiOjE1ODAwNTczOTUsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.oICL7K6ex2Dlz2RRy6ZhTPVssAi-1DFJ8uUJEgkXbYk	VXu0eV7KaLQH7Ox71SWmzVR2ozN/rfxolL/HumevoOo=	2020-01-26 19:49:55.965588+03	363
435	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiJhMGU2ZmEwZS04MDYyLTRkOGUtYmExMS1jNWY5MDUwNzI3ZGEiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiIzNzI4MDMwMjEiLCJleHAiOjE1ODAwNTc0NjQsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.xiO-O_peIriNE3BZyESOz87oLoXtJLIXUb9CmvuCwAs	F0unb05Y39cwTygs9gThYukLdDua3YpifYCYOc7SBh4=	2020-01-26 19:51:04.914305+03	368
381	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiI5ZDhmMTc0Zi05NDdiLTQ1MGMtYTFiNC02MTg2ZDBiZDhjZGMiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiI1MDY5MzE1MjMiLCJleHAiOjE1ODAwNTc4NDEsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.1-O_3JyaVk90f4X0kOJ2I3AyArYcK6BROdtDylpYn8A	UA1X7Nu8O6hQyJXiRdygXHUR60/XMXOXQ++QP+tqhlM=	2020-01-26 19:57:21.520194+03	321
404	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiJiMzJiYTEzYi0xODAyLTQzYWUtYWJiYy1hMDFmMDFjOTYxOGIiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiJVQ3N0MWJaMW1laDZraXRteXhZZ2VQYkEiLCJleHAiOjE1ODAwNTgxODYsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0._FGmVYWnbSGIIi9AMxMh8QMMMx_C7vcXt_5NfTsfrKg	od8HV6S1l+xA6Q8MeL4jMMV7zKn+gBn7+zfxTlWn4jg=	2020-01-26 20:03:06.585953+03	341
429	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiI3YTI4YTg2YS0yYjQ1LTQ1MjEtOWNlYy1jM2ZiZGQ0NDI4OTciLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiJVQ0VRa0tab0tScXNDUnBoSFVsYmt0dXciLCJleHAiOjE1ODAwNTg2NDAsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.yLkO73W0Yw3Ba8NmCa_-5cldRAEXpqEbQ48wm80FK6M	EnyK4zjdhahtpSIXRP1ndV2Std1Kz8PwPZ708f3jR0o=	2020-01-26 20:10:40.779229+03	362
423	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiI0Y2Q5OGZkOS01ZTllLTQ0MTAtYTUxMS00NjFlY2YxZjI2MGIiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiIxNTM1NjkxOTciLCJleHAiOjE1ODAwNjEwOTEsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.He8OqpTbZwAIiNCN4cH7ZMf_atKZhu7tUF-GswjaSuk	1VucLTeKBX3NCWaNNOqBWG/LnNhGDD4tZV6FFyVyQPk=	2020-01-26 20:51:31.008181+03	357
413	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiJkZTg4NWY1MC04ZjViLTQ3ZTktYjVkNy1hNDlkYjc3MTRkNmQiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiI0MDM5NzY1MDQiLCJleHAiOjE1ODAwNjM3MzgsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.UxbTjXMUsGHha4t81fql1DDqcQzp-2JWwnvl2k370wM	YnSKgjXYYcaCraDewIHc/SNcCB1HKID+PZvuoTqWX4A=	2020-01-26 21:35:38.564752+03	347
437	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiJmZjVjYWI2YS1hZjg0LTRlMTUtYjQzZC0zNDMzNWFkZGNiOWIiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiIxMzg5MjU1MzgiLCJleHAiOjE1ODA1NTAyMTIsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.Va50dl2wickbYDN67JbAwDe_wvLnqlnK89k6CjveZO4	ZKcV4xhwR6b+wpx+b5qAcbf32loOm2HAxqQNzRQPSLg=	2020-02-01 12:43:32.666686+03	370
383	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiJhZDU5YWNkNi1iNTBhLTRmMGQtYWRjMy1lNTlhYjM3Zjg4M2UiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiJVQ2RpM20tLXdsa2YwSHpxRDdSYkR2bHciLCJleHAiOjE1ODAwNTY2NDcsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.M-5iCBjMwcd8NREh2kw9cCaXAdUarwHABGzZlGc3ArI	O0I9TIhkU8fINLu5rtQaw1lDRlxFRSjrMCQ8lY0W9XM=	2020-01-26 19:37:27.875875+03	323
384	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiJiMTI1NGI0OS0xMzUxLTRmYTAtYmE4NS0wY2ZjOGM0ZmIxYzMiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiJVQ1kzbzBRZnpTeE51aTN1MUk0eU5xbXciLCJleHAiOjE1ODAwNTY2NDgsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.u5yY1uzXoedMMU3k2QSFlVeflWLkIS_rXLU6pJa6viU	4qlYhRb/1nPDz4tA70C52rfZkbDk33Tv2FxhjAHMiyw=	2020-01-26 22:22:28.541995+03	319
385	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiIyZjk2M2EzMS0yMjY5LTRiZDgtOGY4OC0wNjkwYjhiNjg3ZGEiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiJVQ1FzSTllNEV5OVpFNnJsYVVEWXU0T0EiLCJleHAiOjE1ODAwNTY2NTMsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.SdMCs8AheM8EP4S5padeRqR4-0DW5-eciLYF9vPHu9U	Jl6tJ+6p7FnZBg1N+T8ImeaJA6wN/D3FM7Rb+7XBF6Q=	2020-01-26 19:37:33.978526+03	324
387	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiJmMjJjMTYwOC02M2NmLTRjMDQtOWRlZC1kZDYxYzg2NzcyOTQiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiJVQ1UydmxJbWxZWTdjZFMxdmFKdGMxVVEiLCJleHAiOjE1ODAwNTY2OTAsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.mCUh4VSsNHbP7TAI7c4GXjdingCma_2FGhq_NJWT8ew	1lMYdvVni2eahvi/WhdtHr4FP3GJvAN/OzQ4Js76Ilg=	2020-01-26 19:38:10.126007+03	326
389	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiIwY2RiNjVmYi1lZmFkLTRlZmQtOWQ3MC05YmUxMjBmODljZTIiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiJVQ0NPV2RYczN2cDVuOWxlWVVrb25IMkEiLCJleHAiOjE1ODAwNTY3NDgsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.VTH2ukhvk9X7HXdG7x5GmJwYkAwB9EeaHxfEgEGrAGM	PP6fil8k+UKGsULhQ8Sxj2NHCaG4MA8srhls/w1TZEU=	2020-01-26 19:39:08.156673+03	328
392	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiJiMmI0ZjY4NC02OGIyLTQ2N2YtOGJjMy03N2NjMmM4OGI1NjMiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiJVQ1U0SWEwTGFubWx1Z3dmUjRMVDViblEiLCJleHAiOjE1ODAxMDM1NzIsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.6Ik9IPSrnCtHytGhud3Hkq-Q5nk4iXtmDjnU0HgPu8o	diNjsDp2jQO2tqupeXj4hat5WREMNHjqvqKosZ2+xiU=	2020-01-27 08:39:32.734849+03	330
393	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiI1YzA1ZGRmOS0zNzY2LTQ3NzYtOWQ4Yy02OTU4YjAxZThmNGQiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiI1NDAxNzc5OTEiLCJleHAiOjE1ODAwNTY3ODQsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.U67j_I1E2L2fvt-wAWSLQhO6A-iPaujksDvtOkfDgyI	7zQZ+rstE6sgoox/lJAPML/ZEC5Mv1MS+vv+kRl21ck=	2020-01-26 19:39:44.282008+03	331
386	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiI1Y2FkZjVhOC02YTdkLTQ2YTgtODA0Zi01ZjEyYjBkYmYyMGIiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiI0Mzk2NDE2MDUiLCJleHAiOjE1ODEwNzEzNTEsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.ExTgBc46cuhTgn2jOELfUfSyd93Y3G9NdMVlgaY0mBs	2K9YAKpsJ3EAxMRon06L9R/B25PAY7P4rNM4IYs/tGw=	2020-02-07 13:29:11.127187+03	325
397	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiIwMDk5YmUyYy02Yzg1LTRmM2MtODg2MC02MDRkN2FjMjZkMzQiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiIyOTYxODA3ODkiLCJleHAiOjE1ODAwNTY4MTgsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.UlFgRAPebeCJrNqYSaW1a5Wc7mQd4PwlN7niT-bbX3U	YgK1WVA4kALrwtclLjUEu4FvGgEJ1t2mvj9CJuKVntg=	2020-01-26 19:40:18.490776+03	335
399	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiJkODM4N2JmMy1iM2NhLTRkMzYtYmJmZS1jMDFkY2E0ZDI2YjUiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiI0Mjk1NDMyMDgiLCJleHAiOjE1ODAwNTY4MjYsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.k_I0jEx853G8vO76_r-L-6RuJSM2cnaa600cvcvyRUk	etfeJyKfBchKUClrG0Qf7WD5z+t7TVfIju4BihlnvX4=	2020-01-26 19:40:26.310618+03	337
695	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiIyZmZjMGEzMS0yODFjLTQwZWYtODllZS1lNjEzOTgwYzA1ZGIiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiJVQ0VzLUFvMklsSHBITFIzNnBUZWp1ZkEiLCJleHAiOjE1ODAxNjQ4ODIsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.GqySfODnuRMF363axathBIw2hz0DZYDoJrwyxXRhxTk	oujZlOkK8UX2Jye/dxxmEno74FxTq4TBrW5CBCNmzJ0=	2020-01-28 01:41:22.084017+03	592
388	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiI4MWRhNTE1ZC1jNmNiLTRmZGQtYmIzZS02YjdmZjhjZTNmZTgiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiIxMzQyMTY1NTEiLCJleHAiOjE1ODAwNTc4MTYsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.Sq2F3O7pnjpjEjDhlaipOyCMFpnOOdyeihPgJwUqNkY	ILsfuuCIQCtW8Zw/k7kEFaG3W7xUwsHYrzGsl7X76bA=	2020-01-26 19:56:56.936796+03	327
390	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiI3YzAxMzQzMi02OGYzLTQ2YzItOTgxNS1lYTg2NDFhMTNmYTYiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiJVQ1ZVMGE4QXdWRUpvdWZCZFpUT1lDSXciLCJleHAiOjE1ODAyMDk3OTcsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.c8dHBik8v4MNgE4_cIBjpoBkAwqcmwbuhM3oGyxL3oY	HF7+06Sdh6Q+WgppZmHqMqdzfYB5dcWNDBkzHPEGCdc=	2020-01-28 14:09:57.34476+03	329
394	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiIwODRjMmExMi05NGQwLTQwMzYtYWYwOS1lYjBmMzFjMjBhMGYiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiI1NTg4Nzk0MzQiLCJleHAiOjE1ODAwNTk0MzIsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.B2_WlfZmYRco36yFU5luxJf1tGeEbqNRTk524IZEqnM	L1K+wWzorqEOvKxOK9ghCQzEJ/8oISoTE7O+r5a67fE=	2020-01-26 20:23:52.59054+03	332
339	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiIxODJlMmIzYS05NTlhLTRkNTEtOTVkNy02MTA4MWRhZjdlMjIiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiIyMDMxNDY3NTQiLCJleHAiOjE1ODA5NTg0MTAsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.-Mto2NqKB6VV2mX7jj7fk4Aj1wdmMNT9MBwj876Vf-w	LfyBXXC9NJ1FNX6HJpMIsKFMW39/vxA211mjXIm2wls=	2020-02-06 06:06:50.598195+03	283
396	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiIzM2Q2NjkwNy00MTFlLTRmMWQtYTk5NS0wODIyODAwYTFiMTIiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiI1NDc2MjIyMjYiLCJleHAiOjE1ODA5NjM5ODcsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.6D0nuxH32HT45SFA-GABY_tWfaMv7kswv4s3Qi5f2qs	V9Y4uUyWgXI38IMMBSbtTR9OjHjchb898je1X/8BhXk=	2020-02-06 07:39:47.312876+03	334
402	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiI2YTkwNmFkYS1iMzZlLTQzNzEtYTkzZi02NjMzNTcxMmMwM2IiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiI0NTQwMzQ0MTciLCJleHAiOjE1ODAwNTY4NTksImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.1fZQg2vsh-OgSfVlzKS646LT6w8yfDKcsR3JL1XHwFQ	cGM89TYydf5DkivUPg6Sa9yU1alr48uF3QqpE5WQl64=	2020-01-26 22:25:59.229826+03	339
422	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiIzMjhkYjgwYy1hZmM2LTQ4OGMtOGQ1Yi00YzgyMmFmODI0ZjciLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiJVQ3EtclhxMmd5aDhLeGhjTVEtVFpWZ2ciLCJleHAiOjE1ODAwNTcyMTQsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.JypLQE9XEBjblpNuS5AnrCC6pfgjbeQsyPp44n58oI0	0HMv0P6V5y6LhzUroQzqG6rlx+XpA2ngN8JpN25SRas=	2020-01-26 19:46:54.093729+03	356
438	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiJmZjUyMWE2Ny0yODkwLTRmMDctYTQxNS02YmE5NjdhNDQ0M2QiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiIzMTk3MzY5NDAiLCJleHAiOjE1ODAwNTc1MjAsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.0hV4mTJibNE6Sm8_K1dl5iH9SdU-99q-7MWgJSdWTiU	bTMjyivQOBQ10JyRhrKqxAWcrMXjz2AJberPOxsVYGU=	2020-01-26 19:52:00.523729+03	371
417	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiJjNmIyNWE1OS00OWU1LTQ3YjMtODQ3YS0wYTBiZDc3MTVjNDYiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiIyMTE1Mzk0NTAiLCJleHAiOjE1ODAwNTgyNzUsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.Vxtq6eMrR0TStKfVOdoJDs3wUyTgx969ED03ytXt-0Q	QRj7nTqKMRhG0jbH8KRIH0xih4gjfXNxsBCsCWwa/Q4=	2020-01-26 20:04:35.945502+03	351
420	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiJmNjZmOGY5Yy1iNDViLTRlOWMtYjY3ZC0xODU4ZjFiMmU1OTAiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiJVQ2ptbzJlWFJFcjNCUG5BQmgzNjZOYkEiLCJleHAiOjE1ODAwNTgzMDgsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.PJNF-lzWoTPtZbDpTqEUshQtkog9zdORt4hVIOFBmq0	j7NpRl2o2H6xjTdChTSrRFGSQzmOo9JnWWaM5Q4AqaI=	2020-01-26 20:05:08.336301+03	354
400	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiIwNGQ5ZjRiYy0xNmM4LTQ1NjEtYWE3YS01ODA0NTdlNzQwMzYiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiJVQ0RfWFM5LXNGeXFZbVd3QnRPUzI3RUEiLCJleHAiOjE1ODAwNTg0MTksImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.INPT0GsIdqWDToaEeYZDMN1y1fmzvjFoBR-OrhwwGws	XWVuNUK9eMnB56bbRxRJSMVVoUTax0jMMs6LMUe2dQg=	2020-01-26 20:06:59.171692+03	338
403	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiIyOTY3NjFkNC0wZDlkLTQxM2ItYjJiMS0xNmZiMDg4YTJjMTkiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiJVQ1ZoVmNLZ1hvbFUtb2thcmhZOXU1eVEiLCJleHAiOjE1ODAwNTg1OTAsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.nCCizJr_w3oxVMbV9rKkopfwyQfeLZAgpT0S50RBg1M	5PJmwivsPF/iXByo6ieh2nGpxMNWK0iTwHwNSNw9COA=	2020-01-26 20:09:50.568319+03	340
735	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiI1NWVkNGQyMi1mZDM0LTRlYTMtOTE4YS0xMWQ3MzUwYTc3YjUiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiIzMjQxNTQ4MjUiLCJleHAiOjE1ODA0MTY1NjIsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.Pa4UOPL6prcLtBb3iW5Na9h7wHJV-UlhQ-tc76IP5a4	aIqKzADpzGLL6I3eJ0PWVRu4RTOayQF3bXRQ/N8N7xU=	2020-01-30 23:36:02.729661+03	621
414	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiI3NGVmYmE3Ni04NWFiLTRkMzctYjMyMS1lOTNlZGEzMzM1YWYiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiIzNzI4NDMwMzciLCJleHAiOjE1ODA1NjM1MzUsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.Fg5L9ySWgJtKdh_n-ML85yL23xb6rTIbtR1RD7735Zg	S02fKY9Gr6x9vw+j+ONFvrLsvcIw3qiY13mnrQAIsIw=	2020-02-01 16:25:35.596956+03	348
766	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiIzNjE0MzNhZi04NDlkLTQwY2ItOWVlYy0zM2M1MzZjYWE0ZjEiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiI0MTQ4MzY2ODciLCJleHAiOjE1ODA1NjczNzQsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.-UWkMFZOnlYM0NojjcVcl3WD2VkjGyU-XN8RpTwcPWA	+fY7nV48RkvoVByyesBBc+XbUCi8gZ9azcOP7Q5ShwI=	2020-02-01 20:14:34.224342+03	643
767	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiI1NDQ5YWI5Yy0yYjYzLTQ3NjktYmM5Ny0zNTRjYTE1YjMyNWMiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiJVQ2pNVEtmWDhFSGtlT05FOTNjbkh1THciLCJleHAiOjE1ODA1NjczODYsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.ICpIPZckKDgwAth30Bvv4Gc5wun4AidwfyDYstI8Z0A	lpNXlLmBlqxy+YJ7tY2IG+NQTamNGZFBNUh2TDzovSk=	2020-02-01 17:29:46.725809+03	644
778	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiJlZmNmYjgxOS1jZWZmLTQwNDItOGYzZS0wZjdmNWJhNjgxZWQiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiI1Mzk4Mzk0MzIiLCJleHAiOjE1ODA1Njc0NjYsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0._D4AgbLMfEWee-HZRTI0JADQjjjvtNONPiuFSTwI9k0	cuZWLPN8DVo+41Haxw9KJqny0StbdtrtRaqAV+3eaQE=	2020-02-01 17:31:06.424+03	653
780	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiI5ZmUzNzFhMy1mMmYxLTQzYjEtYjllMS1kNzk0NDlmNDkzNjEiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiI0NjAyOTc2OTAiLCJleHAiOjE1ODA1Njc0NzksImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.JMOgRgHGe7QzKQaDXjyAUAtibLBgNRWXNDQuTWLHdLE	+QoC8A+pelnnNlC+5I2Prejuzz5igEWEqpdrgYhK6Yw=	2020-02-01 17:31:19.558246+03	655
781	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiI2ZTM0NGNkZS1hYzY0LTRlNGItOWFhMC0yZWE1NjEzYjEyZWIiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiJVQ0tfa0k5bVZFQlJNQ3JIclVhOUpZOUEiLCJleHAiOjE1ODA1Njc0ODEsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.vQZyE_DZzx6dPnoKT_AxxCfTi4N8pa3AlnEDCBg8cmw	6FZp+vbqVrNJZ1aL2beDOQdUA6YtVuIsyEaqZfIFRCY=	2020-02-01 17:31:21.280847+03	656
789	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiJhYzNjM2Q2ZC1iYzQ5LTRjNDktYjY4MS00NmRhNzQ1ZGNlY2EiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiIyNzcwOTMwOTYiLCJleHAiOjE1ODA1Njc1MTYsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.kGtV71mFK_fEsNd7MmicqPSDc2UgsSvG5m4M-62CyV8	k1gVS78fPDQB7/S43zSEKcgHf9pCq9uGL8WKPCZdI3Y=	2020-02-01 17:31:56.919909+03	664
698	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiIzOWYxZmVlNC1hNThmLTQ2YzQtYWVmYS00ZTYyNWRjZDE1OGEiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiJVQ1dWZHc3WE5wNHk0c0xHN0FkbDBVU0EiLCJleHAiOjE1ODEwMjcyNTUsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.0cQPt5mxtUNkE1FbdHTtCp33fMxxD2tsJZmMhTnWHyY	hLYRK45bZpuflFjWdenPDsihm5CfP5A0CP/K4D385tM=	2020-02-07 01:14:15.008569+03	591
432	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiJlZDFiMDZlZC0zOTU5LTRkZDktYjkzMi00OGE1NGM1OWU0NmQiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiIyMzA1NjAwNDkiLCJleHAiOjE1ODAxMTE4NDMsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.UCrTXnzpuDBebsD6w5ZhYT5MkQPzc2UR6otMRbZQg4Y	1T5V9GQDB5KltgCRhMmaN+xlv2Da6ZmkluQJrgNKffs=	2020-01-27 10:57:23.225297+03	365
416	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiIxODRjMzY3Ni02ZjVmLTQ4Y2EtOWExZS1iZDE4MDY3MGFlOWMiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiIyNjgwNTk0MjAiLCJleHAiOjE1ODAwNTcwMjQsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.g9rnqrne4_rnTVfnPPfnWURJY0Ll0GxBNWAiN5vlow0	6zclz5j+gfte1PIqHpvOa4L2AyDaJmzes6mQEazbemc=	2020-01-26 19:43:44.383787+03	350
343	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiJmMTA0YjI0My0zN2Q0LTQ4Y2YtYmRkZC0xZDkwMjllYWVkYzkiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiI0NzM5OTgwNDgiLCJleHAiOjE1ODAwNTcwNTUsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.kBeKMhJ8wzuZb1fHfNg8ztAi1yV5momnxB4DEUgrYsQ	C+UDRaWCYdlGOWe3GUPzjZBlEfy4DMTRs0ontAsAS2E=	2020-01-26 19:44:15.927529+03	287
418	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiJmMjY2ZWIyNS0xZDk3LTQxYzktOTRlZi0zMzJmNDk4ZWM3M2IiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiJVQ29NNmxWNXVWV2xBVWJZTzI1cUNXRWciLCJleHAiOjE1ODAwNTcwNjksImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.H4WzzKvfTnF36MnbQ_b7FzZbKj1de6fvdzfA7yNN1rY	k8BXDI90fm9FkVYpnP4TV//pO11XICcdDvXb2Gr8px4=	2020-01-26 19:44:29.794117+03	352
489	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiJlMTc0ZDM5Yi01OGQ4LTRmMjMtOThmYy01NGExNTgwZjRhNmYiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiIzODgzODQ5OTYiLCJleHAiOjE1ODA0NDA0NTIsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.I5U8u4l0k5iIA6wZ7bvSdV6Yglnp1L7Fgspg6UI6LCg	HPxtyvQz4mvShDXFfyzIjAKFL93HmRn1VxtcNCEsU94=	2020-01-31 06:14:12.809148+03	419
433	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiI2Y2Q0M2NmNC0wZjY3LTRiZDItYjJjZi00MDg1NzJlZTkzOWYiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiJVQ2lRZG5yMGY3MHNMWjNsUjFON01YaUEiLCJleHAiOjE1ODAwNTc0MjksImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.f4BZdzea4L8jN-54YgDmYvWkvsZJsm655pS12spMMRE	XXI4aDxst/M1vijGE7qZiAVJDMtt9ag2JUy4RxHNqS4=	2020-01-26 19:50:29.535386+03	366
436	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiJiNDE4NTRjOC1hZGUwLTQwZWQtYmMzNy1jNmZlZGEwN2E2NDAiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiI0Mzg0NTY2ODMiLCJleHAiOjE1ODAwNTc0ODYsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.xODa0M48AOrNU4cTTkDV5fyfNctXQoVBIr01M_eeINQ	xQ5hm+LAtdKAiFYq88xGq2x6sXmhah0xSXeOhftodZ8=	2020-01-26 19:51:26.15065+03	369
439	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiI1ZGYwOTI4Yy1lZWM2LTRkYmQtODZhZC0yODMwNjU2MzdkOWYiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiIyNTM5OTQ2MjgiLCJleHAiOjE1ODAwNTc1NjUsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.PI2YdinmxHqskeCrVkhGugYQr50f2LxVZzYbwznfab0	vsCFLENcZNUlrH6awix9HFyjkySpbXokKaiJUS9/H9k=	2020-01-26 19:52:45.782621+03	372
407	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiJhYzczZWJmMC1mNWY1LTQ4ZWItODZjOS1mNTdkYTMwM2VlNzgiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiIzNTM2OTg1NjYiLCJleHAiOjE1ODAwNTc4NjMsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.BM6DuX6F_gfziSnme-G3-4V2YZNwweZ8NzCmfE-6xh8	bb9xwwPS2V4EsOQNjyA9ckxyPvgJmDPubJmGmbKuOQE=	2020-01-26 19:57:43.331037+03	343
421	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiI0ZWM1ODBkNS02NjY1LTRiNTUtYjJkMi05Zjc2Y2QxY2NhMDYiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiIxOTUzMTg4OTIiLCJleHAiOjE1ODA5MjU2ODIsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.rIW2mLGGWdwU19aR6Zx6QT3n32MVmMtNBA_uXnvyW0o	vbSef+mFxq54VgXwb2GAhnP367xSKKs8pywD7LzYyhA=	2020-02-05 21:01:22.455512+03	355
431	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiI4MTliZjRkMS0wY2FiLTRhN2MtOGYyNi1jMTJhYmQ1NmY5YjciLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiIyMTc3MDA5NDMiLCJleHAiOjE1ODAwNTgzMzIsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.Ar-717KxQMnHqnit3xosbh3D1mulLHqw74DPVNs8bX0	HhZqi3Gw3taPosTIkQNiE9cFYWgAEACSkCdG/nSY6Ws=	2020-01-26 20:05:32.971905+03	364
434	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiJhOWQ3NzI2Yi01ZmQwLTQ5ZDMtYjk0MS03ZDczMzA4ZTQwZjIiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiIxNzM4NzY2MzIiLCJleHAiOjE1ODAwNTgzMzUsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.j8L2ijpYq_w3-zCVa0I8QX34DSlmF7h2_F2El6WShPo	YXUaoXe5essyO0xBL1H0ArOKKIQDj56Yzc1+JU2EVw0=	2020-01-26 20:05:35.577121+03	367
408	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiIwM2UzZDZiZC1jYjA3LTQyMjMtOGYxYS05MTRhYWViOTFlOTIiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiIyMzY2NzE2NTUiLCJleHAiOjE1ODAwNTgzODEsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.M2Dd7sLhCUhQRjgrX4MIyHjzpFy2dJwkJqHZH0E-Xts	lvwCGgoi3gbkJI8NPu44r6aNfn0asm/weTIwfJXF9B0=	2020-01-26 20:06:21.370688+03	344
768	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiI3NjI1ZDQ3ZS02N2Q3LTQyZTQtOTg2NS04MTE1Mjk4YWEwMjIiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiJVQ3RRaFBlSTZuTEhLaWJINHNjdXVIckEiLCJleHAiOjE1ODA1Njc0MTYsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0._lnC2OtFelQ3CS6UxAq0Bym3t74y_lIXbrC4u0DrM94	2nDP7fHOjfN+o5f8rZgIJI4MDNNIP6QZnNu+Oslo3vM=	2020-02-01 17:30:16.058855+03	645
409	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiI2Nzc1NjI5My05MjBlLTQ0MzAtYWZkNy1jMGY3ZmUwYzNjYTEiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiJVQ3BOTDlFZExGUzNGc3FJQnJkYV9raUEiLCJleHAiOjE1ODA5MjQ1MTQsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.1qzCAcIFbpDC-9eFCSHOO3Of7_yzSqAdmepg5dIzRr0	nXwQ39sk+Rz44eNPPEBNni+T5JazfJ5opMm8DZx8Nyw=	2020-02-05 20:41:54.72126+03	345
406	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiIxMThmOWNmOS01ZWVjLTQ4NjktOTVmNS02YjQ5MjZhYzU1Y2YiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiIzNjMxOTU1MzAiLCJleHAiOjE1ODA5MjU5OTIsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.McUcGsIt7Hzg44LTKPHq7Udxbl4lQ0e3gGzrekTTV-s	8JLisYypSFCaLPJ0ili0Lhz0TRkRhTzHzVF/TGjgmgQ=	2020-02-05 21:06:32.678934+03	336
699	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiJjNmQ2YTE0OS02MDYxLTQ1NDQtODBjMy0xZjA1NDY3ODZiMWYiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiI1NDAxODc3NTkiLCJleHAiOjE1ODExMDY2MDIsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.TiKdo_UD70E_M0dy1oqfiG9dnMbsmAZYP2-O9dCRrUM	/Jfv+H1TDlTSytzpijv1JM+pcp2y/u4q5qIuFUv/YZU=	2020-02-07 23:16:42.801825+03	13
442	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiIxYzJjYWMzZC02Y2QyLTQ3MjctYWUzYi1iZmYwYzM4NjgwN2MiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiIzMzA0NzYxOTIiLCJleHAiOjE1ODAwNTc2MDYsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.216XunGq-QTPe47nviNV0DK4BVRPPUU8-xcqmxiZbqE	eNhIVnLjVOo33M0fB7FBzLJ2QXwnmnyzU+xvf4A0LkU=	2020-01-26 19:53:26.940742+03	375
443	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiI1MjVkMmE4Yi1lZDI5LTQ5MmQtYTdlMy04YzI1MDEwNTYzMmEiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiIzMDUwNTA5MTUiLCJleHAiOjE1ODAwNTc2MDgsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.K2leQHInMemeVC4mb1l1yFNm3lWEqPGts5ie8bvBMbE	lNPKaXEnBm2MbLZoqKr1vNzvs9Or2iAcDjdLKK9rUqw=	2020-01-26 19:53:28.114488+03	376
444	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiI0ZWQ0NWViOC1jNzgxLTRlMDAtOTU3NS1jNWE5NGMyMjY3YTEiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiI0Mjg3MjU5MzkiLCJleHAiOjE1ODAwNTc2MTYsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.QsiLYN-3wgFJWpUr56Xuz-kcIvCM1spq6W-KsDpeWio	13NaswJ2Xflh0A2Chd6jMuh4hHecOBjGmaaKlaqgBqk=	2020-01-26 19:53:36.943924+03	377
445	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiJkMGE0MjQ5OC0wNWZiLTQ3YTEtOWU1NC03NDFkZWY3ZTA3MjQiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiJVQ2JiUEEzbTRJN1R3bi1EalFTR2N3bUEiLCJleHAiOjE1ODAwNTc2NDEsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.bue5pMy6WE0eFpUtv69UQVGevLJRNGaJ7eccAXRWjqw	M0lQ6LoLXlnSFslcC38I7TRcyPaOsehjKgmqDTAc8+I=	2020-01-26 19:54:01.369285+03	378
700	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiIxMjFmYjNkYy1iMTk0LTQwYzAtOTBiMy04OTYwZTczMTE5MWEiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiIyMTQzNTgyNjciLCJleHAiOjE1ODA3MjIzNzcsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.vkL4wJMqVVz-0u6VDg7Pdw1eHIlTLC9KGrh9k7y-dNM	G+z6grdIVR9rNWhNzWaSw3tjE3seHCuVJhjRLcUt0Bs=	2020-02-03 12:32:57.20403+03	593
451	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiI2MjI5ZTA4NS1iMTA3LTQ5MzMtOTc2Ny01NWVmYzJiOWUxM2IiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiI0Njk0ODkzNjMiLCJleHAiOjE1ODAwNTc3MjEsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.S5Sn6mb4hbo8VmrCRAdUExnCd4KeThPu4mRChZs44b8	Zwe0ZCi8I1wfWfZ0ZFOH/li1fqBoUBL5Cwv1lErM+XI=	2020-01-26 19:55:21.105844+03	384
447	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiIxMzFiMDdmNS0xZmQ0LTRlOGItOTJkOC1lNmNhZGQxNDcwMjMiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiJVQ0I0NzhpQ3h2WTJETnZhUk54WmhFb3ciLCJleHAiOjE1ODAxMTY4MzMsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.7vC3VbfGZdzrloSsi7EHRDriiWuOyCLzZUp4ln8e92A	14x1WgUFj2BxpqI0Y4DxC20HGziGErg5bT+fUds4egw=	2020-01-27 12:20:33.45503+03	380
453	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiJmM2Y2MWI1ZS1iMmJjLTRlMzktYWFhNS04OTdlMmZhY2RiMmEiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiIyMzM5OTk0MzkiLCJleHAiOjE1ODAwNTc3MjQsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.4I1kCKROQ1jVzmQPlP0Nk1JtZMF6dHzt5k9KDZY-f9U	qNEreUhUKWaeAvQEMYoeEJGZCPbfhIwAGsYbInbJOEU=	2020-01-26 22:40:24.061955+03	385
458	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiJkYjM5NjBlZS03OWFkLTRkZDYtOWM1NS01YzcyYjRmNWYyMWEiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiIxODc4NDA0MjAiLCJleHAiOjE1ODAwNTc3NzUsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.jJdtaPYDOupRO91TTqaXSXY9_Ca7OcCa70dbiyIHasY	Loebtgsi8tTWO5GjFQ/bX5izdnuCouLe6txjWw1vFwg=	2020-01-26 19:56:15.816883+03	390
459	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiJjNjhlODA0Ni05NjQxLTQ5NTktOThmNy1hYzc4MTI5ZDA2YjMiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiJVQ3g3aGx4Q19JNEwyT19ScW8tYmcxNGciLCJleHAiOjE1ODAwNTc4MDAsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0._mbFvBWZS6Og79KTyLpHucz7wncl2SI9Jui3XYi3_VE	WVcfImd4dN8/IBskniMZp3ftjwsajknz0nnYbdi9g6s=	2020-01-26 22:41:40.013058+03	359
460	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiI1ZjFjYzhhNi1hNjIxLTQ3YmYtYTY0Zi0zMTJkMDkxYTFiMWEiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiI1MTc4NDQyMDAiLCJleHAiOjE1ODAwNTc4MzksImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0._uPGxfW61DymAm7LGN3voJGttq5eejHUFUpjIfU8WDQ	J9RVBKU4r/o3u0qXA8BRzQyRE3pGw6UWtPoEAnHAAqc=	2020-01-26 19:57:19.031038+03	391
463	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiJjNzI0ZDUwYi0yNDEzLTRhNjEtYjAxMy00Y2NiZDhlNmE0YzgiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiJVQ1N4NS1heFJ0bmpSX0FSVVNMaDM0b3ciLCJleHAiOjE1ODAwNTc4NDksImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.A53vgSOSyMsG68MpUDmhU4nHYCdXLge232FB84TfJhE	oNLHopO0Gz+YR3bpLOu67D9xAls5N6oU2mPgucnFVpA=	2020-01-26 22:42:29.592506+03	393
465	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiI2MzA3MDQxNi1jMmQ3LTRjMDEtODgzZi0zNmFlM2RlYmU4NmUiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiJVQ2xsTzNOR2VGajd4SmR6MnVjeTFWRmciLCJleHAiOjE1ODAwNTc5MTIsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.NrLwtnrnpjkKoe9peoCAtNqOP3G_HqgTWG056TZ3CV8	ynBe4uhEj3c/nGUfl8++Rx14o4jt0Em4FfQ3u5SCyY8=	2020-01-26 19:58:32.936609+03	395
466	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiJkNmVmZTE5Zi02ZGVkLTQ1MDYtODk5ZS00N2I1ZTExNWY5NjkiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiIxMzU0NzY1ODYiLCJleHAiOjE1ODAwNTc5MjksImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.FdrjUqiOusu7cnIImXfhAXz10wjSbon-fXJ4UxdfZhY	787RFRZ1R9rrHVP2++wOvXz2eOV9Jna16JcdHfQk2Lw=	2020-01-26 19:58:49.07729+03	396
441	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiJkYTczMTJlNS0zNjMyLTQ3YTktOWE4Mi02ODA1ODlkZWYxNTYiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiIyMjMxMTI4OTgiLCJleHAiOjE1ODAwNTg1ODgsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.rgBb9_9IsJzCDNixxvjFUCD1cbJbw_Ne5C4UW0d-FQA	oNTGLAsnQzKxpCcbps2i0/6WriqU4doUQf9RdC9q22U=	2020-01-26 20:09:48.049114+03	374
450	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiI4MDQ1MDU1NC0zNjNkLTQ5NmQtYmNlMi05ODIwMjJmMDQ4ZGUiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiIyNzI4MjExODIiLCJleHAiOjE1ODAwNTg2NjAsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.KEL1OkcNV2iAH8FYJnOk9JUEorUZJ5FeEwc7MUJYQ08	8eAeBe0RUKiJIf5gpEyz5yfcH9XhEzOBIjOmuXuHKMQ=	2020-01-26 20:11:00.196015+03	383
457	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiIxYTFjYzBlYS1jZGI5LTRmMGUtOWM3My1kZmNiNmQ4OThkYjUiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiIxNjI4OTcyMTQiLCJleHAiOjE1ODAwNTg3NjksImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.0qJeMSUR5BBQY_sWDP22OTgufikRhgYjId-LtGa5g7U	xrXnxEiHwOOuoSku9+nnULbpuiu6eMGvAqQyqA8lLpc=	2020-01-26 20:12:49.973572+03	389
455	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiI4YzkwMGM3NS1iZjA0LTQyOGQtODQzYS1jMjlmOGU2YzkwZTQiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiJVQzA4S183aE9zenJSTndMV1lnT2w0NWciLCJleHAiOjE1ODAwNTc3NjEsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.WSG_Mqe9x8qHiwByPcrTYzWsXOQxtZo92seraI5bHJo	AZtDwDqZVXXdB1FEzxyzCFxN+gZhttT/e/TliXbFA5U=	2020-01-26 19:56:01.358967+03	387
456	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiJmMDA5MzEyYy03NmEyLTQ5ZmEtYWE3MS00YzI4YTQ3NzcwNDciLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiJVQ1JSeFVra1oxUWZlcERqVTZNT090WmciLCJleHAiOjE1ODAwNTc3NjMsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.wvI-bfllX5Hz3TWMQjvYrKV8qWRTTkvEcI5KXzDCXGQ	XuyQag1Ovjbvj7paiFow1wwmTb9B+/yxQCPnLPHdxtk=	2020-01-26 19:56:03.959987+03	388
461	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiI1MjdiNGZkNi03Mzg1LTQ4ZDMtYjlkYS0xNjliYTAxYzM2MzQiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiJVQzVfSlM3Nlk1a1A2cVAwdTI0andWTlEiLCJleHAiOjE1ODAwNTc4NDEsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.8wIe5FBZyUCoxz1i376TRQsgDExH3-0qxjkr0rjy4Qw	WRqzHyUEE9jRp6rJeSMFBUofQQC+8W9PM9HOdflXOF0=	2020-01-26 19:57:21.058054+03	392
449	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiI0MWM5ODIxZS1iZjhkLTQ4OTEtYjFhYi03NjcyMmZiMjBlNzgiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiI1MTc1MTg3OTkiLCJleHAiOjE1ODAyMTkxOTQsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.Rq3Db1vdB6AGB3vYqhHF9h9jnCdCvgMhNqX2AewapSU	l0O8u6vIHXq/PYVDcspJaVe1aUw9KaH/MBTttCItdzE=	2020-01-28 16:46:34.316232+03	382
464	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiI3OGU3NmRjNS0yZjUxLTQzMjktODMyYy1jMjVlNzc2ZjBkNGMiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiJVQ0hRaFl1VXlURXFLd1Vyd1RJQnQxNnciLCJleHAiOjE1ODAwNTc4NzcsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.o2c2EUifa_u3f3AnoDzlht6RD9wspfrzx5fcmwK9TqM	zXVYDfRVjhpfq61Es3f8s1TsPZpmP1d322WbkflmOs4=	2020-01-26 19:57:57.359115+03	394
377	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiJlY2NjZTk2MS04OTRhLTQwZDEtYTZlNC0yZmZjMjlkMTc1NTciLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiJVQ3hDekpybTFLNnp3SjZrbDlyMjV0eUEiLCJleHAiOjE1ODAwNTc5MzIsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.trTiDV5-7dHmSbrRYzwOee4bvEkswkGv7FbQos2ie1I	Nk2p3easjxLUAjrKiZ9C95JNJN4Pp+sAwP+pFdxQqAE=	2020-01-26 19:58:52.793855+03	318
472	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiJmMzY1ZjMwNS0xOTNhLTRmMmUtYmE1Zi03MDRkMWJkMzU4MmMiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiIyMzgyMjY3ODQiLCJleHAiOjE1ODAwNTc5NjUsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.kYP2EFPugG_Wo0ld_PPapeOC_kGu1p9qLvzYdW8D0lc	ScE/DlJBe1UwByZzRm8E4nOQA3k4lx0LsAi1ZFU6moA=	2020-01-26 19:59:25.139284+03	402
475	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiIyMzgyZTY3Yi0zZTMyLTQ2Y2QtODA0MC1jMDg4OTA5MTRmNjUiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiIyMTkwNTk1MDgiLCJleHAiOjE1ODAwNTc5NzMsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.MgKvkHtl-Q6sET4NQL6-_FLl3ryea-Kxpww3bhFeOds	mx0/BLi0D6tzP2iutL2+4tyY1G4vT66Y8dLJtGLMRMI=	2020-01-26 19:59:33.293668+03	405
476	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiJiYTg5ZGNjYi1iNGU0LTQwM2YtYjYwNi0wNmJlYWY4MTI3NTUiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiJVQ2QyWk40NDROb3drZ1pxZ3VzZFF0UkEiLCJleHAiOjE1ODAwNTc5NzMsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.cBZUz8BqEffl14NEFfqwxWpzFLCnWgioEGQqA7d-NbU	yIWPjTDHC1wfz4U2JwHQl3ozlBsNmnYV3Dl8DPSZ5+8=	2020-01-26 19:59:33.684904+03	406
479	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiJhYTJiNTNhNy0zZWY2LTRjNWItOTExYS01YTA4MzVkNzNjZjgiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiI1NTUxMjg3NjMiLCJleHAiOjE1ODAwNTgwMDIsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.erOdqlEXVBDnq9dqM1a4n42gBWH1zu6k7XcMjMD2rpo	rpK3C/CsvqBIzcuoYfx8uGEdRJyTt29aPIMwmNBcmT8=	2020-01-26 20:00:02.000689+03	409
486	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiJhZjMxNzQzNi0wOWQ3LTQ3NGUtYjc2Zi1lYTcwZjgxMmMyZTgiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiIxNjYxNTExODUiLCJleHAiOjE1ODAwNTgwMjIsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.8ehc_EhNIfV75a_0fRoHwA5sEieGKoV1j5iB9bDEU_I	DrBqjiNIujE94te1L8QIVOgQR+b8v7jwXEkaxlqObH8=	2020-01-26 20:00:22.995008+03	416
487	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiJhZTc0ZmRmOC03OWY3LTRkZWItYjQ2ZC1mMDExYTQzMDM2NTAiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiIyNzIzNTA3NjkiLCJleHAiOjE1ODAwNTgwMjcsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.4MOiBb3Nan-fcWZ5Hb_mtdZJNXUVLuHh1vHVsH_BduE	2DgGDmgXjZRi6JxWH7w1gvWotnCVgmWO91amJHZ8iUM=	2020-01-26 20:00:27.988203+03	417
488	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiJmNTQ3NTMwNC1lMmRhLTRlMDYtYmRkYy05OGZkZjI3YTg5M2YiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiIzMzU2NjcyODAiLCJleHAiOjE1ODAwNTgwNTEsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.bJ349uQ2Er1cWASJjmnBu_E6SRxsIi04KjtZ_Aozk2g	iTxkois6AfP2lWsntLtZOGrF5JPvWjx86dyGCHB8IY8=	2020-01-26 20:00:51.910747+03	418
493	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiJiMTYwMGFlMC01ODFmLTQ2ZTQtYjZhNi1hZjE4MjUyYjM1NzkiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiI0NjA2NjY0NjIiLCJleHAiOjE1ODAwNTgxMDUsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.Zz5L8bzyVju7vmHqm2n54-hS0nmkUG_ncQV7NUYrjrA	36k9nIg5UJM1dTu8tGjY41pVkeVY2+NtZf8C4BcTxp4=	2020-01-26 20:01:45.217612+03	423
494	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiI0ZGE2NzBhNi04MDkxLTRlYzAtYjJkMC1kNzkwZmRlN2Y0MGEiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiJVQzVRdGhGejV6WHMycHdydVdCcWdfTHciLCJleHAiOjE1ODAwNTgxMjAsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.FE14qrHKe6ux3Pne17KVse3JOAOofmAhEAo8cyckU2k	yYJ0EdWbDkfoxkrp9NwuqXpwJ16kkOzuFQ4vf39Cpmc=	2020-01-26 20:02:00.32897+03	424
454	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiJiNzVjZDUwNy01MjUxLTRjNjEtODRiNC1mYTZhODA3OWJmNzAiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiIyMDIxNTc1NzIiLCJleHAiOjE1ODA1NjIwMTgsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.YvBHy9mjBABcuBhT_27bn2nQwqI4_FaOZPtB4pCzV1I	dQ3cyd6I8mZKS8hKUXbUs372+TzhZlwBf+GBSmPksMg=	2020-02-01 16:00:18.972747+03	386
469	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiI4YWFmZmUzMy01MTk2LTQ3OWEtOTVlYy01YmM5ZTczNjI2MmEiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiIzNDYzNDI1NDUiLCJleHAiOjE1ODA1Njc2OTksImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.03KX54MBB7S1qNtYQ7tmpnmGn66I4E4-SJT-n4VBBVE	yrTPVty327maEQrwrwSmSC/uTMbiSHPLXZPmjyQ2Esk=	2020-02-01 17:34:59.988379+03	399
470	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiJiOTYzNWU4YS0xMzE0LTQ1NGItYWE4OS04YmRkYTY0NzJlNDAiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiIyMzIxNzg5NjMiLCJleHAiOjE1ODAwNTc5NjIsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.PtHFyULuYfiNC-KHO_ZIcRua3bZ3E0sc5_lDHUnzUVo	md91ZEZGtoDBdbk+oPbxRuB4p7bMZ3FnArd64n2eWD0=	2020-01-26 19:59:22.896467+03	400
473	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiJhMTRmMTNjMy04YTk1LTQ4ZDMtODQ3OC01ZTEwNzY3MzNlNWIiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiJVQ0V5dEtCeEEyeEdhQ3NScEdiR0tQWkEiLCJleHAiOjE1ODAwNTc5NzAsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.QmNl4m3Bj057nLlc898XyO4uLedeiCB3bJ6SXBDk6ro	XBVvzmb0abFTwYnrznkqMJJdgKEfqMVNsuNTcIzCT9w=	2020-01-26 19:59:30.049936+03	403
477	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiJiMDM1NjM5MC1kZDNiLTQ5OWYtODE2MC03NTZjZmY5ZDA0ZGUiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiJVQ1Q0YkYzUU1uaWM2d01IeDIzU3ZaZHciLCJleHAiOjE1ODAwNTc5NzYsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.wrp8lz0LtJ_WRX4djZP6FY44AlkDQZh14p103QbNey0	25HCCm6cGlXu15D+/kAvfAkvknKyBy5ymiZhxT8xz2o=	2020-01-26 19:59:36.998821+03	407
471	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiI4YTA4MzYzYi1hOGQxLTQ4N2MtOTI5Mi05NTRlZjk3ZjFiMDMiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiIyNTUyMDQ0OTgiLCJleHAiOjE1ODAxMjYxOTgsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.1-Lx0pweumPK8y_yUZgtUyrUrpHdCTMUMAWTORY2Ylk	ynAtKeihS7Yy4Ugcg2bOGUsEkjLbNSNwvyschyUvx8M=	2020-01-27 14:56:38.818585+03	401
484	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiI0OTEwYWM1Mi1hMWQ4LTQ2N2ItYTQwYy1jMzdkZDI1ZmRjZTEiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiIyOTU1MzIyMjgiLCJleHAiOjE1ODAwNTgwMTgsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.Yfe1qZL9WnAod7Jvw5V6tEWDwBsWqocMXNm5FAPT2mc	TGrUoLofSjIp92bowmuW2GMHraC7SbiQ4ZyPTRYxMh0=	2020-01-26 20:00:18.037345+03	414
491	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiI1NDU4NDM2ZC04N2Q3LTQ2ZDItYTViYy1hM2Q0NWFhMDlmMTQiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiJVQ1FFeUVMMWNwTlpLUFZzVi01dm9uYUEiLCJleHAiOjE1ODAwNTgwODcsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.0pVb2OIrDjn5iFZcVl4MJPO5Mw9g_htjJnnf7WCnVkw	qHC394Xp9WvWrL1ClxU3r29UsKpUIbCnTpmonVHS6yw=	2020-01-26 20:01:27.581229+03	421
467	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiI3YzFkMzkyOS1lMjU4LTQwOGQtOGNmNS04ZDlkZTY5YWY2NGUiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiJVQ2R3bElJR0VBdTA2Y2xveXJqTXdZeWciLCJleHAiOjE1ODAwNTkxMTksImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.wfS_ea92JoBIVKfvFswN6eZQx8KSlocQSvxN07Xxymo	787z5nFEMiWYBh+JogGx9KuaPl5aaesPMwdJR1VfSSs=	2020-01-26 20:18:39.670894+03	397
736	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiJkNWFlYTVlOC1iY2EwLTQyYzQtYTEwYi0wYWU2MTQ1MjljOTkiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiI0Njc5MDMzNTEiLCJleHAiOjE1ODA0NTkxMzMsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.t-eDHC_FJn3HZeFXpVOPJxQGlLczSMNyY1MACnPwHRA	gdE4bufmTlk/SsyR3TQG+zdnPZOlBhabivrzUh5QT/g=	2020-01-31 11:25:33.494188+03	622
769	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiI3ZTYwNGVmYy03YzIyLTQwY2QtYmMxMi03OWFhMjkwZWRkNzciLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiI1MTE4MjgwMjYiLCJleHAiOjE1ODA1Njc0MTcsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.WXdsJ3NaRYMRxxDqwln_rIDZjXVkmwggneO4ZuQlDug	qzy9vkiZTGW3kWQWvM1AbklWeZVLkD+z7Un3iZVJpeA=	2020-02-01 17:30:17.848276+03	646
774	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiIwM2JiNWYyMi0xOWRjLTQzZjctOTdkZi1kZjhiMGExOWRlZDgiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiJVQ0hPVVhubzI3Z1JZbElucW9TV3ZkOWciLCJleHAiOjE1ODA1Njc0NTMsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.zz5HsYwpL1IETF68AoRjDR7pTWSgsiw6izu9Gv0GutE	Zws/8tShtbNhZ9USGBwOdV3iqFLDBP5A3144mL7sdeA=	2020-02-01 17:30:53.102082+03	651
791	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiJjNDk3ZTIzMi0zZjczLTRiYzctYmQ5Yy01YjhlMmMzZGQxYmQiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiIyMTk0NTMzNjAiLCJleHAiOjE1ODA1Njc1MzYsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.Pw1EXDB65KiVmWaQd_ZXjFu85_1OvaeuoRNQ5sD3Ar8	iS4dlIam87H2LJAj4dHCkrGHCohLbiwTyB7UPOL6oF0=	2020-02-01 17:32:16.277692+03	665
793	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiJhZGRhZmEwMy0yM2RhLTQyZjktYWVjMi1jOGY4OGYwZGQ4MTgiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiJVQ2Y0UUx0ZVZzTm5NYncyN0FhbS1EZGciLCJleHAiOjE1ODA1Njc1NjcsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.AJ9Luy5E_6jEGyXtv9_40H_hV1bFpduKLTXxHmhcQGY	xbnDs33cwqdM4IIGkeviV/1LzYzoKkT9wb6nk6HCUrs=	2020-02-01 17:32:47.13739+03	667
800	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiI4NWFlZDIwMy1iOWM4LTQwMWUtYTI2ZS1jM2ViYzk4MWVlMzEiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiI0NTA4MzIxNjMiLCJleHAiOjE1ODA1Nzg2NjYsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.k7qzHnYBGP2NjMgjbd_WTJU9mf56bI5WpVPOukHsecU	yhDylMAkJT3uV+QfGAKXhoXFugVHQHZjpf97ntMUMTQ=	2020-02-01 20:37:46.837568+03	673
701	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiI2MmQ1NDllYy02ZTQwLTRiMTItOTY1ZS1jMGQyNTZkZTgyOGIiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiJVQ0ZCMHkyT1JyN3BuQzZ6Vkg1dWRneVEiLCJleHAiOjE1ODA1OTEwMzIsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.R-qzLUox88LleBP0whhBeKHUdG-iWFzpJD8qZ5t7qeY	f9DQgWkzvX4UnpyhQdkFbIKARWq/KUqMz+AbojGAkIQ=	2020-02-02 00:03:52.41358+03	501
790	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiI5MTgzNzE3My0wMjdjLTQzN2QtOGUzZC1lZTg0YjdmNmMzOTEiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiJVQ1RwU2VtNWlRbGNBZDVlUHZoT1lhMEEiLCJleHAiOjE1ODA5NzUwMDEsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.M0WsZdzGLSkcPG4JhcfKgOFUtw8w4N8prYP-saCGOxw	bGXoF7EKVwcG/MX41OVqPzOqi4jUOevT4tAfgDpULPo=	2020-02-06 10:43:21.337412+03	12
474	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiIxYjM1MTQyYi01NGE0LTQ0ZjEtOTAzNi0wMTNiNWZlN2VhZmMiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiIzMjA4MzAwODkiLCJleHAiOjE1ODAwNTc5NzEsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.eqRXCMxbT0GDfWmrYQMrf8K7KC0-UIT5n0w3WlhA6l4	j7XE50BgKmqiIWvLh4iNwncb5WshOtmaWSJ4NW4NXqE=	2020-01-26 19:59:31.365103+03	404
478	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiI0ZTI1YzU3MS1iZjk3LTRmOGMtOWNhZi0xZDU3MGFjN2VmNTAiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiJVQzZyN0Vldk13TFFBdXBhYzB2TFpWUXciLCJleHAiOjE1ODAwNTc5ODcsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.zStEqC5w_X14S5WJpMc5jzARyy7ssYRwsfNtUH_aa1s	0769OO3P5vHNpcRuCPgAYP4g+6KwkrW2Koo2dc+iP4k=	2020-01-26 19:59:47.692947+03	408
485	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiI5ODZkZjdlZC0wNzhiLTRhMmYtYTEzYi00ZTE2NTBmODg1OTkiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiIyNjE1MTAwNDUiLCJleHAiOjE1ODA4OTk5NjcsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.hgRpWAKkkxwjZ31HqOuaOo53jUvnWNxAIy_w3WUcljo	wJxhN/QLx1hyMEySXGU1Xe+y2QqzCpggzK5w+Svj6d0=	2020-02-05 13:52:47.251971+03	415
481	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiI3MWZmYmVkOS0zZGNmLTRmNTctOTQxMC04MmFiNjg4ZWYyZWIiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiJVQ3ZRcFFVZEpvZ0tIQXVFamk3eW9kUWciLCJleHAiOjE1ODAwNTgwMTMsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.6ezvTFPPqZtWmJYr0IK-rP8DbYaN-0LlcSG_CObdMP8	8IEPm07dKcU+0qR0NjL/HrWgHi3FpJUQ3whoo9KpmlA=	2020-01-26 20:00:13.873061+03	411
483	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiJiZjM5N2Y1YS00M2U5LTRiYWEtODcwOS1hYTcxYzVmMGEyYzgiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiJVQzFjTGpENGs2WldKNHdGdk1jMEZjUmciLCJleHAiOjE1ODAwNTgwMTcsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.WfD_smvrOCuOE_t3L0-42ltOgpXHb3TnaIyHEmQZAco	4SfKWYM2ltEhpDHP1zColn6/xqfart6uoE/jZu/T/kg=	2020-01-26 20:00:17.317785+03	413
492	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiJhMWZiYTYyZC05ODJhLTRmMjUtODA1Mi1kOTg3NmE0Njg2OGIiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiIxNDcyMTMxNjciLCJleHAiOjE1ODAwNTgwODksImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.9WtwRMJTAMgM5GChwCbBb67R_ZcVve8DCDCnKH0mD4g	egtyjYJXXqFnivNHNNXsQ07X+sLTu7+D4p8S/r6CUhk=	2020-01-26 20:01:29.827445+03	422
496	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiI0OTBmZmNhZS1lOGExLTQ0ZDItOWY2ZS01ZjBkNzUxMjQyMjAiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiJVQzVWS19UUHZkczRjQXcyR2hZS2RMclEiLCJleHAiOjE1ODAwNTgxMjcsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.3DICN92wYG71rod8Jhv9TAKDTGjdHvRekZ6a8qbY2xI	X4d32PoEkz9OjNDCEksRAGUnlCeDkd17XttfhnCN7ZQ=	2020-01-26 20:02:07.102283+03	426
498	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiJlYWY3ZTc2OC1lMDRlLTRkZWItYWI5ZC1hNDU5NTcxNDJhOTQiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiJVQ3hNNHhPQlF5eVctVVZ6cDFGbjlOcWciLCJleHAiOjE1ODAwNTgxNDgsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.DWql1p_b557tHNR2AI1YUiO_n83tUvW604Lukr_ze4c	+DWFtJV6lfq5XSHSPZSNzsm8z2amQHWX9GfrT18xnwM=	2020-01-26 20:02:28.415616+03	428
702	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiI4MDNkYWNmMC0yZWRlLTQxNDQtODU0Zi0xNmRlODFiMDZiNWEiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiI0NzYxMzc5MjgiLCJleHAiOjE1ODAxOTQzODcsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.y7_OH75hM2bRKhbp1vy3U5mmZnLIq2lHN4VbjJNRdCk	Tt4nLnrsFVcW254PaR2kxRrIKlra8JLQRxI/7aQd1jg=	2020-01-28 09:53:07.584546+03	594
500	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiJkNTg0MDE2Mi01Y2FmLTQ1NzItYjMwOC1lYWEyYWZiNThjOTAiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiJVQ0JmWm1Sa3lhdW1CRjNiZGtJV2k4UFEiLCJleHAiOjE1ODAwNTgxNTAsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.blPgToBV3J49Gw6OmN0i94rdLlJNKa5SybbL2hw5xK8	21GMgqs/to4jpFTYUUQN9CeayKPzgkVC+5tsem8OMt4=	2020-01-26 22:47:30.323855+03	333
501	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiJiM2RmOTI4YS1jOTM2LTRiYzgtODQwOS0zYWM2YmIwOGQ5MTQiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiJVQzUxVkpQR3dNbTAxLUxma3h2QlNvalEiLCJleHAiOjE1ODAwNTgxNjEsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.h1n69XTZsRwrhYz2aItrbYzlHVJo7ARckWJr94FBfGM	SuERTRASO8z+AuruHHwMT3JitodaO5/RWagbqMnhEQI=	2020-01-26 20:02:41.51862+03	429
502	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiI3NzZmZTlhZC02MDg4LTQwY2YtYmVlNS0wODEwYTcyYzgyNDEiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiJVQ2Uzc1lRc0d2YTIwZzctNVpFVHEzSkEiLCJleHAiOjE1ODAwNTgxNjYsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.KbNOoZtOy-_ENf3FTnf0i6pkemWMkiW7LIImtz53pv4	a8/p5RRVLPWoh3DRI+xsm3X7gGZYHPygS3741EK5ku8=	2020-01-26 20:02:46.649019+03	430
468	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiJhOGVhOTRjYi1hZjkxLTRkNmUtYmZlYy1lYjlmNzgyNWUwMDYiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiI0NDM3NDE4NTUiLCJleHAiOjE1ODA1NDk3MzEsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.Pav-Lc0XaZE022_ir_YjBpAw0ct9wNRmETjN25pATWM	rlcuJoZzLCVWoObW4t8L2FDsARDtEPsGJtpy9cix5PM=	2020-02-01 12:35:31.57536+03	398
490	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiJiY2YwZTZjMC1lZWViLTQ3NTYtOGVkYS0zZGI3NTAxOTNkMjIiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiJVQ0pzWTlhbHQ0aEFSRjJfbklqZFoxMHciLCJleHAiOjE1ODAwNTkwNjMsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.HsmGZpXHVvXm7kBrWNRwGs-o1AsNsk0JAmCDOxD-7tU	u03FlEHPzMlAmQFa3lXdJD/jwKi0U3rHYLbUT1DKhfM=	2020-01-26 20:17:43.532018+03	420
495	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiJkNmY4M2UxNi1mMzUwLTQwNDctOTU4NS03MTFlZWVmMzYzZTEiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiJVQ3BiXzlTLWdTR01PRlpkMjRzLTdKaVEiLCJleHAiOjE1ODA1NzE2OTUsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.KPv9Q1BsAg2Z34mChNtGZW8RmzTD2t-IGWy8SfXxWnk	fQJqg+sOBf30MJIl9qwVpV5uQv0h7rLvAUMjFuISwII=	2020-02-01 18:41:35.997784+03	425
497	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiI5YWNiOTNmYy1hNjZmLTQyYjItOTFiZS02MjYzMGI2N2FjMTMiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiIzNTcxMjY0NDAiLCJleHAiOjE1ODEwOTU3MjMsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.FdD3O88ZuKJ5pjop1gKEaW2tqGRfkQ_CrSwBaavTp4w	0MW+6GrZeq9d7GExjmycAgQ470a+La/V0S4S1WHpRbg=	2020-02-07 20:15:23.634877+03	427
527	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiI3NTI3ZTUzNi01MTUyLTRkMWItYjJjOC0yNTI5M2Q2ZDY3N2IiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiIzMDkwOTM1OTAiLCJleHAiOjE1ODAxMDM3NTksImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.sy9lr0rL1-surjwYYRSNzu0uaI2yaffiH5VqgzX7oew	60WOGnz3XdbWOFKjsRcgq49hwI1xnRt5ATPuNd6w3vU=	2020-01-27 08:42:39.816731+03	454
504	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiI0OTczMzk3My00MzE3LTQ4NzUtOThmMC1lY2JiN2YwNjNiNDUiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiIyNDkyMTU4MTQiLCJleHAiOjE1ODAwNTgxOTcsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.fxWLRRdaXleZQgTO8NjatoXlrJnBHm0c3c3XXl8kKjo	Hoj47IRcvpA7gzZasOxhAG1++JnrnOTID43Fhh1yrPw=	2020-01-26 20:03:17.1087+03	432
510	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiIzOTg0NWY3NS1hOWE1LTQzMzItYmU0OS02YzIwYjJjZWQyOGUiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiI1NjQ4MDg1NTYiLCJleHAiOjE1ODAwNTgyNDgsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.r9W7Xxpo2-SWIjvn9v_nuz5DeCNOJZZqYdz_uAlvYuQ	86GFUDSp2kw/OBJMlOKNbm0xBPOG49BE3+gzU3sd5K8=	2020-01-26 20:04:08.811546+03	438
512	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiI1ZTgwZTUwYi05ZjIyLTQ5MDctOWFlNy1lNTM2ZDRkNmJjMzkiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiIzNzgyNzcxMzAiLCJleHAiOjE1ODAwNTg0MjEsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.jyrh_bFy7UOvH8rgiLSoOgZaqPjkVjTcxsG1eTJcsnc	pT/WYJwc9xWLdLCUSG2vg0qs4YfDUUkShIl8bl7x0Rk=	2020-01-26 20:07:01.46813+03	440
517	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiI5YWQ2YmFiYy1lYzE1LTQwMWMtYjY0Yi00NmI5MjJiZWUyN2YiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiIzOTY2MjgzMzYiLCJleHAiOjE1ODAwNTg0OTYsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.AA1a2VYXLafi10jnSLZ-8PyNZaaulqXIaZPYgH3GNCs	QKEXc7eHNPQ7NH4WHyHihAWhmg1Dgpj69PyY2typrwI=	2020-01-26 20:08:16.117298+03	445
520	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiJiNTVkYzliZC04OTYwLTRlZTMtYmRlMS02Mjg0ZmZjMDkwMmEiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiJVQ1lENEFJLTJMNGdVQV9oSVZMTG10ZUEiLCJleHAiOjE1ODAwNTg1MTMsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.ifKfcUuANQL85y-l5_H5Nsijbx2g2pSMOrbmnOVR16k	weemczXRcmWvMZDQDD5eE437pcqoz6XLwagiwa/pWQI=	2020-01-26 20:08:33.846462+03	447
514	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiJlNzlhNzYwOS03YTY5LTQ5YTUtOWMxYy0zZTA0OTZmOGFmNjkiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiI0NDExNzYzMzIiLCJleHAiOjE1ODAxMTE4MTUsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.St7GzHx6l90x1F0tlokscT9Uo62NlwTt7u_3uspdyCg	co9bD2rCuk9vMyFwSxr0RsZ/19znMBwsdULvQMsKMXg=	2020-01-27 10:56:55.688294+03	442
448	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiJlYjhlZDg0ZC1hNDcwLTQ4Y2ItYWQyMy05OWU2NjYzMTk2OTciLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiIzMzY4MjU3NTEiLCJleHAiOjE1ODAwNTg1NzAsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.3SqvPbXmsIrwqmPVhtNtW128OYJPnSk-aOw8ahkNZqk	QovGvZ+Fytp0phnrcnNzxoKkZ6U2DvBG/d0lxtMZquM=	2020-01-26 20:09:30.49954+03	381
524	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiI5MDQ4MDI0MS00ZGQzLTQ4MjQtYWQwNC01MzBhNzEwYjY0YmIiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiJVQ2plTDZhSXZCM2paMTJkRzU5OVFpSUEiLCJleHAiOjE1ODAwNTg2MjQsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.I4vZyawrsDhXwlYTEpAMW2c7BcPEkEB1HndZJTlY5EQ	7aaZ6jWEu0H+oBnnqk6H6u/LPKS9yEG1l1w5M1yoyTA=	2020-01-26 20:10:24.992635+03	451
526	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiJhYjAyNDM0NC1lZTI3LTQ0NGYtODBkMS0zNmMyMmMzMjFkZjMiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiI0MTkyMDE0NzIiLCJleHAiOjE1ODAwNTg2ODMsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.LYhlgj17oGnnEdc9TV74RQpzEtiriN-QfzlVbegdrPg	l4TfvlOdMs/9djpajZQEoiV/hDS1JIZe6jXlPbNtJ2Q=	2020-01-26 20:11:23.995817+03	453
540	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiIyM2RkOTA5MC1jNTIwLTRhODktYjNiMC1hNzYwNGNjZTUyNTMiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiI0NTA3ODMxMDAiLCJleHAiOjE1ODAwNTkxMzAsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.eNyb1hCRAYCGxXEVHyLs6ZtYY6EFY7WLYYNkmTmdUAw	KixhUACNCZJXI3H7lWkkLbTd7Q96U1psNEjuoS5p74w=	2020-01-26 20:18:50.418036+03	465
703	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiJlZTVlOGQ0My1hYjA0LTQxN2YtYmJmZC1iYTFiZjlmMGYxNzQiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiJVQ2hJeWx5M3pEQmZvN3BVWmxUYTNWMmciLCJleHAiOjE1ODAxOTUwMzgsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.pHMLmz9CO_ZSLrO2FLuHxLxSjNfnneE_DI8U-ITKvxw	1qUyxlCujNhdvyS/Cfz0XwClamV3TJdhACQaCaMRWR4=	2020-01-28 10:03:58.767461+03	595
516	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiJiMTk2MTU2Mi01NDE5LTQ5YjAtODI4Ni1lMjkwYTlmMzQ5MWQiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiI0OTc1NTQzOTYiLCJleHAiOjE1ODAwNTk0NjEsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.pL7rJ8SuL5aADPN2reioFAAZe_z1iOyLCM1hRZE-CFM	b9xSbSD3DTyTG/rJu8q+wnWDRy7O1ORlKT/av+vPJTs=	2020-01-26 20:24:21.880988+03	444
518	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiJiYzgwZDg0ZC04MmE5LTRkYmMtODkzMy00Yzc0MmUwMjNiNDQiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiIzNzE2MDk2NTIiLCJleHAiOjE1ODAwNTk1NDEsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.Pv2XKDQVPbzMqRysSNAArNfQKRxUXek9lcoFjiZleuU	LjMzEsOUi+bjQgpX12tWwYNnWqJEXEBE/Z8FJCg7+DM=	2020-01-26 20:25:41.3333+03	446
519	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiJiZDkxNDU3OS1hZWVmLTQyZWMtYmY4MC1jZTM1NTU1NjRlZWQiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiIyMDA0NTc2ODMiLCJleHAiOjE1ODA2NDI2MjQsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.slhLYZeF0M6ZcSKK0aRSsU-7MXr-jzfyacyrlrFaSh0	/NzPlpB7Scr/UxGV4IJiZCzmjcErsjqBU/PG9DlNh40=	2020-02-02 14:23:44.35836+03	410
513	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiI3Y2Y2MWYxZi0yNWJlLTRkN2UtOTcwMC1iOTM4MjkyZjgzYWIiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiI1MjQ5NDcwODciLCJleHAiOjE1ODEwMTE1MzgsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.8qoCCjcqgjzPVZOvyXSLc9mO4Yf9RXyL7-u12YvW3tM	ivHsfp5xhdmMTYTgHhw4aIofY65LjUff9AchOMuTAkI=	2020-02-06 20:52:18.873163+03	441
506	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiIyNDgzODA3Ni05NDEzLTRjMjctOTBhMi1jNjNlMDYzNWYzYTgiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiJVQzBjQWhSRnpaWTd4RThvd095ZFRoaHciLCJleHAiOjE1ODAwNTgyMDAsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.nFTufeXE3BYLF9aadrt_yn7D8SOSQQpovtkhUvbzp2Y	OTbojPR9lfcZ6VHVokACuiqoYZ0P8xbP+XPyRaA6gvw=	2020-01-26 20:03:20.271189+03	434
507	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiI3YTJkNmZjMS1lNGZlLTQwY2QtOWE3OC1kMTRkOGJiODE5YWIiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiI1MDYzODY0MDIiLCJleHAiOjE1ODAwNTgyMDEsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.etiQ8bYdNwk3herZjMvafwkM3f7E-q4-03eok6DjboY	qX6WNZMYN6Nqjslj3Uk1ANNdsOfAyVH4Ilqvf4YbJ8Q=	2020-01-26 20:03:21.170354+03	435
508	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiI5ZTYxZmNlZS01OGRiLTRhMmMtOGNjZC02MTZjYzRmZmQ5NWQiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiJVQ016MndJaHZuQ2VKYUVTRW5uaExRcEEiLCJleHAiOjE1ODAwNTgyMTIsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.PYrUOKv4xzjS3z79YSRpRwc1bnxwzfM-TVPgQxrakeI	H9tpf3fGgpePJxNnI4LASxtWGVpaYRuwoXgyZ61vkVk=	2020-01-26 20:03:32.928288+03	436
509	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiJmZjU0MTE2Zi01NzUzLTQwYTktYWI0OS0yNDZlMGI4OWM3OGQiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiI1MDIxMzE2ODkiLCJleHAiOjE1ODAwNTgyMjgsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.nlqZcy_kq91VFwsK9tB3SEHE9bhVel4hNI-PjSIE4oY	WbnKnNlzAlZdGLIvZCu2tFMSxQfuEwhoaxSdYz9TbHU=	2020-01-26 20:03:48.763681+03	437
525	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiI1MDUyM2ExOC04NjM1LTRhNDAtYmE3YS03ZTU3ZjAyMDM3MWQiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiJVQ1A2aHRaUGJkazU0MnlkUkFRY1luT3ciLCJleHAiOjE1ODAwNTg2NTgsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.SMsUWbW8ScWfAxTnmtmiS9ilG98fCTW9ybKfZH8kEeg	1BwjB0UbnPcUsQc2kllX1STjoa+Rc+k4v3pt5s2jT2c=	2020-01-26 20:10:58.276666+03	452
528	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiIxOTBmYWZiYS1jMmZiLTRlMmYtOTUyYy1jMDI5ZTE0OGNhMGMiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiJVQ1NuNEtTbTVyTmVrc0VIZEpKNGpTUlEiLCJleHAiOjE1ODAwNTg3MjIsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.-D1ro_bI9JPXb9ObGOA9BXG8pYQ3o8QGQilbEqO9zlo	ldgqNYQ+d2gZyHZmV4gOfd8SuSOpTn0T3rpxZOvjFaA=	2020-01-26 20:12:02.612126+03	455
530	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiIzMmQ5YzA0Mi1lYzQ1LTQ5MGItOTIwMy1lMDQzZmQwZmI3YTgiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiJVQ1VQMFdHeEM0NERoak5GWWgxOWppb1EiLCJleHAiOjE1ODAxMDY5OTksImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.9hAXF7xmL30NmmWLrkdVqxrzun5Q-E04iU6-ZC2Ah4A	Criu6a6nODKtrIwSmdojk8ZQUJn2fftnOYalMunOuv4=	2020-01-27 09:36:39.901162+03	456
533	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiIzZjFjZjFlZi1mMjFlLTQ0Y2ItOGNkYS1hMzFkZTYzZDVmODgiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiJVQ1BmcVVxa3QwamVySXNlUjRORERVLVEiLCJleHAiOjE1ODAwNTg5NTIsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.Nn5m_g8jESA0b60iX9WDyhF_olgSKnZ0oWbtMq8Jjo4	vkSjhBKgkPy8WBKzi+HEICb+Ua6i7asf73M0un4vhi8=	2020-01-26 20:15:52.88883+03	458
534	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiJhMmEzZGVlYy02MTVjLTQ0YmYtYjcyYi0xMWU0ZDI4Njk4NzUiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiIzOTM5NDg0NTMiLCJleHAiOjE1ODAwNTg5NTksImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.2Uqx_tuoLrt69wZ7nQBppHPK8NxpODOg86IxUKbmuW0	FBmQAVBNJb7GisxgUu8Gddb7GPS7tYt/JQvpg9EQqss=	2020-01-26 20:15:59.329402+03	459
537	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiI5MjUyZTg5YS01YjQ4LTRhMWMtODhlNi1lYzUxY2VjYzJmZTYiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiIyNDQxNjcxMTIiLCJleHAiOjE1ODAwNTg5OTksImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.Pm6PpVfrIP5S2CnISgvRJSX175yptLNYIYcwtbP7mLw	5oAhESFYFp4gWyVetpWoRPZWgxhPeEfJbF0OIrdEHw8=	2020-01-26 20:16:39.224274+03	462
531	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiI2NmQ4NmM3My1mZmI2LTQ1NzgtYTllYy1lYzE3ODRjOTc1NzkiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiI0NDQ4MTQ1NzEiLCJleHAiOjE1ODA2MzE0MjgsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.llAKauFhAx2dM5mPgWcugcHnGI1P7-LgenZ9q_98BdU	cI8XY32gbXsoDWqhdHeDsBhL2VeGsE77VZVBzdaNetg=	2020-02-02 11:17:08.714276+03	349
521	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiI0NGY5ZjM3Yy0wNjNkLTQwOWMtOGQ5Ny1kNWVkZjFhZmIzYmUiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiJVQ2lrcVFqOEg2M3NTczU1NnlNMVI2ZlEiLCJleHAiOjE1ODAwNjA5MDMsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.H5CwZzTBrgrxUUG9yaDsEnPPl7e4_Sts2eIM2pWIF1A	SfuopK22Bgpmd/rq1RKAovuEKKDwe6E3wJW9I0ayTPM=	2020-01-26 20:48:23.325824+03	448
503	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiI2ODBmM2RjZi02ZTVjLTQwYjQtODkxOS01NTQ4OTA2ZTZlZmQiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiIyNTU1MTAxNjciLCJleHAiOjE1ODAxNzgzMzAsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.AjwJZrjG3BLoQEpqQAoJ_pY8kGjeBrge4H9dfYTUYP0	dV0qtYPhm7iCNHpYJ9CTABKvkfgzpxPi2d6ul4/C4N0=	2020-01-28 05:25:30.966816+03	431
704	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiI0MWY3OTUyOS04OWYyLTQ0MmUtOTFhZi1mZGQ2YjUyZjQwNmUiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiI0NzkyNTgyOTYiLCJleHAiOjE1ODAyMDEyNjcsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.auq1LR6jVK76NGWaODmx_v1ImjGVp1b21dUIrS4D74E	AhbCwOBbny2vxNtIID04DzsxNLnVB4IJ3REmKdz0VbM=	2020-01-28 11:47:47.161911+03	596
536	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiJlYmI2NzMyMS1iYzc1LTQ3ZGMtOGMzNi1jMDUwZDIxMzU5ZDEiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiI1MzIxMjMyOTMiLCJleHAiOjE1ODEwMTA3MzksImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.o_QLAmoDxwgBDj2GdCKgAFf0Nj6483v1dXMRfYkCSZA	zznNuoDY3/vYbwdFxCKo8wW7/5IMmsn/CMD/puYFrPY=	2020-02-06 20:38:59.253149+03	461
505	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiI3NmJiNGFmZS04ODJiLTQ0MmMtYTk1OC1iZjBkNWU5NWNlYzAiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiIyNzk2MTM1NjYiLCJleHAiOjE1ODA2NDUwOTgsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.iluX0yELtUeZR9qhq3QOqN_K09WGMygHIxwdO-Vatg4	Er/sICf5yIX1fGP6wyXzBdVQcgnTMbh0qen/WzhGORY=	2020-02-02 15:04:58.292884+03	433
532	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiJkZjgxMDE1Zi0yOTgzLTQ1NzEtYjYyOS0wNzdkNTk3MzczYWEiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiIyMTY2MDcxNjIiLCJleHAiOjE1ODAwNTg4ODgsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.ksFbc_8E28Ttfdb3FE_pIkG9vUC-yZnDC2dPubna1C0	T/TpGwRzEbjS2wTxUuCVxZN/8Zq8i4NHn+Zl+8Yw7WQ=	2020-01-26 20:14:48.297461+03	457
535	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiJlMDNkOWY3NS1hM2Q5LTQxMzktOGQzNi05ZGY1OWUyNDAwMmIiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiIyMzMxNzgxOTUiLCJleHAiOjE1ODAwNTg5NjAsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.o9DB9Qay3JWFAq7bOu5iMkCiYiiqhryG92-LIygimTY	UVQJ0Hw6Hq2gPxINKnO6tymybXQOX67yzIx30IfntbM=	2020-01-26 20:16:00.19695+03	460
538	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiJkZDc2Y2UxNi1jOWE1LTQ0OTEtOWZmNC1iMTQ3MzU3OWNhM2IiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiIzMzYyODI4MzEiLCJleHAiOjE1ODAwNTkwNjMsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.sQ4UOzJY5N0OBFwOiwha9EyRI1KLfzF0qbAfWJK6OT8	ukBJLOm+qAKfM/71IkrKFtOa7ZZkGn9p1DY4IENP1tw=	2020-01-26 20:17:43.66094+03	463
539	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiJkMDlhZWRkZC1hOGJmLTQ0MDgtODUzNy00ZWY5OTcxMGYyYTkiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiI1MjY0MTU4NzEiLCJleHAiOjE1ODAwNTkwNjUsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.k41Th2fw7Eu4a8ITGMPsDqBRCvqRLdH-ZrTj-XYmyT4	CWO36g4JP/L9eDQ/iARdoDDEPsGcxkDMPFCanU+V+ts=	2020-01-26 20:17:45.072139+03	464
542	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiJlMTlkY2Y2Yy1mODFmLTRlY2MtYTRkYS0zMDAyYWU1OTc1MjYiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiJVQ2lHaXhqZ2ZxX01JM2dPcWRlUmo1X0EiLCJleHAiOjE1ODAwNTkxODAsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.no3GfatDwKyfVwTTNxHTqYocTLxiL-aTIpNRgG5GCMo	ITEZtbcNzYTgJhO9bpbkfCvTuCDoXwJCwF/Ny0gPaZA=	2020-01-26 20:19:40.993735+03	467
547	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiI2N2FiNjkxOS03MTA3LTQwZGItYTFjZi1kMDllMjc1N2IzMTQiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiI0Nzc4NTcyMzkiLCJleHAiOjE1ODAwNTkzMjMsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.GcWpcoh0OhhM6imi987-zAG9Teohyh6efKSLntxR1UM	RO9c7dBVtjmP3aKbB0bCP64NRJUkfLXeOnykjJrdFU8=	2020-01-26 20:22:03.61497+03	471
548	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiI5M2E5MzYzZS1jMjYxLTQ3MmMtYmVlMC03YzVlZmQwYTYyZDIiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiI0NjE3NzU1NjciLCJleHAiOjE1ODAwNTkzNzgsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.gxRzTSXBtxPBoIOOQTsCQVLLXpoLiVM6iS4UMQnPJb8	1hWWX4UaGxFPAKJaIR/ytOYr+TYQ4IbV4vTMD8YeEM8=	2020-01-26 20:22:58.730087+03	472
549	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiI2OTAyYmNlMC0yZDlhLTRlNmYtOGFhMC1iYTQ5ZTU3MGFkMTYiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiI0NjAzMDAyMzciLCJleHAiOjE1ODAwNTk1MTYsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.F-w-Y1s7gYLRIyeIvrJoLofaiSHatwkx0X68T84D0vE	a7xGEidhZOYtWDH99F/PGBSkhMeL6vwYx3umUPFhYuo=	2020-01-26 20:25:16.655356+03	473
544	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiIwNmQ3MGM1OC0yNTY0LTQ2OTQtYWM0ZS0yNTU2MTUxZmQ0NjUiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiIyMzMyOTUwMDMiLCJleHAiOjE1ODAxMTkzMTMsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.k1AwAzlnhmw6o6JKaEf6JFORnSebyLum_U2cXHZrLsY	If3KFqGHIdAls57zdVwgZCiD4GAyxmbbqMs9xDaNwyQ=	2020-01-27 13:01:53.90679+03	469
553	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiJlZjc5Yzc5MS02MjZiLTQ4YWQtYWQ0OS00MTI0YTMzNWMxMzMiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiIyMzQ2NTk3MTMiLCJleHAiOjE1ODAwNTk2MDYsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.SxDrKAb9MV2S39tToxJirqwi5d-junAmmDvdypyUk8E	JxB8eDs2d/fsibAoGI5OYjm/Y0m6n+9jWpYo6gUN1Ug=	2020-01-26 20:26:46.890205+03	477
554	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiI3M2UyOWUxYy0wNzM4LTRjZWYtOTAwNy1iZGU4OTcyYWE5ZDciLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiJVQ0gwalJKdXlqWlJNWWhXQ1ZyUmlzdXciLCJleHAiOjE1ODAwNTk2NTIsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.WBR0dmUOVSvXJPNFz6yUc40yZcvhNwaKRwdeShcNV4o	6NQgzuYmTnaW6AWjC9kvM5LXv9B89riOmmS1h0mPNNA=	2020-01-26 23:12:32.289821+03	342
551	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiIyZjg3NzE0ZC1lZDkwLTQ3ZDAtYTczOC1kY2Q3ZTAxNzM1ZjEiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiJVQzhlakg1UHdmeW4zcm8yakVSQ21mUmciLCJleHAiOjE1ODAwNzI0MTYsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.XKlSymplW6k7XK_hvbIpz2RIXzjkaSTuQxYNo3uon8A	UgVmxNuhrCDQvwwFd7MYrKSjNHPKPmlWXJVVfBHwJnk=	2020-01-27 00:00:16.246525+03	475
705	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiIzZmUxNTc5OS1jOWY1LTQ1NTgtYTdhMy00NzI4YWE0OTJmM2YiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiIzNzc1OTUwMTMiLCJleHAiOjE1ODAyMTA5OTAsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.d8U7ifQH0o5BDx7BOUuwzVlztnb4_fd6cZYwWveYiBY	WX0abs3HelJn0xedeiiWNP825W7yhmWYm1UVKRmeMEM=	2020-01-28 14:29:50.320233+03	597
552	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiJjZWZhMzlmMS01MDE1LTRiM2QtODg3Yy1hMzc2Njc2NTFhZjYiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiI0OTIxNzYyNTIiLCJleHAiOjE1ODA1Njc3MTEsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.vffe57ptNvoihcXD2Enh8FnobCzJrXc09IsgOFw1vlY	bkzqhUDuEbqU/gqtUySzjtMCkCHfvUnuEkD3mdIe0xQ=	2020-02-01 17:35:11.969468+03	476
545	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiJjYjBhNjM2Ny01NDkzLTRiMGYtYjJlMC02MzFjM2RlNWQ5NWQiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiJVQ0NDX2RST05wM1pxT2ZkblhhaHViVnciLCJleHAiOjE1ODExMTIyNjMsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.uaiOBxWGdTSzKBNM-kiOGoo-FJzorKpIVtM8V_OhonA	aal4FVqdKyA6htgpsn8E/aWifOYTNWnqcud/JEGgc4w=	2020-02-08 00:51:03.654611+03	470
546	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiIxZDNjYzY1Ny04YjBkLTQzZTQtODA0Zi1iNjU4ZmRjZWQ4YzUiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiJVQ1pqTklIUFUzSDNnazVYLW9NQ3RCUnciLCJleHAiOjE1ODA5MjkxNjgsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.3gDXTF2Y4zOZnX7rqDmTgy9CjXQwV3h17-qXjeomRUE	aYA+sTZRkapAn1Svo0hMxBm2YXS+q30fn0bPia8V45U=	2020-02-05 21:59:28.010659+03	449
562	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiIwYTkxZTI0ZS1mNmZkLTQxOTctOWZiNS0yYWJjMWVjYzcwZjYiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiIyMjI2MzIxMDYiLCJleHAiOjE1ODAxNDg5OTQsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.u3yxOoNqKlyBBgYCkmLOwVR8qcOEZJJB1Yomgr2xa1A	WtSD/tc2bGSFCOPuXl9ka08OTc/r8lSB7zqgL55IxkM=	2020-01-27 21:16:34.004368+03	483
564	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiI4NDllZGM4Zi1lNmY4LTQxMTMtYmVjNC0xOGE4MmNmZGViYjAiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiJVQ05aMmI4Vm03RV9Ndk0zVXdwblFRLXciLCJleHAiOjE1ODAwNjAyNzAsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.NTt4kCKbmUDCq8QafldXA_N6WnywfC5smo-Z2IO85wY	/cmP/kN887kE6ZI86KGuYxoRQokw7a3llKnctbSHBYI=	2020-01-26 20:37:50.567968+03	485
570	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiIwYzAzYzBlMS1jMzM0LTQwNDYtOTkxMi1hZjMxNTU3MGQ4ZTAiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiJVQ2VMcnd0c3FxYjhpOFVhYTFScHJEcFEiLCJleHAiOjE1ODAwNjAzMTcsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.BRn5wMbk3GvgQSxqReMiStrl9Nhr_4EZ9h7FBatKFCg	hI3op3y913pSre0QHADB6Db2jTUcJTXs/em5d6SrR48=	2020-01-26 20:38:37.824902+03	490
579	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiI4NDIyNjY4YS1jM2Y3LTQyZDMtOGQ0NS1hMzY3Zjg0YmMxZTciLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiI1MzA4MDEwMzMiLCJleHAiOjE1ODAwNjA2MTYsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.6nrIKsznnysDElZH3TfUIFLNBKZcUV-8mSOjW1PjtTM	u45N9fFgSVNbRqKHciC4dog40Wm55IQUBFPnfRj/nks=	2020-01-26 20:43:36.007038+03	498
584	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiI0NGExZDRhMC0zMTlhLTQ1ZjgtOGJkNy03MmY4ZDhkZjA0NDAiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiIzMzMwNzg3MDUiLCJleHAiOjE1ODAwNjA3NTAsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.8UfohETIsGSkuP8NGNiCdmllNnVKTa-QwNkcNpUIZjc	D+ejpXN6VemQi/Esq5oa02s2wJcCBZkeruuGccs48t0=	2020-01-26 20:45:50.672078+03	502
585	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiIwZjcxMWMyMS05YmFkLTQ0NDEtYTAyNS1jOWMzY2JhYjA0YjIiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiJVQ0VHYkdyM3NaQlJUTDY2ZWE2czZoR2ciLCJleHAiOjE1ODAwNjA3NjMsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.CLBtFNpx7Ubzd8IE48XSbMMXm3ghJPxCOK-0vt7-tyY	W7kt7glTi96Na5aSZkWeiKsou5Osm7UsWtfyCUkUHz4=	2020-01-26 20:46:03.149451+03	503
587	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiI3OTM0Nzg0Yy1iYmJkLTQ5NDctODBjMi0zZWE2Nzg2YWU4ZjAiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiI1MzgzNjI0MzkiLCJleHAiOjE1ODAwNjA4ODcsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.8qS8RVdHuP_MBY5XgReiIzptn5FUz0V-6HvP3-Bn5rE	Z1j4ihEo0SqlktdhYYaHFFaBFpjhI6UhNjXtiBQP8mo=	2020-01-26 20:48:07.182842+03	505
589	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiIyMDM4MmJlNS1kOWRiLTQ2MTQtODhmMy1hMDY3MTM2ZTgxNzAiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiJVQ3dTLVQ3NzBybUt4V2VibGw1WUJPUUEiLCJleHAiOjE1ODAwNjEwNTEsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.mJH8_kWNqSK7oHtBqDKqKHQHREFBZqdjekgXF7tJ8Nk	nHeJ/+dcsJ1Rq0uLnK8Di4HJD0kU0fnYCucWQ4Z373Y=	2020-01-26 20:50:51.475818+03	507
738	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiIxM2JkMzExZC1hNzk2LTRmZDUtOTczYy1jMWY1NzllYzZiMDkiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiJVQzNvdElfN0RqWTlLSWYzaDBzYmRqTUEiLCJleHAiOjE1ODA0NjE2ODgsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.8GAPJbXLE3LuCC_kJz3C0cCaEvtN4uG7iK1pCJOpHP0	gA8kfydUcOH/3KTJ4jretpHd6QHj6jwZQPnZq5YM2QU=	2020-01-31 14:53:08.330185+03	623
601	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiI2Y2YyMDJhZC1iNjk5LTRiNzYtODQ0Yi01YTkwNWVmZGIwZWIiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiI0NjM3ODkyMzEiLCJleHAiOjE1ODAwNjE4MzAsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.xSYXbfdXokr2MDC9wE1fTwynZ7nD-uZSCyKM0LfL7Qk	Uf3B26pJl4zVdDbVY+IgfEPpZhLD5hGrix6oTQoKiIQ=	2020-01-26 21:03:50.116555+03	518
599	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiJjNmIyYzUxMS0xMjcxLTQ2NmYtOWI0ZS00NGNhMzQ1MjIzMDIiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiI1MTE3NDI1OTYiLCJleHAiOjE1ODAwNjI1MDYsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.7L5veylJF_fww8W3BpsSWH8PkQpGp-G4ymz_UAk5DSs	qM4Q2o573Y6cTwTpVu6r9/qmULiw/+cWTMpbZhA/JI8=	2020-01-26 21:15:06.451529+03	516
706	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiIxNjIyMDlhOC01NmI4LTRhMWUtYmQxNi04Y2I1MTVkODJjN2QiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiIyMjQwODE1MDIiLCJleHAiOjE1ODAyMTQ2ODIsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.pRDrEIazcKvNUTP9JM9Jj2FEOfML2cY1mxN6TfYH_5s	d972MbiIis1QdePbc09V966Qj+ZMxD5GIl+kMnWTUAA=	2020-01-28 15:31:22.646831+03	598
573	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiJhY2Y4MDg0NC1iN2NlLTQ3MmMtYmJiOC0xNmI4YjcxMzM5YWEiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiIzNDM5NjIzNTgiLCJleHAiOjE1ODA0NzA3NDIsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.ybHS6pUL79-3LIP1qUwLDB7_U17GuFJDX6DXEmL4j2g	mhcZeXH2CXPGzHKudnkIqkRAHcJJab2TvpxnOPeHvN0=	2020-01-31 14:39:02.756581+03	493
771	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiIxY2UxYTQ5Yi0xNGU2LTQ5ZmYtYWE4OS02MWNlYTdkNDdmYjgiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiJVQzFnNmplOEFGSjBhYnlWSFlqVEc2T2ciLCJleHAiOjE1ODA1Njc0NDQsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.OWzaXbHGaiGWgVWVhSVmtZn_hBlO3CNt6A9IGezPQkM	1e4/Mj7AX8HkxBeWmaQI4UUWq0R38YNMs0YvuYwnvVM=	2020-02-01 17:30:44.744099+03	648
772	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiI0NmE3MTlkNC0xMjVjLTQ3MTEtOWYwZi02MjI5MzRkOWQ5YWEiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiIzMzUzMDkyMjUiLCJleHAiOjE1ODA1Njc0NDYsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.bFGse0CaAiKHU_yDZJz8_AjJ_oPNAn1EG-yxWC3YYfs	tZf5Lx/qcCFLSRoZX54hmtsHqZKuC3GcQtxa5Tzhkqw=	2020-02-01 17:30:46.04788+03	649
169	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiIyMzgyNjBjMS04YmZlLTQ3YzAtYTUyOC1jNWUzMjhhNWYyZDQiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiIzNDAzMTU5NjIiLCJleHAiOjE1ODA5NzAxMTMsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.xKlV_WcTtRtRCG1FrxwZbAOdgUWdcqEa4TO2WDd1SkE	EUl9+nyfIb+xZ01smT8q51k99u5IWDKZrS6yCQgsB4E=	2020-02-06 09:21:53.428009+03	132
600	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiI5MzI2YTVjMC1jYzg3LTQ2YzItODgyMy1mNWI5Y2YxZDc0NGYiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiIzMzQ2ODkzNzciLCJleHAiOjE1ODEwOTkxNDUsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.TzEDHckeLkyIb-Hr5Ncmu66sfTZMFHPugB3CSWkQzAs	CLD2Mm+ysdWAXtYXebQH2S5Bq1wGe9N0wMoIl4VysDo=	2020-02-07 21:12:25.784695+03	517
557	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiJmZWFmOTJlZC1mMmRhLTRhNGQtYTBiYi00OTg5NTc2M2VlZTQiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiJVQ2VOWmxVUWZ4Y1BIc0s2NHBEaHNpMUEiLCJleHAiOjE1ODAwNjAwNDAsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.pe1kIgczwhS3L4CvPMUdL58bYZDqCtg_-aY79Knvux4	QHYswJpAMUymmV9GaB8vS3AR0Goy1OWLUPF/A5b6ZFo=	2020-01-26 20:34:00.481376+03	480
776	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiI4ZTFmNmY0ZS0zNmU1LTQ5NTUtYjc4NC02MTczMWZkOWYzNmMiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiIzMzIzNTg0ODQiLCJleHAiOjE1ODA1Njc0NTYsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.IUA_oFsYD0H_CqvOVf9sLeRrgUG7lo6obdJU_oHHINU	JwpFgMIZRwLNwQ3STB7elXaaE2CzelVzE1Qh4kRwcAs=	2020-02-01 20:15:56.371848+03	163
568	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiIxNDlkOGEyZi0xYWI3LTQ5MmQtOTI4YS0yNWJhMzRlNTI2MTMiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiJVQ1BkeFhWY0FRMGg4eFQ4Q1hCYUlWZWciLCJleHAiOjE1ODAwNjAzMDUsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.8eZHM4gyvCIClX4mlXcn_c72cS3ucv7KB-cJUCe0y_Y	9+YNQpFaaDiQNemKmNb84FtRbmFXldYiSuuq6rd63Y0=	2020-01-26 20:38:25.685132+03	488
569	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiI0Mjc3M2U4NS0wMzRiLTQ2YTAtYjgyMi0wNmRiNzUyYTUzMDEiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiIyNzA2MzM2MTYiLCJleHAiOjE1ODAwNjAzMDYsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.OfywDoJhOl4jQlyFmWjJ-nbgZ2szPb-9vvFIizdFqOs	EU3GIQAruyKPZF8uMdTm3AIB8pqgKmQ7T/TXvz6YOWw=	2020-01-26 20:38:26.942196+03	489
577	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiI2OTYyMzAwMi1lNDdlLTRjNGYtOTk0OS1iMzkzMWRmZTA1MTYiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiJVQ3ZWN3JBaXhGWndGRDhrNjdzVUhzU2ciLCJleHAiOjE1ODAwNjA1NzAsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.YcjseSyUzfkGuQUdW0CFoZDatpwz7qjmx3YRSWIeKd0	GZ1RcTOTJpUwFHutKh6rTy4TJgurTkxaBYyzAUc4fxM=	2020-01-26 20:42:50.08441+03	496
296	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiIwZmQ3YTVkNy01NTE5LTRiOTEtODMxNi0yZWMxNGIyOWRhYzAiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiJVQ1dLSE5IdTdIOVBLenRKSmVCaVRjZ3ciLCJleHAiOjE1ODAwNjEwOTEsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.0oozG_U5X5xc48JAf8Bzs_Ie5AbTHGlJa0Y7LNqMLZg	jBl1fwOBW47FsKCNaRRasjFb1D1WnPais53YsIySnOE=	2020-01-26 20:51:31.070599+03	242
592	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiI5ZTRiOTg4MS00ZTRhLTQ5MjYtYjk2My1kODZiYjkzMDgxYTgiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiI1NTA2MzIxMDQiLCJleHAiOjE1ODAwNjExNzIsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.cEQ6XGm3IN-Fy_heI2Uc7GUw20CNzMRbGinTe8flDwU	lInAebgaNpfsr8wbmW/uJnCxq3zeIRz+J+zNPXJ0oGY=	2020-01-26 20:52:52.613755+03	510
593	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiIwNjUxMWU2Yi0xNDA4LTQ1ZjEtOGUwNy0yMjU2YjVhNTJlNWIiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiI0OTgzMDE2NjAiLCJleHAiOjE1ODAwNjEyODIsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.JMAEzP-_mBjs21k8yiYCfhwdEgemoJJvBhwsSC0ERtU	Zrm+ZF3CaUt+7BzaGlGPAfekC9MhhTykYhlTGTeB/JA=	2020-01-26 20:54:42.842957+03	511
595	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiI5MTI2NDBmNi0zNGY3LTQ2ZWMtYjllOS05ZGE0NzhhN2JjMjgiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiIzMjMwODQ0ODAiLCJleHAiOjE1ODAwNjEyOTIsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.vwBgPYI-6jDXCyBcfhnr8YJbkgZ14yMH1Si7iDJpJu0	Cwgiwh99Us00INq83ksgIcgwMMFuqn5u8VLXRsxhp0g=	2020-01-26 23:39:52.581838+03	512
566	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiI2NWIwOWQ2OS04NzgwLTQwZWYtOTI4OS02ZmEwZmYwMzVmZjUiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiIxODgzMjAyNTgiLCJleHAiOjE1ODA1NTI4ODYsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.QsILlJseIwh8OUHhWgFc80yFBfeaa5lQX5tXj3AgY90	QbKOhujKVisO4p6DdHBdiAYpHuDMhlg5q1AUqf7hrmo=	2020-02-01 13:28:06.483624+03	486
567	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiJiNTY1NWM0My1jYWI0LTQ4NTItYWUwZi0wMzNmNzBhY2ZjNmQiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiI0MTEyNDcwMzgiLCJleHAiOjE1ODAwNjE0MjEsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.R4q1wIvqVNzFBVL1DnF07TLUk35oEn28n3R7ZuOu4FE	9RWxOssVScfL85/T2IT7cmJOyWDglqS2cfYFO4SmkOE=	2020-01-26 20:57:01.543101+03	487
707	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiI2YjUyNDBiOS1hZGY1LTRmNTYtYjhlZS1mODFlMzQ2MzU3ZWQiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiIyMzU0OTYxOTYiLCJleHAiOjE1ODAyMTY1MDQsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.CtJNeNnI8-2pgCm0QtxNKUfUHYJIUPzzsI1tzMlp5Ck	46tcMAagf9STr6RLRxqmlZgfG8EyecarPsazQP359OQ=	2020-01-28 16:01:44.878107+03	599
739	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiI4YWQyNDBjMS01YmRmLTQ2ZDMtOGU4ZS1jNzdmOTRiZjE2M2MiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiIyNzQ4ODEwNTIiLCJleHAiOjE1ODA0ODUxODQsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.nMFvkcKqEFVvbIZV5sBMFkX-GZcx7EBCGLc1j2IydDc	2usSq5Wtn0PET+rYFC/yEnem7Y2evSUWvqVFmDDsM90=	2020-01-31 18:39:44.220345+03	625
773	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiI2YThkNmZkOS1lNmYxLTQ1ZTktODBmMS0wMjIxMzNlMDZlNDMiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiJVQ1BIQjhoYUVIdUY3cVBzQkVYcDNXaWciLCJleHAiOjE1ODA1Njc0NDcsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.PBE-KHjhfYNrO4VVnXj0imBuAA9ywOskmeoZrwJdDsg	OF6jfmUIAmZN7rr1mvY89M7NGKI8yxeLYozT8dndARk=	2020-02-01 17:30:47.938243+03	650
777	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiJkMDU3YmI4Yy1kODc4LTQ4OWEtYWY0MC1iZjBjOGZjZjRhODUiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiIyNjA2MTExNjkiLCJleHAiOjE1ODA1Njc0NTksImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.brmmtfBmBb5JkJKbKio7ZmtOPaYs0vNMaBJHB5RWvKo	Rve/CUZeq3nW8+tR7VG3NWcwD1Gltr3KLjXEdnSPGFk=	2020-02-01 17:30:59.133222+03	652
556	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiJhYTg2NzdiNy1hOGMwLTRlMGYtYWNjOC1lZWQzYThkOWVlNjEiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiI0NDY2MTUwNTYiLCJleHAiOjE1ODA5MjU2MzQsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.D6ARgSI5ogsSj73gOOFNBc_S2xF4GK5KWujrNLgo1Qw	nzEswoYG7PumHrrzXvjzEoba61/Si4ohVml9t7+WMq8=	2020-02-05 21:00:34.553454+03	479
581	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiI0ZGNkYjA5Yy02MDRmLTQ5NDUtYjI3NC00OTdjMTkzNzEwZWYiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiIzMzM1MjY3MzQiLCJleHAiOjE1ODA5MjY1NTcsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.uGuROVDG0MyjWPYrTDscPae0QyJB15Ps4_TRwApCo8w	SvRgjwkWUf6auvNRRsSftEkPj2ncyij8bOhVBpyoS8A=	2020-02-05 21:15:57.05168+03	500
558	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiJjNzI1MGVkZC0yZGE2LTRiZTYtOTVmYS0wZmQ5M2VhZTVmOGMiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiIzNjE1OTc2NzMiLCJleHAiOjE1ODAwNjAwNjUsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.nlPq78M9_aQtet2IU1sjsIo1vfVm-PonzU-ObWhkRx4	heL2VeXls4ni3/qf47y2tC238s/3c48ZAJOVbicCHs8=	2020-01-26 23:19:25.173457+03	474
559	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiI4ZjE4MWNkYi04Mzk1LTQ3YTMtOGY4Ny01YjU2MzA2OTI5ZjciLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiIzOTg4ODAwNDEiLCJleHAiOjE1ODAwNjAxNTYsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.vRfDPhnG5FyFVJnSoivjguthMQCEdUHzvd3A22zpMGQ	6JJNVGYHBqFCWdq7n359Izk23LYWXigHSatrZnneyME=	2020-01-26 20:35:56.753317+03	481
590	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiI5ZmFlOTI4ZC1mNWU2LTRlMWEtYTg3MC1hMzQzMDAwNjkzYjUiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiJVQ2prZjRVMEVPLTFKX2NtcDZGZEIzRFEiLCJleHAiOjE1ODAxMTc3MTYsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.fOg-u_f26t1xxEg4pUPNka5wvUKXZTNTQEM111kvFM0	xHfZA6E8bxpsaDAyVer/hU8nO0lCy32vPOxjt/IvK7o=	2020-01-27 12:35:16.26093+03	508
561	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiIyNjEyYzYxZC1kZDhkLTRmYWQtYWZiNi01YzYyZjhhNThjMzIiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiIxOTc0MjA4MDEiLCJleHAiOjE1ODAwNjAxNTgsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.ycfQQ-0ZCpadUpq5lKFDmpKDShBZ72qNKUtOBcZ5XZA	LIOhnGkC7lNnFtK0xTJBfOJt2P6dvn/Ua2HpTjUv7no=	2020-01-26 23:20:58.288487+03	482
571	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiIwY2YzYzE4MS1mY2ZlLTQxNTMtOGViNC01ZjJiYTcxY2FhZWEiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiIyMTQyNzMwOTgiLCJleHAiOjE1ODAwNjAzNjMsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.lqkpFHgkThKfCt2zI_JShih8C39Cg0v0A8bfSP_Hua4	jVi6b2DV/dHRgYwedgc9r0X9ksv+phpd3t7xgfyXB4I=	2020-01-26 20:39:23.394179+03	491
572	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiJhYzliNzQ3YS03OTViLTRkZDYtYjI4Mi1iYjQzNDg5ZTk2NjYiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiIyNTY2MjAyNTkiLCJleHAiOjE1ODAwNjAzOTIsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0._tg6kxXJckAOtDpgd26zR-ZlvT60IXKVnyFGdwHOQ_8	IRT1/+H/1OQxGTgL0fQkJzFMjsx9+9UnUAu0IpRNpYQ=	2020-01-26 20:39:52.248366+03	492
591	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiI4MjhiY2E2Zi01ZWE4LTQ4ZjItOWMyZC0xYTFhMzY2NmQ1YmMiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiJVQ0xhUFh1aFlZalZvSF9sc2RKTzNiekEiLCJleHAiOjE1ODAxMzI4OTksImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.ENJRN86BJ50jmch-o3J7LvErlDsOejWrVX7COWWrDJM	aCkjTA/k1Wf7EloECqDGd1J+qJfpg8+U674ROGGbM/c=	2020-01-27 16:48:19.371925+03	509
575	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiI3MGMxZWZjMy0xYjRlLTRhOTktYTFmNy00YmFlYjE4MzNlMDgiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiIzMTY4MjE3MTMiLCJleHAiOjE1ODAwNjA1NDksImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.QUN6kydz4h0m0gCr8offfy1l6kq4zzA6lAv2RBrBQFY	g1+3kpOP65W+DOl5fWGBQEb/+78+YNDG+XVuB5xRmCg=	2020-01-26 20:42:29.546806+03	495
576	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiIzYjg4MDA1ZC1hMjcwLTQzYzQtOGRjNC1iMzcwNzkyZWMwZDUiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiIyNTgwNDA1ODQiLCJleHAiOjE1ODAwNjA1NjAsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.2QgYROoUCO5v-Nm-lPeytGtenZqyaKajPUEbreUe8fw	R9frrlTUWgzaA6nF+bR8v+cNdJHW0KTaa8/uv+PJaws=	2020-01-26 23:27:40.921041+03	494
580	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiIzZTViODg1Yy1lNzY0LTQxY2UtODJiZS04MjAxNjA4NTkzNjYiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiJVQ2hHbTVLeVgtRjViTzVaLTQ1YzZITGciLCJleHAiOjE1ODAwNjA2NDgsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.a_EpZiwY7pADjS92plG3uFbIfm1wCDEY_JQvVKsbnQI	JlCjCnSKAOn4k5mURLNQajdcCOZw00F4lEMhv/zBKBA=	2020-01-26 20:44:08.315257+03	499
586	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiJmOTExYTNiZi1mMzkwLTQyYzMtODI0OS1kYjRlMTIyM2IyN2EiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiI1MzExMDg0NjgiLCJleHAiOjE1ODAwNjA4NjUsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.T5dhEWyCSdyOt0bLisKU6dvBl-8J5O6stlKOy7KjfSw	I9diCsFNDd7viOoPhy4Rc556gUucp6AJxUat4awMqKY=	2020-01-26 20:47:45.23753+03	504
597	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiJiODQ1YzI2MS02MmE5LTRkZjMtOWMyMi01NWUzODk3ODc0YWUiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiIxNDY2OTk1OTciLCJleHAiOjE1ODAwNjE0NjAsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.fYOZwrMTe2c8atAHDrsotC23q7UywIEEcRSwCm55ID4	T7GVOFzDDKL3Ca8E9BuhD55fV3TbUaAGaKXRtwbEeX8=	2020-01-26 20:57:40.15057+03	514
598	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiIxZmNhM2FiYi1iYWY2LTQwMjMtYjU0Yi0yODAxN2ZmYTY4NWQiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiIzNDU3ODA4MjEiLCJleHAiOjE1ODAwNjE0ODIsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.eOVaSP6k5up2vqy2OW8Rqk20OEFlAtPZ6wJuOj-OlZY	wb6eXEHgiGUkiZ8mGpfnjCDbkW4/63RuDX9UjQ4/c0E=	2020-01-26 20:58:02.970811+03	515
578	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiIxNjlmN2FiZS0yYjNkLTQ0ZTMtODg0Zi1jMzVhNjQxYjhjMzUiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiIxNjY2MDk5MTkiLCJleHAiOjE1ODAwNjE5NDIsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.OLej_Pc7TvZXot3jHPlbRnB2oX87fWngRpBgPzIkx4M	lwo0JXRrZzlLbkSKCtIg6w+KfD4wEi46GvufjLl6Yrg=	2020-01-26 21:05:42.731469+03	497
603	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiJhMzQzNzYzMy0xNGE0LTQ5OGMtYjMxZC0xOGZlNWJiMDE3NDciLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiIyNjcxMDg5MDAiLCJleHAiOjE1ODAwNjI0ODgsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.Ozd1dMU5q57MCqKo1ZFgNEk8kGjPEB55El6eGH-lwjA	ANxbpRLt9XSaf2utDIyWsUrOjsCJESWhbDTnb6ZDQ9g=	2020-01-26 21:14:48.01003+03	520
604	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiI5MDg0ODhhNC01ZDQ3LTQ0NTctODc5Zi1lOTRjNGYzNzlhODgiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiIyNjg2Nzk2MjMiLCJleHAiOjE1ODAwNjI1NTgsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.Wexs58OibWGUksb-qDAr9Xk7e7e1CyvW15L_OmsOBGY	f2SBt0U20z9iCScjD08gKTKH/sjEbEIIaBftj9KLfWc=	2020-01-26 21:15:58.934193+03	521
606	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiI3N2Y2ZDliMC1jMTZlLTQzNzAtYjE4Yi1mM2JmYWE3NDhjYjIiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiI1NjcyMTI3MzgiLCJleHAiOjE1ODAwNjQxMzksImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.F-oyyAhK-fP3PI5XUZ4HP_rirCM8KW_N7i-ieQeL2jg	kTz4s/krz3CviPDpLciSyj820L37K4hEI0PdPlH8Uow=	2020-01-26 21:42:19.754251+03	523
588	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiIxOTU4M2UwZS04YjFjLTQ2ZDktOWNmMi1kZWJkNmUwODUzNmEiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiIzNDMyOTQwMzYiLCJleHAiOjE1ODAwNjI2MjAsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.EbmB6qa7R_duIzpHjt9gple5Qzy1IcNo_8tM3zDmXV4	+sk9ydAyW04S6OuSlf8+FF6RP+ILMWdh/V5l560qtBk=	2020-01-26 21:17:00.574655+03	506
605	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiIzNTdiZGRjZi0yMmRiLTRmMmEtOWM1NC1hYTg2YTgxNDViNDMiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiI0ODI4NzQyNzIiLCJleHAiOjE1ODAwNjM4MDQsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.MqOnBfmgJmcFxrv-mDS7895z3k7ryly1I1wbe3-ifwE	AQTvPXOAHzU0TfRkhb86CsjsQb6d7gt/6P/FpaZudjw=	2020-01-26 21:36:44.216472+03	522
613	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiI4NWYxMDMxYy1kN2RjLTRmMTQtODQxYy1mMDY5YmU4ZTU3OTEiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiIzODM2NjI5NzUiLCJleHAiOjE1ODAwNjQ4MjMsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.FJVRb51kpy_VeOYsL2OyxwjzOy2HVDui8boD_-luCrg	i5ftKJGU6/64zmHuAPfnpOdGb5Er2fC62LXgTo9Vp3Y=	2020-01-27 00:38:43.544728+03	484
614	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiJhMDEwNTU2Zi00NjRkLTRlMTMtYWJmNi03NGMxYzdmYmEwNDAiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiI0MjMxNjc4MDciLCJleHAiOjE1ODAwNjYwMTgsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.k1MrTGi8_cW4IAWgz3jUKPPCDb-T2UI5jSwjUrx1IlI	Z42HD+M/S7RHAajI8yLx3N9ox9IS2T3GUUqn6boNETM=	2020-01-26 22:13:38.63856+03	529
623	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiI5MzJhNDU5OS1hMmMwLTQwZDMtYmE1NS1kMTVjOTY3YmQ0NDIiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiIxNTQ2MTcyMDUiLCJleHAiOjE1ODAwNjgxNzUsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.uMU9WkEkrD9o3Ka1bTvscLyJlMHy5Yq_j22CrFfJL48	QtR5YWR/7CHVOADGdAK6P3N+TGJk2g3/M4um9rP58HM=	2020-01-26 22:49:35.707174+03	536
786	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiIwMDUyMTUxZS1kNDI2LTQ0YWUtYjE1NC1lZjRhZDMyN2UwZWYiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiIzMTI0NjE1MDEiLCJleHAiOjE1ODA1Njc1MDMsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.KHtUHj1tVi9L-8epYp_HN3zAobOTDpcDLVKIavV9txc	FLKqfE74zM4xh3u4URHL/oMgtLck06yZyiVo8//XYcM=	2020-02-01 17:31:43.853298+03	661
708	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiI3MmI2N2E1Zi1hZWI2LTQ2YjQtYTk4Zi03NmUzMDViNjhmMmEiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiJVQ1BmSFN2SFVUUWdOSXhWclJuc0t1VEEiLCJleHAiOjE1ODAyMjM2ODEsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.-1X0itmn51pltlVp5htqwMLNa-5vu4H0tgf-kKHhTTU	xag6FDtkVRD+l32eJFTxmswKC3K5MI1/2Dg/27kC4RA=	2020-01-28 18:01:21.390577+03	600
710	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiJiYjg3YzIzZC1kZWQ4LTRkNTQtYWMwNS04ZDVkMTE4YjM3ZjQiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiJVQ3JiYnBycjh5c2s4V3RtcjFYODdxUUEiLCJleHAiOjE1ODAyMjUyNTQsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.69zx3JNpimv8iMAPIHMBE2SOhFx-JthpFag8DqC2lug	odf/XfaZ7UejcaCtHEd+44tXC12ej5nBMJa9t5edjlI=	2020-01-28 21:12:34.438959+03	235
615	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiI2ZmJjNWYyNi1jYzkzLTQ3MGEtOGY2Zi1kZWM4OTQ1Zjk0MTYiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiJVQzhsbDh3VlVmVlQzd2tPc0U0d2JHYXciLCJleHAiOjE1ODAzNjEzNjYsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.WMIBbsym8AZkLWpoUcY1Bcx7EjEgZM2TOvPvq6RUgcQ	mbKkEZ7bzRpokKeIWhRpLVi3zntP5ndAy37S3sMp/MU=	2020-01-30 08:16:06.82788+03	530
779	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiI1MzFkZWFmYi1iNDlhLTQ0NzMtYTY5ZS01MGQ0YWMxODUxMTgiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiJVQ29kUS1IY2JWaGpnVWdrc2pucURhZnciLCJleHAiOjE1ODA1Njc0NzMsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.vePjHaOAWg7OSnCkRPAULBn43lUkIq7nIaWwJ5EG1zk	9vwrZM1m9CjJocL1FzksVBJ4SuTlIYXhrM5ID9TEFYg=	2020-02-01 17:31:13.97711+03	654
782	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiJlYTk4ZDAyYS0xYjBlLTRlMmUtOTJmZC1lNzQ1NWJlN2E1MzEiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiI1Mzg3MzI4OTIiLCJleHAiOjE1ODA1Njc0ODMsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.zOVEvZB6bGw5Qiepc6-7N-urN7wm1R2R8vgdidS1aks	s4OiiDQOSBHqKDFp2oQgrpl8BJHQFho57UTehYdLMAI=	2020-02-01 17:31:23.541138+03	657
783	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiIwMGY4ZGU1OC03NWZhLTQ3YjMtOGU4MC05ZWY3YmQwODBhZjkiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiIzMjg5OTAzMDQiLCJleHAiOjE1ODA1Njc0ODcsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.Oaj9_OFKWL1HbbIIXrsIDEDQsqDBomaTimp7DWBcVsk	tAQUPbD3Q7cTyp+R4xZixaF7JVXkbqQytmzC3evWurY=	2020-02-01 17:31:27.102814+03	658
784	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiJhZDQyMWNiZS1lMTExLTQwMDAtOGY2ZS1jNmU2M2M1YWEyODUiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiJVQzV3bDJLVC1hRzY4WF9sOURXcFltaFEiLCJleHAiOjE1ODA1Njc0OTEsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.oqDPXphDNaBfz3Jdgm5jXJRB05d1eYyty8n-cOknt4g	h2/TA/rQMWdQ4xl15mGLjxOCMKlekBdaQaMaz3MaQ+Q=	2020-02-01 17:31:31.639172+03	659
785	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiIyOTI2MzE5Zi02YjI3LTQwMzYtYTk2Yi02ZDlkYWViMTc3YzAiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiJVQ2ZpU2x1c0o1MWtGMnBFWk42bDh5N3ciLCJleHAiOjE1ODA1Njc0OTgsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.aukajy0Z3KIFzmjjhRBVAfn3HaIa-Hf0KTTq09H-VQ0	AdRuL9O4YdE68LDuiRuoLWff+dEEnBjsQkc3G3+K/no=	2020-02-01 17:31:38.135847+03	660
787	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiI2NDg1MTU0MC01NDIzLTQxODktYjc5My03NDg5ZmEzNmMyMmQiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiJVQ2o1blhsRjBTU2R6d1RyX09DQUhJRWciLCJleHAiOjE1ODA1Njc1MTAsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.razeB0Bj-iuEXMgkn0Vsh2EkJuI2lKvNtqJTHqBdbjY	Kga8MWW7s8l9vZUsiHHuwKC2+0WogbbXKez0qjcNq/Y=	2020-02-01 17:31:50.843793+03	662
740	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiIzOGQzMzMwYi0wMDJkLTQ0ZGItOGZiNy04YjUwMWVlZDYxMzkiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiIzNzMxOTg0NDAiLCJleHAiOjE1ODEwNzYxMDEsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.l6AO_Ko-FydDTihPk_e5hkSZk3tfVe6urgPxpVu1xK4	WwOaaqMmoqYSseCZMD1D8TcEruWYF8pHJ9R44inDe/0=	2020-02-07 14:48:21.803435+03	626
609	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiIyYjQxYTkzNy01MDc2LTRhMzgtYjgxYi03MTU2MDA3OTMzNGEiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiIzMzgxMjQ3NzQiLCJleHAiOjE1ODAwNjM3MzYsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.U8OfgxTNZ-F3Fzj9F7UG3uH_RXRxOC98NiqpCPGkjZA	IQ1yRIkjQeIK4IjbmW8L0SN9D/rmnET73rfGRsUEtw0=	2020-01-26 21:35:36.654524+03	526
819	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiI5NmVmMjg3Mi0zODEyLTQ2MWYtODY5My0zNTQ5YTJhYzZiNWMiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiJVQ1RsYlAwa0tpVUg3TkJ1aEYtaDRNSHciLCJleHAiOjE1ODA2Mzg2MTEsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.vTtSXb4rmA4lKx2J-aESSDJPSa_qxXGx8b6fQqK3vwA	9i/841wvHulSqnAB6oec4UYq7gjWnTfmF6F1RZOKDm8=	2020-02-02 13:16:51.211182+03	687
607	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiIzMGU1OTg3Ny1jZjQyLTRiM2QtYjcwMS1kMDkwZTAyZDJjZDMiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiIyNzI0OTQ5MjIiLCJleHAiOjE1ODAwNjQyNjksImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.MWxSBvfJSDJhVRb2_N5EvcF7b73qy87Hi8XzsB7F0uM	+2ox+gEj9OKbBCRLM3eIDCAHSHZZxAFiDc/8VOMy7y0=	2020-01-26 21:44:29.442681+03	524
612	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiI0ODc5ZjcxZC0xYTY0LTQ4MmEtYWUyNy0wNjIzNDg4ZThlYTkiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiJVQ0xWcVhEZ0Q0ZXdUay1lMkx3S3ZsMEEiLCJleHAiOjE1ODAwNjQ0NzgsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.V4RrR7gv5iUYA584bDKiqWlRAmJTUqcBzrgzqFbwd6U	doj5BvJ/9thoFxnF2rMuqpgXUWEuwHC1c9A/7SMfguM=	2020-01-27 00:32:58.128063+03	528
617	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiIxOWZmNGYwYS1iN2ZmLTRhOTUtYjFjZS01NjUxN2ViODFhOWUiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiI0MDE0MjI2MjIiLCJleHAiOjE1ODAwNjU1NTMsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.Dw2fVL8wZHyZN4Chfw6hoCqALOzPyZdnaq7a8GqoFUc	oFxEEkW4G1QUhvMQU065oVG9Akuv93PrrHVW2Tvz6BY=	2020-01-26 22:05:53.048751+03	532
610	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiJlNTJlYzBjYy1hNmM2LTRiYzQtYThiYy1mNzhjNjYwZDk0MGYiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiJVQ1BSQjh3aTR1VEF3OElnWVF6eEp1M2ciLCJleHAiOjE1ODAwNjU3NDcsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.PT9BcISRealW64OKTgQz1MQJdyalFrocHGFFOAhBivY	VsCHKDz9nAIxLpl2j1ytMEv48zcf4QZF53bRGkhpeHQ=	2020-01-26 22:09:07.170818+03	527
620	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiI5YjY5MGY3ZS1jZTUzLTRhZDYtODVhMi1mNTNkMWZjYjdlMWIiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiIyMjMxNzk4MzUiLCJleHAiOjE1ODAwNjY0NzIsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.U8arHY_CXxiyr2cgsBg3QYUNO2KOUAVxuO1BS1RHW_U	+zAeGEUfJMBa9cxMcAhfRmgFs3X0kPNouI+IdFcOEOU=	2020-01-26 22:21:12.204199+03	534
742	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiJhYWIyZDIxNi0zYjRlLTQwMWQtYjEyMC02YTM4MjZhYWNlYzIiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiIzMTEyODE4MjciLCJleHAiOjE1ODA0OTY5NzUsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.avPu6zvZhOTaBybnU0UvAHNWOhH6peucveFs5dREgKY	e4t/V9/0NZrr31pWzFnDnnBS/jUJfgXKxCBj1KTJCy0=	2020-01-31 21:56:15.57187+03	628
624	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiJjNTBlMGQzNy02ZWM2LTQ3MzUtYWY5YS1lNTFlZWUxNTAxZDYiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiI0NzE3ODM1MjUiLCJleHAiOjE1ODAwNjgyMjIsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.XSTUDXKHWMJ2DC9f_G_2fTRLUTl21djG8I6auMM_8Q4	1agG/fF+PD8TQ5JMeo4CpAudIJ7xw0/b0fYLsDSUysM=	2020-01-26 22:50:22.116551+03	537
792	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiI5ZDIwOTJmOC02OWJlLTQzZDQtYmE5NS1jMWY1M2IzMGIxYWEiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiIyNjk4NTgzOTMiLCJleHAiOjE1ODA1Njc1NTUsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0._Exr-gjyfjhwvlgFh8Qk0IiTQsmHypqVqM7xm6k8oRk	iwHKFmtoo7IGcgN2dq4pDIFycfYNNYTG4Z+wjPqHCzk=	2020-02-01 17:32:35.870351+03	666
794	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiJlZDExOWQ2Yy03YmIxLTQxNmYtOWUzMS1mZDdmMDMyZWJhNDAiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiIxNTc3NDQyNzciLCJleHAiOjE1ODA1Njc1ODgsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.1ITG4Vl_MeyeuM276tUisEG5fgdMTT_VSYSzMC4eHp8	uTKhUoxTOLZlfWg8d6eiZYPyrtyt2UkJfbvSBWt0WiY=	2020-02-01 17:33:08.357012+03	668
797	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiIzNDIzN2Q2OS1iOTI3LTRmY2EtYTQwNi04MmNiNjM3ODk1Y2UiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiJVQ3lxbTRLb2JrcVRvelVrUE1UMUZyemciLCJleHAiOjE1ODA1Njc3MjcsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.p99C2PXbyt1NdJQ6BrEFiot40-wLVDEbr97qG-vj4sg	IvpwQCOBa1mW8SYV8tkrrgzmHIaezQpFVuQk5qdCceY=	2020-02-01 17:35:27.376456+03	670
798	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiI4ODlmMzdiNS1iY2QwLTQyZGUtYjJmOS0zZmM0ZmZmMTUyOTQiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiIzMDM5NDEwODUiLCJleHAiOjE1ODA1Njc3NjYsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.AGk4YJFIx4GB2AqrhWtYOizddfLIcdXS2H_OAV2mS_U	EbLdhsLPpWyEKEBstF+rjxDWSttRsC7IB+V+/WzR0SA=	2020-02-01 17:36:06.272481+03	671
631	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiJjYzQzM2E2Yi0zMDA0LTQyMWMtOTZkYS02Y2M4NTAzZTEzOGMiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiIzNjUwMDc0MDciLCJleHAiOjE1ODExNDU2OTIsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.81Ur-AOE_ff17gVOPKHwQYbEKs0kz8HN2EmfbVw7n4w	Nx5/Si15v2FGf+LS52rAzTzdaDXlPS/wVXtan5nm1gM=	2020-02-08 10:08:12.279858+03	543
795	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiJhZGRlMzU2MS1kOTc2LTRhM2YtYWQ4MC01NzE5OTNlOWYyYzYiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiI0Nzc1NzE1NzUiLCJleHAiOjE1ODA1Njg1MjIsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.bYVHn_hFhDVro_Tm0aL74FMq6kqm319CmH-Ostg8Fug	CYfeFSUwp35vzOZIBGuV37rbimuTSHDEFyLF3B8zenQ=	2020-02-01 17:48:42.414601+03	373
608	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiJhZTJkY2QzMC02MjFlLTQ1MTUtOGY3Mi1mZTkzNzNkYWRkOTYiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiI0MjA3MTkzNzYiLCJleHAiOjE1ODA2MzY4NTMsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.KQcR-3p6s_JHlSQcqp1fSYiKJjcCECES4zgQCULycEk	I8mJxvGjFk116ccxGMjE2w4plDXOcRfqNPwRo+22Xcw=	2020-02-02 12:47:33.171884+03	525
69	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiIxOWE2ZDQ3OC1kOWE3LTQ2NWEtYWIzZC05NWI2MTcwNjBlYmUiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiIxNTM1NDE2NTgiLCJleHAiOjE1ODA5MjUwMzksImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.Jam4JeOWoicdlgrmjmomv8xqgno7Dl-e_0TTlDLrd60	qq8y+AjWyHGWG0W4WLz9RCkwe87SrVKZJvULVV7Qjyk=	2020-02-05 20:50:39.544587+03	49
616	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiI0Yzg3MDg5ZS05ZWE1LTQzZmItOTViMi0xNmQ5MDE1OTkyY2UiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiJVQ2RPMi1pRmNWMG5Kbk1GZHd2WTJlSUEiLCJleHAiOjE1ODAwNjU0MTksImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.udPXKAYZ0St_8qXLZDhbJR-Bg0RnLHvo1y8Lr3S0yIM	rbsPbiOjFPhgDhofVhI8G0eEI6Av8OsaQoOWyPw2juQ=	2020-01-26 22:03:39.781436+03	531
622	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiJiNzVhMDdlZi1hMTdkLTRjNDUtYTk4OS0xYmY4ZTcyNTBkNDkiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiJVQ3Y5VUpySDhWVHVKbTZGS1ZKX3pMRXciLCJleHAiOjE1ODA1MDMwNTYsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0._lIUm07T_pcVrY6WfgbRiAxuXd78Egsk2IIZTkh8PTg	KpuVVsvL1yLnEOodI6342tslmHrjX21PVo+XPCnXrqg=	2020-01-31 23:37:36.71596+03	535
619	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiI5MmZmMzhiOC0zNTBlLTRiNGQtYTkyOS00OGQ3ODcwNTU5NmMiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiIzNTkzMjY2NTAiLCJleHAiOjE1ODAwNjYzNjQsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.ne1dpk6Fi7i5TjHqfuL3yAzaUrP6os4ogHcgzzfbpIk	6JFfJGWzC9RMbM6ILi/eeeW6cq8zbrZOeJr8AQ+TOxI=	2020-01-26 22:19:24.448021+03	533
625	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiIwNWIwMWZhMy0xMmFmLTRhYjQtYWVhNi1mYWVmOTNjZWNhYmIiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiJVQ05lTWNJS21IZjRFVFhVMlFRWTVBUmciLCJleHAiOjE1ODAwNjg5ODgsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.g1Pidn6luufaEmhiH4-SwizY7mmqIMlYvs37z5iNw7g	Q02phrNvjsbtiS/faV3zJa+f8NoeyfMY+09yqAGsBtM=	2020-01-27 01:48:08.498288+03	412
626	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiJiMjAwNWYxNS01ZTAzLTQ4YzUtOTZkMC1lYThlZjIxOWNhMjgiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiIyMTYwNjA3NTQiLCJleHAiOjE1ODAwNjk1NDcsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.GNWRsy3jUvfEtzkA6s1rnU20xatlnUi3RvgdiWpd-24	U4amQ40OldCVBJ7riS6ojcV92rhmWMP4vk6uyCVOcjo=	2020-01-26 23:12:27.80771+03	538
627	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiIxYjVhZDg5MS05Y2NjLTQ0ZTQtYTUwZS1lNmU0ZjFlMjQ0Y2IiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiJVQzEzRk9ZaldUUkpNREw2NmFxMGhoNHciLCJleHAiOjE1ODAwNzA0NTksImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.HDTCMnC3EjsFCnwz_V13fDGsuSUGQNp925McBWEs5-Q	UY6r+pt5xw25X6A/OsspePWtfeGv1WEp+qvvjM2Q5Pk=	2020-01-26 23:27:39.593751+03	539
628	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiJjNmI0NGQ0NS00YTA0LTRlNTItYWRiYS0yZGE3ZGIzNzUyNzUiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiJVQ2I0cFFTejlCNUhidXRLY0dtZTJXb0EiLCJleHAiOjE1ODAwNzA2NTgsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.vKp20Grb8049mf3cBLmBYx0VtDZV82KteAjyWJklH9g	mJ+QzzTYUaDQEA/39BkTfQcOdOzBLZKJuSWRkFo3Ghs=	2020-01-26 23:30:58.350033+03	540
632	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiJjYzliMTVjNi0yMzAwLTQ2ZjAtOTNlZi1jNjAzM2JkMjNlNTQiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiJVQzROQzlpdFJyQkNpU2hISkhyRjJ0TkEiLCJleHAiOjE1ODAwNzIxNjIsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.zRZXNZctPL4-iW0W1jckflGJoMHfqMDiKHZ3-XXKPPI	JIFLp2/jBtkloo1NZ9ySmsAWf7LK3r6CsaL/i5O/MXQ=	2020-01-26 23:56:02.319024+03	544
633	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiIzMjNmZWE3Ni1hOTMxLTQ1MzktOTNjMi0yNmQ1YTIxODEwYTQiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiI1NzM4NjU4OTEiLCJleHAiOjE1ODAwNzIyNjIsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.XHRcvWpnl0x6o2FCSJPfuwpklSKLnGAenXXixAIsfsE	rolfi1o6d70bNMqimf2RXIQ0UrmUfEYjb2ogFoXUejc=	2020-01-26 23:57:42.10927+03	545
629	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiIxZDBmNWNlMy0xYzI3LTQ4NWUtOTAyMC03MGE0YWUwMTI4ODEiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiIxMzQ1MDkwOTgiLCJleHAiOjE1ODA5MjU2MzEsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.Nto_pjmUIYC680RlRTe2tirB3aVVhXUlQ5SA1whfu58	uJ3UWuToI/f8bNxlVRRjc0mfYWYxOOYFz74lu+qlBUE=	2020-02-05 21:00:31.506747+03	541
635	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiJiOTNiM2NhOC1jMTNkLTRkODEtYjQ5MS02OWZmZjg0NGU5YTkiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiJVQ3pqcUZ3cEJKMThwbWgyZDkzVzRERlEiLCJleHAiOjE1ODAwNzM1ODMsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.3GNfVqp7yDNpN9vuEmxYGCrrGGWE8HGHPOE1KXtxtbY	gSHUy4hA2NQb8ver8vlmzCqCpSg5UleIWSE+sntmkY4=	2020-01-27 00:19:43.348166+03	547
636	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiIzZTE5Mjg0Ny1hMmYxLTQ5NDEtODU2YS01M2I0YWJlZDg0M2IiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiJVQ25tOWlwZWNxRnpMbXdVV2d6X1ZhOFEiLCJleHAiOjE1ODAwNzU4MDQsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.lE-CePcoW7uda35IpxnuRQpvY5mPk8bju6GRVB3JIyM	a5wc9wO7Fdu7pf9O59AS7gl6hwDVxRHQd9J6Mcum4W0=	2020-01-27 00:56:44.425994+03	548
637	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiIzNjJjYTI2ZS03NDMyLTRlMjYtOTc4Zi01NjI2Nzg3YjBjNjAiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiIyMDcwNTE1MDciLCJleHAiOjE1ODAwNzc1NzYsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.gjME_wSCXX378DW9k-JRazNXA32IG6BN4ropGqhWM8Y	pHvWAzKQm29fwIqzN0FIYpRpTjJbEfu/pkTHqMMDKs0=	2020-01-27 01:26:16.243583+03	549
634	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiI0NjA3NDVhMC02Yzg2LTRmYmEtODcyNC1lNDk3NTA2NzBiMzkiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiJVQy0yYkpYTVV5VlV3NTZ6Rl9qQ3lNZHciLCJleHAiOjE1ODA4MjE2ODIsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.2byV_NyNrCwlGb_e3lwheQfIrfJB7CDXm0gSWfFMQRA	qTZbF9eNymbPk0Yg1y9EaICwXcptJ7hOS/cOvYUiCXE=	2020-02-04 16:08:02.673492+03	546
630	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiI4NGQ0NWY1Zi0yMDRkLTQ1ZmYtOTFmMS1mZTBiMjVmMmJlNDEiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiI0ODc3OTA3MDAiLCJleHAiOjE1ODA4NDMyNDQsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.XX6vqJkgBtfAui6SK_CDviPTYPCYJZxpG15iCdlNgUI	vEO7pFWAh8qvrahAOCWIxhczTpVkTX10Qa2H/Oqxltw=	2020-02-04 22:07:24.038371+03	542
638	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiJjOTdlODgwNS00ZWY5LTRiOWMtYmQ5OC1hZjFkMzhhNDllZDYiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiI0MDYyNzQyODEiLCJleHAiOjE1ODAwNzkxNDIsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.u_3XZOnSUiq7r0OdCsFGhjYhXwwQuTRAtC3iXtLc624	3kSqtMeBKYz53oPzC6XUfXP6WV/XXotwtCn4Zwm9aFA=	2020-01-27 01:52:22.104067+03	550
642	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiI4NzU0Njg2Yy0xY2RhLTRmMzgtODM5Ny0wNGE5OWZkOGNhZjEiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiJVQ1E1YlgtelpXX195eXo5dUV5aERMSWciLCJleHAiOjE1ODAwODQwODYsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.fS3SrChcgS1C-vML3Qy4Z9wAvSlB02UeynIaX8GZ0FM	Oh4Rh/DMsgJDxNWLN7hBvzF4B9m1UQQHWpiRaAtVNdE=	2020-01-27 05:59:46.215999+03	552
643	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiJmMjBhODQ3OC0yOTBiLTQ5NWMtYjkxNS1hMDcyYzZiMjJkMDQiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiI1NjE0NTc5MjEiLCJleHAiOjE1ODAwODYwOTgsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.7TUewbX2X8JL_NGPsfBc_fyKtN7kcHxktixhC85nuH0	/cAqmgRMKquYdDqF6kobfh8Mg7m4GJWNU4ahKoyCMcY=	2020-01-27 03:48:18.498199+03	553
804	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiI2ODVjYWY3YS0xNDhlLTRlMjgtODQ3ZC02N2JjMWE0YTlmYmYiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiJVQ0JUMU1aU1NvU3lZUkw1ckVKcnN4V1EiLCJleHAiOjE1ODA1NjgxMDcsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.jKR7cHegdzzksagaoMU7pQP8JXxHhDI4mB6qtJyL5ek	uggcBPWlTLLVlnM0I9xnTMEgos/vjkm1lSa3jheDqjQ=	2020-02-01 17:41:47.366631+03	677
788	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiJkNzAzMmZlZC0wOWZhLTQyNjQtOTcyMy1iZjhjZjA3YTQ3ZjMiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiIzMzUyNzc3MjMiLCJleHAiOjE1ODA1Njg0NzksImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.9Ebe1gfz1OveBCt4xEWixxtZ1BddmaFWC1KO4k0q6j8	jX2HZorAAH+1ELpUjefLEN9U72MqdeX1Pk+0n8ISIyQ=	2020-02-01 17:47:59.843683+03	663
647	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiJlMzZhNWU1OS1hZTAzLTQ5NmItOTk5NS1iODAzN2FkN2NkODIiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiIzNDA1ODgzODAiLCJleHAiOjE1ODAwOTM5NjIsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.bbL3URxIN_kVCXgtpG0YW9wV5BOa5T7p6bqpnn7aQ3Q	X6jyBNLqwXguc0SGA/FEMrfj/sb1fWiU5vLh8NgWaHU=	2020-01-27 08:44:22.99901+03	554
805	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiI2ZWUyNWZlNC02ODFkLTRkZjctOGVlMS1lYTNhZjE3YWM5ZWIiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiIzNDMyNDAzODYiLCJleHAiOjE1ODA1Njg1MjAsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.8NT7prfdv9QarUCTbHaoLkNjTrprtMluxS29Qzb6vCk	Gbq0IOj48HOhkQhk81JeIhhJJDkGIby6e1SziacTDMA=	2020-02-01 17:48:40.322184+03	678
711	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiI0NmY4MjI4Yi1iM2ZkLTRkMGMtOGU4OS04NjI1YmJhZGJjZjMiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiJVQ05ibHZobDhCNVZqTnpsQkVWcExKU3ciLCJleHAiOjE1ODAyMjc4NjQsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.mgqB3gMJ8cawZYHMcM_8_5LIRsCajLK2J91ffGU6j2g	KsCQLnaRXHz7oPgTKXl/3Doyss8stDtWR1tb8fl0cLM=	2020-01-28 19:11:04.903431+03	601
712	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiIwMWRkMmRlNS0yN2IxLTQ0NDAtODQ2Zi1jMzk2OTg0NWYyMzIiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiJVQzgwNUQyNUgtZnJBR0t2Y1VkYjdBQ1EiLCJleHAiOjE1ODAyMjc5MzIsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.uCFh3uKrndsBNPHmNl8jEqRmKEwG6O52heBpcgI0ELc	QQXAdDQZbOM0RRLXRn5X9faVG1sExO1EF90HneekWzU=	2020-01-28 19:12:12.325789+03	602
639	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiIwNjkxOGI1ZS1kMDk3LTRmMzItOGZjYS04NWFhZjhiMDg3ZDAiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiIzNjUxMjk2NjIiLCJleHAiOjE1ODAzNDIzOTAsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.vmkqmEBXeDyCnk97RHTygRvAQJlhNVcJ42srbgvuLjY	KvoZjpI8NRiNAYPN5VRJsv6yf0342lr++eEZ0+x4OQE=	2020-01-30 02:59:50.054721+03	551
806	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiI4NWU4MmE2NS0zNTc4LTRlMjUtYWEwYS1mYjA1MGRkNzNhODUiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiJVQ1lQdUtIRXA3VVpLUGRhV3ZjNUZycGciLCJleHAiOjE1ODA1NjkwOTUsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.cpuOhinVIsujyIkTv7_MscvjhVoF9EAzZufWi0dlno4	R/pryZNYmL6FGaQOTvpyQYIZxNb5V7xOawCQT4ygNXM=	2020-02-01 17:58:15.453285+03	679
770	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiI0ODY0MjlkZS1lNThjLTQzM2UtYTVhOS04MjAzZjRiMzgxZDUiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiIyNDI5MDg4NzAiLCJleHAiOjE1ODA1NjkyMjUsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.zmkJpHsZIGv5eRvju9adGa9lE-HBe8FxBLZTk5fDYzw	9HMihIUzKctxIZD9U1EXG2yprzQ1z5DwFY8ixGQWi2s=	2020-02-01 18:00:25.148507+03	647
801	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiJkNmYwYTcyZC0zN2NjLTQwZGYtYTZiMS1hNjQ3ZjI3MDIzMTciLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiIzODk0MzgwNzQiLCJleHAiOjE1ODA1Njk0OTgsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.OJKT0Iw38NTzpIjgaf1jLDh_QOxCD0BYK1OWoDPOzf4	eoherjkqZ/GS60Nb+qVDiI8rBTaLt78SX/TZWl/04FI=	2020-02-01 18:04:58.033115+03	674
730	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiI4ZDNmOGNiMC02NGI0LTRhNzAtOTA5ZS0yY2VjM2EyMjk1MDciLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiJVQ0pJNlIwT3hYbFpEdGJFTklDS3Q1V0EiLCJleHAiOjE1ODA1ODEzOTEsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.ocxAETLax3VoM3feO3pbVjwqgpiE711DvNb34VyIL-g	BC1oDKAVSvBWFE36bgzn46LeajZLiu3xspN2aeuNM+0=	2020-02-01 21:23:11.111693+03	617
641	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiIyZTIwNzVlMC0yY2ZhLTQ1N2EtOGYwMC0zYjgxN2UyNmNhYWIiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiIxODA4MjQ3NDgiLCJleHAiOjE1ODA5MDQwMDcsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.oPjHu2B20zaDIOmDqprCZ_kcjmnfib6jmse8BTBJtQg	VUtGyFivQhe/uGw3rUGrnVl2J2/9DpjEGBvLhh+VevM=	2020-02-05 15:00:07.7103+03	70
853	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiI5NGE3MjJhNy0wNzIzLTRjYTQtYWM3Mi0zNDgyNTI5NzNhM2IiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiJVQ0dicFRMdjU4d3pwTS1PSGdlb24zVHciLCJleHAiOjE1ODA5MjQzMjEsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.sYRQqzy-556nxpJBhiMNpberA5X9Td1Z5U9tu7b6GpA	0P4doSwOf4L0ylKKxyiXaAVzNazjUsof+JbQctyDMsI=	2020-02-05 20:38:41.830643+03	712
854	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiJkN2I3NDQ4ZC1jYWRmLTRlOTktODRhYi1kOTIxZjMzYzlmMWYiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiJVQ0lPZ3FPR01YM3o2MWdaeVZtcXRsd1EiLCJleHAiOjE1ODA5MjQzNDMsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.6zZvrdomUXf6hSop37Whe4RigJrQAU652Oea0FPGN80	0v6j01ucPDJQq+ZSBo18x/pKfhkpRbkrLI5eqQA/ULc=	2020-02-05 20:39:03.208432+03	713
856	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiI2MWEzZjA3YS0wYWEyLTQ2MjAtOWMxOC03ZDYwMDEwOGNmZDYiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiJVQ0VqdHFEcDMxU2h4b0hIaE01dUxCOHciLCJleHAiOjE1ODA5MjU2OTgsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.tEFeri4FjoHnMyS__j71cbVuA5k8rn-kadmEiXNAHM4	gMvM0NLNGTNYbbvUaoV2YZJgadi3iZ0ICbqW591n/cQ=	2020-02-05 21:01:38.726688+03	714
839	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiJkYjkyNmNhOS0yZDJmLTQ4MTYtYWRkMy04MDFkOGM3MzA2NmMiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiIxODA4NDMxOCIsImV4cCI6MTU4MDkyNDQ0NCwiaXNzIjoiQW5kcm9pZE5vdGlmaWNhdGlvblNlcnZlciIsImF1ZCI6IkFuZHJvaWROb3RpZmljYXRpb25DbGllbnQifQ._OcxaXkjk_yOzdfeuKV9kHdwyVYJStaijuC-m9ZJEIs	zu7IHXmznKa40G8dxiOmBeL2QwDit7mAt7/zMMHX1Co=	2020-02-05 20:40:44.918255+03	62
857	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiIzNmViMzczYy1iZGUyLTQxNjgtYTBjOC0yMzg1OWJiMjdjMzciLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiIyNzMwODYwMzYiLCJleHAiOjE1ODA5MjQ1MjYsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.IGcLYrDL9GvUPqjA-QaP0pL45shEihwrEky0oJPHf74	3bbmGlzESNGcgcYHDNWPJKWjgugL0pryEkOxKNTXbLQ=	2020-02-05 23:27:06.039702+03	669
859	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiIxMzVjYmNjZi03N2YwLTRmMDMtYWI1ZC05NzNkYzVhZWJhNTUiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiJVQzZWM2huRWRHQ01OQlp2SDMxVTdacmciLCJleHAiOjE1ODA5MjQ5MzAsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.VeXfKm6B-cNAtIdQx_l_IvxQiicwPlEG224eCKBMFOE	Ff3i/z9oH8MwWsvD4hRi+UVxvuOiAOTlgttKtuyIVbU=	2020-02-05 20:48:50.953172+03	716
313	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiIyMWUzYTgwMy05ZjM4LTQwZWMtOTU5ZC01MjViN2I5YWM3MjQiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiIyNzY2ODIzNzgiLCJleHAiOjE1ODA5MjUwMzcsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.PSEcYhUscCgM0ySyjjW-YY0UTE7lpOKtNPThKlpD1UE	1MC5vhoMWIqri5cwF34Lul49M/LYA4yEjm8dncXQ2VQ=	2020-02-05 20:50:37.341761+03	258
860	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiI5M2I1NDhmNi1jOTcyLTRkMzYtYWVjNi0wYWU2NzY1MmM1YjAiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiJVQ05oR0czalFKVWdqbHpGdVc0V0pYMGciLCJleHAiOjE1ODA5MjUwNTUsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.buaiviV93qeq-2xwXGl_kYZSkhBZ1vSzc1Nb34yoLkc	VJcktG8Kqblqv14oeyR70PsSc47WbE9I2V8HF6O0j10=	2020-02-05 20:50:55.662455+03	717
861	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiIzZmI5YTBiYy1mODNhLTQ1YzUtYjBhYi0wODk3NDgxY2UzYWQiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiI0MjMzNDM0ODgiLCJleHAiOjE1ODA5MjUyMjEsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.SxWl10VTSOjHUmrHtqOqitM6EzCEJNHOYHvugW6VUqc	R6xEEWVzQkk9Y/fmlR1HJ9M98smcmnIiEuDjsZuHgJM=	2020-02-05 20:53:41.780895+03	718
862	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiJkNTljYTBhYS1mZjEwLTRiMDEtODhjZS0wZmM3NzQ4Nzg5ZGIiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiJVQ0I5cUxiOHdBRk5wMDNzWUZaeEJLV3ciLCJleHAiOjE1ODA5MjUyMjYsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.8mey-JoSjyx0CO6CfJMNbXqikU9c0ANntW8pGtKIeZo	TFBvQ8dneii6N8QLjVk3bCoQNuWuYA2Jo21RZ9Rcbvs=	2020-02-05 20:53:46.929632+03	719
863	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiJlYzJjYzFjZC02ODkyLTQ0ZTEtOWE0ZS03OWYwMmY1M2QzZmEiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiJVQ0ZDUXFWWUE3UENBLWlTc1FVOWhzbHciLCJleHAiOjE1ODA5MjUyNDEsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.quKHqOPSN-SpZVlEdZQZRyVbgIL7G5U_eKEGaS1e-14	63mx7qmTDORY1F/5h6jUPQYbBmw9Kqnp7w88ZDQTkrQ=	2020-02-05 20:54:01.866585+03	720
864	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiJhZDU3NjNiMC0zODU1LTQ0MWMtODc3ZC0yZmQ5MWJhMmFjNDgiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiIyOTcyMDIzNzEiLCJleHAiOjE1ODA5MjUyNDYsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.GTwvl5EYmXTb3gGV79nMeO0n2WFDphIm4T54lMMkuXQ	JrxRVkW+jSOxvtjvniybEqka2eXlpXT1BUBmtERrQjg=	2020-02-05 23:39:06.392776+03	68
555	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiI4MjE0Mjg5OS0xODI2LTQ4MWEtYjZjNy03ZDljMjMxODQ0NmQiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiIzMDE3MDU0OTgiLCJleHAiOjE1ODA5MjUyNTMsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.7vbvrUL7ODdlYhnpFHqN3uyLHoP9IeK9SElyyI1au0k	9HkFfMbTSQ1yH65H9BilzE5ybgcuQSOv7sERn0TU+GY=	2020-02-05 20:54:13.763715+03	478
866	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiJkMGRlMjNmZi1lMTE4LTRkYzMtOWJiNS1kMDA4NDQzMjM4NzUiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiJVQ0c1aXFGb1l5VjZTYlBqaGpQTnVfYVEiLCJleHAiOjE1ODA5MjUyNzIsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.7x3jFMjWVbezcvro7Kahy9B_FE1rE9HBViZbZwB7fNo	eCKtWD81QFbEOrKa7Fn35iZSwL9wEXoQ3hXqswlm4i8=	2020-02-05 23:39:32.398725+03	721
867	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiI0OWZmNWQ2OC02MmJhLTQ2NmItOWE2Ny1lNjk1MTcwMDE2Y2MiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiIyOTMzNjUzMTMiLCJleHAiOjE1ODA5MjUyNzcsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.kXDowAn2FtbzwuWbpxh2DBY3P8RB6BY_kXr_jszeq9s	AcE4hV1DPO5pWSpOfbcVNb91fV8PFWhUHHO+TU0121M=	2020-02-05 20:54:37.295208+03	722
869	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiI0ZDZmMDZjMi1lMjRiLTQ5YjgtYTY4ZS01M2RiNWMxNmMzNTciLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiIzNDc4MDYyODYiLCJleHAiOjE1ODA5MjUyOTEsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.E8krTJ5heSZ52Xno98lqlIbvHwPZP6KDc0mMHdwAr6s	o+ETl1jMAAOvKWYt8b/4ZxkNRm5stUCl/TS3qEsXc+k=	2020-02-05 20:54:51.991113+03	724
870	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiI5MTc3MzUyZi1jMDRlLTRmZDctOTNmNS1iYzMyMDJjMTJmYTIiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiI1NDAxODEzODgiLCJleHAiOjE1ODA5MjUyOTMsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.pvgDVQnLKRVDBrJwaB-Ws1ynER5ZfdRaMFhbhxHluHo	LpcPui6+yw+bPh14R+mXr1WP7LGllnGtK14yc624QQg=	2020-02-05 20:54:53.699272+03	725
871	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiIwZDcxZDY2Zi02NjJhLTQwNmYtYTQ2OC1jMDE5ZDc5ZWJjMzMiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiJVQ1ctaEM4VURMZ1dzX1Y4RjhfR1dfeXciLCJleHAiOjE1ODA5MjUyOTMsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.uQhQYTcBVncxOHDC7AWglHIB2ulf-S0I2wcpmQLanAM	afXhGoQnfzQV6aIrv4k89NDIgbDj6HB6/7abzu8J0S0=	2020-02-05 20:54:53.977629+03	726
818	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiI2YTg2M2ZjYy03N2ZmLTRhZWUtOGRhNS02ZDA3MGQ5YWQzZWQiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiI1NDYxMzgyMjUiLCJleHAiOjE1ODA5MjYxNjQsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.AT4POlnm_u7A43-FK0cLMQ17wrupcsAmghO2ppz--pM	Jc2sDc6qrVu0/SF/kUnrXnMwH3UK8c7hQ0JkOZzlV6w=	2020-02-05 21:09:24.424848+03	686
868	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiJmNTZlMzU2Yy0wNzJmLTQ3ZmUtOTE3NC04ODkwNjkzMmZlYmMiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiI1MTkzMjU1NDIiLCJleHAiOjE1ODA5MjY3NjQsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.KuaY4S4Ep4MomJkRiCdkEb-wpj9s9TGr4vM5bgBclwo	1XMK6xjOJ1OIAnJY54mvT2zjONhaz58KnFB6vyVdSjQ=	2020-02-05 21:19:24.554182+03	723
872	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiJjNmQ2OGFlZi02NmU0LTQ2MmMtOTk3MC1kOTIwODhkNzA4NWEiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiI0NTY2MDQ3MjYiLCJleHAiOjE1ODA5MjUzMDQsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.GdLmmJJNKtJVl4AstCzGJ6VXGwf7oLNdgK2uKWLnPRw	s8D3GPqm6uBefXBKl5Pzc1CYQxyTK5eZMlAFwlHrSng=	2020-02-05 20:55:04.72187+03	727
873	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiI2ZDkyZWM1ZS0yY2IzLTQ4MTEtOWQ0YS1iMzYyZTJhZjhhOWEiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiIzOTA3NjExOTEiLCJleHAiOjE1ODA5MjUzMDgsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.3Uf_ppzhGYUPpJSDmQhdHG9EW2diTsHNPuE1RWvnKjs	HqmDdtGJ1qKEpBoS7cnMITRf40C8cj3FV3rBWnCejvk=	2020-02-05 20:55:08.121516+03	728
876	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiI5ZDY3NzAwYy01NjM4LTQ0ZDctODMxZi0zNTRiOThjMGMxMDIiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiJVQ3FFX0JDN19wTTRQRl85Tm5sYnNDcGciLCJleHAiOjE1ODA5MjUzMjQsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.4ZQ1MgKYgtd73lzKs3BNznchKThT2Fq3UlBBLYHKocc	DdFi+ouWwTrXsedjTNvok9zAZ/0hvUysLvJsvK13pWI=	2020-02-05 20:55:24.911452+03	731
877	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiI4MzJhMWJmOS00ZWE1LTRlNDktYTFmNS1jOGZkOGVhYjZkNDQiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiJVQzc4bldsb3dQVkF3MEl5ZVhtUVYzN0EiLCJleHAiOjE1ODA5MjUzMjcsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.QvgFwaiHpNZkSE08MPsYB0VT-0Ibz2dcMJ0AYCszFy0	hJ62xvO+10vmsO3kLj0J6fsazK7SOXElayFeU6ssHQY=	2020-02-05 20:55:27.130087+03	732
879	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiJlNjgzZjkwNy1mY2UxLTRiNDgtOWRkMi1hNThlZjlhYjcwNDYiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiIyNzUwNzkzMjgiLCJleHAiOjE1ODA5MjUzNTEsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.D8jOe6tKXHmJMGMaxFf0krhxaGUfKfV8ZupvWVaqotU	aqSsczOzCpN0V5AYTcr5tn3wdHl/+6xA9TOHxn1zSlU=	2020-02-05 20:55:51.339838+03	734
882	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiIwZWYzZTI3NC1mZTM2LTQ3Y2MtYjZlMC1hODU1ZWMzZWY1N2YiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiJVQ3hld0k4Yi1Bc1M3b1d4WktQY1lxV2ciLCJleHAiOjE1ODA5MjUzODYsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.BD0ZjB3TgYRczZR7lpfpuvlZAmESK2jEzf_uHxWQILg	2YYjzmO1dD30xAF7HI2pEAz4BOhgJC+grX/YQbT2EvU=	2020-02-05 20:56:26.550978+03	737
887	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiJmNjc4NjMyYi0wZDI1LTQ2NmEtYmRiYS1iNmQ3N2MxNzljYzUiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiJVQ3hXNnlVQk5NNE5DRklqX1pPNFNmOWciLCJleHAiOjE1ODA5MjU0MjksImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.J93gk04fhqrl3D4JbZNIRnMYmZMTvA_cZXqlNccr9kI	PvZDdhZtmg34X0URlkP8NqhXgPUZ36OcQpnONcIthqQ=	2020-02-05 20:57:09.289788+03	740
892	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiIzNWZlNzU2ZS04MjI4LTQ3YTctYjU4OS0wZjI5YzZiN2RkMWEiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiJVQzh2WWFLZ1NvalZSM0JXOU5wQ0ZWUkEiLCJleHAiOjE1ODA5MjU1MjcsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.vahGugAIyvwS_f9i2cn3mhdHCxiGNW8dRw0gOBEBn0o	csZhNwaUCy4W0s9RjbZXqPZdSEgtbz0/FXg2k1oGASE=	2020-02-05 20:58:47.003406+03	745
893	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiIxNmUyODFjNi04MjJjLTQxYzItYTc2Ni0zZTI2NDliNTFiYjciLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiIyOTg4NzkzNTciLCJleHAiOjE1ODA5MjU1MzAsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.NCEAa0uW_FzZUrkzRyM-AuLmwoqfBumJO5h4rI2Ed3c	iVQBg4QJOmNGqDZbR/RmCfJwO1rDnnCLemxHy7XWzLQ=	2020-02-05 20:58:50.796245+03	746
894	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiIxOGQzODEwNC1kOTdhLTQ2MDMtYjk0NS1iMTdkYzM5NzhlZjEiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiIyMjkxMDU2NDQiLCJleHAiOjE1ODA5MjU1NTQsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.UA33XRGvohTmcIlL9IvsM2NPE_DKRzGHrj9ouz8sGG0	/L4wTdE1G3OM3+YxATKJORyAaRamFJF3t+jSC1oxNqo=	2020-02-05 20:59:14.314304+03	747
895	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiIwOTY3Njg3MC0wZmEwLTRkOGMtYmY5ZS03MDIwYTBhNmZjMTciLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiJVQ2RiZ1pNdlFSTEtPTUx2TDM4Z09iNkEiLCJleHAiOjE1ODA5MjU1NzIsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.jYef5bYSwQ9dz_iP5BjbJlU8tY3Nv7tHGUUvivGX538	CkjxTlIC3DUk0fiv8+HfD4kRjC+gx5+00qOUw0nOTDA=	2020-02-05 20:59:32.924157+03	748
897	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiI4ZGZiMTY3Yy01ODI4LTRmNDgtYTkwMC1iNjYwOWU2M2QxODQiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiJVQ2RRNjNXQ0ZQa1MtXzRnOHpjOG5Wc2ciLCJleHAiOjE1ODA5MjU2MjUsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.ddZDWNrUajz5gIMRgQUtFg_g--6pzGTCXx25PvjOb5c	NVLqmTu4M4A2q2UtfBts3NrVsB6Q/OmXzjKqT0tD5YA=	2020-02-05 21:00:25.832096+03	750
850	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiJjMjQ2YjNjMi1kM2E0LTRhNWMtOTEwZi1lN2RkMGYzOTNlOWIiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiIzMzg0MTM2OTEiLCJleHAiOjE1ODA5MjU2NTcsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.xHKfAXwQFOfnvIGt2yrINw3TX72HsPcpnlaBQSRSYq0	jpxgFiy4IPl+zkSYaZi5YP37inBt9a6g5BV4H58D9fk=	2020-02-05 21:00:57.748615+03	443
898	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiI0MjU4YzMzMS1kYjBmLTQxNTgtOTBmNy0xODc3YTkxZDdhM2EiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiJVQ0RFRkFzTDNjbTFsMXpURzFpUnNSdFEiLCJleHAiOjE1ODA5MjU3NDMsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.tzw5BgbU04UHj0n6CJgDGryjfKb_WRPX6hmusEClyS8	BarovZO/W0WEHPnJmBvQNT7zZbUx7yG5w800DZmKd5Q=	2020-02-05 21:02:23.248204+03	751
899	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiI0NmM4OGZjMC02NGJiLTQ3MjktYjU2MC1iNDkwZjUzMmY5NjkiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiI1MTY3MzU2NDkiLCJleHAiOjE1ODA5MjU3NDQsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.Z_KjwHmj0LZq2HrRg38WaacEvEcQm_QuYm-R37tNJEI	rI72xdrYGPzf0p0HA8lZtjP5aZ/XxgxMZp4OC2vPqN8=	2020-02-05 21:02:24.622653+03	752
858	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiI3Y2EwY2E5Ny0xYjE0LTQwNzUtOTVjNC0wMzI2NTYxYWYwMDEiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiIzMDYwODQzMTIiLCJleHAiOjE1ODA5NzE2ODcsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.6KTSbr2pivl--9vkBswwl0wZ1E_rj7cAOMDez4NlWgg	g6ZK2t/K7oleeGEncUivvOaq7ixjRKfexEPlwMTA53E=	2020-02-06 09:48:07.227591+03	715
874	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiIzMWQxMWVjNS1jNDViLTQ0ZGMtYTNhYS01ZTljZjY4MDVkYTQiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiJVQ3RfekVxUjlQcGQ4cVJJcmlFODJLOVEiLCJleHAiOjE1ODA5MjUzMTEsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.Oe0ePob7Tad2TI9wocVEF66hScUespjlKwQwzIeKp7Y	G/tbOD5AYebVUVR1kSB/OmEGv7QsdPpI8YWZUpB8Sxg=	2020-02-05 20:55:11.390277+03	729
875	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiI5YTY4ZWU3Mi0zYjI5LTRkZmEtYjBlZS1jZTUwNzg5YzY4YjEiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiJVQ3pkOUdyUFpTZkdpc2pvLXJ4NHkyNlEiLCJleHAiOjE1ODA5MjUzMjIsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.JULTBX6smySRe2MfAGXpmE3mOXbEZZ4qnJBcJ90behU	ypj1KXdtX2pIzBuQUCni4et48kqUXV7Lpu5NSMbNsSY=	2020-02-05 20:55:22.942629+03	730
878	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiI1YjAyZTZkOC0zMjAxLTRmYzUtODQ0ZC03MDEyNzQxZjFhNmMiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiIyNzcxMjIyMjEiLCJleHAiOjE1ODA5MjUzMzMsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.FnuYQuDNs8EkqxfnrD01jAEnApziSwx9lUzisw_kXgE	qKusB3oBeIEUkkJK3f9e634pYr20uewn5JRl2aPV5yw=	2020-02-05 20:55:33.116365+03	733
880	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiI2NmQ3ZTEzZS1iYzEwLTQxMGUtODBmYi03YWFkMDE0Y2JhMGUiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiI1MDU5Nzk0NzkiLCJleHAiOjE1ODA5MjUzNTcsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.y68sIBLOxeye82x1_wPnzpgJbERE7hMQCYZk6Sae-ZQ	gUC4oT4aGyEoLxthYOJkp63otKD4zDWgCh+NXHj5oRw=	2020-02-05 20:55:57.726834+03	735
881	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiIxZWZhOWRhZC0zNjA1LTRmMmUtOWFlYi03MTVkM2QzMzMzZDUiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiI0ODczMTIyNDYiLCJleHAiOjE1ODA5MjUzNTgsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.3JeHqBoxH6BBTtJQ7fqx0lCjADXqZW0YZPBjDekDyEY	A4QBtOS8kAwU8Zr1vGDp8aOan5iGBdEqGhO5D39tL+I=	2020-02-05 20:55:58.21871+03	736
883	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiJiMDQ5YzZkOC0yNTMxLTQ5NjUtYjAzMC00OTg4MzZmOTk4N2QiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiIzOTYyNzYzMDciLCJleHAiOjE1ODA5MjUzOTYsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.duKw_beHe5RE6gXiN0ALZaDTx5YvaIITzhtGwOMDkx0	vYLy7yzfIf22EKRrDOx1xpiOwiB2tbIL19Q3odM0JMI=	2020-02-05 20:56:36.899928+03	738
885	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiJmZmI5NWNmZC1lOWM0LTQ4ZWMtODAzYS1hYzNkOWQ3ZDRiNDQiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiIyNDcxMzk0MjkiLCJleHAiOjE1ODA5MjU0MDIsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.Q9K4t_NurPaOI9ON7muYDE98UgrKkb_-Vr9fGO4-d3Q	2HUyrgqDKIrUjTwtEhJODQ3kdB3fUmyeTsm1SXhT+js=	2020-02-05 20:56:42.759777+03	739
886	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiJkM2MyYTA0OC03MWM5LTQxYmEtOWQ0NC0zZTBiYjVmZjc0N2IiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiJVQ2ZBdVVaZ3YwRFZ4S3k4NEJZNUh3bEEiLCJleHAiOjE1ODA5MjU0MjIsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.g8hyOJasckX7yy0ebxUpYM-lgA9rr9g0WTQUKKrg0qk	vsEczDjnvU1rYyk7K0CZNfIRlucOI+3Fr56fSjw9rmU=	2020-02-05 23:42:02.877384+03	575
888	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiIwMjMwNjMzNy05MThlLTQ0NTEtODUyNi05ZTE1OWY5MzNjZWEiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiJVQ2Q5WVhxU0JCSUpIZk1CZnRGNy1xWHciLCJleHAiOjE1ODA5MjU0MjksImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.0Sy85ysK2n4ULQf3AfYRea50Lt2I67Mm4uWqNCVyoec	Ocu+OUy4e8yK3KEmcZA9lTbUcnITLN6RnlxUyg3wKF8=	2020-02-05 20:57:09.327822+03	741
889	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiIyMzVjNTcxYS01ZDQyLTRhYzUtODg5Zi0zNWJjYzdjY2I0NTUiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiJVQ1NNdk0wZVdsRGdJc0xlcTFlTUJoUUEiLCJleHAiOjE1ODA5MjU0MzIsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.lKjaSZj7T-La-P1CvVZPEU0Sm77pkK4CjL2QsT_jL48	B2GAGLN2nXfFEwOqFgdqH4NqoHpgU9TJaJU5V+uvykU=	2020-02-05 20:57:12.005453+03	742
890	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiJmZTE4YzJiOS01M2NkLTRmYTYtODE4MC1kMmQxYWYzMTQyNTEiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiIzMTI4MzE4OTIiLCJleHAiOjE1ODA5MjU0NTIsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.3A1zxF1G3iddvWMRA2LcsyUgvGC0pgFROnv57WS0B1w	232THjtvYTbq2RVyOJL7X8LIky+doee7MUETC3rulOY=	2020-02-05 20:57:32.476868+03	743
896	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiJkMzYzZDc4My1kMzgzLTRhZGItOWVkNC0yZWQ5MWE1OGY0MGYiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiI1MzM1MTAxMTEiLCJleHAiOjE1ODA5MjU2MTYsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.-wc92QR4PhWcG7AzYtY59--Hq--a8t2IUSUiSW9D264	yP7LXD781pJNokvDC1iQZCCV4STWTS2t2GgFvxHhU5U=	2020-02-05 21:00:16.807591+03	749
900	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiIyODQxNDczNC1kZTZlLTQ5OGEtYTc4MC0xMWZmMTRjYWU3NzEiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiIyMjE2NTU1MjEiLCJleHAiOjE1ODA5MjU3ODAsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.IcqOLZ4bUytDlktfO29RvPGn6pv584R8HuboehGP-gU	1rKLRnknFha5dgc625l0x/JzVH/0PI4tHXGR4MF6xb8=	2020-02-05 21:03:00.492192+03	753
901	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiI2MmIwMGM0NC05Y2I1LTRlNzktYmMxYi02OWFjZWEyYzlhODUiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiIyNDIwODU2MzciLCJleHAiOjE1ODA5MjU3OTUsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.wnxGSUCA9kIH8TgZhRp6JVOusiEabZjZZz9d2MU7kOc	OyXLjj7emCAF0uoKSvINfkJsQIxqq2efGVstVdUNk8o=	2020-02-05 21:03:15.518745+03	754
907	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiI0MDIzNzY3MS05NjMzLTRmNWQtOTE2My1hODI5YTQ1NDRjZDgiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiI0MjA5MTE4NTMiLCJleHAiOjE1ODA5MjY0MDUsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.vVxvMOxBxsg9AkfKDyO8E4KbZOpuxVHZVfz1MAIztsg	nAT3A6h0kgdBshcL9S4NWGIplrkJDOSEPHlZuonVubs=	2020-02-05 21:13:25.552091+03	756
908	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiJmYTdhYjVjZC1kODNiLTQ3M2EtYTM3My1iMzM1ZDY0YTllN2EiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiJVQ1RTWkNZZFhrUHNnQkFLMFNlWGRIcEEiLCJleHAiOjE1ODA5MjY0MzAsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.fUzpUYhgb7zc4-B5PsEmRcHzkUnSOpATd9-rd_a0BmI	7a1StVIiIDYwaQffh/4qZ5E7tHk9t06OHmEhWTjvADk=	2020-02-05 23:58:50.636732+03	84
679	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiJlN2I0MzYwNS03ZTYxLTRhNWEtYTU2My05YzFmYjQzZWI2NWMiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiI1MzA0NDU1MTUiLCJleHAiOjE1ODExNDM0NDYsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.1xXOrh-c4vzFyMVdosTy_xgC2h_uvSibAydFU2cI1K8	WZUhzyBcxRIHx5llWj1wxOHuH4Ph0HVWPgbK8eZeSUc=	2020-02-08 09:30:46.126556+03	579
891	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiJjYjc5ZjZiNy1mMjQwLTQwMjgtYjZkMC05MWVlNzY5ZDMwNjUiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiIzMDM1MDc1MDIiLCJleHAiOjE1ODA5MjU0NzYsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.9Jz8rQ8dg9gSRikPWTYpX0jX26TDjrpvJWzJ88BBXQY	rSRawA6ojrBVP+iHzaCIvOFg102biQYQ2huO0Vrcq5U=	2020-02-05 20:57:56.9429+03	744
424	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiI3OTIwYjU2Yy1kNWI2LTQwZjEtYWExZC00ZTQ2MzRhMzQ2OGUiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiI1Mzk5OTE3NjUiLCJleHAiOjE1ODA5MjYyNzQsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.CxhMyOL0Jx1aHyAU09JIhbhGBbcdeGTRrMeRy8k_Z7M	v4g9ykggCtJ3wBaZKJKk/zlx2EgQwx+omnMIv+xyxc0=	2020-02-05 21:11:14.210248+03	358
906	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiJhZjgyMmU5Zi05YTc4LTQ3MTItOTVhMS0wMTRiMWFmOGExZTkiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiJVQ0ZRU2VvSkNiMWNIaC1hQkpXMUVLRkEiLCJleHAiOjE1ODA5MjYzMTcsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.T7gVuR5v4UHBnIdGnUyPRnvKAKXusvMO58H6My3Ch5A	tFsGBfA6eSaSqHns/pCrcUVtm9i1a0p9VpYb9R/BHyc=	2020-02-05 23:56:57.336633+03	755
909	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiJhZDQ2YTZkNC05ZDI1LTQ4NDAtODFjMS1kYTJiMWE0MTg3MjIiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiJVQ3YxOGJnY0NCcktNajQxV0FFa2FMT2ciLCJleHAiOjE1ODA5MjcwNDcsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.Yvl0IADEvATZtDRCsVYqjqE6jg9O3hjEh9rqZlN_Uq0	2BWhBf98h7z3IKaVxwOJ5IeQ7+G4w+2i8YRjGe7C+Gk=	2020-02-05 21:24:07.59654+03	757
911	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiIxYTc5MTExYS1hNmY1LTQ0MjUtODE3ZC0zMmQ3ZWI1MTUxZDYiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiI1MzMwNzI0NTMiLCJleHAiOjE1ODA5MzE2NjcsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.1DlQCjom461-2SOyMR_ru0kkqUSPwLDvTu3A6fSFFUQ	kfE9Dfs/s48fNMKWbaoe+ouMXtO1q3hFwE5o1lmb0Tk=	2020-02-05 22:41:07.982962+03	759
912	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiI4MjNjOTU3Yi00ZjUwLTQ3MGItYmE4Zi1hMjU3OGRkMDY5ZDUiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiI0OTc5MjgwMjAiLCJleHAiOjE1ODA5NDY4MzgsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.VpwenRTOfJBN5dRv0r8HCohEzehkih9WJDhuNc8xwlc	1tHONt59WCLgmNDr1xgb7vUNM5Rv5Ppq3LaK54JPmeU=	2020-02-06 02:53:58.643579+03	760
913	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiJhNWRlZWE3NC03N2MyLTQ1NzYtOTMzNy1jNDM2MzFhZTIwODciLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiJVQ0ozVjFxOU5sVWJHRW40SHJfWUJNWlEiLCJleHAiOjE1ODA5NTMxODksImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.737GkNWEqDsxmoUNHzerbuiYMmODXeSQPvXYthhHURA	EkutxTdOWgKPL3/fn6pF2Ya/YwOVDxqfi7AVUAcFGMs=	2020-02-06 04:39:49.410462+03	761
914	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiI3NWYwM2YxYy0zZGU2LTRjNmEtYWE4My1iMDY3MzY4YTRmMDUiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiI1MTgzODI3MzQiLCJleHAiOjE1ODA5NjE0NDMsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.-w1JC2C-75yiFDq_6DLNlU6_C1091HBu77wIncPj5dw	NB8CsoGDf/Q6pEZQYwEeoZQ0+bTep3gN44NvXoZVYrg=	2020-02-06 06:57:23.367173+03	762
915	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiJmYTE1M2MwMi03MzcwLTQ2NjktYmRmYy0xZTNlMDQ0NDBmYjUiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiIzNjc1MjU4MDMiLCJleHAiOjE1ODA5NjY3OTYsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.qjCpqKJk6dllXc9ebbePuikIsAjZ8HT2IDYUglLDajw	lu+hX7rWCq7pWOkjjAzT4bzfvjzVMdJQPWDc4xVdj2w=	2020-02-06 08:26:36.289595+03	763
916	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiJhNjg2NjJiNy0zNjBmLTRhM2ItYjhjZS1jNWFkZjdiOTMxZDEiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiIyMTM4NDkyMzciLCJleHAiOjE1ODA5NjkwNjUsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.7w6FXGZwCodpQuaeixZDxGtHXFErnK8jdTqUq8ad9wM	mfjAAM43I1XGrPoYG+8JcHaRS5ZUMo0OHHhl6ngJgtU=	2020-02-06 09:04:25.693672+03	764
918	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiI4MDRjMzkwMy1lY2UwLTQ5YmEtYWM3OS1kZTE0NzhjMWQwNDAiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiJVQzQtUDFJZDNrNkQtU0FFN2YyYzlXeGciLCJleHAiOjE1ODA5NzM0NzUsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.a12BI9HPCUCWOAcPTw2ixWejyfDvwwZ4KoElZSxXfUc	oLxSdzKCRc5lN8A4QImzSFFHuds0J8a4NAR1wuRgR1I=	2020-02-06 10:17:55.27436+03	766
917	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiIwMzA1ZmI2MS00OGVkLTQ2N2ItOGM3Zi1kMDMyNTNmZTI5NjciLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiI0NjY3NjM4NTUiLCJleHAiOjE1ODA5NzQwMTMsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.4tztQw0NSlIL186N51AV_OZ748aiQJvt40mCyfURkwc	VeADpkihzm0EykLlBfWJ7Xubh1E1yhipI0fdL1tlquU=	2020-02-06 10:26:53.023324+03	765
919	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiI3NzJmNGI4My1kOWJlLTQ0NGItODU1Yy1jYzU0MTMwNmNjNWUiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiI1Nzk5Nzc5NjEiLCJleHAiOjE1ODA5NzQ5NDcsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.epI11EBVdST6zHkSDpKpEl8kWSxEu1YuBlRJg7SQ-QU	FX/xZlWYOttp71sxPAN5Ga2ap1BrOAcvwxMx1gjpj/g=	2020-02-06 10:42:27.391706+03	767
920	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiJiMGI3NmQzOS0xZDkxLTQ2NmItODNmYS1hOGRmMTJiNTc5MTYiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiIyMDcyMDEyNjQiLCJleHAiOjE1ODA5NzY1MzIsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.X5Wc2xSlC5RxuNx9_oNrN1mv0J7uLztFknH0BABvA3E	cGqT3A1fGJg8mdP4gJDaEH284GHpPU/Yrpa320Thu7w=	2020-02-06 11:08:52.308747+03	768
924	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiJmZWQ3YWIyOS0wZDM5LTQ5NDItODU2OS0zYzcyMGY0NDU1ZjciLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiJVQ1U2NW9Iamk5NlhtRlJyYkZaNFRaM2ciLCJleHAiOjE1ODA5ODE1MDgsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.vaKNI1Gjx7kgPeR6hEsbtia6ED5Ad7fRWj19dWMdnWo	5ssidJarPQj5nkX8VFQmphSCQqOhXjMJ6xwiEYa7zjU=	2020-02-06 15:16:48.682903+03	769
651	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiJkZWIyNzFiZS0zOTZkLTRjMzgtODI3OC1lNTI3YTQ4NzhmZWIiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiIyNTE2NzUyMjUiLCJleHAiOjE1ODA5ODIyMDIsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.zz4rO5LMZDxPFLtY3OeaoreUw13EkTjK7Dse9wrDsPM	VYsXA2Pw8nmSVUXap/kvR3oxK+xiPbk3rTKY89O2cM4=	2020-02-06 12:43:22.107977+03	557
925	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiJlNzEwYWFmNS0wMTNjLTRjZmQtYTEwMi03YWUyOWRmOTQ5YzQiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiIzNDA0MjM2OTYiLCJleHAiOjE1ODA5ODI5MTEsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.C_wyQ-3WR5GdSJjxG4TbEWLGXZYfWtct0x5wt0Qxd4M	Cn2St2Zhm7bMod7Acd503ybVSpyzcpdc3/cfOCm9rqA=	2020-02-06 12:55:11.87436+03	770
926	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiIyNmM5ZmYxMS05NjA5LTRjODYtOGNhYy1kM2NjYWQxYzc1NmEiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiJVQ0FLNWZBbmMtQnpnZm5fbl84VDFLY1EiLCJleHAiOjE1ODA5ODU2OTcsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.XcZIgXrRWz5C4BgwR63CtTYOk2WdGrdUtbKQSvh3qcg	93K79QoY9fs85gqYV68Knx5KFrI0uclerE1mBlIXeqQ=	2020-02-06 16:26:37.283557+03	15
928	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiI0YjE1NzJmNS01NmZhLTQ5ZTctODA4OS00M2EzZDQzMWVhOWMiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiI1MTAxMzQ3NDgiLCJleHAiOjE1ODA5ODgwODcsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.0E5d3pauOoRrKgY8jHmu6bQiqXUbnnw0VESAm4mglG0	qS4mTR+/4fW2AUeq9JHBAZE78bThLEzSuW3kvYt2nzU=	2020-02-06 17:06:27.645621+03	574
929	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiJkNmFmZjUzMS1mZmNhLTQ0MzUtODZkZi01M2M4YjJmYzBjOTQiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiI1MzAyMjQ3NTkiLCJleHAiOjE1ODA5ODk1MDYsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.RAqu5kyxNWUh5sFoMQT899KuSqM_KwvcIg48db6parc	d/wHB/UPoCyZBaVKctqUcJsRNgW5xrY8efjHJUxHioA=	2020-02-06 17:30:06.342582+03	519
930	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiJhMzg3NzdmOC1lMDY1LTQxMTctOGExMi0yYjZlYWVjZDVjOWMiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiI1MTIyMDAyOTEiLCJleHAiOjE1ODA5OTE5NzIsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.02h1vhKB1hpXJ5rn3Q-otDVJpl8vf_DPYWRfBQxsA0k	ZTH1ELm35+Z9IZHSss8xIqfP1LZhWLMOZWRKkQsDndA=	2020-02-06 18:11:12.909518+03	34
931	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiI4Y2JjNDBhNC1jMTc1LTRjOTYtYmQ1ZS1lYmFlODdiNTRjZmIiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiI1MzAzODY0MjAiLCJleHAiOjE1ODA5OTczOTcsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.xDXSKeEi6Pd_tkstEAnzyert9hnuegv9nsyhiQ2dMAs	HIMZ/jeFhHL5i2ILYtHujnxzY313d91APqiAb6Rfi8A=	2020-02-06 16:56:37.831169+03	771
932	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiJmYjhlMmRiZC0xNmZkLTRiNGUtOWNiNy0xOGNkMTIzYjUyMjciLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiIyMDc2NzE3MDEiLCJleHAiOjE1ODEwMDU4MzcsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.m-i1iQRbj1y-tiSgeq6BkLwemIVCVdqAI3h9SiJM5rs	nmmsTh6UZiIjfYQr9zFf56sy+yu5bHmoXtweWJsB4GA=	2020-02-06 19:17:17.950547+03	772
933	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiJiYjMzMjFlYi0yOTk0LTQyYTMtOTY5ZS0yODRkOGE4NWIwMjMiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiIyMjM3NTA4MTkiLCJleHAiOjE1ODEwMDY2ODUsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.v-BThy3w799dHJTveghw1Yn5E6LbQwncPySSL9UXKsA	1uoVpDB3CkNJho8qNNgNvUs2zwYi+zvB1hvBV2q3isw=	2020-02-06 19:31:25.803514+03	773
934	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiJhYzIyYzM1MS0zZDM1LTRmOTItYWYxZS02YzhjYTNkODhiNWUiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiJVQ09vWUY2SzRVR2Qza1lMdzNVYmM1X1EiLCJleHAiOjE1ODEwMTI1NTQsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.6ZCeGpRtUXYiblh-kO34AYHnyw-mM3BVlz0miBYOS5E	ryEiu8SE0MyaLAIH3qShz+UHmPmlLUTRVO3M60lKqjY=	2020-02-06 21:09:14.129005+03	16
935	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiI2OTFhZTM4Yi0yYzIzLTQ3OTUtODA3Ny01ZDVhODVlYzdmYmUiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiJVQ0UyckljVEtISWJJMlExcVAyNUR4VEEiLCJleHAiOjE1ODEwMjIzMjQsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.bhzDBNnFq3S_BXuKhex3v0IRVlw8IS4LgmolFm6WQRA	IDoBD0SSfAOhODrbzyCL42QtrzEqblF3YUQFKFapaAc=	2020-02-06 23:52:04.324681+03	774
936	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiI0ODFlNjIwYy05NzQ5LTRiMjAtYTQ2MC1mMjNkNWMxYmU1N2EiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiJVQzZuMGM0ME9WUWFzMzRHVE02QTh0blEiLCJleHAiOjE1ODEwNDIyNjEsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.5zGUAPuEToziJ7njKgzAfWXjS_0XxuURuhx6TJPcvvc	EERt8re7ahVEEuhPRuGzFAuizZorfBT0QLd/KTeptgY=	2020-02-07 08:09:21.827217+03	225
937	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiIyOWJiNmFmYy04YjVjLTQ4YjAtOWJlZS00Yzg3MjkyMzdhZTEiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiIzMTkwNTYxNjUiLCJleHAiOjE1ODEwNTIyNjIsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.okXrOnFuakZdUp4E3mNEmffuIDtNGBQEGSBebbtViaY	O1oPrIpfHC/kMeYJGrEwzLFS6SpORt0QPg3nOq4QvFs=	2020-02-07 08:11:02.940905+03	775
938	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiJhNzlkOGUzMS01ZDhkLTRkYjktYjExNC01YzY0OTg1NzU3NTIiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiIzMDY4OTI2NjAiLCJleHAiOjE1ODExMTg2NzIsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.h_j8T-PcR5DepRd461b8xesXtMHEZd0S-rexbCHjMgw	DeajtBU2g9pnDqa5X7/qyxzoQUB+ZGbAeATURGGig9g=	2020-02-08 05:22:52.830393+03	698
939	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiIwODcyYjE5MS1kZjMzLTRhMTAtOTNjMi1lN2M5ZDVkNDg2NDgiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiIzODgyMzE5NjkiLCJleHAiOjE1ODExNDYxNjIsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.BTlLOgKmutCKGF0hnphG8jmzjbKXPHGsbzJ0_CI7MwI	IKEMb9lO7x/NK8rkDc8qhwQPuaFps84xuG7o25e7KAQ=	2020-02-08 10:16:02.93893+03	776
940	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiIyY2E1NWI3ZC1iNzNlLTQzMzEtODUxNy0zOTY3NGY2ZjVjZDIiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiJVQ1RqSjctam90dkxKRjRsSWFGVU9rVFEiLCJleHAiOjE1ODExNjE1MzAsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.2lNLMur-vdOY7Pw7RnN4i5BDWTvtLEW4o0VFTat5FYc	pUpcF1nTl/UjWXi+aptd4thtbODXJFeCJ4DG9InaUfw=	2020-02-08 14:32:10.112161+03	777
941	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkb3RuZXRydUBkb3RuZXRydS5jb20iLCJqdGkiOiI2ZWVkZTllYS1iZWJhLTQ3ZTctYjVhNC01YWMyZmM0YjViZmEiLCJyb2wiOiJhcGlfYWNjZXNzIiwiaWQiOiJVQ1I4ZjZwN3hpV01ZNUdvaDVWc21WRGciLCJleHAiOjE1ODExNzA2NzAsImlzcyI6IkFuZHJvaWROb3RpZmljYXRpb25TZXJ2ZXIiLCJhdWQiOiJBbmRyb2lkTm90aWZpY2F0aW9uQ2xpZW50In0.Z17pEfvTqWf5MkKtQDi4KRIFC69kORWVvQ0BpB7FiMU	8tOyu7hjI9HUQF4tcHRk8aRKxbjVAL7Yr/vSiWbuRTc=	2020-02-08 17:04:30.586561+03	758
\.


--
-- TOC entry 3047 (class 0 OID 17104)
-- Dependencies: 208
-- Data for Name: Categories; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Categories" ("Id", "Position", "Sort", "CreatedAt", "AdminId") FROM stdin;
1	Роспись вк	1	2020-02-06 19:15:28.166026+03	1
\.


--
-- TOC entry 3049 (class 0 OID 17115)
-- Dependencies: 210
-- Data for Name: Devices; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Devices" ("Id", "DeviceId", "Type") FROM stdin;
1	132562d7-6519-4a0f-86ef-9fb1bab7e237	0
2	132562d7-6519-4a0f-86ef-9fb1bab7e237	0
3	e8a0c0b6-fbf6-4420-818e-5c3ea3438c60	0
4	3ef19e31-f5a8-4fd1-a1c7-05f04147f55f	0
5	3ef19e31-f5a8-4fd1-a1c7-05f04147f55f	0
6	9b0063e3-b23a-4ab7-a9ae-405438a7c84b	0
7	9b0063e3-b23a-4ab7-a9ae-405438a7c84b	0
8	9b0063e3-b23a-4ab7-a9ae-405438a7c84b	0
9	9b0063e3-b23a-4ab7-a9ae-405438a7c84b	0
10	b5bc38f5-51da-49d5-88af-aa9e1a95dc2a	0
11	b5bc38f5-51da-49d5-88af-aa9e1a95dc2a	0
12	26d77ec6-a922-401a-b6aa-879ace2a9a7b	0
13	26d77ec6-a922-401a-b6aa-879ace2a9a7b	0
14	26d77ec6-a922-401a-b6aa-879ace2a9a7b	0
15	26d77ec6-a922-401a-b6aa-879ace2a9a7b	0
16	26d77ec6-a922-401a-b6aa-879ace2a9a7b	0
17	26d77ec6-a922-401a-b6aa-879ace2a9a7b	0
18	26d77ec6-a922-401a-b6aa-879ace2a9a7b	0
19	5f6587d0-3bba-4baa-b04a-303714709094	0
20	5f6587d0-3bba-4baa-b04a-303714709094	0
21	5f6587d0-3bba-4baa-b04a-303714709094	0
22	a86547a3-928e-4080-9732-05d6a65f2b8b	0
23	3fe2e45e-6b71-4a52-90df-23442ab513da	0
24	5e52c228-b118-4cd7-9e33-84ed5ccc0857	0
25	866c5a35-aec1-4f22-9170-98cd894d1944	0
26	50de1430-1adb-4d65-8ad0-56839f4eabfe	0
27	50de1430-1adb-4d65-8ad0-56839f4eabfe	0
28	50de1430-1adb-4d65-8ad0-56839f4eabfe	0
29	ed6143d4-6613-42c7-a3e9-543b6d8ceb7a	0
30	50de1430-1adb-4d65-8ad0-56839f4eabfe	0
31	1dbbe5ee-b17d-45f4-8462-7544e3f184f4	0
32	9693af5a-4edd-483a-b539-e585becee19c	0
33	6255d251-81a8-4ae9-b146-e719c5068e2d	0
34	6255d251-81a8-4ae9-b146-e719c5068e2d	0
35	6255d251-81a8-4ae9-b146-e719c5068e2d	0
36	6255d251-81a8-4ae9-b146-e719c5068e2d	0
37	6255d251-81a8-4ae9-b146-e719c5068e2d	0
38	6255d251-81a8-4ae9-b146-e719c5068e2d	0
39	01aedfff-563d-4da9-928d-5ea48cc4ac6b	0
40	01aedfff-563d-4da9-928d-5ea48cc4ac6b	0
41	01aedfff-563d-4da9-928d-5ea48cc4ac6b	0
42	01aedfff-563d-4da9-928d-5ea48cc4ac6b	0
43	e8a1342b-3705-4630-98a9-57e85dada750	0
44	3fe2e45e-6b71-4a52-90df-23442ab513da	0
45	cbc9d7b0-ffcb-4d96-9895-cd77647ce6b9	0
46	5bfbed51-78ab-410b-9166-ca87aa778ae2	0
47	3000e0b4-f0c0-4e27-8ca2-f8e54d7e731e	0
48	3000e0b4-f0c0-4e27-8ca2-f8e54d7e731e	0
49	3000e0b4-f0c0-4e27-8ca2-f8e54d7e731e	0
50	3000e0b4-f0c0-4e27-8ca2-f8e54d7e731e	0
51	3000e0b4-f0c0-4e27-8ca2-f8e54d7e731e	0
52	3000e0b4-f0c0-4e27-8ca2-f8e54d7e731e	0
53	3000e0b4-f0c0-4e27-8ca2-f8e54d7e731e	0
54	c3718191-f4a2-48c0-b7b0-ba3b655fd6c1	0
55	36d6a49d-a948-4cdb-8d09-f3380805bbfb	0
56	36d6a49d-a948-4cdb-8d09-f3380805bbfb	0
57	36d6a49d-a948-4cdb-8d09-f3380805bbfb	0
58	36d6a49d-a948-4cdb-8d09-f3380805bbfb	0
59	36d6a49d-a948-4cdb-8d09-f3380805bbfb	0
60	c3718191-f4a2-48c0-b7b0-ba3b655fd6c1	0
61	50de1430-1adb-4d65-8ad0-56839f4eabfe	0
62	50de1430-1adb-4d65-8ad0-56839f4eabfe	0
63	50de1430-1adb-4d65-8ad0-56839f4eabfe	0
64	50de1430-1adb-4d65-8ad0-56839f4eabfe	0
65	50de1430-1adb-4d65-8ad0-56839f4eabfe	0
66	50de1430-1adb-4d65-8ad0-56839f4eabfe	0
67	85f50cc8-2c32-4d1f-bda6-524a26b7237f	0
68	85f50cc8-2c32-4d1f-bda6-524a26b7237f	0
69	85f50cc8-2c32-4d1f-bda6-524a26b7237f	0
70	85f50cc8-2c32-4d1f-bda6-524a26b7237f	0
71	ed6143d4-6613-42c7-a3e9-543b6d8ceb7a	0
72	85f50cc8-2c32-4d1f-bda6-524a26b7237f	0
73	ed6143d4-6613-42c7-a3e9-543b6d8ceb7a	0
74	ed6143d4-6613-42c7-a3e9-543b6d8ceb7a	0
75	6f81fdea-444b-44d7-aeda-63b8cf682f11	0
76	6f81fdea-444b-44d7-aeda-63b8cf682f11	0
77	6f81fdea-444b-44d7-aeda-63b8cf682f11	0
78	ed6143d4-6613-42c7-a3e9-543b6d8ceb7a	0
79	50de1430-1adb-4d65-8ad0-56839f4eabfe	0
80	50de1430-1adb-4d65-8ad0-56839f4eabfe	0
81	6f81fdea-444b-44d7-aeda-63b8cf682f11	0
82	6f81fdea-444b-44d7-aeda-63b8cf682f11	0
83	50de1430-1adb-4d65-8ad0-56839f4eabfe	0
84	50de1430-1adb-4d65-8ad0-56839f4eabfe	0
85	50de1430-1adb-4d65-8ad0-56839f4eabfe	0
86	4fc58025-1df2-43af-8d96-61520dd94508	0
87	4fc58025-1df2-43af-8d96-61520dd94508	0
88	4fc58025-1df2-43af-8d96-61520dd94508	0
89	9a64fdd6-26cc-4f2d-8230-a4dcbe58ffa5	0
90	c53d9d1a-f82d-44a2-b202-b7c15fffbe12	0
91	5e6f6b44-c439-410e-9991-bdd5c7d6f45a	0
92	ea65bb93-c626-41ed-88c5-02bc654e1d19	0
93	b591d97c-3d05-441a-9ec6-cb3f973e1d9c	0
94	b591d97c-3d05-441a-9ec6-cb3f973e1d9c	0
95	b591d97c-3d05-441a-9ec6-cb3f973e1d9c	0
96	b591d97c-3d05-441a-9ec6-cb3f973e1d9c	0
97	b591d97c-3d05-441a-9ec6-cb3f973e1d9c	0
98	b591d97c-3d05-441a-9ec6-cb3f973e1d9c	0
99	b591d97c-3d05-441a-9ec6-cb3f973e1d9c	0
100	b591d97c-3d05-441a-9ec6-cb3f973e1d9c	0
101	b591d97c-3d05-441a-9ec6-cb3f973e1d9c	0
102	50de1430-1adb-4d65-8ad0-56839f4eabfe	0
103	50de1430-1adb-4d65-8ad0-56839f4eabfe	0
104	50de1430-1adb-4d65-8ad0-56839f4eabfe	0
105	50de1430-1adb-4d65-8ad0-56839f4eabfe	0
106	50de1430-1adb-4d65-8ad0-56839f4eabfe	0
107	50de1430-1adb-4d65-8ad0-56839f4eabfe	0
108	50de1430-1adb-4d65-8ad0-56839f4eabfe	0
109	50de1430-1adb-4d65-8ad0-56839f4eabfe	0
110	50de1430-1adb-4d65-8ad0-56839f4eabfe	0
111	50de1430-1adb-4d65-8ad0-56839f4eabfe	0
112	50de1430-1adb-4d65-8ad0-56839f4eabfe	0
113	50de1430-1adb-4d65-8ad0-56839f4eabfe	0
114	50de1430-1adb-4d65-8ad0-56839f4eabfe	0
115	50de1430-1adb-4d65-8ad0-56839f4eabfe	0
116	50de1430-1adb-4d65-8ad0-56839f4eabfe	0
117	76d2a1d2-fff8-470f-9403-064cf1e8fe98	0
118	d87e66fd-a996-4343-bddd-e700e3f37834	0
119	d87e66fd-a996-4343-bddd-e700e3f37834	0
120	313c7f88-44fe-46b9-b2b8-8f009f30b380	0
121	066940da-597e-44f4-a950-2c7483c852fc	0
122	617a56eb-99a6-45d0-a3b2-b44a208555fe	0
123	50de1430-1adb-4d65-8ad0-56839f4eabfe	0
124	50de1430-1adb-4d65-8ad0-56839f4eabfe	0
125	50de1430-1adb-4d65-8ad0-56839f4eabfe	0
126	50de1430-1adb-4d65-8ad0-56839f4eabfe	0
127	50de1430-1adb-4d65-8ad0-56839f4eabfe	0
128	50de1430-1adb-4d65-8ad0-56839f4eabfe	0
129	50de1430-1adb-4d65-8ad0-56839f4eabfe	0
130	50de1430-1adb-4d65-8ad0-56839f4eabfe	0
131	50de1430-1adb-4d65-8ad0-56839f4eabfe	0
132	50de1430-1adb-4d65-8ad0-56839f4eabfe	0
133	50de1430-1adb-4d65-8ad0-56839f4eabfe	0
134	0dc3b4ce-961d-4837-811e-f4264006c469	0
135	0dc3b4ce-961d-4837-811e-f4264006c469	0
136	50de1430-1adb-4d65-8ad0-56839f4eabfe	0
137	50de1430-1adb-4d65-8ad0-56839f4eabfe	0
138	50de1430-1adb-4d65-8ad0-56839f4eabfe	0
139	50de1430-1adb-4d65-8ad0-56839f4eabfe	0
140	50de1430-1adb-4d65-8ad0-56839f4eabfe	0
141	086d04dc-d05f-47aa-9a86-6e55fd3035b4	0
142	086d04dc-d05f-47aa-9a86-6e55fd3035b4	0
143	086d04dc-d05f-47aa-9a86-6e55fd3035b4	0
144	086d04dc-d05f-47aa-9a86-6e55fd3035b4	0
145	086d04dc-d05f-47aa-9a86-6e55fd3035b4	0
146	086d04dc-d05f-47aa-9a86-6e55fd3035b4	0
147	086d04dc-d05f-47aa-9a86-6e55fd3035b4	0
148	086d04dc-d05f-47aa-9a86-6e55fd3035b4	0
149	086d04dc-d05f-47aa-9a86-6e55fd3035b4	0
150	086d04dc-d05f-47aa-9a86-6e55fd3035b4	0
151	086d04dc-d05f-47aa-9a86-6e55fd3035b4	0
152	086d04dc-d05f-47aa-9a86-6e55fd3035b4	0
153	50de1430-1adb-4d65-8ad0-56839f4eabfe	0
154	50de1430-1adb-4d65-8ad0-56839f4eabfe	0
155	50de1430-1adb-4d65-8ad0-56839f4eabfe	0
156	50de1430-1adb-4d65-8ad0-56839f4eabfe	0
157	50de1430-1adb-4d65-8ad0-56839f4eabfe	0
158	50de1430-1adb-4d65-8ad0-56839f4eabfe	0
159	50de1430-1adb-4d65-8ad0-56839f4eabfe	0
160	50de1430-1adb-4d65-8ad0-56839f4eabfe	0
161	50de1430-1adb-4d65-8ad0-56839f4eabfe	0
162	50de1430-1adb-4d65-8ad0-56839f4eabfe	0
163	5dde4ce4-6ec9-46d3-b051-eb715c3b684f	0
164	b9835041-d347-4eec-ae6f-bb5da133e5d1	0
165	b9835041-d347-4eec-ae6f-bb5da133e5d1	0
166	77e49c4f-ba3a-4224-b6a5-d45aafc2e582	0
167	77e49c4f-ba3a-4224-b6a5-d45aafc2e582	0
168	77e49c4f-ba3a-4224-b6a5-d45aafc2e582	0
169	5783515e-04b5-44bd-876f-ca490815116b	0
170	c2af3aa6-3aa6-48f5-bbed-006641689b74	0
171	c2af3aa6-3aa6-48f5-bbed-006641689b74	0
172	c2af3aa6-3aa6-48f5-bbed-006641689b74	0
173	c2af3aa6-3aa6-48f5-bbed-006641689b74	0
174	0a63ead9-d70c-41b3-a572-05f3ef8c2378	0
175	91397b86-4c60-4af2-b762-6134e7d644b3	0
176	702d9491-9f14-46cf-be86-2a67f517c9cf	0
177	987ad80a-af4c-4863-bb9c-2dd2bbf22751	0
178	77e49c4f-ba3a-4224-b6a5-d45aafc2e582	0
179	d1a076a5-cb2a-49e6-913f-61d6d8743e5a	0
180	d1a076a5-cb2a-49e6-913f-61d6d8743e5a	0
181	702d9491-9f14-46cf-be86-2a67f517c9cf	0
182	702d9491-9f14-46cf-be86-2a67f517c9cf	0
183	6f81fdea-444b-44d7-aeda-63b8cf682f11	0
184	6f81fdea-444b-44d7-aeda-63b8cf682f11	0
185	6f81fdea-444b-44d7-aeda-63b8cf682f11	0
186	6f81fdea-444b-44d7-aeda-63b8cf682f11	0
187	6f81fdea-444b-44d7-aeda-63b8cf682f11	0
188	9f1e92d7-623b-4791-83ec-0fedc31fe796	0
189	9f1e92d7-623b-4791-83ec-0fedc31fe796	0
190	9f1e92d7-623b-4791-83ec-0fedc31fe796	0
191	9f1e92d7-623b-4791-83ec-0fedc31fe796	0
192	1c00b3ea-0311-4926-8ec0-775026f15a02	0
193	cbe825b9-8e58-4667-ac7f-69bf28c04e5a	0
194	ec4020d4-b837-4045-9ac8-e8445ed47c65	0
195	ec4020d4-b837-4045-9ac8-e8445ed47c65	0
196	bb1ce97e-b689-4f34-8fc7-87c3c4a50079	0
197	8a55d9b7-17ce-4ace-be11-f9beb2ad289f	0
198	ff5d9b1d-6848-4475-ba5f-788baaf62708	0
199	ff5d9b1d-6848-4475-ba5f-788baaf62708	0
200	2ba351ee-1445-4edb-94f1-716ea4c8d4a7	0
201	4a96afd1-c1e7-4c9d-9ae0-1d1a32ab3dba	0
202	598a41b5-4da2-4f42-a700-311cbb562ed4	0
203	4fbc40d7-1eed-4595-928e-98fdd823280b	0
204	4fbc40d7-1eed-4595-928e-98fdd823280b	0
205	4fbc40d7-1eed-4595-928e-98fdd823280b	0
206	4fbc40d7-1eed-4595-928e-98fdd823280b	0
207	4fbc40d7-1eed-4595-928e-98fdd823280b	0
208	4fbc40d7-1eed-4595-928e-98fdd823280b	0
209	e46076c0-e14c-4389-a7d2-3ae5d1c7d52a	0
210	e46076c0-e14c-4389-a7d2-3ae5d1c7d52a	0
211	3d51ee3e-2309-448e-ba2a-7bbcac7a29c5	0
212	285bee2d-cb12-4bef-9691-4e7ff1f960b5	0
213	285bee2d-cb12-4bef-9691-4e7ff1f960b5	0
214	32f24b80-1278-4191-8ce3-42b1382fe330	0
215	32f24b80-1278-4191-8ce3-42b1382fe330	0
216	6d709976-aa51-4a86-ae70-8aff1afce0e4	0
217	32f24b80-1278-4191-8ce3-42b1382fe330	0
218	32f24b80-1278-4191-8ce3-42b1382fe330	0
219	32f24b80-1278-4191-8ce3-42b1382fe330	0
220	32f24b80-1278-4191-8ce3-42b1382fe330	0
221	32f24b80-1278-4191-8ce3-42b1382fe330	0
222	15e06fc3-9c3a-40c1-950c-88b3ce48e3de	0
223	1e05b69b-2716-406f-a6b7-4847bc506118	0
224	0a8d2b38-98cc-4b9f-97de-dad603df66e7	0
225	0a8d2b38-98cc-4b9f-97de-dad603df66e7	0
226	9e3866f3-4e95-49a1-b22f-2f5bed5038e3	0
227	27868053-750d-42bd-8f54-f02fbe0f8ef9	0
228	e515c116-fa68-47cf-a65f-759380869de8	0
229	acf2cde3-c00e-42a8-ab13-493b32f83d58	0
230	e8a0c0b6-fbf6-4420-818e-5c3ea3438c60	0
231	e8a0c0b6-fbf6-4420-818e-5c3ea3438c60	0
232	e8a0c0b6-fbf6-4420-818e-5c3ea3438c60	0
233	e8a0c0b6-fbf6-4420-818e-5c3ea3438c60	0
234	e515c116-fa68-47cf-a65f-759380869de8	0
235	7174a4d3-dd9e-4b07-a552-7cb2dbd92449	0
236	7174a4d3-dd9e-4b07-a552-7cb2dbd92449	0
237	d624f386-f596-4970-8267-ad9be40bf69c	0
238	f4faed57-4840-4b96-a294-77baaa35d40c	0
239	f4faed57-4840-4b96-a294-77baaa35d40c	0
240	52e7cc13-eb32-417d-ad97-41f57541c553	0
241	f4faed57-4840-4b96-a294-77baaa35d40c	0
242	4ce96141-494e-4281-be96-2d5225cecae4	0
243	e9c23b05-6d28-4382-92a7-a821f0feefc6	0
244	2e924854-93af-49d4-a369-67a3cf952161	0
245	2e924854-93af-49d4-a369-67a3cf952161	0
246	4fbc40d7-1eed-4595-928e-98fdd823280b	0
247	4fbc40d7-1eed-4595-928e-98fdd823280b	0
248	4fbc40d7-1eed-4595-928e-98fdd823280b	0
249	2da793ee-6dbc-4f83-b87f-f1522ae6ddae	0
250	2da793ee-6dbc-4f83-b87f-f1522ae6ddae	0
251	ecd6e045-8d11-4cc2-8bf9-e0e147a63097	0
252	1d8fc1e8-5f88-4d7f-8978-f7269f6229d2	0
253	53394f7f-5051-4b3f-a53b-70400573f18b	0
254	abbe7afe-3919-4519-9b8d-5f1e2d907d7c	0
255	ae3c54b0-4447-4717-ae1b-2b8957b168c9	0
256	ae3c54b0-4447-4717-ae1b-2b8957b168c9	0
257	d2869f35-206c-4f24-a0bd-e6895d688492	0
258	0711a37a-57c5-45a7-b1dd-6fb56c835399	0
259	a78cac8f-74bd-49da-a5dd-e3756b191d5a	0
260	0711a37a-57c5-45a7-b1dd-6fb56c835399	0
261	c797a61f-e655-4a47-9141-7b1e7255fadf	0
262	c797a61f-e655-4a47-9141-7b1e7255fadf	0
263	c797a61f-e655-4a47-9141-7b1e7255fadf	0
264	c9caa50d-384b-4344-b859-8f9595a6f345	0
265	7651b541-3c10-47fc-8031-4accec5b01dc	0
266	7651b541-3c10-47fc-8031-4accec5b01dc	0
267	94ed0cbf-808e-4b55-8b78-c4de1565a098	0
268	db48351f-dfd8-476a-a2e4-db6e88cdf1ca	0
269	f045941c-dbdc-4f96-8829-6f6682072a24	0
270	3cb5da0e-dd00-40a1-844b-40668913b541	0
271	a447baf3-103c-4631-a7a2-8268b8d3f19c	0
272	a447baf3-103c-4631-a7a2-8268b8d3f19c	0
273	3cb5da0e-dd00-40a1-844b-40668913b541	0
274	23acb8d0-847b-4182-bb81-bd61e851c4af	0
275	50af8e2a-93e1-40af-905b-8399840143b3	0
276	74c078f1-1a86-42e6-8694-ddb499b48e64	0
277	9b0063e3-b23a-4ab7-a9ae-405438a7c84b	0
278	c797a61f-e655-4a47-9141-7b1e7255fadf	0
279	61107ddb-5d99-44aa-96f5-431bd044de88	0
280	61107ddb-5d99-44aa-96f5-431bd044de88	0
281	d35fc992-72a3-49df-a4a4-58471ce7739f	0
282	bb886c40-a357-4643-8beb-265b34c3ef78	0
283	b6d9db8e-c884-4df9-8d9a-230b56f00255	0
284	7174a4d3-dd9e-4b07-a552-7cb2dbd92449	0
285	7174a4d3-dd9e-4b07-a552-7cb2dbd92449	0
286	0c797148-4472-4fb4-a494-4c786aa4f7ba	0
287	0c797148-4472-4fb4-a494-4c786aa4f7ba	0
288	0c797148-4472-4fb4-a494-4c786aa4f7ba	0
289	0c797148-4472-4fb4-a494-4c786aa4f7ba	0
290	71ec54a2-8e99-448b-8df8-978867d1a8b6	0
291	eb70ec99-301f-4740-b636-0e588bc8d45a	0
292	74c078f1-1a86-42e6-8694-ddb499b48e64	0
293	74c078f1-1a86-42e6-8694-ddb499b48e64	0
294	411d6f9d-96c3-452f-8d4a-a6629b0f58c2	0
295	8b58d0c0-c633-432b-a210-666f25d7d487	0
296	8b58d0c0-c633-432b-a210-666f25d7d487	0
297	8b58d0c0-c633-432b-a210-666f25d7d487	0
298	8b58d0c0-c633-432b-a210-666f25d7d487	0
299	3074f8e9-5d6f-4857-8e3f-a91e9353cc63	0
300	3074f8e9-5d6f-4857-8e3f-a91e9353cc63	0
301	3074f8e9-5d6f-4857-8e3f-a91e9353cc63	0
302	3074f8e9-5d6f-4857-8e3f-a91e9353cc63	0
303	c797a61f-e655-4a47-9141-7b1e7255fadf	0
304	9c7f0084-5660-42fa-9bbd-6860ec3de65c	0
305	9c7f0084-5660-42fa-9bbd-6860ec3de65c	0
306	e59c8dd0-e303-472e-89da-1c0af3a5ffa8	0
307	4cda949e-5558-453f-9cd0-fa8e56e5199a	0
308	4cda949e-5558-453f-9cd0-fa8e56e5199a	0
309	ee844004-27fa-41cd-8869-7292bb5327bc	0
310	5affa471-9719-4ebd-bc81-0023fcfaccf4	0
311	f02c318d-940f-41d4-aeea-f858b9954484	0
312	f02c318d-940f-41d4-aeea-f858b9954484	0
313	90b6d5aa-d4e3-45c5-8d90-204b07aeac12	0
314	d51f7dae-c4b8-4728-b2c8-380698e0e5d9	0
315	dff0a9b6-51ba-41be-abe9-00bfadb47b55	0
316	d51f7dae-c4b8-4728-b2c8-380698e0e5d9	0
317	dff0a9b6-51ba-41be-abe9-00bfadb47b55	0
318	9879a051-62fa-4800-b877-40f9942f7f3c	0
319	dff0a9b6-51ba-41be-abe9-00bfadb47b55	0
320	f6888086-25d7-4e4b-b4d1-ffc4d54271e4	0
321	f6888086-25d7-4e4b-b4d1-ffc4d54271e4	0
322	5e1bfb3b-5ade-4a6e-9960-acd6faa00ba1	0
323	8a6f6311-d5d7-48b7-9a9f-bec1028102b3	0
324	fef1a935-4f94-4c32-ac47-cdc38cb1ca93	0
325	cc46d1a5-3e50-4824-83f3-d068b15561cd	0
326	8d96479c-8b89-4b00-a53e-b4f099805005	0
327	a525cd93-3658-40ee-9c0e-1c618f012cea	0
328	8d96479c-8b89-4b00-a53e-b4f099805005	0
329	1a76780b-458b-44d6-9e4f-8fbf2442b3c2	0
335	eedef3fb-000d-4a3c-9671-a1215f18fde2	0
336	a4dcc07c-de4b-49a9-ab7a-e15d0434b597	0
337	d9fbbde8-afc6-4ea2-9082-b6758be783bf	0
338	131f4b5c-a8d9-44b7-b1d0-4cbb5ca58bd4	0
339	131f4b5c-a8d9-44b7-b1d0-4cbb5ca58bd4	0
340	a3eb044e-7ad1-42b9-a118-3d11904497c4	0
341	35341605-4eea-478e-87df-41592822763d	0
342	0610b928-5071-4f3b-8c23-fb2fd67a4dad	0
343	00f647bd-78d7-4754-b8d3-6dc66da35800	0
344	72182ce1-42ac-4925-9b5f-9e1db482bf09	0
354	f5abdcb6-712a-47ae-86c4-360e96816fd0	0
355	0610b928-5071-4f3b-8c23-fb2fd67a4dad	0
362	05e329eb-e6f7-48f0-978b-54786382b51f	0
363	544cae9e-5315-4445-938c-88c0397f2b00	0
372	65bf2cc7-5b66-4120-9fb4-2a327e51ff9e	0
381	5dcaffd0-9496-49a5-9119-a0877707bf5d	0
384	e305f5f5-e345-4046-911e-95f53bdcbb27	0
385	e6ad5074-4ee0-4f2b-ae8e-7eb9dba1e3e3	0
389	211853de-cea5-44f8-adf1-0a4f2e78ea37	0
330	0694dd11-b5d2-4029-a0d7-96a2f4e5436c	0
331	0694dd11-b5d2-4029-a0d7-96a2f4e5436c	0
332	1a76780b-458b-44d6-9e4f-8fbf2442b3c2	0
333	131f4b5c-a8d9-44b7-b1d0-4cbb5ca58bd4	0
334	74c078f1-1a86-42e6-8694-ddb499b48e64	0
345	72182ce1-42ac-4925-9b5f-9e1db482bf09	0
346	c8e21dec-02aa-4004-96b9-e7818dbb3153	0
347	0610b928-5071-4f3b-8c23-fb2fd67a4dad	0
348	c8e21dec-02aa-4004-96b9-e7818dbb3153	0
349	999352e2-b986-4056-8e36-d9cba8969d5d	0
350	72182ce1-42ac-4925-9b5f-9e1db482bf09	0
351	79ab0554-b67e-4aed-829c-4abd1f9723ad	0
352	72182ce1-42ac-4925-9b5f-9e1db482bf09	0
353	72182ce1-42ac-4925-9b5f-9e1db482bf09	0
356	1a5fa1ed-6e76-445e-b40b-27f8e31a4a47	0
357	72182ce1-42ac-4925-9b5f-9e1db482bf09	0
358	2ef0bd5c-82ca-4b8d-bf17-1cfcf230bff2	0
359	1f3f6052-be3b-49a0-91db-5dcd486f3aef	0
360	05e329eb-e6f7-48f0-978b-54786382b51f	0
361	72182ce1-42ac-4925-9b5f-9e1db482bf09	0
364	4eca9d98-66db-4d58-841e-8ff5f502f596	0
365	f889c2b1-8478-4594-bbc5-51240bcae939	0
366	5b1ee6f9-83b2-4322-a722-68ab01d6e4e4	0
367	4eca9d98-66db-4d58-841e-8ff5f502f596	0
368	a770d61f-1d8d-442d-807d-309760b8bd09	0
369	65bf2cc7-5b66-4120-9fb4-2a327e51ff9e	0
370	0c2058e5-6569-40d7-b46f-1a37f9dfcf39	0
371	63fe0611-95d4-4821-b6c5-a03e103c151d	0
373	a4dcc07c-de4b-49a9-ab7a-e15d0434b597	0
374	d60b41f4-0c0c-4051-8e25-2d7e329cf844	0
375	65bf2cc7-5b66-4120-9fb4-2a327e51ff9e	0
376	8a11453d-3a6e-4255-9cb2-09b7cb112f2c	0
377	65bf2cc7-5b66-4120-9fb4-2a327e51ff9e	0
378	65bf2cc7-5b66-4120-9fb4-2a327e51ff9e	0
379	8a11453d-3a6e-4255-9cb2-09b7cb112f2c	0
380	002759c4-7128-47a8-bc5d-6adb1f3f7cd0	0
382	031c76d6-7cda-4be6-bb72-8a891d01ab4c	0
383	05e329eb-e6f7-48f0-978b-54786382b51f	0
386	d71c4950-ec26-431e-9a4e-920ed2a4e3a1	0
387	e305f5f5-e345-4046-911e-95f53bdcbb27	0
388	f6888086-25d7-4e4b-b4d1-ffc4d54271e4	0
390	2d9573e0-fc7a-4b53-8831-bcb9fffb735c	0
391	eb26fcaf-6346-4fdf-893f-cc7768bfa0eb	0
392	19c8cdfb-82da-4141-94ff-503d28424685	0
393	79137a99-3a75-4160-ae27-36450ed63844	0
394	fa26179d-6aaa-4249-aa2d-f974ae2f0619	0
395	fa26179d-6aaa-4249-aa2d-f974ae2f0619	0
396	24ec3e65-d81f-4c31-b55b-fe8d315d82c8	0
397	fa26179d-6aaa-4249-aa2d-f974ae2f0619	0
398	fa26179d-6aaa-4249-aa2d-f974ae2f0619	0
399	a1871907-ac03-4c8d-bb02-ce6f2962587a	0
400	aa95b227-8285-464a-bf8f-58c342b3f916	0
401	a1871907-ac03-4c8d-bb02-ce6f2962587a	0
402	a1871907-ac03-4c8d-bb02-ce6f2962587a	0
403	a1871907-ac03-4c8d-bb02-ce6f2962587a	0
404	a1871907-ac03-4c8d-bb02-ce6f2962587a	0
405	22f5356d-463f-4ee1-b5db-d04e99caa056	0
406	21a0c6e1-c487-416c-b03a-3271f2554093	0
407	a1871907-ac03-4c8d-bb02-ce6f2962587a	0
408	c4e68cb9-9085-4cb3-b0e3-60c17b679e7d	0
409	21a0c6e1-c487-416c-b03a-3271f2554093	0
410	002759c4-7128-47a8-bc5d-6adb1f3f7cd0	0
411	e305f5f5-e345-4046-911e-95f53bdcbb27	0
412	5f46c33a-0c51-4515-8f0f-751e5128e716	0
413	a1464e99-22c6-4e91-a365-6eae6f6cdfce	0
414	21a0c6e1-c487-416c-b03a-3271f2554093	0
415	354de7dd-5103-4cc4-a8ea-1bdb87f688dc	0
416	6ee9fba8-4c95-440d-8ea0-6a377ba79a3f	0
417	dca09e7d-6ff9-486a-97ed-6e22b395abd7	0
418	6ee9fba8-4c95-440d-8ea0-6a377ba79a3f	0
419	036de44c-c7ea-4f8f-b3b7-0e6730db39c9	0
420	ed8e2241-03e5-408d-bb00-7ad13b28bb02	0
421	1d87fd4e-da06-429b-9cc1-f8e329289700	0
422	536c0835-aa10-4896-a278-431cef97fc9d	0
423	6ee9fba8-4c95-440d-8ea0-6a377ba79a3f	0
424	fcb52b32-02ef-4b01-8375-e27ef9453dfb	0
425	6fff2036-6e1a-4d9e-84f4-ca571f840ef7	0
426	fcb52b32-02ef-4b01-8375-e27ef9453dfb	0
427	354de7dd-5103-4cc4-a8ea-1bdb87f688dc	0
428	354de7dd-5103-4cc4-a8ea-1bdb87f688dc	0
429	6fff2036-6e1a-4d9e-84f4-ca571f840ef7	0
430	354de7dd-5103-4cc4-a8ea-1bdb87f688dc	0
431	354de7dd-5103-4cc4-a8ea-1bdb87f688dc	0
432	85605cc9-ea6b-47ee-bf7d-c2f192eb6065	0
433	f54ebcbe-803c-41ef-8810-0622582087b2	0
434	f54ebcbe-803c-41ef-8810-0622582087b2	0
435	f54ebcbe-803c-41ef-8810-0622582087b2	0
436	f54ebcbe-803c-41ef-8810-0622582087b2	0
437	de499783-b4c9-4106-b25c-f9865eedf3d9	0
438	c4a76f0d-6688-4ea0-8638-16055a1a1caa	0
439	21a0c6e1-c487-416c-b03a-3271f2554093	0
440	07d0319f-d39f-4d0e-a23e-d707374b47d1	0
441	07d0319f-d39f-4d0e-a23e-d707374b47d1	0
442	23db5bd4-35fe-480f-9c94-d64241fbb77b	0
443	e7e3df8c-6b64-4551-80d2-349d07046c25	0
444	c412611f-d333-4c45-8abb-5e3827d942a7	0
445	c412611f-d333-4c45-8abb-5e3827d942a7	0
446	c1015348-2496-4f04-984f-48b8024b72ce	0
447	07d0319f-d39f-4d0e-a23e-d707374b47d1	0
448	07d0319f-d39f-4d0e-a23e-d707374b47d1	0
449	93c4e95b-4d34-4d19-bbd1-aa34473fc1ad	0
450	f54ebcbe-803c-41ef-8810-0622582087b2	0
451	f54ebcbe-803c-41ef-8810-0622582087b2	0
452	07d0319f-d39f-4d0e-a23e-d707374b47d1	0
453	07d0319f-d39f-4d0e-a23e-d707374b47d1	0
454	3f71dab4-fa67-4e12-95ae-ac5899bace9c	0
455	d90da40d-8da4-4c73-b6e8-4de5c8dabdb1	0
456	c8ff8c89-0222-49d2-8bad-fbf69cba90d7	0
457	f2d8784b-feab-4605-90e7-99b8df5a6924	0
463	07d0319f-d39f-4d0e-a23e-d707374b47d1	0
477	a36bc7de-ec89-41c2-bdf2-0c542b0fe927	0
478	47e89bca-fff2-477e-b455-43db0a085f53	0
458	f2d8784b-feab-4605-90e7-99b8df5a6924	0
461	3e18dbd7-8eaa-400b-ac24-83d8cad9ca1b	0
462	d90da40d-8da4-4c73-b6e8-4de5c8dabdb1	0
464	07d0319f-d39f-4d0e-a23e-d707374b47d1	0
465	07d0319f-d39f-4d0e-a23e-d707374b47d1	0
466	aec5801d-909f-4832-85e3-b61700903e30	0
472	89c3889b-4197-4b92-9179-a9681065d832	0
474	61965f84-6c6b-40ad-b647-534b2eeca270	0
476	dc930355-0c93-497a-bfc1-523d42c01098	0
480	07d0319f-d39f-4d0e-a23e-d707374b47d1	0
459	7ae739fd-342c-47e5-8024-593e03c45c20	0
460	a5abbc73-4a45-4876-b398-97613eab0224	0
467	d1d8f5b1-ab14-40d9-918c-1a0732c35d9b	0
468	d1d8f5b1-ab14-40d9-918c-1a0732c35d9b	0
469	aec5801d-909f-4832-85e3-b61700903e30	0
470	6f01b3da-b633-49ec-91d0-99d638d51fdb	0
471	f9f1477f-01cb-4915-8602-49d6a2d52e68	0
473	aec5801d-909f-4832-85e3-b61700903e30	0
475	61965f84-6c6b-40ad-b647-534b2eeca270	0
479	8f715c8a-186b-4d6d-ac44-63d114ec33c9	0
481	61965f84-6c6b-40ad-b647-534b2eeca270	0
482	61965f84-6c6b-40ad-b647-534b2eeca270	0
483	32f24b80-1278-4191-8ce3-42b1382fe330	0
484	38ff93fa-07f7-4738-b7d4-5c4344091cc2	0
485	2a555007-fde9-4a30-ac3e-dc1770597a20	0
486	2a555007-fde9-4a30-ac3e-dc1770597a20	0
487	07d0319f-d39f-4d0e-a23e-d707374b47d1	0
488	2a555007-fde9-4a30-ac3e-dc1770597a20	0
489	2a555007-fde9-4a30-ac3e-dc1770597a20	0
490	38ff93fa-07f7-4738-b7d4-5c4344091cc2	0
491	54ae5c92-24d4-4441-8ac0-a2d258ce1721	0
492	3d7260e2-7b8f-41aa-9808-835e715ab53a	0
493	7791d399-e9f5-41a1-a2df-626010d355d2	0
494	70a52415-af32-41a6-b811-1ee228da9f35	0
495	664e17c8-3779-4dbd-9bfc-ac98ff83390e	0
496	2086da5b-116f-4448-afa0-6f1e92b903e2	0
497	2086da5b-116f-4448-afa0-6f1e92b903e2	0
498	2086da5b-116f-4448-afa0-6f1e92b903e2	0
499	2086da5b-116f-4448-afa0-6f1e92b903e2	0
500	2086da5b-116f-4448-afa0-6f1e92b903e2	0
501	2086da5b-116f-4448-afa0-6f1e92b903e2	0
502	9326b9c6-76a9-40a2-ac02-687aac3af7d3	0
503	61965f84-6c6b-40ad-b647-534b2eeca270	0
504	9326b9c6-76a9-40a2-ac02-687aac3af7d3	0
505	61965f84-6c6b-40ad-b647-534b2eeca270	0
506	a7fdf4fa-17dd-4595-b7de-952381e86b75	0
507	174bac90-6030-4778-afab-3d9304c6f5a6	0
508	e950d9a6-c921-4393-a01f-5338e2a69ecd	0
509	ea9a6c8c-f9c1-4fcd-b0e8-3e7404209b28	0
510	ea9a6c8c-f9c1-4fcd-b0e8-3e7404209b28	0
511	6348e77b-03df-432f-9291-405d74c1451f	0
512	2086da5b-116f-4448-afa0-6f1e92b903e2	0
513	10a1ff7c-04f2-4f12-a59f-9d896f6da32b	0
514	2086da5b-116f-4448-afa0-6f1e92b903e2	0
515	9326b9c6-76a9-40a2-ac02-687aac3af7d3	0
516	9326b9c6-76a9-40a2-ac02-687aac3af7d3	0
517	2086da5b-116f-4448-afa0-6f1e92b903e2	0
518	2086da5b-116f-4448-afa0-6f1e92b903e2	0
519	407f4a9f-b31d-43cc-b6e1-56fbe752263b	0
520	8a2df686-bd18-412f-8c83-5c00eb0ff27c	0
521	f5f2daea-f8be-42cd-b9c2-e9b167209f48	0
522	2086da5b-116f-4448-afa0-6f1e92b903e2	0
523	7dc66b1e-e588-4e7a-ad66-26bd095ae2da	0
524	45a18073-5817-4c4f-af5d-6f79951bcd54	0
525	f5f2daea-f8be-42cd-b9c2-e9b167209f48	0
526	8a2df686-bd18-412f-8c83-5c00eb0ff27c	0
527	8a2df686-bd18-412f-8c83-5c00eb0ff27c	0
528	de3ee6cb-efc0-4cf9-aafe-506d84d3f98c	0
529	2761758b-e868-454a-a111-a4e1445f77f0	0
530	002759c4-7128-47a8-bc5d-6adb1f3f7cd0	0
531	32e0fe34-bfcb-439c-b12b-22b24541547b	0
532	64249e80-0a25-4d06-83cd-453d6583d14b	0
533	4a9cade3-2342-4662-acda-4724ff1c024a	0
534	49084d7d-2c83-44b4-a9b8-16eb63819d4a	0
535	eb1d84fd-5f76-4c17-a62a-77bac17ffa6e	0
536	45f10f03-8416-4558-8060-e4824a28f808	0
537	a00a4b14-226a-4b0a-aa13-bb634ea04f6c	0
538	908356a3-63d8-4c2a-8ca0-b18af42306bc	0
539	45f10f03-8416-4558-8060-e4824a28f808	0
540	a00a4b14-226a-4b0a-aa13-bb634ea04f6c	0
541	4e0e1793-4159-4b86-9489-97b0446c4928	0
542	45f10f03-8416-4558-8060-e4824a28f808	0
543	45f10f03-8416-4558-8060-e4824a28f808	0
544	9693af5a-4edd-483a-b539-e585becee19c	0
545	9693af5a-4edd-483a-b539-e585becee19c	0
546	45f10f03-8416-4558-8060-e4824a28f808	0
547	39f99785-d1fc-4a24-9186-d02e0c8119fa	0
548	9693af5a-4edd-483a-b539-e585becee19c	0
549	885f7b23-7c81-4841-b9c7-b084f2a9f435	0
550	f5f2daea-f8be-42cd-b9c2-e9b167209f48	0
551	b9b2b593-ca04-4907-8e2a-83f9b4e5f330	0
552	561e2f76-e5f9-48fc-aedb-881fe6cec669	0
553	f2efbba0-da7a-4977-b04e-8baa131fc1f6	0
554	0c048828-2e39-4798-9fca-8f2e67e75b10	0
555	3074f8e9-5d6f-4857-8e3f-a91e9353cc63	0
556	3074f8e9-5d6f-4857-8e3f-a91e9353cc63	0
557	7fa75543-c13c-41cf-b345-6b7cccc4f5db	0
558	55cf1909-ef34-49fc-b091-503bb6c79be5	0
559	bf74acb7-a209-4a81-95b0-7c02b75ab7e7	0
560	8c8cbf72-7f02-4ab1-a00b-425f294704ce	0
561	4a1d820c-38a8-4a01-9892-880107362974	0
562	e2ccf1b9-e164-407e-b7ea-43083bd6cd8c	0
563	6352874c-aba4-4917-81e0-92753c2ea2b8	0
564	de3ee6cb-efc0-4cf9-aafe-506d84d3f98c	0
565	03cbd56a-a68e-43be-b80d-d639c58b778b	0
566	ba758b47-43a0-42a0-a0f8-52cbea06802f	0
567	5d6c8cfd-084a-4f90-949d-ef7a21abfa96	0
568	bff47e34-d402-4206-85f9-a18695f9dcbc	0
569	efdfda48-2827-4b8b-a4e9-5ba188ce8da9	0
570	d9fbbde8-afc6-4ea2-9082-b6758be783bf	0
571	e7cbad53-6d3f-490a-a795-77fecadde8e5	0
572	2ad00cc8-3bac-4727-affe-4b4cc6d84155	0
573	32f24b80-1278-4191-8ce3-42b1382fe330	0
574	7c8c17b0-7303-405d-90e6-e3f523f3cfc7	0
575	4eb182d8-5676-4a7d-96e1-69ce14149ab7	0
576	6fd26983-5f06-461a-a86a-e8d2822a95d3	0
577	e46076c0-e14c-4389-a7d2-3ae5d1c7d52a	0
578	e0a2fc30-bdb6-47e4-af69-7024575a7cec	0
579	fe3940b0-2568-4a7c-adb0-3afec9e62673	0
580	735b7dc7-72f1-481d-9128-38b4eb8d980c	0
581	735b7dc7-72f1-481d-9128-38b4eb8d980c	0
582	735b7dc7-72f1-481d-9128-38b4eb8d980c	0
583	e8fa4372-5066-466f-bf21-e9cb29586dc3	0
584	19970eec-622e-4dec-840e-7e7d52385b52	0
585	ac3d7f3a-85ce-4a8b-bef0-dc91cd9c7011	0
586	ac3d7f3a-85ce-4a8b-bef0-dc91cd9c7011	0
587	ef87d8ce-9f12-486d-bc5f-ca636ebd7249	0
588	ac3d7f3a-85ce-4a8b-bef0-dc91cd9c7011	0
589	db1a4046-7792-4cf5-aad8-fe5dd7853efc	0
590	db1a4046-7792-4cf5-aad8-fe5dd7853efc	0
591	db1a4046-7792-4cf5-aad8-fe5dd7853efc	0
592	378cda29-68f2-4c5f-a602-343db88473ea	0
593	b73abf3f-e5ac-4b24-bfee-c9195e0ed280	0
594	0e6ee3e1-5831-47a0-bb07-b95681c6d7bd	0
595	b73abf3f-e5ac-4b24-bfee-c9195e0ed280	0
596	b73abf3f-e5ac-4b24-bfee-c9195e0ed280	0
597	880017d2-66a9-435a-b026-ef33511dcce8	0
598	8c0036fe-7234-44f1-8bf5-06bb2d0a647e	0
599	8c0036fe-7234-44f1-8bf5-06bb2d0a647e	0
600	5ebbe541-4e2d-42ce-b617-619d62f2756e	0
601	5767486d-69f0-43f7-ae7f-66c73d4fc236	0
602	f7287359-51b4-484f-b667-9e67d65bfa1f	0
603	68569b45-98db-4af9-a828-6099ff611c3d	0
604	f313c862-c2e7-46fa-ab3a-e2e432e78825	0
605	c6e6eea0-27f4-4f5a-9765-e0b4b11322e4	0
606	6738accc-22bc-4bed-bad5-78e90de02c32	0
607	fcb5513a-6c85-4090-8a80-714ed3bbf3bd	0
608	4466aa07-7e0d-4cd5-97fe-34074eef9ed9	0
609	70188bdc-05ae-4fb8-af24-daff38fdd56a	0
610	32f24b80-1278-4191-8ce3-42b1382fe330	0
611	4466aa07-7e0d-4cd5-97fe-34074eef9ed9	0
612	68569b45-98db-4af9-a828-6099ff611c3d	0
613	6738accc-22bc-4bed-bad5-78e90de02c32	0
614	85f947b4-f3b3-4fbb-ac53-8adca33fae86	0
615	6738accc-22bc-4bed-bad5-78e90de02c32	0
616	a0035617-98e4-431b-90fe-207de6c62830	0
617	68569b45-98db-4af9-a828-6099ff611c3d	0
618	32206609-0c48-4570-b262-b80699716036	0
619	32206609-0c48-4570-b262-b80699716036	0
620	32206609-0c48-4570-b262-b80699716036	0
621	32206609-0c48-4570-b262-b80699716036	0
622	a4760127-39d5-4f2b-a866-d02517e1f2bc	0
623	2d30bee4-c24d-4362-bfd6-8c2879ba01c5	0
624	adbeddc9-1c08-43d3-b55c-56652ca58442	0
625	66f6258e-b7d1-402d-9a39-15d2fdcde0f1	0
626	62a9f99b-8e8c-462e-a833-03011afe5e01	0
627	dbb68d95-603e-4289-8658-587f4e6fa8e4	0
628	dbb68d95-603e-4289-8658-587f4e6fa8e4	0
629	1098ed11-035a-40cd-b6bb-9e531a59fa13	0
630	0c7fd208-a67d-4a1e-940b-4e4caffc5b15	0
631	801141e4-7062-4d58-9208-64ed7a8574bf	0
632	801141e4-7062-4d58-9208-64ed7a8574bf	0
633	55c7fa9a-8c77-4118-8d01-706256da2057	0
634	9c9a9ca0-4014-4c79-8c94-bbdccfe642a5	0
635	ddd90573-bd86-4f47-834b-4a4fd3c7bb03	0
636	55c7fa9a-8c77-4118-8d01-706256da2057	0
637	ddd90573-bd86-4f47-834b-4a4fd3c7bb03	0
638	78c0b1cb-cd77-431f-b8ed-2e38600de6ae	0
639	78c0b1cb-cd77-431f-b8ed-2e38600de6ae	0
640	1c86271f-f77d-4c14-9df7-c650065c09b0	0
641	1c86271f-f77d-4c14-9df7-c650065c09b0	0
642	b7d33c53-c124-4a90-93e9-0a5c5e5d8f61	0
643	2ca3a350-dca2-4f7f-9bf2-4a64d211926a	0
644	6dfe6000-bccf-4223-8918-ad44d867dc35	0
645	5b3a13a6-7c03-4c0b-9b49-65f312e9c738	0
646	e39fa773-417a-4e80-a412-3fa9e6366ff3	0
647	6dfe6000-bccf-4223-8918-ad44d867dc35	0
648	826bd3f5-7d5b-441d-87cf-6f24ff38a17b	0
649	64cfe983-7b26-45ca-b986-627bb50ac6f2	0
650	abbe7afe-3919-4519-9b8d-5f1e2d907d7c	0
651	826bd3f5-7d5b-441d-87cf-6f24ff38a17b	0
652	826bd3f5-7d5b-441d-87cf-6f24ff38a17b	0
653	f177436b-c6ae-4a63-9d7e-be80423524e7	0
654	826bd3f5-7d5b-441d-87cf-6f24ff38a17b	0
655	f177436b-c6ae-4a63-9d7e-be80423524e7	0
656	f177436b-c6ae-4a63-9d7e-be80423524e7	0
657	f177436b-c6ae-4a63-9d7e-be80423524e7	0
658	b6f2c255-2654-46b9-8cf0-efa34c182ec6	0
659	0cfb2e5b-da6a-4003-8b3b-71e22bfae717	0
660	47d48728-8dbf-4e95-b71b-14cf5c07f650	0
661	a74672b3-93c0-4280-8373-a771e66f314d	0
662	a9330596-db71-4379-90a2-d4af85d2229b	0
663	47d48728-8dbf-4e95-b71b-14cf5c07f650	0
664	fccdd791-7a9e-4eb0-ae2d-b6eaebceef52	0
665	fccdd791-7a9e-4eb0-ae2d-b6eaebceef52	0
666	a9330596-db71-4379-90a2-d4af85d2229b	0
667	2648691a-eae6-4185-bf76-c6609cd591d4	0
668	9244b99a-062d-4038-bfb2-5d8b3aad0eda	0
669	a9330596-db71-4379-90a2-d4af85d2229b	0
670	b8e71f70-5ce6-434d-a4fe-f8aee4c1d993	0
671	a71feec1-e153-4c7f-80eb-35ff69be9f86	0
672	11ea1fa0-fd64-45d5-852b-5e26d8a018eb	0
673	b24a165e-d4a8-41b9-92ab-134908fddc5b	0
674	a061a8d6-3273-41ec-912f-418f71dd5230	0
675	b8e71f70-5ce6-434d-a4fe-f8aee4c1d993	0
676	939dde2c-555e-474b-ba01-29cc9323751e	0
677	18105b85-ed69-4c9e-83fd-8d9715e4ef7d	0
678	a22818f6-389d-4659-92c1-4f49bd6956c3	0
679	04575dfa-d20b-42f9-964c-8c2759e6f26c	0
680	91075501-4738-4a5e-b990-14a771420010	0
681	0985db19-5d09-45cb-ac75-a8e98226d7d9	0
682	3d9ef3f7-08d7-4829-8f1a-695c74ba9227	0
683	ce4b5dc0-4927-483c-88a3-2d63b1ab9de7	0
684	59c8e0fa-fd47-4c26-a1c4-d2a285a6ffc3	0
685	a22818f6-389d-4659-92c1-4f49bd6956c3	0
686	ce4b5dc0-4927-483c-88a3-2d63b1ab9de7	0
687	b8e71f70-5ce6-434d-a4fe-f8aee4c1d993	0
696	e836c449-7f7d-4849-9310-4a7615716a98	0
688	cbab5189-5ead-441a-b2b3-713ee6a5267f	0
689	c768f3be-0f0b-414f-99f1-d551dd90db6e	0
690	954b6177-b492-4316-aeaf-0daadc35da08	0
691	3d9ef3f7-08d7-4829-8f1a-695c74ba9227	0
692	234dc809-216d-4ade-826e-cd755f8da00b	0
693	8b75a62a-2b54-464a-a291-6eaca6e2e676	0
694	b8e71f70-5ce6-434d-a4fe-f8aee4c1d993	0
695	c86d75d3-0889-4ba3-8c80-c800cfb8f719	0
697	1f984b7f-cd2b-4b31-8d66-d905f16e5642	0
698	9dbfa077-3b0f-4c15-9563-faa3b7c8c927	0
699	ce4b5dc0-4927-483c-88a3-2d63b1ab9de7	0
700	f28bd5bd-9b89-4d6b-b13d-9ab363ce61c9	0
701	b46c4309-5a1f-4a80-8703-d359b973d404	0
702	6b9ebaa6-bec2-45eb-a6d8-89b533e927ad	0
703	a90f021f-0d35-454e-ac42-99f8b2f6c946	0
704	e4093685-55eb-47d4-bf53-76e4b5b4b036	0
705	e8ce9e33-d2d9-4faf-9d0b-05ae59ac1da3	0
706	4ddf33ad-1737-4df8-8a72-66ee55855508	0
707	a86d525c-a99d-4489-84d3-77e22c324f7a	0
708	1921f4cb-dc81-4782-83ec-f52e2173a15f	0
709	e4093685-55eb-47d4-bf53-76e4b5b4b036	0
710	29755469-cd6a-4cbc-9a29-caa26e25d9c1	0
711	a86d525c-a99d-4489-84d3-77e22c324f7a	0
712	22f33f08-9a72-4da9-b6be-b3d016fbe6bf	0
713	35200803-a165-437e-834a-8cad9165167a	0
714	4a87b339-962f-4c95-8273-2f48734775ab	0
715	89d963e5-0c04-400b-b873-2df979348857	0
716	3ee006a8-ca5a-4777-9c87-e6de53ef5882	0
717	1d6cfe5a-641a-424d-b27e-f79a7baf96c2	0
718	1921f4cb-dc81-4782-83ec-f52e2173a15f	0
719	d9e330b3-c6e8-4ab5-8b1c-3cdea2f45400	0
720	58dc9951-4196-42f7-b567-1066cf7e3148	0
721	3f70159f-ee11-4ca9-b36b-d490e9f5515a	0
722	4a87b339-962f-4c95-8273-2f48734775ab	0
723	32f24b80-1278-4191-8ce3-42b1382fe330	0
724	ceac1347-18b3-43d7-a5c7-c74ec6f5d9e1	0
725	29755469-cd6a-4cbc-9a29-caa26e25d9c1	0
726	32f24b80-1278-4191-8ce3-42b1382fe330	0
727	22f33f08-9a72-4da9-b6be-b3d016fbe6bf	0
728	59c8e0fa-fd47-4c26-a1c4-d2a285a6ffc3	0
729	4a87b339-962f-4c95-8273-2f48734775ab	0
730	34b308c7-3cd1-4a43-9d9c-c148b2a06b71	0
731	09b86dac-0b33-41ef-bde9-c1f5bcd73f0c	0
732	320c2b8f-68f0-436d-98da-74a1e92ae674	0
733	c98da3b4-7baa-4819-9291-8b0a439ae271	0
734	84bd0346-a39e-4eaf-827e-b1163ef6ef21	0
735	a86d525c-a99d-4489-84d3-77e22c324f7a	0
736	c022b40b-4b5b-4133-b50e-ff24c793bac3	0
737	b24a165e-d4a8-41b9-92ab-134908fddc5b	0
738	89d963e5-0c04-400b-b873-2df979348857	0
739	cb8a99e4-b512-448f-9a21-702ea80376b6	0
740	58dc9951-4196-42f7-b567-1066cf7e3148	0
741	22f33f08-9a72-4da9-b6be-b3d016fbe6bf	0
742	29755469-cd6a-4cbc-9a29-caa26e25d9c1	0
743	b46c4309-5a1f-4a80-8703-d359b973d404	0
744	89d963e5-0c04-400b-b873-2df979348857	0
745	905b2623-ae71-45f0-8026-45bb56b8c681	0
746	0db49eaa-1cdf-4af4-a979-1281bcca7b8c	0
747	3d05b11d-d6e3-497d-9558-588410b65bf7	0
748	905b2623-ae71-45f0-8026-45bb56b8c681	0
749	3d05b11d-d6e3-497d-9558-588410b65bf7	0
750	3d05b11d-d6e3-497d-9558-588410b65bf7	0
751	29755469-cd6a-4cbc-9a29-caa26e25d9c1	0
752	3d05b11d-d6e3-497d-9558-588410b65bf7	0
753	3d05b11d-d6e3-497d-9558-588410b65bf7	0
754	905b2623-ae71-45f0-8026-45bb56b8c681	0
755	905b2623-ae71-45f0-8026-45bb56b8c681	0
756	f31e0496-c1d7-4da3-88cc-4b79d7ae16dd	0
757	905b2623-ae71-45f0-8026-45bb56b8c681	0
758	ae7e8406-793b-46b1-984c-c24e410375a4	0
759	0db49eaa-1cdf-4af4-a979-1281bcca7b8c	0
760	b24a165e-d4a8-41b9-92ab-134908fddc5b	0
761	1921f4cb-dc81-4782-83ec-f52e2173a15f	0
762	1921f4cb-dc81-4782-83ec-f52e2173a15f	0
763	f31e0496-c1d7-4da3-88cc-4b79d7ae16dd	0
764	58dc9951-4196-42f7-b567-1066cf7e3148	0
765	ae7e8406-793b-46b1-984c-c24e410375a4	0
766	a7dec425-95ad-40d0-9479-b0872bea23c0	0
767	905b2623-ae71-45f0-8026-45bb56b8c681	0
768	0db49eaa-1cdf-4af4-a979-1281bcca7b8c	0
769	0db49eaa-1cdf-4af4-a979-1281bcca7b8c	0
770	0db49eaa-1cdf-4af4-a979-1281bcca7b8c	0
771	2c1c77d9-ff6b-42fa-8a65-36fb7293139a	0
772	905b2623-ae71-45f0-8026-45bb56b8c681	0
773	3d05b11d-d6e3-497d-9558-588410b65bf7	0
774	3d05b11d-d6e3-497d-9558-588410b65bf7	0
775	982fa8b0-c5e1-4bce-b815-f28b73a0c744	0
776	bc806bbb-7d67-410b-8d57-ba8d3d2c9654	0
777	6a200c06-c29a-4ed3-a4f7-bbccde7c29d7	0
778	508836ef-7646-4b56-bfe7-8632746f24d5	0
779	508836ef-7646-4b56-bfe7-8632746f24d5	0
780	508836ef-7646-4b56-bfe7-8632746f24d5	0
781	905b2623-ae71-45f0-8026-45bb56b8c681	0
782	982fa8b0-c5e1-4bce-b815-f28b73a0c744	0
783	982fa8b0-c5e1-4bce-b815-f28b73a0c744	0
784	2c1c77d9-ff6b-42fa-8a65-36fb7293139a	0
785	b24a165e-d4a8-41b9-92ab-134908fddc5b	0
786	3b2c717a-8f60-44a1-b3a9-41f8856022c4	0
787	6a200c06-c29a-4ed3-a4f7-bbccde7c29d7	0
788	4d85eb18-61b1-4663-8f2e-d4f5b229c2f4	0
789	6a200c06-c29a-4ed3-a4f7-bbccde7c29d7	0
790	26afc0f5-f0f7-495e-8072-a5286e0c9b03	0
791	818c70a5-e746-4e1b-bb33-b99751f09f7b	0
792	fcfacfbf-b239-4a60-8b6b-e11102951d4a	0
793	d565f041-1a55-4fd9-a1e2-36d3ecd6ee64	0
794	67f6be9f-e325-4281-9b51-ec47b06e1582	0
795	ae7e8406-793b-46b1-984c-c24e410375a4	0
796	3e151a79-12b5-4755-9fc7-8358c652a3d4	0
797	cb8a99e4-b512-448f-9a21-702ea80376b6	0
798	982fa8b0-c5e1-4bce-b815-f28b73a0c744	0
802	081f10fe-edbd-4c85-99d1-ec53eb9bc947	0
806	d7f70feb-f36a-4ac4-b978-7c48277638a9	0
808	1d29a4ac-6966-488c-bc5d-a90bad386263	0
809	da6a0abb-dbb1-469b-b98a-4bc24d02a928	0
810	081f10fe-edbd-4c85-99d1-ec53eb9bc947	0
814	1d29a4ac-6966-488c-bc5d-a90bad386263	0
815	2c1c77d9-ff6b-42fa-8a65-36fb7293139a	0
816	92fadff3-3a04-46fc-bb57-3118393c9c74	0
817	73195b9f-09d6-45e5-87c2-67da9bb1f90a	0
818	c98da3b4-7baa-4819-9291-8b0a439ae271	0
799	6bd48b9a-b862-42f9-93b6-c1ebc4ecdb2f	0
800	92fadff3-3a04-46fc-bb57-3118393c9c74	0
801	a86d525c-a99d-4489-84d3-77e22c324f7a	0
812	5ebd97c1-cf48-40f7-a5e8-f8fdeea789cb	0
813	5e828a5f-6ec3-46f0-9b12-641caf15ae3c	0
820	6a19571b-9ab7-4811-9d5c-16fab2cf039a	0
803	081f10fe-edbd-4c85-99d1-ec53eb9bc947	0
804	a86d525c-a99d-4489-84d3-77e22c324f7a	0
805	081f10fe-edbd-4c85-99d1-ec53eb9bc947	0
807	0aae2309-4926-4798-80f3-dc2f06ac4385	0
811	ae7e8406-793b-46b1-984c-c24e410375a4	0
819	511905cc-0ce9-42bc-a6dc-f351b4eeb1b4	0
821	f60a20d6-ab3f-4da1-890b-1c0a52fb7da5	0
822	1d29a4ac-6966-488c-bc5d-a90bad386263	0
823	c8c8a907-830f-4542-bc78-bddc1e6d23b9	0
824	6a19571b-9ab7-4811-9d5c-16fab2cf039a	0
825	f60a20d6-ab3f-4da1-890b-1c0a52fb7da5	0
826	ad5a3de0-d9b1-4ac9-aead-4e35893b815c	0
827	40b9b1a2-c3ce-4f8c-8147-65db0470b983	0
828	10de9566-2df9-4905-961a-1aec6ffd3ff1	0
829	40b9b1a2-c3ce-4f8c-8147-65db0470b983	0
830	40b9b1a2-c3ce-4f8c-8147-65db0470b983	0
831	c98da3b4-7baa-4819-9291-8b0a439ae271	0
832	40b9b1a2-c3ce-4f8c-8147-65db0470b983	0
833	40b9b1a2-c3ce-4f8c-8147-65db0470b983	0
834	40b9b1a2-c3ce-4f8c-8147-65db0470b983	0
835	40b9b1a2-c3ce-4f8c-8147-65db0470b983	0
836	1d29a4ac-6966-488c-bc5d-a90bad386263	0
837	98470e7f-8494-4e31-b9b0-bd4b3b66a485	0
838	73195b9f-09d6-45e5-87c2-67da9bb1f90a	0
839	155566c7-52a8-4776-822a-c787ba771a0c	0
840	98470e7f-8494-4e31-b9b0-bd4b3b66a485	0
841	98470e7f-8494-4e31-b9b0-bd4b3b66a485	0
842	c9a74049-3221-4cc3-a644-79c9c646b88a	0
843	e6091a80-e208-4abe-b5d6-2634f8e7a287	0
844	7be65be4-5c6a-49a6-85c8-6cd407dc0c5a	0
845	9740d018-34cc-4769-b149-14761db39304	0
846	673874cc-e6ac-4206-b6f0-253c643eadcc	0
847	90b6d5aa-d4e3-45c5-8d90-204b07aeac12	0
848	b2ce17c3-7eec-4bab-a556-d3cf0bac9850	0
849	1063094c-a825-4f1b-9e7c-08b82b142791	0
850	7360eb34-f9f2-4b05-9813-f70edcf25724	0
851	4be0e40c-d32e-4812-851e-648560834225	0
852	4e754472-7222-4166-afee-ff8317f34114	0
853	eced42cd-3140-4fd7-b67f-aecb82d9460b	0
854	1fddad90-a5cb-4ee1-901a-ecc0983d1839	0
855	e395c3ee-0018-4db7-967c-b58ccb776f99	0
856	752a337b-5ce5-4e58-bde2-56d967981b39	0
857	6a19571b-9ab7-4811-9d5c-16fab2cf039a	0
858	55d2876e-9abb-4551-b3b5-e01735b0cbe3	0
859	1fddad90-a5cb-4ee1-901a-ecc0983d1839	0
860	1fddad90-a5cb-4ee1-901a-ecc0983d1839	0
861	7360eb34-f9f2-4b05-9813-f70edcf25724	0
862	e826f009-c91b-4698-baf4-386097eacb27	0
863	6a19571b-9ab7-4811-9d5c-16fab2cf039a	0
864	1fddad90-a5cb-4ee1-901a-ecc0983d1839	0
865	ec63f7a4-c233-4a9a-953e-1ce449efebd9	0
866	1fddad90-a5cb-4ee1-901a-ecc0983d1839	0
867	e826f009-c91b-4698-baf4-386097eacb27	0
868	b2ce17c3-7eec-4bab-a556-d3cf0bac9850	0
869	9b0063e3-b23a-4ab7-a9ae-405438a7c84b	0
870	4be0e40c-d32e-4812-851e-648560834225	0
871	b7584372-da07-4d3e-a96e-8ab34a6e3022	0
872	e0bd640f-cf42-4c6d-aa44-a80b5be705ae	0
873	47bc7dbd-3541-4b8a-9cb9-727591f54222	0
874	e395c3ee-0018-4db7-967c-b58ccb776f99	0
875	9b0063e3-b23a-4ab7-a9ae-405438a7c84b	0
876	f60a20d6-ab3f-4da1-890b-1c0a52fb7da5	0
877	54d50e65-04a2-4e54-9e29-ea806eda9cdb	0
878	142401f3-f276-4169-89e3-a34f8bf0dedb	0
879	f60a20d6-ab3f-4da1-890b-1c0a52fb7da5	0
880	9b0063e3-b23a-4ab7-a9ae-405438a7c84b	0
881	6a19571b-9ab7-4811-9d5c-16fab2cf039a	0
882	f60a20d6-ab3f-4da1-890b-1c0a52fb7da5	0
883	9b0063e3-b23a-4ab7-a9ae-405438a7c84b	0
884	093e9574-b68f-4849-b348-fb7b7476fea8	0
885	936fcb94-f1bf-437c-9cbc-07481f2139bc	0
886	1ab02a62-d7ca-4f1d-9180-93e31fd760f3	0
887	e47fd24f-4c76-495f-9f79-5a86197c9e2a	0
888	e395c3ee-0018-4db7-967c-b58ccb776f99	0
889	cfa19732-165b-40f7-a118-fcb140bfc67c	0
890	eced42cd-3140-4fd7-b67f-aecb82d9460b	0
891	1ab02a62-d7ca-4f1d-9180-93e31fd760f3	0
892	24c3ec1e-a6d6-45f9-ae21-889f4f761294	0
893	f2975b57-964c-4010-9a83-3c6a8b48f123	0
894	936fcb94-f1bf-437c-9cbc-07481f2139bc	0
895	9531f5e5-2f4b-440c-9e95-dd5891b98e7f	0
896	e5fcd184-6dea-4b63-9c0f-b006614d891a	0
897	f2c0fa53-86a3-4a74-99f8-504a1c5601a8	0
898	477744ff-e2d6-4ce1-ae60-768d9f49a69f	0
899	6a19571b-9ab7-4811-9d5c-16fab2cf039a	0
900	45e48609-1d91-4800-af18-02740f9b1f48	0
901	24c3ec1e-a6d6-45f9-ae21-889f4f761294	0
902	9531f5e5-2f4b-440c-9e95-dd5891b98e7f	0
903	83699eb6-db56-4a3c-9ec5-76c435bea415	0
904	0dd80e69-3afd-4d07-b9fe-981350fd6e64	0
905	45e48609-1d91-4800-af18-02740f9b1f48	0
906	44bff3d0-0c10-41c7-a9c1-7c338e0f03cd	0
907	b774b49c-ad0e-4511-9267-d86094bab9cc	0
908	2d64fa1f-789a-466f-83be-04860a2cd1b6	0
909	9ac41c7e-6dae-49ad-8955-fbca6728d857	0
910	1ab02a62-d7ca-4f1d-9180-93e31fd760f3	0
911	44954123-c766-4bc0-b2aa-af5d5c1551c8	0
912	3be2f548-7efe-4b2c-a3f3-fc4f6fb8d634	0
913	de19339d-c8a2-4ae9-94d1-9ab18eee8ee3	0
914	b80e2e04-6372-43e3-87f6-4ec82d872373	0
915	8e245509-b1c6-4602-8f31-71ab2e98e7c1	0
916	35cdcb5a-9aaf-45c0-851d-efdda2226ae8	0
917	45e48609-1d91-4800-af18-02740f9b1f48	0
918	7d72c510-f23f-4503-91cc-0764f7fb0787	0
919	0dd80e69-3afd-4d07-b9fe-981350fd6e64	0
920	9ac41c7e-6dae-49ad-8955-fbca6728d857	0
921	24c3ec1e-a6d6-45f9-ae21-889f4f761294	0
922	15297634-d1bd-4553-a057-e0140620c9ef	0
923	f403abd9-7326-4b71-a947-941a11320a63	0
930	1d67f673-93f2-4b4b-99fe-2644873f49be	0
931	02c33676-7392-4da2-8d13-7d2d468a67ff	0
936	d1d8f5b1-ab14-40d9-918c-1a0732c35d9b	0
944	e826f009-c91b-4698-baf4-386097eacb27	0
947	cc8b4594-f122-4cf0-b54d-bda15800500d	0
948	0dd80e69-3afd-4d07-b9fe-981350fd6e64	0
952	45e48609-1d91-4800-af18-02740f9b1f48	0
953	d9a042ac-c0d6-483b-96cc-56333ecb564a	0
956	da532cdc-7feb-4d06-b3e8-c0cc731c4755	0
924	9434571b-600d-4b2e-a623-c9414ec803ba	0
926	b774b49c-ad0e-4511-9267-d86094bab9cc	0
927	5ca8fd37-6e2c-4546-badd-6753238de0a9	0
933	adbe0ba3-0c1a-47e4-9627-609883cc238d	0
934	0f3c005d-884a-4a61-8d28-c0e13c84f486	0
938	02c33676-7392-4da2-8d13-7d2d468a67ff	0
943	d9dfa97a-66ca-4a10-bc85-be336f477675	0
950	45726f67-2fcd-438a-9df6-67859d0bb909	0
951	0639fd00-ad35-4932-be9d-32e4ee435ed8	0
954	c687a89b-a975-43f7-b3e0-a22246bbdf3c	0
955	a95adc7f-1fb4-4a15-b39d-6f08152b2af1	0
957	8cccd893-22e8-444d-b375-2574f0bc28df	0
960	fd576cac-0b9c-45ca-94cd-e545448a8a94	0
961	de2caa73-5674-4905-8983-c9d4aae5c3a4	0
925	1e9cf938-ca79-40bd-9098-8cf4a2ebb3bd	0
928	b80e2e04-6372-43e3-87f6-4ec82d872373	0
929	477744ff-e2d6-4ce1-ae60-768d9f49a69f	0
932	fa0d3cce-a41f-491f-a108-1f3b2466873f	0
935	47e082a0-25d2-4170-a77b-8f25bde7225f	0
937	73b300d3-ef34-4547-b03e-62fde5afbdc2	0
939	dbd30fa4-5ae1-4936-9821-e40b84bb274b	0
940	f859c38d-45f7-4d91-8e59-891db688ee9b	0
941	b80e2e04-6372-43e3-87f6-4ec82d872373	0
942	0639fd00-ad35-4932-be9d-32e4ee435ed8	0
945	ac9ec241-f737-47fc-ad61-e9715fe84e6e	0
946	c7438ff2-d2ec-48d8-bc61-d31c1063ff0e	0
949	45726f67-2fcd-438a-9df6-67859d0bb909	0
958	0639fd00-ad35-4932-be9d-32e4ee435ed8	0
959	42ffabb8-6ef1-48a9-ae64-9d8688c3da9a	0
962	42ffabb8-6ef1-48a9-ae64-9d8688c3da9a	0
963	8cccd893-22e8-444d-b375-2574f0bc28df	0
964	45726f67-2fcd-438a-9df6-67859d0bb909	0
965	090b78a0-7601-4cb5-939a-b98d67e747af	0
966	45726f67-2fcd-438a-9df6-67859d0bb909	0
967	9531f5e5-2f4b-440c-9e95-dd5891b98e7f	0
968	8e135c61-23c5-45db-b0a0-5732859cbf68	0
969	6a19571b-9ab7-4811-9d5c-16fab2cf039a	0
970	9531f5e5-2f4b-440c-9e95-dd5891b98e7f	0
971	090b78a0-7601-4cb5-939a-b98d67e747af	0
972	ecfee559-f019-4d31-9797-2787ba5a3e9b	0
973	8e135c61-23c5-45db-b0a0-5732859cbf68	0
974	a9b540e0-2fcf-4ff2-ab70-a55f50b57e30	0
975	ff5d9b1d-6848-4475-ba5f-788baaf62708	0
976	6a19571b-9ab7-4811-9d5c-16fab2cf039a	0
977	c19d4585-83da-4292-a2f6-3e3bd0cca89f	0
978	6a19571b-9ab7-4811-9d5c-16fab2cf039a	0
979	a9b540e0-2fcf-4ff2-ab70-a55f50b57e30	0
980	a9b540e0-2fcf-4ff2-ab70-a55f50b57e30	0
981	34313210-7d4f-4ad4-9a38-60fd2aeb3b6c	0
982	34372c6b-9e47-4afb-bcf7-d7ffd7e77779	0
983	b774b49c-ad0e-4511-9267-d86094bab9cc	0
984	a4d6bfaf-eb0a-4eea-b2db-2831a4ac0b9a	0
985	a633efe1-bfca-4339-aec4-b66ee49a1df2	0
986	2e515355-4dd4-47e9-9558-53ec5f5eba06	0
987	319f4e0e-6cbc-47b8-84b4-a7f4af7c97e6	0
988	cc8b4594-f122-4cf0-b54d-bda15800500d	0
989	d7b944ee-ff18-40ed-94bd-187d71bb85bd	0
990	ecfee559-f019-4d31-9797-2787ba5a3e9b	0
991	a633efe1-bfca-4339-aec4-b66ee49a1df2	0
992	a633efe1-bfca-4339-aec4-b66ee49a1df2	0
993	03f6852e-1788-4d46-8577-784ca987053d	0
994	89d963e5-0c04-400b-b873-2df979348857	0
995	81c0aa07-9a76-45a0-b79a-0da0a702271e	0
996	3116f58e-ad28-4542-b534-a9101152a009	0
997	a8e0c71d-f63b-410a-8494-41ae0eb1af56	0
998	58dc9951-4196-42f7-b567-1066cf7e3148	0
999	ad4af1bf-581d-49fc-9211-99c2e1be0fb8	0
1000	03f6852e-1788-4d46-8577-784ca987053d	0
1001	8e135c61-23c5-45db-b0a0-5732859cbf68	0
1002	81c0aa07-9a76-45a0-b79a-0da0a702271e	0
1003	4ae31ed8-a13d-41e2-93a3-1fee73c5fa9b	0
1004	9531f5e5-2f4b-440c-9e95-dd5891b98e7f	0
1005	bd323fa3-7fef-4be8-9cfb-d6eb2c7a198b	0
1006	4fcfd628-21e4-447d-ba7f-6fdbaf285b73	0
1007	34372c6b-9e47-4afb-bcf7-d7ffd7e77779	0
1008	81c0aa07-9a76-45a0-b79a-0da0a702271e	0
1009	03f6852e-1788-4d46-8577-784ca987053d	0
1010	9531f5e5-2f4b-440c-9e95-dd5891b98e7f	0
1011	9531f5e5-2f4b-440c-9e95-dd5891b98e7f	0
1012	9531f5e5-2f4b-440c-9e95-dd5891b98e7f	0
1013	ad4af1bf-581d-49fc-9211-99c2e1be0fb8	0
1014	9531f5e5-2f4b-440c-9e95-dd5891b98e7f	0
1015	9531f5e5-2f4b-440c-9e95-dd5891b98e7f	0
1016	4309ef16-3c50-450e-adde-4916291a5fce	0
1017	ad4af1bf-581d-49fc-9211-99c2e1be0fb8	0
1018	ad4af1bf-581d-49fc-9211-99c2e1be0fb8	0
1019	21daf237-91a9-489c-acd8-476227c537fc	0
1020	eb2e0fee-916e-4f67-a364-6014e4b1557f	0
1021	60b2782e-dc6d-44a9-9967-97e3deaeb2b1	0
1022	18331f43-c139-435e-a690-32b6945a85aa	0
1023	60b2782e-dc6d-44a9-9967-97e3deaeb2b1	0
1024	60b2782e-dc6d-44a9-9967-97e3deaeb2b1	0
1025	a10cfde2-3a27-408b-af7e-7cc5f422ecdd	0
1026	a6329900-cab6-4860-a09a-1e94a3733f75	0
1027	d7b37076-4801-4921-87ac-0e73f9d3b35c	0
1028	59b290ea-1a4b-4d03-b4a1-706201f75085	0
1029	b1d63bd6-29db-4abd-ba70-546ff5dcc418	0
1030	1158332e-f27c-46d9-b6ea-dc6bf6e513f2	0
1031	8757ec7f-935b-46f6-a69f-f1828dacaebf	0
1032	1158332e-f27c-46d9-b6ea-dc6bf6e513f2	0
1033	1158332e-f27c-46d9-b6ea-dc6bf6e513f2	0
1034	8757ec7f-935b-46f6-a69f-f1828dacaebf	0
1035	a7902d25-2847-49b0-8394-b9e56cc6b71a	0
1036	bef8082a-306d-463c-acc3-455eb745e753	0
1037	c519ed87-b604-4db4-990d-685f958205f4	0
1038	9f61a14e-38c4-4ca7-b7cd-93fb8584ae67	0
1039	bef8082a-306d-463c-acc3-455eb745e753	0
1040	01f9bd2c-b000-4a24-9507-d7c754409c80	0
1041	bb4acadb-cc0d-4415-92fc-794c6fe14f70	0
1042	bef8082a-306d-463c-acc3-455eb745e753	0
1043	2e515355-4dd4-47e9-9558-53ec5f5eba06	0
1044	aeb52472-de12-4e7f-98b9-5b0dad47edcd	0
1045	ff2f1c60-dd90-43f8-9dca-9b5b5056552c	0
1046	5b2f8c09-cb16-4049-80bf-99cde3543e2f	0
1047	5b2f8c09-cb16-4049-80bf-99cde3543e2f	0
1048	4b528159-b360-4c10-a021-d727da020d40	0
1049	5b2f8c09-cb16-4049-80bf-99cde3543e2f	0
1050	a0de8c10-8232-4dc3-b142-abb58e19425e	0
1051	5b2f8c09-cb16-4049-80bf-99cde3543e2f	0
1052	9a3c1a17-0563-4b03-abde-1bf97aceecbe	0
1053	71b497be-cb35-4f4b-9beb-79bed3c650a2	0
1054	f9660a26-62ec-4d33-9ad4-486389cd86a6	0
1062	37fa351d-0ccd-4836-bd4c-88026cf3866e	0
1063	37fa351d-0ccd-4836-bd4c-88026cf3866e	0
1067	023e5122-f71d-444a-937a-52851031f03a	0
1068	49da75c0-843b-48c9-b1d3-c1ebf4ebd955	0
1074	1a389ed8-b47a-41f2-b37c-c7c97af8121d	0
1075	49da75c0-843b-48c9-b1d3-c1ebf4ebd955	0
1086	59d1ffff-b89d-4743-9a75-116dd3175010	0
1089	59d1ffff-b89d-4743-9a75-116dd3175010	0
1090	0a0b7c6d-d5fa-4a95-acce-3f2e613f5f71	0
1094	5c605edf-5ef2-41eb-aabe-d3bb2c91d284	0
1095	d8b84361-b6e0-403e-9691-38a6bb531e60	0
1102	cd9a2d3f-1438-45cc-b238-1617899e8f26	0
1106	d7c2b906-dbe7-4f61-8daa-a6a2e6947af5	0
1107	404075ed-e01f-4caa-81d3-bd7f847a88cd	0
1108	d7c2b906-dbe7-4f61-8daa-a6a2e6947af5	0
1055	59ea60b0-285d-452f-a8cc-9a7c1826d629	0
1056	50ee0be4-e65e-46e1-98a6-2f9a5296e3b8	0
1060	7f95fd03-e1e5-40a4-81b1-f393f59f0a7a	0
1061	37fa351d-0ccd-4836-bd4c-88026cf3866e	0
1064	7eaf88b9-3177-4de3-a483-7a7845b34145	0
1065	37112eed-97b8-4dc0-9024-dfd7332d9217	0
1066	f803d56c-d29c-4e80-8878-cd30ed808977	0
1076	2eef8370-644b-4521-bb16-af9997e09233	0
1078	43bf1a77-7802-4b93-a2f3-e77b7e1488b2	0
1079	5c89a18a-d890-4a5f-ba87-e976f7a6606c	0
1080	ed484356-1fba-4a7a-97ed-b86790835637	0
1081	59d1ffff-b89d-4743-9a75-116dd3175010	0
1082	ed484356-1fba-4a7a-97ed-b86790835637	0
1085	4fcdd040-7f98-4a9b-8911-887731b8a684	0
1087	ed484356-1fba-4a7a-97ed-b86790835637	0
1088	a40bd852-c7f5-49c6-bd65-c6a1d6ad488c	0
1092	8f374a77-b89a-4410-be2e-426d18f43523	0
1097	8631f960-64bc-4445-bf04-ee2540aeaad1	0
1098	54fad0c8-3116-421b-ace5-ef5218b79a55	0
1099	131a5fee-7f6b-4cb5-8c18-bed81ed9b0ce	0
1100	a96989dd-90e9-4eb0-871e-1249ef439682	0
1103	6ba07b0d-498f-42da-bced-9af58244e51e	0
1104	a96989dd-90e9-4eb0-871e-1249ef439682	0
1105	cd9a2d3f-1438-45cc-b238-1617899e8f26	0
1057	11ea1fa0-fd64-45d5-852b-5e26d8a018eb	0
1058	59ea60b0-285d-452f-a8cc-9a7c1826d629	0
1059	59ea60b0-285d-452f-a8cc-9a7c1826d629	0
1069	b4d1c472-0405-4173-a520-0fb2c8d004bd	0
1070	f32d28e7-dbb4-4646-890d-d66d86362c90	0
1071	bf21688a-7b1a-487c-b415-27189bc29e25	0
1072	69044e8c-ecbe-4d10-8f37-9229c003da05	0
1073	85bbe639-62ad-460d-aed8-8a8673aa607b	0
1077	91394e07-d745-4f0a-abdd-56d010b43daf	0
1083	43bf1a77-7802-4b93-a2f3-e77b7e1488b2	0
1084	3f75f59b-ee00-4118-9c30-a3b4df317540	0
1091	5c605edf-5ef2-41eb-aabe-d3bb2c91d284	0
1093	53bc3f1a-6393-428e-96c1-538b2a9a9c3d	0
1096	53bc3f1a-6393-428e-96c1-538b2a9a9c3d	0
1101	6ba07b0d-498f-42da-bced-9af58244e51e	0
1109	53bc3f1a-6393-428e-96c1-538b2a9a9c3d	0
1110	d7c2b906-dbe7-4f61-8daa-a6a2e6947af5	0
1111	d7c2b906-dbe7-4f61-8daa-a6a2e6947af5	0
1112	3f5b573a-d699-412c-9c95-3bcaa77b7f09	0
1113	d7c2b906-dbe7-4f61-8daa-a6a2e6947af5	0
1114	d7c2b906-dbe7-4f61-8daa-a6a2e6947af5	0
1115	eca9d95e-42fc-46a9-8e3e-b5f05dc22757	0
1116	520b4711-aaca-4c12-9207-ba7018559adc	0
1117	eca9d95e-42fc-46a9-8e3e-b5f05dc22757	0
1118	eca9d95e-42fc-46a9-8e3e-b5f05dc22757	0
1119	eca9d95e-42fc-46a9-8e3e-b5f05dc22757	0
1120	eca9d95e-42fc-46a9-8e3e-b5f05dc22757	0
1121	17c3919a-4f29-49d0-acda-529bdee827ba	0
1122	3e798c73-6efa-41d7-95f6-b3419910480b	0
1123	eca9d95e-42fc-46a9-8e3e-b5f05dc22757	0
1124	7d31742b-5bbf-4e54-a14e-28726dc45da7	0
1125	7d31742b-5bbf-4e54-a14e-28726dc45da7	0
1126	53bc3f1a-6393-428e-96c1-538b2a9a9c3d	0
1127	4c7f5bbd-885d-453f-8cad-b249d425c45c	0
1128	96f382aa-9970-498f-bf78-766e8f3cd8a2	0
1129	4f758e3f-2b4f-44a6-87b3-c14de736006b	0
1130	4c7f5bbd-885d-453f-8cad-b249d425c45c	0
1131	4c7f5bbd-885d-453f-8cad-b249d425c45c	0
1132	4c7f5bbd-885d-453f-8cad-b249d425c45c	0
1133	4c7f5bbd-885d-453f-8cad-b249d425c45c	0
1134	520b4711-aaca-4c12-9207-ba7018559adc	0
1135	4c7f5bbd-885d-453f-8cad-b249d425c45c	0
1136	4c7f5bbd-885d-453f-8cad-b249d425c45c	0
1137	4c7f5bbd-885d-453f-8cad-b249d425c45c	0
1138	4c7f5bbd-885d-453f-8cad-b249d425c45c	0
1139	023933e5-17e6-400b-8f5b-a4f58b0a60a9	0
1140	1ad4807d-3857-448f-bcee-469e65d1daeb	0
1141	1ad4807d-3857-448f-bcee-469e65d1daeb	0
1142	53bc3f1a-6393-428e-96c1-538b2a9a9c3d	0
1143	53bc3f1a-6393-428e-96c1-538b2a9a9c3d	0
1144	1ad4807d-3857-448f-bcee-469e65d1daeb	0
1145	53bc3f1a-6393-428e-96c1-538b2a9a9c3d	0
1146	1ad4807d-3857-448f-bcee-469e65d1daeb	0
1147	1ad4807d-3857-448f-bcee-469e65d1daeb	0
1148	1ad4807d-3857-448f-bcee-469e65d1daeb	0
1149	bd7cc870-fd4b-4086-9862-e87c0ef26cc0	0
1150	023af724-9fac-41c1-bc69-29a9940849cf	0
1151	3d40e205-f576-4a53-b0a6-83f6410a767b	0
1152	4f758e3f-2b4f-44a6-87b3-c14de736006b	0
1153	023af724-9fac-41c1-bc69-29a9940849cf	0
1154	023af724-9fac-41c1-bc69-29a9940849cf	0
1155	62de0cd3-81d2-464a-a15c-67a768b6c8a6	0
1156	081b3080-68dd-4c30-9ffb-2e279b3d40c9	0
1157	984103b2-a07b-4e6b-9f80-69d245b7148f	0
1158	8154ad9b-3360-4e75-b928-d62193b8e273	0
1159	731809ac-4ede-48ff-9aaa-5ba49ca40cf9	0
1160	731809ac-4ede-48ff-9aaa-5ba49ca40cf9	0
1161	1237a3cd-36d1-46e1-b06c-5e6e875ed231	0
1162	1237a3cd-36d1-46e1-b06c-5e6e875ed231	0
1163	1237a3cd-36d1-46e1-b06c-5e6e875ed231	0
1164	1237a3cd-36d1-46e1-b06c-5e6e875ed231	0
1165	731809ac-4ede-48ff-9aaa-5ba49ca40cf9	0
1166	1237a3cd-36d1-46e1-b06c-5e6e875ed231	0
1167	4309ef16-3c50-450e-adde-4916291a5fce	0
1168	731809ac-4ede-48ff-9aaa-5ba49ca40cf9	0
1169	e83ab99c-a4bf-45e7-a75b-4c27e2ed9ec1	0
1170	660a2e9e-737d-4b8c-867c-4228551797d6	0
1171	660a2e9e-737d-4b8c-867c-4228551797d6	0
1172	660a2e9e-737d-4b8c-867c-4228551797d6	0
1173	743f2310-2f3f-4bce-82c2-435daa40d1a4	0
1174	d3c2c551-98ea-404b-94d4-fb99010b7f92	0
1175	731809ac-4ede-48ff-9aaa-5ba49ca40cf9	0
1176	731809ac-4ede-48ff-9aaa-5ba49ca40cf9	0
1177	731809ac-4ede-48ff-9aaa-5ba49ca40cf9	0
1178	731809ac-4ede-48ff-9aaa-5ba49ca40cf9	0
1179	731809ac-4ede-48ff-9aaa-5ba49ca40cf9	0
1180	731809ac-4ede-48ff-9aaa-5ba49ca40cf9	0
1181	731809ac-4ede-48ff-9aaa-5ba49ca40cf9	0
1182	731809ac-4ede-48ff-9aaa-5ba49ca40cf9	0
1183	731809ac-4ede-48ff-9aaa-5ba49ca40cf9	0
1184	731809ac-4ede-48ff-9aaa-5ba49ca40cf9	0
1185	731809ac-4ede-48ff-9aaa-5ba49ca40cf9	0
1186	731809ac-4ede-48ff-9aaa-5ba49ca40cf9	0
1187	731809ac-4ede-48ff-9aaa-5ba49ca40cf9	0
1188	731809ac-4ede-48ff-9aaa-5ba49ca40cf9	0
1189	731809ac-4ede-48ff-9aaa-5ba49ca40cf9	0
1190	731809ac-4ede-48ff-9aaa-5ba49ca40cf9	0
1191	731809ac-4ede-48ff-9aaa-5ba49ca40cf9	0
1192	731809ac-4ede-48ff-9aaa-5ba49ca40cf9	0
1193	731809ac-4ede-48ff-9aaa-5ba49ca40cf9	0
1194	731809ac-4ede-48ff-9aaa-5ba49ca40cf9	0
1195	731809ac-4ede-48ff-9aaa-5ba49ca40cf9	0
1196	731809ac-4ede-48ff-9aaa-5ba49ca40cf9	0
1197	9fde3432-52d5-440f-acf4-cdaddb845dc6	0
1198	a71feec1-e153-4c7f-80eb-35ff69be9f86	0
1199	3cb5da0e-dd00-40a1-844b-40668913b541	0
1200	2179bb35-42f3-4236-9605-c02ba647a9be	0
1201	ac09c321-2da4-46a7-a672-d758c77f5851	0
1202	8ec9e3bf-10ac-4719-97d7-a34d2088a6ee	0
1204	f2ee82cd-6f82-4a24-8909-cf10aae4456d	0
1205	f2f8c0ed-8c01-4980-8898-60a19c43dd1f	0
1206	b774b49c-ad0e-4511-9267-d86094bab9cc	0
1207	59ea60b0-285d-452f-a8cc-9a7c1826d629	0
1208	47c69402-8b3a-4ffc-bd9c-c30c97e4f0ab	0
1209	47c69402-8b3a-4ffc-bd9c-c30c97e4f0ab	0
1213	a377077c-8471-49ad-b99e-511a4a5176f2	0
1215	3cab15a3-454e-4559-bd5f-34b48e14bd80	0
1216	9b577ce4-8ef1-4e44-9070-0a24b4ac2181	0
1217	9b577ce4-8ef1-4e44-9070-0a24b4ac2181	0
1218	690fed60-955e-44a1-84ce-fc8e4816ec31	0
1219	a646de0e-ec1e-4d25-ad9f-08689c864c08	0
1220	a646de0e-ec1e-4d25-ad9f-08689c864c08	0
1221	e79ac574-0daf-45a9-adf3-6345e2479ff8	0
1222	64a32534-de31-4b9f-ade3-dc2fa2bd9120	0
1203	1250b70c-9cf5-442b-9f81-659da9dd456b	0
1210	78dd01c5-af92-474c-995b-779ca3da0eaf	0
1211	e38ae8a0-393a-4dfb-936e-dfbeaba20d61	0
1212	c0d6f062-5e24-4ea7-b30f-07a95912fd0b	0
1214	a1db216c-d104-43f3-81d7-647d2c1d4b84	0
1223	ee11b8ee-9e86-40fc-a0cf-490d3f83b139	0
1224	14fe770a-8497-4960-bfba-589e495888e2	0
1225	746aa5e6-bb3b-42d9-96bb-c65d54aa677f	0
1226	3cb5da0e-dd00-40a1-844b-40668913b541	0
1227	3cb5da0e-dd00-40a1-844b-40668913b541	0
1228	a71feec1-e153-4c7f-80eb-35ff69be9f86	0
1229	047bcbaa-d645-4d15-b16f-18ce12b84771	0
1230	6c3c700c-d9f7-4480-99bf-20d88ec08c14	0
1231	6c3c700c-d9f7-4480-99bf-20d88ec08c14	0
1232	6c3c700c-d9f7-4480-99bf-20d88ec08c14	0
1233	8a3dbf0e-758c-486a-a0ac-41942a43a16b	0
1234	02677075-e5cd-4c70-9d17-602957fb8e60	0
1235	983cb70e-91e0-4381-add2-19630d582c57	0
1236	d0e1c3ab-19b3-434e-b024-f8e1383936cc	0
1237	d0e1c3ab-19b3-434e-b024-f8e1383936cc	0
1238	d0e1c3ab-19b3-434e-b024-f8e1383936cc	0
1239	33991c84-94a4-4105-a649-ba5877e0f768	0
1240	9b577ce4-8ef1-4e44-9070-0a24b4ac2181	0
1241	5c605edf-5ef2-41eb-aabe-d3bb2c91d284	0
1242	5c605edf-5ef2-41eb-aabe-d3bb2c91d284	0
1243	b4704bfb-0888-4ad4-ae13-2d1290a354ed	0
1244	2cff532f-b04a-441f-affc-bdaa560da17c	0
1245	b4704bfb-0888-4ad4-ae13-2d1290a354ed	0
1246	2cff532f-b04a-441f-affc-bdaa560da17c	0
1247	a7dc99a1-dc8f-4dd6-b7e1-deb77cf84d62	0
1248	d0194123-0cc3-4bba-87e8-2eb5537c8695	0
1249	d0194123-0cc3-4bba-87e8-2eb5537c8695	0
1250	d0194123-0cc3-4bba-87e8-2eb5537c8695	0
1251	d0194123-0cc3-4bba-87e8-2eb5537c8695	0
1252	015225cd-5ea4-4a14-9096-e26434c7300d	0
1253	526e989b-4007-4169-95d4-d2a007a20535	0
1254	56ec4def-346e-4406-b95f-d3f5d3e8e5a2	0
1255	9b9b88d0-077b-478a-bf10-12103555f007	0
1256	8a3dbf0e-758c-486a-a0ac-41942a43a16b	0
1257	8a3dbf0e-758c-486a-a0ac-41942a43a16b	0
1258	ee9e0856-196b-4c01-ac38-acf136e50e9b	0
1259	ee9e0856-196b-4c01-ac38-acf136e50e9b	0
1260	ee9e0856-196b-4c01-ac38-acf136e50e9b	0
1261	cddfa7e4-7cab-4397-9a20-5ea59a805857	0
1262	9e2762d6-2d7a-4bab-9a34-3623c67b7e96	0
1263	f4d31cce-7119-41d9-a42c-6cd9561b8bda	0
1264	c709d6e6-4118-4530-bb9d-ce39ea69ab76	0
1265	331cced0-4d1b-4795-83b6-3d9ae9bca4e0	0
1266	331cced0-4d1b-4795-83b6-3d9ae9bca4e0	0
1267	331cced0-4d1b-4795-83b6-3d9ae9bca4e0	0
1268	331cced0-4d1b-4795-83b6-3d9ae9bca4e0	0
1269	331cced0-4d1b-4795-83b6-3d9ae9bca4e0	0
1270	2453da16-3906-4c8d-9bec-782a65a3383c	0
1271	d8b8cda5-8498-4177-8818-bf6c450e5635	0
1272	f259565a-01b0-4684-ab99-63bec72f479c	0
1273	013fe13b-b6f0-465b-bf7c-e27ed9ca37d5	0
1274	d40070b6-007f-4264-a0fd-f1e1e7921d32	0
1275	f2fedfbc-999a-4887-a0f6-07e24f55e5e1	0
1276	f075990f-fc1b-4dba-8c16-b17bf88a9b20	0
1277	3d930c76-3848-4a72-a26c-baf4c1f3c653	0
1278	3d930c76-3848-4a72-a26c-baf4c1f3c653	0
1279	2e455d2c-3df5-47f5-8bcd-e3e0a0915a9b	0
1280	3d930c76-3848-4a72-a26c-baf4c1f3c653	0
1281	f15a38da-46ec-438c-a92a-47c611383a44	0
1282	0b237357-fe22-4bf8-a0f3-942697535af4	0
1283	303cd1e0-500e-433d-80ed-67f333ccaff4	0
1284	fc0a0d31-efb0-418f-b55a-03611417f495	0
1285	ee73c642-3660-4d95-9c73-34d9c292d7a7	0
1286	a3b5ea5d-0c43-45fe-b9be-55feeae194df	0
1287	1840ea86-bf4e-48ff-969a-326a11ebcbc5	0
1288	a70f3a0d-4490-494e-a30d-0918e5288d65	0
1289	9e2762d6-2d7a-4bab-9a34-3623c67b7e96	0
1290	bf767329-5452-4169-9722-27a847bbe7a4	0
1291	bc498dc8-7622-45aa-a6da-6bd415f34d66	0
1292	313c7f88-44fe-46b9-b2b8-8f009f30b380	0
1293	592c0d9b-c7cb-4a0b-bf02-17d120c50dd1	0
1294	592c0d9b-c7cb-4a0b-bf02-17d120c50dd1	0
1295	5499d065-66b5-4f3f-8898-eb88a64950b2	0
1296	86d0a790-e271-48d9-9fb5-84b0293c6b8a	0
1297	7b86a707-2cb1-43f2-91af-71f659536883	0
1298	5c605edf-5ef2-41eb-aabe-d3bb2c91d284	0
1299	5c605edf-5ef2-41eb-aabe-d3bb2c91d284	0
1300	07d0319f-d39f-4d0e-a23e-d707374b47d1	0
1301	0514715b-b895-4365-9ad7-9c2c2b8d6686	0
1302	6570c3e6-9eaa-4e29-813d-739e59cd5cf7	0
1303	231ad302-8c43-4088-b7e3-14da24d38570	0
1304	783182e5-f1cb-4cff-8e8e-f7432e0eb420	0
1305	783182e5-f1cb-4cff-8e8e-f7432e0eb420	0
1306	783182e5-f1cb-4cff-8e8e-f7432e0eb420	0
1307	783182e5-f1cb-4cff-8e8e-f7432e0eb420	0
1308	783182e5-f1cb-4cff-8e8e-f7432e0eb420	0
1309	783182e5-f1cb-4cff-8e8e-f7432e0eb420	0
1310	783182e5-f1cb-4cff-8e8e-f7432e0eb420	0
1311	783182e5-f1cb-4cff-8e8e-f7432e0eb420	0
1312	db56690c-3b6f-40c4-9975-f67c7d375d7f	0
1313	db56690c-3b6f-40c4-9975-f67c7d375d7f	0
1314	f8246ab3-ca81-4fac-b09f-5cdf7b208d43	0
1315	5c605edf-5ef2-41eb-aabe-d3bb2c91d284	0
1316	06aff2bc-35a1-4253-bed6-52d3e850ae1e	0
1317	84f22f56-fb55-4fa9-8b3e-2a3d3d1eaab5	0
1318	84f22f56-fb55-4fa9-8b3e-2a3d3d1eaab5	0
1319	84f22f56-fb55-4fa9-8b3e-2a3d3d1eaab5	0
1320	84f22f56-fb55-4fa9-8b3e-2a3d3d1eaab5	0
1321	79463282-f445-4556-90bf-4d38f8b72cc2	0
1322	d1d8f5b1-ab14-40d9-918c-1a0732c35d9b	0
1323	d1d8f5b1-ab14-40d9-918c-1a0732c35d9b	0
1324	b73fc0ca-1d5c-4d03-9995-d0344e64d7db	0
1325	c79de411-f8d6-4ef2-b2a0-07137eced7b2	0
1326	391e07c8-382b-4804-9738-2bd8282d988e	0
1327	801141e4-7062-4d58-9208-64ed7a8574bf	0
1328	ad5c9eb7-3fac-45ac-925f-46c349d6f1dd	0
1329	ad5c9eb7-3fac-45ac-925f-46c349d6f1dd	0
1330	ad5c9eb7-3fac-45ac-925f-46c349d6f1dd	0
1331	ad5c9eb7-3fac-45ac-925f-46c349d6f1dd	0
1332	22efe764-fd90-4b1f-8afe-fc0a4f3b76ab	0
1333	da564e42-0813-49a4-95c4-e7614ea24ad5	0
1334	f04dbef3-ffb7-4c28-bca5-ac50297dc22d	0
1335	f04dbef3-ffb7-4c28-bca5-ac50297dc22d	0
1336	0d5c01c4-ef40-4f29-aed2-d5ecd9324c7b	0
1337	0d5c01c4-ef40-4f29-aed2-d5ecd9324c7b	0
1338	114bb076-e0a2-44c1-a137-b592f992772a	0
1339	114bb076-e0a2-44c1-a137-b592f992772a	0
1340	da564e42-0813-49a4-95c4-e7614ea24ad5	0
1341	da564e42-0813-49a4-95c4-e7614ea24ad5	0
1342	f60a20d6-ab3f-4da1-890b-1c0a52fb7da5	0
1343	f60a20d6-ab3f-4da1-890b-1c0a52fb7da5	0
1344	c3568c60-f3b4-4fbe-a754-48939b770a40	0
1345	c3568c60-f3b4-4fbe-a754-48939b770a40	0
1346	9a64fdd6-26cc-4f2d-8230-a4dcbe58ffa5	0
1347	b9394934-ddd3-48a6-89e7-a232a1bbb601	0
1348	93ec61f9-f984-4205-bb41-1ada7abad643	0
1349	f2e0465e-099d-4d31-8664-8b0afba01bb9	0
1350	90b8b5c4-a1fc-4796-9d20-c358f2b9183d	0
1351	be39d56e-5191-4eb3-9a00-d41ce9d8a3b1	0
1352	1a13f493-a03c-4275-8f01-9b232cf2ffc2	0
1353	1a13f493-a03c-4275-8f01-9b232cf2ffc2	0
1354	5762fd2f-434c-4051-98fd-1bfa6b0629b4	0
1355	5762fd2f-434c-4051-98fd-1bfa6b0629b4	0
1356	5762fd2f-434c-4051-98fd-1bfa6b0629b4	0
1357	50de1430-1adb-4d65-8ad0-56839f4eabfe	0
1358	50de1430-1adb-4d65-8ad0-56839f4eabfe	0
1359	50de1430-1adb-4d65-8ad0-56839f4eabfe	0
1360	50de1430-1adb-4d65-8ad0-56839f4eabfe	0
1361	50de1430-1adb-4d65-8ad0-56839f4eabfe	0
1362	50de1430-1adb-4d65-8ad0-56839f4eabfe	0
1363	50de1430-1adb-4d65-8ad0-56839f4eabfe	0
1364	50de1430-1adb-4d65-8ad0-56839f4eabfe	0
1365	50de1430-1adb-4d65-8ad0-56839f4eabfe	0
1366	50de1430-1adb-4d65-8ad0-56839f4eabfe	0
1367	50de1430-1adb-4d65-8ad0-56839f4eabfe	0
1368	50de1430-1adb-4d65-8ad0-56839f4eabfe	0
1369	50de1430-1adb-4d65-8ad0-56839f4eabfe	0
1370	50de1430-1adb-4d65-8ad0-56839f4eabfe	0
1371	50de1430-1adb-4d65-8ad0-56839f4eabfe	0
1372	50de1430-1adb-4d65-8ad0-56839f4eabfe	0
1373	50de1430-1adb-4d65-8ad0-56839f4eabfe	0
1374	50de1430-1adb-4d65-8ad0-56839f4eabfe	0
1375	50de1430-1adb-4d65-8ad0-56839f4eabfe	0
1376	50de1430-1adb-4d65-8ad0-56839f4eabfe	0
1377	50de1430-1adb-4d65-8ad0-56839f4eabfe	0
1378	50de1430-1adb-4d65-8ad0-56839f4eabfe	0
1379	50de1430-1adb-4d65-8ad0-56839f4eabfe	0
1380	50de1430-1adb-4d65-8ad0-56839f4eabfe	0
1381	50de1430-1adb-4d65-8ad0-56839f4eabfe	0
1382	50de1430-1adb-4d65-8ad0-56839f4eabfe	0
1383	50de1430-1adb-4d65-8ad0-56839f4eabfe	0
1384	50de1430-1adb-4d65-8ad0-56839f4eabfe	0
1385	1095c4b0-ed79-4b6d-b4cb-134fbe78e31c	0
1386	09edf1d4-b564-4fd5-a7ff-0c339ef61925	0
1387	09edf1d4-b564-4fd5-a7ff-0c339ef61925	0
1388	09edf1d4-b564-4fd5-a7ff-0c339ef61925	0
1389	09edf1d4-b564-4fd5-a7ff-0c339ef61925	0
1390	09edf1d4-b564-4fd5-a7ff-0c339ef61925	0
1391	5ad5db05-db25-4e0c-9d41-fc873ddba77f	0
1392	5ad5db05-db25-4e0c-9d41-fc873ddba77f	0
1393	9a64fdd6-26cc-4f2d-8230-a4dcbe58ffa5	0
1394	f2fedfbc-999a-4887-a0f6-07e24f55e5e1	0
1395	f2fedfbc-999a-4887-a0f6-07e24f55e5e1	0
1396	f2fedfbc-999a-4887-a0f6-07e24f55e5e1	0
1397	19970eec-622e-4dec-840e-7e7d52385b52	0
1398	35af6df1-8f45-4d6d-8b17-d324235c2827	0
1399	35af6df1-8f45-4d6d-8b17-d324235c2827	0
1400	35af6df1-8f45-4d6d-8b17-d324235c2827	0
1401	09edf1d4-b564-4fd5-a7ff-0c339ef61925	0
1402	09edf1d4-b564-4fd5-a7ff-0c339ef61925	0
1403	eb97ffdb-7fe4-4bcf-be37-3e0d8e19e0f2	0
1404	50de1430-1adb-4d65-8ad0-56839f4eabfe	0
1405	50de1430-1adb-4d65-8ad0-56839f4eabfe	0
1406	50de1430-1adb-4d65-8ad0-56839f4eabfe	0
1407	50de1430-1adb-4d65-8ad0-56839f4eabfe	0
1408	50de1430-1adb-4d65-8ad0-56839f4eabfe	0
1409	50de1430-1adb-4d65-8ad0-56839f4eabfe	0
1410	50de1430-1adb-4d65-8ad0-56839f4eabfe	0
1411	d663cb57-edb2-4db1-8d9f-eea3b1185d01	0
1412	d663cb57-edb2-4db1-8d9f-eea3b1185d01	0
1413	8a88ac26-21fc-429b-aba3-83111003dcaf	0
1414	8a88ac26-21fc-429b-aba3-83111003dcaf	0
1415	8a88ac26-21fc-429b-aba3-83111003dcaf	0
1416	8a88ac26-21fc-429b-aba3-83111003dcaf	0
1417	8a88ac26-21fc-429b-aba3-83111003dcaf	0
1418	d0d46725-7a57-4588-9c9e-761da8cfe010	0
1419	d0d46725-7a57-4588-9c9e-761da8cfe010	0
1420	09edf1d4-b564-4fd5-a7ff-0c339ef61925	0
1421	d0d46725-7a57-4588-9c9e-761da8cfe010	0
1422	50de1430-1adb-4d65-8ad0-56839f4eabfe	0
1423	50de1430-1adb-4d65-8ad0-56839f4eabfe	0
1424	50de1430-1adb-4d65-8ad0-56839f4eabfe	0
1425	50de1430-1adb-4d65-8ad0-56839f4eabfe	0
1426	50de1430-1adb-4d65-8ad0-56839f4eabfe	0
1427	50de1430-1adb-4d65-8ad0-56839f4eabfe	0
1428	50de1430-1adb-4d65-8ad0-56839f4eabfe	0
1429	50de1430-1adb-4d65-8ad0-56839f4eabfe	0
1430	50de1430-1adb-4d65-8ad0-56839f4eabfe	0
1431	50de1430-1adb-4d65-8ad0-56839f4eabfe	0
1432	fd2c00e1-ffd2-4a1e-a46a-b34a4e4f4553	0
1433	50de1430-1adb-4d65-8ad0-56839f4eabfe	0
1434	50de1430-1adb-4d65-8ad0-56839f4eabfe	0
1435	50de1430-1adb-4d65-8ad0-56839f4eabfe	0
1436	50de1430-1adb-4d65-8ad0-56839f4eabfe	0
1437	50de1430-1adb-4d65-8ad0-56839f4eabfe	0
1438	ccc6c1ba-9b36-4e11-a0f0-4cdda7afcd42	0
1439	769a4107-e2e8-4536-92dc-bf478b1c3613	0
1440	f82bce3a-b25e-410d-9d9b-a1091ba3319a	0
1441	21ae2ae9-e2fb-4879-ae91-98cff3821283	0
1442	21ae2ae9-e2fb-4879-ae91-98cff3821283	0
1443	50de1430-1adb-4d65-8ad0-56839f4eabfe	0
1444	50de1430-1adb-4d65-8ad0-56839f4eabfe	0
1445	50de1430-1adb-4d65-8ad0-56839f4eabfe	0
1446	50de1430-1adb-4d65-8ad0-56839f4eabfe	0
1447	50de1430-1adb-4d65-8ad0-56839f4eabfe	0
1448	50de1430-1adb-4d65-8ad0-56839f4eabfe	0
1449	50de1430-1adb-4d65-8ad0-56839f4eabfe	0
1450	50de1430-1adb-4d65-8ad0-56839f4eabfe	0
1451	50de1430-1adb-4d65-8ad0-56839f4eabfe	0
1452	50de1430-1adb-4d65-8ad0-56839f4eabfe	0
1453	9b577ce4-8ef1-4e44-9070-0a24b4ac2181	0
1454	4e2e18cf-b021-4977-881f-de426e762d62	0
1455	f2fedfbc-999a-4887-a0f6-07e24f55e5e1	0
1456	50de1430-1adb-4d65-8ad0-56839f4eabfe	0
1457	50de1430-1adb-4d65-8ad0-56839f4eabfe	0
1458	50de1430-1adb-4d65-8ad0-56839f4eabfe	0
1459	50de1430-1adb-4d65-8ad0-56839f4eabfe	0
1460	50de1430-1adb-4d65-8ad0-56839f4eabfe	0
1461	50de1430-1adb-4d65-8ad0-56839f4eabfe	0
1462	50de1430-1adb-4d65-8ad0-56839f4eabfe	0
1463	50de1430-1adb-4d65-8ad0-56839f4eabfe	0
1464	50de1430-1adb-4d65-8ad0-56839f4eabfe	0
1465	50de1430-1adb-4d65-8ad0-56839f4eabfe	0
1466	50de1430-1adb-4d65-8ad0-56839f4eabfe	0
1467	c51a1901-47a1-4616-bb43-c6f9fc4997da	0
1468	c51a1901-47a1-4616-bb43-c6f9fc4997da	0
1469	50de1430-1adb-4d65-8ad0-56839f4eabfe	0
1470	50de1430-1adb-4d65-8ad0-56839f4eabfe	0
1471	50de1430-1adb-4d65-8ad0-56839f4eabfe	0
1472	50de1430-1adb-4d65-8ad0-56839f4eabfe	0
1473	50de1430-1adb-4d65-8ad0-56839f4eabfe	0
1474	50de1430-1adb-4d65-8ad0-56839f4eabfe	0
1475	59ea60b0-285d-452f-a8cc-9a7c1826d629	0
1476	50de1430-1adb-4d65-8ad0-56839f4eabfe	0
1477	50de1430-1adb-4d65-8ad0-56839f4eabfe	0
1478	50de1430-1adb-4d65-8ad0-56839f4eabfe	0
1479	50de1430-1adb-4d65-8ad0-56839f4eabfe	0
1480	e795d35c-cdda-48c4-8e78-c770799cbff7	0
1481	f60a20d6-ab3f-4da1-890b-1c0a52fb7da5	0
1482	91ca7d91-8d28-4dcd-bdcb-230f16750b73	0
1483	d94cfb27-5969-4d7f-bf57-3f6db4a18021	0
1484	312fd0f1-b2e8-43fb-a9c5-a8e8ab765937	0
1485	801141e4-7062-4d58-9208-64ed7a8574bf	0
1486	801141e4-7062-4d58-9208-64ed7a8574bf	0
1487	f60a20d6-ab3f-4da1-890b-1c0a52fb7da5	0
1488	f60a20d6-ab3f-4da1-890b-1c0a52fb7da5	0
1489	13a9eb62-8928-44ec-994a-d7c02f609d06	0
1490	13a9eb62-8928-44ec-994a-d7c02f609d06	0
1491	13a9eb62-8928-44ec-994a-d7c02f609d06	0
1492	13a9eb62-8928-44ec-994a-d7c02f609d06	0
1493	13a9eb62-8928-44ec-994a-d7c02f609d06	0
1494	13a9eb62-8928-44ec-994a-d7c02f609d06	0
1495	92fadff3-3a04-46fc-bb57-3118393c9c74	0
1496	a8e0c71d-f63b-410a-8494-41ae0eb1af56	0
1497	92fadff3-3a04-46fc-bb57-3118393c9c74	0
1498	92fadff3-3a04-46fc-bb57-3118393c9c74	0
1499	32f24b80-1278-4191-8ce3-42b1382fe330	0
1500	b0f03074-278b-4bd1-92e3-18dd00a712dd	0
1501	0a753a43-1e8a-4095-8120-d01021bc9b26	0
1502	2d9ceb1e-6055-4884-aad5-6de5a7549967	0
1503	2d9ceb1e-6055-4884-aad5-6de5a7549967	0
1504	05451945-b921-45f5-b0a4-79f1cee6276b	0
1505	d7693e70-db79-4049-80d5-6fd360683ed7	0
1506	d7693e70-db79-4049-80d5-6fd360683ed7	0
1507	2c574645-1036-4dba-a000-41a52dda1894	0
1508	48aa00fd-4208-40c7-ad47-92120eefaf06	0
1509	094c3638-6955-4aff-ab87-9212f3a21c3e	0
1510	05451945-b921-45f5-b0a4-79f1cee6276b	0
1511	dcf1c03a-67bb-4430-95ab-997380858c99	0
1512	fca20a6f-a90b-42ab-8683-1dc562c86003	0
1513	dcda9e7b-42b5-4d39-b59c-9fe5a1660eac	0
1514	1c123e1a-fe4f-4d3f-8295-1ffb4dd69b29	0
1515	1c123e1a-fe4f-4d3f-8295-1ffb4dd69b29	0
1516	0d5c01c4-ef40-4f29-aed2-d5ecd9324c7b	0
1517	0d5c01c4-ef40-4f29-aed2-d5ecd9324c7b	0
1518	345bb5a9-fe0c-4051-b8c5-0e3e981c43a5	0
1519	345bb5a9-fe0c-4051-b8c5-0e3e981c43a5	0
1520	345bb5a9-fe0c-4051-b8c5-0e3e981c43a5	0
1521	b818fdcb-72fe-4344-9b13-11def871bcb0	0
1522	b818fdcb-72fe-4344-9b13-11def871bcb0	0
1523	b818fdcb-72fe-4344-9b13-11def871bcb0	0
1524	345bb5a9-fe0c-4051-b8c5-0e3e981c43a5	0
1525	345bb5a9-fe0c-4051-b8c5-0e3e981c43a5	0
1526	345bb5a9-fe0c-4051-b8c5-0e3e981c43a5	0
1527	53d7bb5a-61e5-4afa-85d9-7f919e8d891c	0
1528	b818fdcb-72fe-4344-9b13-11def871bcb0	0
1529	b818fdcb-72fe-4344-9b13-11def871bcb0	0
1530	b818fdcb-72fe-4344-9b13-11def871bcb0	0
1531	b818fdcb-72fe-4344-9b13-11def871bcb0	0
1532	18352577-8fff-46de-b616-e92baea58781	0
1533	5407e972-280d-4c75-9968-3ad0c3a32c73	0
1534	149308ba-6f9c-4450-a56e-bd9a6bd64796	0
1535	55624367-e10b-4711-b7ff-4ff4cf579058	0
1536	70a50bbe-7145-4cd7-b1a5-d90f191d19fc	0
1537	ead26e94-1083-42fd-be94-caf9cb4d12d0	0
1538	96b6f55f-58e7-4e9e-af2f-29b8d77fe9ee	0
1539	042fafb6-d338-4988-b4fd-cd6497385733	0
1540	15756bfa-12e8-474f-bb33-e21374d76c71	0
1545	5df79fa7-0ada-412b-aa8b-60a3f9f4b58d	0
1546	c2087f2a-1049-4e59-a427-a23e165fdad9	0
1547	2382de73-bf6c-4eef-a418-d1bcecd4f118	0
1548	fd449160-dbee-4bac-a877-cb29d44bb619	0
1549	5e532904-00fe-421f-b68d-e21e5c131492	0
1551	4b39bd3a-2895-4e32-82ac-1409bd62039b	0
1561	00d8811d-fafa-4f23-b43c-baf3a279e4aa	0
1562	cd175425-833c-4386-bac0-e800a96a2367	0
1563	8ac6b195-ee3b-4899-a5ff-082644ea23d9	0
1567	4b39bd3a-2895-4e32-82ac-1409bd62039b	0
1570	9154791a-5edc-421e-98f9-53ad4cb75eec	0
1573	2d0d89af-8414-4d50-831e-27bf8505cad8	0
1576	07cc31cf-c629-470b-8b20-cb9dd83487f3	0
1580	880cc88b-8456-49da-b0d9-c2b50e9ec707	0
1581	8d1b8935-0a64-4e45-a259-056f3440ffb1	0
1582	5e532904-00fe-421f-b68d-e21e5c131492	0
1584	2af35d25-8201-4220-a1ad-2fe873f01818	0
1585	3a76ba29-6abc-41e2-8707-33659f4a47b6	0
1588	8d1b8935-0a64-4e45-a259-056f3440ffb1	0
1589	2b7b2bc2-8f79-4dfe-9db7-5573536f4ca3	0
1590	768aa5c2-e11b-4e80-9aba-593ff0200c69	0
1591	2b7b2bc2-8f79-4dfe-9db7-5573536f4ca3	0
1598	ead26e94-1083-42fd-be94-caf9cb4d12d0	0
1541	3eac0cb0-6aed-4e28-be89-efb061c6e0db	0
1542	ead26e94-1083-42fd-be94-caf9cb4d12d0	0
1543	1985e164-166b-4054-bcae-3417f17f9562	0
1544	15e532c6-2abe-46e8-854f-b081f2a5217b	0
1550	dd73f8b1-2de2-4eb1-a629-f886cad5ecb8	0
1552	b04c93bc-8f42-4086-9b5e-3181311097ce	0
1553	3de2a877-c0b5-432a-8a1a-de2b22a2d821	0
1554	5df79fa7-0ada-412b-aa8b-60a3f9f4b58d	0
1555	5fcc64c2-bf83-492e-8339-3bb6a9dc41d4	0
1556	94c7f185-5f68-4ef8-b9ae-af381adf5312	0
1557	4f5a1029-f8cc-4e53-b70a-f740697a47e6	0
1558	d0b3388b-eb25-49e2-aa62-7486368a1286	0
1559	07935509-bd90-4e95-9653-8daab58f41ce	0
1560	44292713-a564-4152-8eed-a25ad1e11a59	0
1564	bf2e835e-c994-4242-b7d2-3398f2a604b6	0
1565	d437d72d-4299-422b-876c-eacf206f2cf1	0
1566	662cfa3f-ad47-4969-a333-b546850f97a3	0
1568	2382de73-bf6c-4eef-a418-d1bcecd4f118	0
1569	6c815776-ba7f-4b84-a1ce-ff2c18c4fd82	0
1571	09b27b8d-03ae-4792-a7fc-20365dd4b3e2	0
1572	f813ad60-2515-410f-944c-481c14fb9cbb	0
1574	ace6fd61-3cfd-4f63-ad82-ddacc4c5eb41	0
1575	5e532904-00fe-421f-b68d-e21e5c131492	0
1577	fc921f39-3c37-47ac-ac7e-a76ea85eb57d	0
1578	7ceddf32-822b-46bb-85bc-5757cf2cb247	0
1579	7527d45a-ea6e-4ae8-a473-b0e7f9c564b4	0
1583	c066b2b9-b632-4efb-8b4a-c834445d4564	0
1586	7ceddf32-822b-46bb-85bc-5757cf2cb247	0
1587	880cc88b-8456-49da-b0d9-c2b50e9ec707	0
1592	880cc88b-8456-49da-b0d9-c2b50e9ec707	0
1593	2b7b2bc2-8f79-4dfe-9db7-5573536f4ca3	0
1594	3eac0cb0-6aed-4e28-be89-efb061c6e0db	0
1595	0234e96a-f657-4195-8fb8-1161881d9daa	0
1596	94c7f185-5f68-4ef8-b9ae-af381adf5312	0
1597	4a2e978d-1b9d-4964-884c-760b0c74ed7c	0
1599	9a64fdd6-26cc-4f2d-8230-a4dcbe58ffa5	0
1600	4b39bd3a-2895-4e32-82ac-1409bd62039b	0
1601	880cc88b-8456-49da-b0d9-c2b50e9ec707	0
1602	36008713-09ec-41e7-8b9f-800cfd61c804	0
1603	67e2de8f-4348-4346-b8e1-776fc0d5051f	0
1604	862a614b-ceaf-4953-8821-5d8384200df0	0
1605	3a76ba29-6abc-41e2-8707-33659f4a47b6	0
1606	5df79fa7-0ada-412b-aa8b-60a3f9f4b58d	0
1607	5df79fa7-0ada-412b-aa8b-60a3f9f4b58d	0
1608	5df79fa7-0ada-412b-aa8b-60a3f9f4b58d	0
1609	74e94d10-84af-42af-8a33-9fcf465b304e	0
1610	60fb93c7-e332-41cd-9285-b36c78338c88	0
1611	60fb93c7-e332-41cd-9285-b36c78338c88	0
1612	72e4a2da-9299-4042-a215-587c5f6eaca8	0
1613	149308ba-6f9c-4450-a56e-bd9a6bd64796	0
1614	149308ba-6f9c-4450-a56e-bd9a6bd64796	0
1615	7ceddf32-822b-46bb-85bc-5757cf2cb247	0
1616	6a41c049-f6bd-4acd-80b4-2aee9eea9980	0
1617	7c76042a-1c8e-4f75-8c33-fb4a6de8ef0f	0
1618	6a41c049-f6bd-4acd-80b4-2aee9eea9980	0
1619	6a41c049-f6bd-4acd-80b4-2aee9eea9980	0
1620	3350087b-2acc-495f-bde5-64e60a8abe77	0
1621	3350087b-2acc-495f-bde5-64e60a8abe77	0
1622	1b6e89a2-8f38-4ee0-b1a0-5d48925a74b6	0
1623	801141e4-7062-4d58-9208-64ed7a8574bf	0
1624	a4760127-39d5-4f2b-a866-d02517e1f2bc	0
1625	a4760127-39d5-4f2b-a866-d02517e1f2bc	0
1626	801141e4-7062-4d58-9208-64ed7a8574bf	0
1627	905d8435-6e92-4ac4-9fc5-a3d23b6e7df4	0
1628	31a331c5-ed70-403d-9fb8-30c7ba34bef2	0
1629	31a331c5-ed70-403d-9fb8-30c7ba34bef2	0
1630	95b534ea-b47a-41d8-99a0-65856ad118d9	0
1631	95b534ea-b47a-41d8-99a0-65856ad118d9	0
1632	95b534ea-b47a-41d8-99a0-65856ad118d9	0
1633	f40d4808-b31a-4a0f-838b-04d205ebd31d	0
1634	f40d4808-b31a-4a0f-838b-04d205ebd31d	0
1635	9154791a-5edc-421e-98f9-53ad4cb75eec	0
1636	9154791a-5edc-421e-98f9-53ad4cb75eec	0
1637	50de1430-1adb-4d65-8ad0-56839f4eabfe	0
1638	50de1430-1adb-4d65-8ad0-56839f4eabfe	0
1639	50de1430-1adb-4d65-8ad0-56839f4eabfe	0
1640	50de1430-1adb-4d65-8ad0-56839f4eabfe	0
1641	50de1430-1adb-4d65-8ad0-56839f4eabfe	0
1642	50de1430-1adb-4d65-8ad0-56839f4eabfe	0
1643	50de1430-1adb-4d65-8ad0-56839f4eabfe	0
1644	50de1430-1adb-4d65-8ad0-56839f4eabfe	0
1645	e6085c5a-52fc-4757-823c-d7aeadf96e15	0
1646	18e892ff-e591-4670-8bb3-272a34689528	0
1647	50de1430-1adb-4d65-8ad0-56839f4eabfe	0
1648	be39d56e-5191-4eb3-9a00-d41ce9d8a3b1	0
1649	772a4ce1-e0c2-4425-a69d-91441691f640	0
1650	72e4a2da-9299-4042-a215-587c5f6eaca8	0
1651	19970eec-622e-4dec-840e-7e7d52385b52	0
1652	68569b45-98db-4af9-a828-6099ff611c3d	0
1653	da95a21a-2764-4fa5-8980-aa3fe79486ce	0
1654	50de1430-1adb-4d65-8ad0-56839f4eabfe	0
1655	b2ce17c3-7eec-4bab-a556-d3cf0bac9850	0
1656	de3ee6cb-efc0-4cf9-aafe-506d84d3f98c	0
1657	50de1430-1adb-4d65-8ad0-56839f4eabfe	0
1658	50de1430-1adb-4d65-8ad0-56839f4eabfe	0
1659	50de1430-1adb-4d65-8ad0-56839f4eabfe	0
1660	a56adc1f-a865-4aeb-9160-f68ebcf5f983	0
1661	a56adc1f-a865-4aeb-9160-f68ebcf5f983	0
1662	a56adc1f-a865-4aeb-9160-f68ebcf5f983	0
1663	a56adc1f-a865-4aeb-9160-f68ebcf5f983	0
1664	a56adc1f-a865-4aeb-9160-f68ebcf5f983	0
1665	50de1430-1adb-4d65-8ad0-56839f4eabfe	0
1666	50de1430-1adb-4d65-8ad0-56839f4eabfe	0
1667	50de1430-1adb-4d65-8ad0-56839f4eabfe	0
1668	50de1430-1adb-4d65-8ad0-56839f4eabfe	0
1669	50de1430-1adb-4d65-8ad0-56839f4eabfe	0
1670	50de1430-1adb-4d65-8ad0-56839f4eabfe	0
1671	50de1430-1adb-4d65-8ad0-56839f4eabfe	0
1675	50de1430-1adb-4d65-8ad0-56839f4eabfe	0
1672	50de1430-1adb-4d65-8ad0-56839f4eabfe	0
1673	50de1430-1adb-4d65-8ad0-56839f4eabfe	0
1674	50de1430-1adb-4d65-8ad0-56839f4eabfe	0
1676	f80c0f21-e545-4148-860e-bfe67c9bb3d5	0
1677	50de1430-1adb-4d65-8ad0-56839f4eabfe	0
1678	6c4b51d3-7aa3-496e-bdc9-1314d60266bf	0
1679	ace0d029-a836-4ca7-894e-d06afd2e57f7	0
1680	ace0d029-a836-4ca7-894e-d06afd2e57f7	0
1681	d646a50f-2737-4a0b-a0c5-6f4f3682b1e5	0
1682	c7d58b25-1318-4e75-a342-685dc478133f	0
1683	50de1430-1adb-4d65-8ad0-56839f4eabfe	0
1684	daba4578-4279-4e82-8e54-19439c6bfb97	0
1685	6c4b51d3-7aa3-496e-bdc9-1314d60266bf	0
1686	daba4578-4279-4e82-8e54-19439c6bfb97	0
1687	2e9e019d-ea06-4cf4-a32d-619251a37bc6	0
1688	221df4e2-0aaa-4358-8dab-58b0947e864d	0
1689	221df4e2-0aaa-4358-8dab-58b0947e864d	0
1690	221df4e2-0aaa-4358-8dab-58b0947e864d	0
1691	221df4e2-0aaa-4358-8dab-58b0947e864d	0
1692	221df4e2-0aaa-4358-8dab-58b0947e864d	0
1693	221df4e2-0aaa-4358-8dab-58b0947e864d	0
1694	07806e03-c8b0-4b8e-9875-8567c90c2237	0
1695	773b9e8c-5710-4ec0-84cd-af2bc5f9d2c9	0
1696	428e2ea6-d36f-4684-94f7-b3d2fee024d1	0
1697	b7792c60-bc7d-4adc-84e5-fae0227f84eb	0
1698	05e23972-603b-436f-be92-90ca15414adc	0
1699	a42152e3-68a1-40d1-90d7-d08c351d2c51	0
1700	b974fed3-0273-4281-9a6d-492b3d92aa9d	0
1701	ace0d029-a836-4ca7-894e-d06afd2e57f7	0
1702	6a71523e-3f37-481b-afbc-0f6c7cd626c3	0
1703	6a71523e-3f37-481b-afbc-0f6c7cd626c3	0
1704	6a71523e-3f37-481b-afbc-0f6c7cd626c3	0
1705	6a71523e-3f37-481b-afbc-0f6c7cd626c3	0
1706	6a71523e-3f37-481b-afbc-0f6c7cd626c3	0
1707	485cbc8f-a3af-4d58-b454-9659eeb6797a	0
1708	485cbc8f-a3af-4d58-b454-9659eeb6797a	0
1709	485cbc8f-a3af-4d58-b454-9659eeb6797a	0
1710	485cbc8f-a3af-4d58-b454-9659eeb6797a	0
1711	7d89623e-68ef-447f-bb6d-22a8f64177e7	0
1712	7d89623e-68ef-447f-bb6d-22a8f64177e7	0
1713	9b25207e-d090-405a-8613-1587033b2108	0
1714	9b25207e-d090-405a-8613-1587033b2108	0
1715	947e42e6-5bda-4222-bf33-5f3a23d2419b	0
1716	92fadff3-3a04-46fc-bb57-3118393c9c74	0
1717	6a71523e-3f37-481b-afbc-0f6c7cd626c3	0
1718	6a71523e-3f37-481b-afbc-0f6c7cd626c3	0
1719	6a71523e-3f37-481b-afbc-0f6c7cd626c3	0
1720	6a71523e-3f37-481b-afbc-0f6c7cd626c3	0
1721	6a71523e-3f37-481b-afbc-0f6c7cd626c3	0
1722	d271183d-df89-4546-bcad-63b659b4f0f0	0
1723	6a71523e-3f37-481b-afbc-0f6c7cd626c3	0
1724	e8ea2b0c-bfef-48c1-820e-2b560229d261	0
1725	e8ea2b0c-bfef-48c1-820e-2b560229d261	0
1726	e8ea2b0c-bfef-48c1-820e-2b560229d261	0
1727	e8ea2b0c-bfef-48c1-820e-2b560229d261	0
1728	e8ea2b0c-bfef-48c1-820e-2b560229d261	0
1729	e8ea2b0c-bfef-48c1-820e-2b560229d261	0
1730	e8ea2b0c-bfef-48c1-820e-2b560229d261	0
1731	e8ea2b0c-bfef-48c1-820e-2b560229d261	0
1732	28ae6180-0c80-4d32-a009-4e1c3e5f4d9a	0
1733	f1282f14-192e-4ecc-9c10-0e8351d43443	0
1734	8058a7fe-db5b-4e6f-a22b-77c25b726e4d	0
1735	f1282f14-192e-4ecc-9c10-0e8351d43443	0
1736	8c1c0e33-a591-4ac1-a92d-762d2988db5d	0
1737	f1282f14-192e-4ecc-9c10-0e8351d43443	0
1738	b38de90b-15ee-41b8-8d87-f21f371a8ce6	0
1739	4cd98caf-c2e9-454a-b4b9-af5c21b4460f	0
1740	f1282f14-192e-4ecc-9c10-0e8351d43443	0
1741	4cd98caf-c2e9-454a-b4b9-af5c21b4460f	0
1742	b2daaf08-4f8a-45bf-946c-407a20ef4cd3	0
1743	f1282f14-192e-4ecc-9c10-0e8351d43443	0
1744	c4f4e704-eb64-40d0-a883-d3f38f1f10de	0
1745	f1282f14-192e-4ecc-9c10-0e8351d43443	0
1746	4b4e81e0-78db-4e65-857d-905d65acd864	0
1747	e0e9f126-165c-4322-a2fb-3af27eab26e8	0
1748	c4f4e704-eb64-40d0-a883-d3f38f1f10de	0
1749	e0e9f126-165c-4322-a2fb-3af27eab26e8	0
1750	e0e9f126-165c-4322-a2fb-3af27eab26e8	0
1751	f8dab833-8c91-418f-adf2-e8722f8ade78	0
1752	f49cb707-4008-45f9-b8e0-7f4a60ec19e0	0
1753	e0e9f126-165c-4322-a2fb-3af27eab26e8	0
1754	57bd84ba-225d-4b1c-bf18-aa52b0be5630	0
1755	57bd84ba-225d-4b1c-bf18-aa52b0be5630	0
1756	03f6852e-1788-4d46-8577-784ca987053d	0
1757	434eb36f-e708-4a88-8391-2c7399d44225	0
1758	a055a6c3-9c4c-4a74-8ae8-5e3ae2049ae2	0
1759	72244b25-d55d-4696-a8c8-cadcc4307cdc	0
1760	d5131c56-778f-45cc-bfe0-a3fed218189c	0
1761	e1f833ee-b70e-4650-ad81-ece7704f6715	0
1762	080c41c6-9783-4905-8306-38ec718cfa7b	0
1763	1f336d19-d0af-41e7-8a37-b80279f54a67	0
1764	dbe7d178-1ad4-44ad-b2e8-20824ecc5196	0
1765	e2ccc5b1-3189-4c34-be0c-1274dd0c0285	0
1766	cbe87b55-1355-4225-ab5c-bdcc25cc7a03	0
1767	f2eae4e5-98b9-424b-a738-4f062158c547	0
1768	e7507786-b9a6-4280-8d88-443b898a9f48	0
1769	cb705465-86a1-45b5-a4d3-a576c7446d38	0
1770	e48cd767-535e-4f7d-bc32-ec6eb641dfd5	0
1771	6fe7998a-16b2-4d95-acf6-3c698341de0f	0
1772	df8d8131-8f07-40b5-af93-50e487b0ca0f	0
1773	d271183d-df89-4546-bcad-63b659b4f0f0	0
1774	23961eae-3a64-439d-8aa4-957e350d4350	0
1775	b557b604-8503-415b-be34-8c3db0ff1183	0
1776	f8dab833-8c91-418f-adf2-e8722f8ade78	0
1777	3cd36440-5753-4a09-bd17-cd074dc32072	0
1778	40d51333-29b0-4e47-8c74-d730182ba916	0
1779	cb705465-86a1-45b5-a4d3-a576c7446d38	0
1780	a8c94954-6b9b-42c8-8803-faad9da56b68	0
1781	6fe7998a-16b2-4d95-acf6-3c698341de0f	0
1782	6fe7998a-16b2-4d95-acf6-3c698341de0f	0
1784	b36d54a1-bfe2-4ef1-b208-c6c6f5557a60	0
1785	6499437f-a22d-43c6-92fc-d35a1da00937	0
1786	2bde05e2-0f45-4679-9ce9-ef4c3014d270	0
1791	cb705465-86a1-45b5-a4d3-a576c7446d38	0
1799	bafaec45-a90d-4561-b7ea-4d9a0bf78288	0
1811	451a8f29-8165-4d4b-8be7-1c4aec508115	0
1812	cc0ec101-5e9c-4deb-bac5-43af1c0853af	0
1813	e1f833ee-b70e-4650-ad81-ece7704f6715	0
1826	4480ad44-5dbe-4363-86aa-232caaa2c650	0
1837	0cb6604b-acc2-413f-843a-81d3986cd1ff	0
1783	804258d3-f21b-4304-89e4-2cf0a1399e9d	0
1789	a386ce1c-2213-4988-8190-2b90bc56e3f5	0
1790	69e77580-0edc-4dc1-a52a-faa3cf25f7e4	0
1798	69e77580-0edc-4dc1-a52a-faa3cf25f7e4	0
1800	804258d3-f21b-4304-89e4-2cf0a1399e9d	0
1801	6c4b51d3-7aa3-496e-bdc9-1314d60266bf	0
1802	451a8f29-8165-4d4b-8be7-1c4aec508115	0
1803	804258d3-f21b-4304-89e4-2cf0a1399e9d	0
1808	a386ce1c-2213-4988-8190-2b90bc56e3f5	0
1809	451a8f29-8165-4d4b-8be7-1c4aec508115	0
1820	65247fac-cf6a-4be9-9a6b-63bddb485a62	0
1821	f2eae4e5-98b9-424b-a738-4f062158c547	0
1822	b0e9323a-46fa-4f24-802a-f71a90306a76	0
1824	e48cd767-535e-4f7d-bc32-ec6eb641dfd5	0
1825	fe4ede8a-98be-4814-aa4e-8f58500ea1d2	0
1827	b9191be8-fb70-46a9-b1f9-b26ee36fd0fe	0
1829	b9191be8-fb70-46a9-b1f9-b26ee36fd0fe	0
1832	81ad584d-128f-4255-b245-ee6c611701a4	0
1833	81ad584d-128f-4255-b245-ee6c611701a4	0
1834	a77d807f-1213-402d-aae8-465cb7360060	0
1835	a77d807f-1213-402d-aae8-465cb7360060	0
1836	0cb6604b-acc2-413f-843a-81d3986cd1ff	0
1787	804258d3-f21b-4304-89e4-2cf0a1399e9d	0
1788	59732e2c-522c-4cfe-a280-297b898e8496	0
1792	1c110dc6-da29-438a-9efe-5ea9c29514e3	0
1793	4a7b861d-9117-47dd-813a-312dbf12ab09	0
1794	9d36e42d-1b88-450f-8785-9e8b88d9b785	0
1795	e48cd767-535e-4f7d-bc32-ec6eb641dfd5	0
1796	a00b09e7-5c95-4da1-bfec-53b57c82760f	0
1797	f46b5a58-4fb2-4c8e-8167-fea6f2b1b0b3	0
1804	6c4b51d3-7aa3-496e-bdc9-1314d60266bf	0
1805	3e9bca1d-d22f-4e84-be66-3ae233fd186a	0
1806	45e57284-4c1d-407e-ab08-43b003157abc	0
1807	b557b604-8503-415b-be34-8c3db0ff1183	0
1810	e8d7e55c-03e7-4262-b085-e7d1889ab548	0
1814	51b4b6e6-daeb-42ad-8f1b-95742a3826f9	0
1815	aba1a5bf-fd4a-4dc2-96f8-430131ae8790	0
1816	cc0ec101-5e9c-4deb-bac5-43af1c0853af	0
1817	b0e9323a-46fa-4f24-802a-f71a90306a76	0
1818	1f478754-1653-48bb-bb9a-2ca775d6792e	0
1819	1f478754-1653-48bb-bb9a-2ca775d6792e	0
1823	49f560b3-af08-40f4-84be-dd4a9e6892dc	0
1828	4480ad44-5dbe-4363-86aa-232caaa2c650	0
1830	b9191be8-fb70-46a9-b1f9-b26ee36fd0fe	0
1831	b9191be8-fb70-46a9-b1f9-b26ee36fd0fe	0
1838	71b66a4e-0aea-441b-8402-044f2a31e5f9	0
1839	a46116b3-d288-4dcb-a119-439077cf8399	0
1840	03db4c0b-459a-4543-9f33-e9ece98ba305	0
1841	03db4c0b-459a-4543-9f33-e9ece98ba305	0
1842	a46116b3-d288-4dcb-a119-439077cf8399	0
1843	a46116b3-d288-4dcb-a119-439077cf8399	0
1844	b5bc38f5-51da-49d5-88af-aa9e1a95dc2a	0
1845	b5bc38f5-51da-49d5-88af-aa9e1a95dc2a	0
1846	2598898b-407e-442a-94aa-ad2bcd9f26c5	0
1847	466d7463-e1d0-4cbe-9bd7-eae11126f49d	0
1848	9b3ec52b-8a23-483a-bfbb-a039dc6a5f8d	0
1849	7debb5a6-84d7-43b3-8aa0-04a85606eceb	0
1850	09b03d58-bd9d-4f49-88d9-0b4702492082	0
1851	6c96916d-cdec-410e-874c-4d3f2ebea453	0
1852	09b03d58-bd9d-4f49-88d9-0b4702492082	0
1853	6c96916d-cdec-410e-874c-4d3f2ebea453	0
1854	6c96916d-cdec-410e-874c-4d3f2ebea453	0
1855	5fcad01b-bcbe-4781-842b-a4625dc64fca	0
1856	5fcad01b-bcbe-4781-842b-a4625dc64fca	0
1857	8d26adcf-77eb-49cc-bf51-07eae4825c25	0
1858	804258d3-f21b-4304-89e4-2cf0a1399e9d	0
1859	46cd9860-4ad8-4501-8743-9451ff5ae3f2	0
1860	46cd9860-4ad8-4501-8743-9451ff5ae3f2	0
1861	8cf72515-dc08-4607-b609-39091f200ad5	0
1862	40a9fb40-d99f-48d5-879b-f9468904c95c	0
1863	4480ad44-5dbe-4363-86aa-232caaa2c650	0
1864	4480ad44-5dbe-4363-86aa-232caaa2c650	0
1865	4480ad44-5dbe-4363-86aa-232caaa2c650	0
1866	e580f547-b685-4894-9843-2b5296788965	0
1867	6a27b54b-dc07-4b65-b6bd-ac4268d5da0d	0
1868	6a27b54b-dc07-4b65-b6bd-ac4268d5da0d	0
1869	daba4578-4279-4e82-8e54-19439c6bfb97	0
1870	ddd8a7e5-6f81-4e62-baf5-da41787cafe3	0
1871	ddd8a7e5-6f81-4e62-baf5-da41787cafe3	0
1872	ddd8a7e5-6f81-4e62-baf5-da41787cafe3	0
1873	d4c8983e-f20a-426c-a138-d98085790772	0
1874	7debb5a6-84d7-43b3-8aa0-04a85606eceb	0
1875	6c4b51d3-7aa3-496e-bdc9-1314d60266bf	0
1876	48ffd913-2101-4bda-9990-4fcf51f0e408	0
1877	7e530142-06d3-4f04-bee0-2624a7c382fd	0
1878	7e530142-06d3-4f04-bee0-2624a7c382fd	0
1879	7e530142-06d3-4f04-bee0-2624a7c382fd	0
1880	15e532c6-2abe-46e8-854f-b081f2a5217b	0
1881	79b53da4-9fc4-469c-83ab-85e0b747bd82	0
1882	6c4b51d3-7aa3-496e-bdc9-1314d60266bf	0
1883	ff27d8f5-9ab3-4fc4-aeb9-c3af014b9e6a	0
1884	ff27d8f5-9ab3-4fc4-aeb9-c3af014b9e6a	0
1885	ff27d8f5-9ab3-4fc4-aeb9-c3af014b9e6a	0
1886	ff27d8f5-9ab3-4fc4-aeb9-c3af014b9e6a	0
1887	005e1236-087b-4812-b480-56417b54fbd0	0
1888	3a26b462-67b6-45b7-87e2-053c0a65cb34	0
1889	ccdc0a9d-e5e4-472f-bf77-c1b9fcf8115d	0
1890	ccdc0a9d-e5e4-472f-bf77-c1b9fcf8115d	0
1891	23961eae-3a64-439d-8aa4-957e350d4350	0
1892	df8d8131-8f07-40b5-af93-50e487b0ca0f	0
1893	d53a7a91-b294-4bd7-8248-9064a97691aa	0
1894	07806e03-c8b0-4b8e-9875-8567c90c2237	0
1895	d53a7a91-b294-4bd7-8248-9064a97691aa	0
1896	7debb5a6-84d7-43b3-8aa0-04a85606eceb	0
1897	7debb5a6-84d7-43b3-8aa0-04a85606eceb	0
1898	7debb5a6-84d7-43b3-8aa0-04a85606eceb	0
1899	fc15ce55-fea0-4cf4-b046-c4b5ecfb9775	0
1900	cd169efa-8c7c-4b5b-a3ff-c2a9b6f7dc4f	0
1901	6c001d96-6fa0-4198-95ca-1814f1b421d8	0
1902	6c001d96-6fa0-4198-95ca-1814f1b421d8	0
\.


--
-- TOC entry 3055 (class 0 OID 17155)
-- Dependencies: 216
-- Data for Name: Goods; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Goods" ("Id", "Title", "Description", "ImagePath", "Cost", "RealCost", "CreatedAt", "AdminId", "CategoryId") FROM stdin;
1	Роспись от JekaMIX	Роспись на стене вконтакте от JekaMIX	goods/f4a9a7cd-5b45-45e9-82ed-dc8ea5fd460c.png	10	10	2020-02-06 20:56:05.966191+03	1	1
2	Роспись от скалы	Роспись от скалыРоспись от скалыРоспись от скалыРоспись от скалыРоспись от скалыРоспись от скалы	goods/a2b1dfa4-426c-43d7-9f60-de34c658bf4c.png	1	1	2020-02-06 21:00:48.796036+03	1	1
3	Флай от души	Флай от душиФлай от души	goods/542cedb8-93b2-4f85-a802-e02af8474aca.png	11	11	2020-02-06 21:06:21.773748+03	1	1
\.


--
-- TOC entry 3063 (class 0 OID 17219)
-- Dependencies: 224
-- Data for Name: Likes; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Likes" ("Id", "LikedAt", "UserId", "SurveyId") FROM stdin;
1	0001-01-01 02:30:17+02:30:17	12	1
2	0001-01-01 02:30:17+02:30:17	23	1
3	0001-01-01 02:30:17+02:30:17	11	1
4	0001-01-01 02:30:17+02:30:17	27	1
5	0001-01-01 02:30:17+02:30:17	31	1
7	0001-01-01 02:30:17+02:30:17	14	1
8	0001-01-01 02:30:17+02:30:17	12	3
9	0001-01-01 02:30:17+02:30:17	16	6
10	0001-01-01 02:30:17+02:30:17	35	6
13	0001-01-01 02:30:17+02:30:17	19	6
14	0001-01-01 02:30:17+02:30:17	34	7
15	0001-01-01 02:30:17+02:30:17	12	7
16	0001-01-01 02:30:17+02:30:17	50	7
17	0001-01-01 02:30:17+02:30:17	46	7
18	0001-01-01 02:30:17+02:30:17	54	7
19	0001-01-01 02:30:17+02:30:17	51	7
20	0001-01-01 02:30:17+02:30:17	47	7
21	0001-01-01 02:30:17+02:30:17	42	7
22	0001-01-01 02:30:17+02:30:17	63	7
23	0001-01-01 02:30:17+02:30:17	60	7
24	0001-01-01 02:30:17+02:30:17	56	7
25	0001-01-01 02:30:17+02:30:17	69	7
26	0001-01-01 02:30:17+02:30:17	70	7
27	0001-01-01 02:30:17+02:30:17	72	7
28	0001-01-01 02:30:17+02:30:17	75	7
29	0001-01-01 02:30:17+02:30:17	76	7
30	0001-01-01 02:30:17+02:30:17	80	7
31	0001-01-01 02:30:17+02:30:17	81	7
32	0001-01-01 02:30:17+02:30:17	83	7
33	0001-01-01 02:30:17+02:30:17	86	7
34	0001-01-01 02:30:17+02:30:17	117	7
35	0001-01-01 02:30:17+02:30:17	98	7
36	0001-01-01 02:30:17+02:30:17	96	7
37	0001-01-01 02:30:17+02:30:17	121	7
38	0001-01-01 02:30:17+02:30:17	123	7
39	0001-01-01 02:30:17+02:30:17	118	7
40	0001-01-01 02:30:17+02:30:17	71	7
41	0001-01-01 02:30:17+02:30:17	131	7
42	0001-01-01 02:30:17+02:30:17	93	7
43	0001-01-01 02:30:17+02:30:17	129	7
45	0001-01-01 02:30:17+02:30:17	134	7
46	0001-01-01 02:30:17+02:30:17	105	7
47	0001-01-01 02:30:17+02:30:17	94	7
48	0001-01-01 02:30:17+02:30:17	138	7
49	0001-01-01 02:30:17+02:30:17	144	7
50	0001-01-01 02:30:17+02:30:17	139	7
51	0001-01-01 02:30:17+02:30:17	148	7
52	0001-01-01 02:30:17+02:30:17	155	7
53	0001-01-01 02:30:17+02:30:17	143	7
54	0001-01-01 02:30:17+02:30:17	114	7
55	0001-01-01 02:30:17+02:30:17	167	7
57	0001-01-01 02:30:17+02:30:17	168	7
58	0001-01-01 02:30:17+02:30:17	124	7
59	0001-01-01 02:30:17+02:30:17	164	7
60	0001-01-01 02:30:17+02:30:17	180	7
61	0001-01-01 02:30:17+02:30:17	178	7
62	0001-01-01 02:30:17+02:30:17	16	7
63	0001-01-01 02:30:17+02:30:17	169	7
64	0001-01-01 02:30:17+02:30:17	179	7
65	0001-01-01 02:30:17+02:30:17	185	7
66	0001-01-01 02:30:17+02:30:17	188	7
67	0001-01-01 02:30:17+02:30:17	193	7
68	0001-01-01 02:30:17+02:30:17	65	7
69	0001-01-01 02:30:17+02:30:17	195	7
70	0001-01-01 02:30:17+02:30:17	200	7
71	0001-01-01 02:30:17+02:30:17	211	7
72	0001-01-01 02:30:17+02:30:17	210	7
73	0001-01-01 02:30:17+02:30:17	212	7
74	0001-01-01 02:30:17+02:30:17	219	7
75	0001-01-01 02:30:17+02:30:17	224	7
76	0001-01-01 02:30:17+02:30:17	162	7
77	0001-01-01 02:30:17+02:30:17	235	7
78	0001-01-01 02:30:17+02:30:17	43	7
79	0001-01-01 02:30:17+02:30:17	232	7
80	0001-01-01 02:30:17+02:30:17	239	7
81	0001-01-01 02:30:17+02:30:17	238	7
82	0001-01-01 02:30:17+02:30:17	241	7
83	0001-01-01 02:30:17+02:30:17	246	7
84	0001-01-01 02:30:17+02:30:17	245	7
85	0001-01-01 02:30:17+02:30:17	247	7
86	0001-01-01 02:30:17+02:30:17	251	7
87	0001-01-01 02:30:17+02:30:17	253	7
88	0001-01-01 02:30:17+02:30:17	261	7
89	0001-01-01 02:30:17+02:30:17	231	7
90	0001-01-01 02:30:17+02:30:17	265	7
92	0001-01-01 02:30:17+02:30:17	275	7
93	0001-01-01 02:30:17+02:30:17	276	7
94	0001-01-01 02:30:17+02:30:17	190	7
95	0001-01-01 02:30:17+02:30:17	287	7
96	0001-01-01 02:30:17+02:30:17	308	7
97	0001-01-01 02:30:17+02:30:17	301	7
98	0001-01-01 02:30:17+02:30:17	300	7
99	0001-01-01 02:30:17+02:30:17	313	7
100	0001-01-01 02:30:17+02:30:17	299	7
101	0001-01-01 02:30:17+02:30:17	311	7
102	0001-01-01 02:30:17+02:30:17	291	7
103	0001-01-01 02:30:17+02:30:17	321	7
105	0001-01-01 02:30:17+02:30:17	307	7
106	0001-01-01 02:30:17+02:30:17	314	7
107	0001-01-01 02:30:17+02:30:17	331	7
108	0001-01-01 02:30:17+02:30:17	341	7
109	0001-01-01 02:30:17+02:30:17	283	7
110	0001-01-01 02:30:17+02:30:17	325	7
111	0001-01-01 02:30:17+02:30:17	323	7
112	0001-01-01 02:30:17+02:30:17	324	7
114	0001-01-01 02:30:17+02:30:17	338	7
115	0001-01-01 02:30:17+02:30:17	362	7
116	0001-01-01 02:30:17+02:30:17	287	8
117	0001-01-01 02:30:17+02:30:17	300	8
118	0001-01-01 02:30:17+02:30:17	12	8
119	0001-01-01 02:30:17+02:30:17	338	8
120	0001-01-01 02:30:17+02:30:17	46	8
121	0001-01-01 02:30:17+02:30:17	168	8
122	0001-01-01 02:30:17+02:30:17	368	7
123	0001-01-01 02:30:17+02:30:17	358	7
126	0001-01-01 02:30:17+02:30:17	364	8
127	0001-01-01 02:30:17+02:30:17	364	7
128	0001-01-01 02:30:17+02:30:17	354	7
129	0001-01-01 02:30:17+02:30:17	300	9
130	0001-01-01 02:30:17+02:30:17	364	9
131	0001-01-01 02:30:17+02:30:17	373	8
132	0001-01-01 02:30:17+02:30:17	301	8
133	0001-01-01 02:30:17+02:30:17	373	7
134	0001-01-01 02:30:17+02:30:17	165	7
135	0001-01-01 02:30:17+02:30:17	373	9
136	0001-01-01 02:30:17+02:30:17	301	9
137	0001-01-01 02:30:17+02:30:17	372	7
138	0001-01-01 02:30:17+02:30:17	379	8
139	0001-01-01 02:30:17+02:30:17	408	9
141	0001-01-01 02:30:17+02:30:17	401	7
142	0001-01-01 02:30:17+02:30:17	420	7
143	0001-01-01 02:30:17+02:30:17	345	9
144	0001-01-01 02:30:17+02:30:17	73	8
145	0001-01-01 02:30:17+02:30:17	367	8
146	0001-01-01 02:30:17+02:30:17	404	7
147	0001-01-01 02:30:17+02:30:17	367	7
148	0001-01-01 02:30:17+02:30:17	380	8
149	0001-01-01 02:30:17+02:30:17	148	9
150	0001-01-01 02:30:17+02:30:17	380	7
151	0001-01-01 02:30:17+02:30:17	75	9
152	0001-01-01 02:30:17+02:30:17	338	9
153	0001-01-01 02:30:17+02:30:17	419	8
154	0001-01-01 02:30:17+02:30:17	370	9
155	0001-01-01 02:30:17+02:30:17	358	8
156	0001-01-01 02:30:17+02:30:17	410	9
157	0001-01-01 02:30:17+02:30:17	49	7
158	0001-01-01 02:30:17+02:30:17	84	7
159	0001-01-01 02:30:17+02:30:17	431	7
160	0001-01-01 02:30:17+02:30:17	84	8
161	0001-01-01 02:30:17+02:30:17	415	7
162	0001-01-01 02:30:17+02:30:17	438	8
163	0001-01-01 02:30:17+02:30:17	431	8
164	0001-01-01 02:30:17+02:30:17	115	9
165	0001-01-01 02:30:17+02:30:17	115	8
166	0001-01-01 02:30:17+02:30:17	415	8
167	0001-01-01 02:30:17+02:30:17	115	7
168	0001-01-01 02:30:17+02:30:17	295	9
169	0001-01-01 02:30:17+02:30:17	299	8
177	0001-01-01 02:30:17+02:30:17	84	9
180	0001-01-01 02:30:17+02:30:17	325	9
182	0001-01-01 02:30:17+02:30:17	420	8
183	0001-01-01 02:30:17+02:30:17	463	7
185	0001-01-01 02:30:17+02:30:17	477	9
188	0001-01-01 02:30:17+02:30:17	312	7
194	0001-01-01 02:30:17+02:30:17	223	9
196	0001-01-01 02:30:17+02:30:17	242	7
197	0001-01-01 02:30:17+02:30:17	206	9
199	0001-01-01 02:30:17+02:30:17	501	7
200	0001-01-01 02:30:17+02:30:17	253	9
201	0001-01-01 02:30:17+02:30:17	497	7
204	0001-01-01 02:30:17+02:30:17	501	9
205	0001-01-01 02:30:17+02:30:17	506	7
208	0001-01-01 02:30:17+02:30:17	441	9
210	0001-01-01 02:30:17+02:30:17	524	7
211	0001-01-01 02:30:17+02:30:17	526	7
212	0001-01-01 02:30:17+02:30:17	527	7
170	0001-01-01 02:30:17+02:30:17	389	7
171	0001-01-01 02:30:17+02:30:17	223	7
173	0001-01-01 02:30:17+02:30:17	49	8
175	0001-01-01 02:30:17+02:30:17	305	7
176	0001-01-01 02:30:17+02:30:17	431	9
178	0001-01-01 02:30:17+02:30:17	49	9
186	0001-01-01 02:30:17+02:30:17	473	7
187	0001-01-01 02:30:17+02:30:17	473	9
189	0001-01-01 02:30:17+02:30:17	495	7
190	0001-01-01 02:30:17+02:30:17	486	7
207	0001-01-01 02:30:17+02:30:17	519	9
214	0001-01-01 02:30:17+02:30:17	379	9
215	0001-01-01 02:30:17+02:30:17	69	9
216	0001-01-01 02:30:17+02:30:17	527	9
217	0001-01-01 02:30:17+02:30:17	51	9
218	0001-01-01 02:30:17+02:30:17	70	9
219	0001-01-01 02:30:17+02:30:17	534	7
220	0001-01-01 02:30:17+02:30:17	178	9
172	0001-01-01 02:30:17+02:30:17	305	9
174	0001-01-01 02:30:17+02:30:17	358	9
179	0001-01-01 02:30:17+02:30:17	444	9
181	0001-01-01 02:30:17+02:30:17	420	9
184	0001-01-01 02:30:17+02:30:17	475	9
191	0001-01-01 02:30:17+02:30:17	486	9
192	0001-01-01 02:30:17+02:30:17	504	9
193	0001-01-01 02:30:17+02:30:17	487	7
198	0001-01-01 02:30:17+02:30:17	513	9
202	0001-01-01 02:30:17+02:30:17	433	9
203	0001-01-01 02:30:17+02:30:17	261	9
206	0001-01-01 02:30:17+02:30:17	524	9
209	0001-01-01 02:30:17+02:30:17	283	9
213	0001-01-01 02:30:17+02:30:17	72	9
221	0001-01-01 02:30:17+02:30:17	288	9
222	0001-01-01 02:30:17+02:30:17	538	7
223	0001-01-01 02:30:17+02:30:17	539	7
224	0001-01-01 02:30:17+02:30:17	541	9
225	0001-01-01 02:30:17+02:30:17	541	7
226	0001-01-01 02:30:17+02:30:17	543	7
227	0001-01-01 02:30:17+02:30:17	544	7
228	0001-01-01 02:30:17+02:30:17	129	9
230	0001-01-01 02:30:17+02:30:17	552	9
231	0001-01-01 02:30:17+02:30:17	39	9
232	0001-01-01 02:30:17+02:30:17	246	9
233	0001-01-01 02:30:17+02:30:17	555	7
234	0001-01-01 02:30:17+02:30:17	147	9
235	0001-01-01 02:30:17+02:30:17	329	7
236	0001-01-01 02:30:17+02:30:17	456	7
237	0001-01-01 02:30:17+02:30:17	560	9
238	0001-01-01 02:30:17+02:30:17	560	7
239	0001-01-01 02:30:17+02:30:17	530	9
240	0001-01-01 02:30:17+02:30:17	530	7
241	0001-01-01 02:30:17+02:30:17	365	9
242	0001-01-01 02:30:17+02:30:17	70	10
243	0001-01-01 02:30:17+02:30:17	486	10
244	0001-01-01 02:30:17+02:30:17	379	10
246	0001-01-01 02:30:17+02:30:17	84	10
247	0001-01-01 02:30:17+02:30:17	555	10
248	0001-01-01 02:30:17+02:30:17	168	10
249	0001-01-01 02:30:17+02:30:17	380	10
250	0001-01-01 02:30:17+02:30:17	508	9
251	0001-01-01 02:30:17+02:30:17	238	10
252	0001-01-01 02:30:17+02:30:17	238	9
253	0001-01-01 02:30:17+02:30:17	508	7
254	0001-01-01 02:30:17+02:30:17	469	7
255	0001-01-01 02:30:17+02:30:17	292	10
256	0001-01-01 02:30:17+02:30:17	54	9
257	0001-01-01 02:30:17+02:30:17	54	10
258	0001-01-01 02:30:17+02:30:17	557	10
259	0001-01-01 02:30:17+02:30:17	557	9
260	0001-01-01 02:30:17+02:30:17	557	7
261	0001-01-01 02:30:17+02:30:17	134	10
262	0001-01-01 02:30:17+02:30:17	569	7
263	0001-01-01 02:30:17+02:30:17	570	10
264	0001-01-01 02:30:17+02:30:17	72	10
265	0001-01-01 02:30:17+02:30:17	233	7
266	0001-01-01 02:30:17+02:30:17	501	10
267	0001-01-01 02:30:17+02:30:17	570	7
268	0001-01-01 02:30:17+02:30:17	199	9
269	0001-01-01 02:30:17+02:30:17	199	10
270	0001-01-01 02:30:17+02:30:17	240	7
271	0001-01-01 02:30:17+02:30:17	431	10
272	0001-01-01 02:30:17+02:30:17	595	10
273	0001-01-01 02:30:17+02:30:17	543	10
274	0001-01-01 02:30:17+02:30:17	306	10
275	0001-01-01 02:30:17+02:30:17	606	7
276	0001-01-01 02:30:17+02:30:17	49	10
277	0001-01-01 02:30:17+02:30:17	556	10
278	0001-01-01 02:30:17+02:30:17	612	9
279	0001-01-01 02:30:17+02:30:17	63	10
281	0001-01-01 02:30:17+02:30:17	614	7
282	0001-01-01 02:30:17+02:30:17	574	10
283	0001-01-01 02:30:17+02:30:17	551	7
284	0001-01-01 02:30:17+02:30:17	551	10
285	0001-01-01 02:30:17+02:30:17	530	10
286	0001-01-01 02:30:17+02:30:17	619	10
287	0001-01-01 02:30:17+02:30:17	493	10
288	0001-01-01 02:30:17+02:30:17	627	7
289	0001-01-01 02:30:17+02:30:17	628	10
290	0001-01-01 02:30:17+02:30:17	535	7
291	0001-01-01 02:30:17+02:30:17	370	11
292	0001-01-01 02:30:17+02:30:17	370	7
293	0001-01-01 02:30:17+02:30:17	627	11
294	0001-01-01 02:30:17+02:30:17	238	11
295	0001-01-01 02:30:17+02:30:17	555	11
296	0001-01-01 02:30:17+02:30:17	55	11
298	0001-01-01 02:30:17+02:30:17	358	11
299	0001-01-01 02:30:17+02:30:17	54	11
300	0001-01-01 02:30:17+02:30:17	640	10
301	0001-01-01 02:30:17+02:30:17	129	11
302	0001-01-01 02:30:17+02:30:17	386	11
303	0001-01-01 02:30:17+02:30:17	72	11
304	0001-01-01 02:30:17+02:30:17	250	11
305	0001-01-01 02:30:17+02:30:17	70	11
306	0001-01-01 02:30:17+02:30:17	223	11
307	0001-01-01 02:30:17+02:30:17	39	11
308	0001-01-01 02:30:17+02:30:17	663	7
309	0001-01-01 02:30:17+02:30:17	652	11
310	0001-01-01 02:30:17+02:30:17	543	11
311	0001-01-01 02:30:17+02:30:17	669	11
312	0001-01-01 02:30:17+02:30:17	373	11
313	0001-01-01 02:30:17+02:30:17	180	11
314	0001-01-01 02:30:17+02:30:17	679	11
315	0001-01-01 02:30:17+02:30:17	65	11
316	0001-01-01 02:30:17+02:30:17	83	11
317	0001-01-01 02:30:17+02:30:17	501	11
318	0001-01-01 02:30:17+02:30:17	513	11
319	0001-01-01 02:30:17+02:30:17	379	11
320	0001-01-01 02:30:17+02:30:17	155	11
321	0001-01-01 02:30:17+02:30:17	410	11
322	0001-01-01 02:30:17+02:30:17	433	11
323	0001-01-01 02:30:17+02:30:17	138	11
324	0001-01-01 02:30:17+02:30:17	84	11
325	0001-01-01 02:30:17+02:30:17	614	11
326	0001-01-01 02:30:17+02:30:17	239	11
327	0001-01-01 02:30:17+02:30:17	206	11
328	0001-01-01 02:30:17+02:30:17	690	7
329	0001-01-01 02:30:17+02:30:17	690	11
330	0001-01-01 02:30:17+02:30:17	546	11
331	0001-01-01 02:30:17+02:30:17	695	12
332	0001-01-01 02:30:17+02:30:17	16	12
333	0001-01-01 02:30:17+02:30:17	694	12
334	0001-01-01 02:30:17+02:30:17	690	12
335	0001-01-01 02:30:17+02:30:17	148	12
336	0001-01-01 02:30:17+02:30:17	155	12
337	0001-01-01 02:30:17+02:30:17	114	12
338	0001-01-01 02:30:17+02:30:17	168	12
339	0001-01-01 02:30:17+02:30:17	102	12
340	0001-01-01 02:30:17+02:30:17	245	12
341	0001-01-01 02:30:17+02:30:17	415	12
342	0001-01-01 02:30:17+02:30:17	704	7
343	0001-01-01 02:30:17+02:30:17	223	12
344	0001-01-01 02:30:17+02:30:17	70	12
345	0001-01-01 02:30:17+02:30:17	69	12
346	0001-01-01 02:30:17+02:30:17	704	12
347	0001-01-01 02:30:17+02:30:17	83	12
348	0001-01-01 02:30:17+02:30:17	713	11
349	0001-01-01 02:30:17+02:30:17	103	13
350	0001-01-01 02:30:17+02:30:17	83	13
351	0001-01-01 02:30:17+02:30:17	541	13
352	0001-01-01 02:30:17+02:30:17	443	13
353	0001-01-01 02:30:17+02:30:17	726	13
354	0001-01-01 02:30:17+02:30:17	84	13
355	0001-01-01 02:30:17+02:30:17	84	12
358	0001-01-01 02:30:17+02:30:17	720	13
359	0001-01-01 02:30:17+02:30:17	358	13
360	0001-01-01 02:30:17+02:30:17	579	13
361	0001-01-01 02:30:17+02:30:17	723	13
362	0001-01-01 02:30:17+02:30:17	72	12
363	0001-01-01 02:30:17+02:30:17	72	13
364	0001-01-01 02:30:17+02:30:17	759	13
365	0001-01-01 02:30:17+02:30:17	763	13
366	0001-01-01 02:30:17+02:30:17	715	13
367	0001-01-01 02:30:17+02:30:17	715	7
368	0001-01-01 02:30:17+02:30:17	12	13
369	0001-01-01 02:30:17+02:30:17	12	11
370	0001-01-01 02:30:17+02:30:17	379	13
371	0001-01-01 02:30:17+02:30:17	769	10
372	0001-01-01 02:30:17+02:30:17	627	13
373	0001-01-01 02:30:17+02:30:17	574	13
374	0001-01-01 02:30:17+02:30:17	193	14
375	0001-01-01 02:30:17+02:30:17	129	13
376	0001-01-01 02:30:17+02:30:17	775	13
377	0001-01-01 02:30:17+02:30:17	626	14
378	0001-01-01 02:30:17+02:30:17	292	14
379	0001-01-01 02:30:17+02:30:17	579	14
380	0001-01-01 02:30:17+02:30:17	180	13
381	0001-01-01 02:30:17+02:30:17	106	14
382	0001-01-01 02:30:17+02:30:17	704	14
\.


--
-- TOC entry 3059 (class 0 OID 17187)
-- Dependencies: 220
-- Data for Name: NetworkProfile; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."NetworkProfile" ("Id", "Title", "Link", "UserId") FROM stdin;
1	Youtube	https://youtube.com/channel/UCTCWlEJVLlu6evt_okyT0_A	1
2	Youtube	https://youtube.com/channel/UC2SxoOteAK772J7Ah0dxzAQ	2
3	VK	https://vk.com/id330068337	3
4	Youtube	https://youtube.com/channel/UCBfYMz8co0G5vy2zozRBJuw	4
5	VK	https://vk.com/id397301755	5
6	Youtube	https://youtube.com/channel/UCuPEtmXnPVf7UNuL5VskMAQ	6
7	Youtube	https://youtube.com/channel/UCSjTfrAbD8rPpAHSD5Uuw_A	7
8	Youtube	https://youtube.com/channel/UC-BQ8hghiIiT1xsiB4meJkA	8
9	VK	https://vk.com/id311675174	9
10	Youtube	https://youtube.com/channel/UCSJp9EHcDP8nNx1gsaSKDaQ	10
11	VK	https://vk.com/id431690723	11
12	Youtube	https://youtube.com/channel/UCTpSem5iQlcAd5ePvhOYa0A	12
13	VK	https://vk.com/id540187759	13
14	Youtube	https://youtube.com/channel/UC8C9WoT4w6ONpr1D4jYagHg	14
15	Youtube	https://youtube.com/channel/UCAK5fAnc-Bzgfn_n_8T1KcQ	15
16	Youtube	https://youtube.com/channel/UCOoYF6K4UGd3kYLw3Ubc5_Q	16
17	Youtube	https://youtube.com/channel/UCpKKLjJxFVEMfaTPxULw_pQ	17
18	Youtube	https://youtube.com/channel/UCDmPgDHMNeu_BbWmRhW3RoQ	18
19	Youtube	https://youtube.com/channel/UC_O3lqQ7wX6HVefQfV43fuQ	19
20	VK	https://vk.com/id440009070	20
21	Youtube	https://youtube.com/channel/UC6xNtxXcWBoLt7SH-0Hj12A	21
22	VK	https://vk.com/id418075039	22
23	Youtube	https://youtube.com/channel/UCVHj1l3RXGBfkB6fDE9uXnA	23
24	VK	https://vk.com/id204987739	24
25	Youtube	https://youtube.com/channel/UCan2gr-xvLcXHoyI9YsINNg	25
26	VK	https://vk.com/id520518743	26
27	Youtube	https://youtube.com/channel/UC7PNT7jR3JZairmHJB1WB5g	27
28	Youtube	https://youtube.com/channel/UCKnwPXD1ykOFhILX33ACKCA	29
29	Youtube	https://youtube.com/channel/UCUOKwRnzZLCdSfWeXg-pMNA	30
30	Youtube	https://youtube.com/channel/UCPZfmODTKtpsanz22yvfB1Q	31
31	VK	https://vk.com/id341977696	32
32	Youtube	https://youtube.com/channel/UCB1aCc1aLry1QuOsYbITanA	33
33	VK	https://vk.com/id512200291	34
34	VK	https://vk.com/id406802380	35
35	Youtube	https://youtube.com/channel/UCU1P9BtAF-PBDK8V2uXp0bQ	36
36	Youtube	https://youtube.com/channel/UC_TE_59dHYIPTWL9inrfevg	37
37	Youtube	https://youtube.com/channel/UCko5m-cnYzkpU02jS3cyHAg	38
38	VK	https://vk.com/id260204139	39
39	Youtube	https://youtube.com/channel/UCgiMcdxi8ks12CAmAvUguuQ	40
40	Youtube	https://youtube.com/channel/UC6-91rUoHjBsIyfkLTVdWVg	41
41	VK	https://vk.com/id234831110	42
42	VK	https://vk.com/id228472898	43
43	VK	https://vk.com/id348013118	44
44	VK	https://vk.com/id370966743	45
45	VK	https://vk.com/id486620080	46
46	VK	https://vk.com/id428403452	47
47	VK	https://vk.com/id255023338	48
48	VK	https://vk.com/id153541658	49
49	Youtube	https://youtube.com/channel/UC3KwLg9x0wAaYydp3wF8s0w	50
50	Youtube	https://youtube.com/channel/UCIzIpLKqxgIo7kwq-h7NgLg	51
51	VK	https://vk.com/id240381811	52
52	Youtube	https://youtube.com/channel/UCGMkocozj67EEIPVhaGS3Nw	53
53	VK	https://vk.com/id540848988	54
54	Youtube	https://youtube.com/channel/UCb2OhZzmRG-Njwq3tSlGCkg	55
55	Youtube	https://youtube.com/channel/UCZ_aEIroHvb3VAs2nGAyqEA	56
56	VK	https://vk.com/id555263653	57
57	VK	https://vk.com/id233689337	58
58	VK	https://vk.com/id190947439	59
59	Youtube	https://youtube.com/channel/UC9bbTTIjXvqeN7Fvp6qauYw	60
60	Youtube	https://youtube.com/channel/UC_g2MQSkSyCVaSbgmeGjdXg	61
61	VK	https://vk.com/id18084318	62
62	VK	https://vk.com/id207473489	63
63	Youtube	https://youtube.com/channel/UCqsmoXP605AAb6B4DCVCZKw	64
64	VK	https://vk.com/id505247743	65
65	Youtube	https://youtube.com/channel/UCAmcyDn6w79xn_9Yd7ReLig	66
66	VK	https://vk.com/id303823372	67
67	VK	https://vk.com/id297202371	68
68	Youtube	https://youtube.com/channel/UC8p_v7yxUhK6pSTAvitVQwQ	69
69	VK	https://vk.com/id180824748	70
70	Youtube	https://youtube.com/channel/UC2uyATOWIJF2gUj9AcpdJjw	71
71	Youtube	https://youtube.com/channel/UC3Nsrt4iuInGAEPp4jP6ONw	72
72	VK	https://vk.com/id297657545	73
73	Youtube	https://youtube.com/channel/UCbCIhc2bbL8Ee-Mmn1iduUg	74
74	Youtube	https://youtube.com/channel/UC8wR95YTkUSw3L2HyfCgjnw	75
75	VK	https://vk.com/id325816174	76
76	VK	https://vk.com/id256502830	77
77	VK	https://vk.com/id384852954	78
78	VK	https://vk.com/id371892598	79
79	Youtube	https://youtube.com/channel/UCOkEvy-I2P7FGWSpjdem5qg	80
80	VK	https://vk.com/id157615978	81
81	Youtube	https://youtube.com/channel/UCO48ci7xVhht562Kmtj_G7Q	82
82	VK	https://vk.com/id160645053	83
83	Youtube	https://youtube.com/channel/UCTSZCYdXkPsgBAK0SeXdHpA	84
84	VK	https://vk.com/id542650135	85
85	Youtube	https://youtube.com/channel/UC4BdQ4lHbCugNWiHOvjJvtQ	86
86	VK	https://vk.com/id455167329	87
87	VK	https://vk.com/id401299138	88
88	VK	https://vk.com/id337508198	89
89	Youtube	https://youtube.com/channel/UCYCxA3j7tK_AC_lpITonhcg	90
90	Youtube	https://youtube.com/channel/UCy1Kxv3Gho6QHYsPTvOpP4g	91
91	Youtube	https://youtube.com/channel/UC5YmlDHAxOn-Fu-XqGiGwRg	92
92	Youtube	https://youtube.com/channel/UCE9TwBTLCQt8mDl10r2px_A	93
93	VK	https://vk.com/id458895117	94
94	VK	https://vk.com/id323175893	95
95	Youtube	https://youtube.com/channel/UCSkGgKO1vz73Rhwn0XCZXRQ	96
96	VK	https://vk.com/id371105032	97
97	Youtube	https://youtube.com/channel/UCUV1fHBLsiq7zOvWdd4gacQ	98
98	Youtube	https://youtube.com/channel/UCWahF-Om76Hq2MHk2WidzHQ	99
102	Youtube	https://youtube.com/channel/UC2RLV3mRvSWpKVuvQGxQ9CA	103
103	VK	https://vk.com/id278780127	104
104	VK	https://vk.com/id543691647	105
105	VK	https://vk.com/id245913985	106
106	VK	https://vk.com/id264733683	107
107	VK	https://vk.com/id514138670	108
99	Youtube	https://youtube.com/channel/UCoSrV1W8DB79A_whKdHeGYg	100
100	VK	https://vk.com/id551745317	101
101	VK	https://vk.com/id380021693	102
108	Youtube	https://youtube.com/channel/UCKaEmgjGfV0fMo7gVrfB_nA	109
109	VK	https://vk.com/id396692094	110
110	Youtube	https://youtube.com/channel/UCK4PBtX3MBYIKbStbQIenIA	111
111	VK	https://vk.com/id163758354	112
112	VK	https://vk.com/id383793968	113
113	Youtube	https://youtube.com/channel/UCSoSZiLHlws7-UV3k_pVxGg	114
114	VK	https://vk.com/id163536784	115
115	Youtube	https://youtube.com/channel/UCVXgYrG1na7u9Un2NDboGJw	116
116	VK	https://vk.com/id439887495	117
117	Youtube	https://youtube.com/channel/UCiQ9pVNsM9kc1Mp4HmZF01g	118
118	VK	https://vk.com/id238623261	119
119	Youtube	https://youtube.com/channel/UCOXUERyjgsolakppnQVMjWw	120
120	VK	https://vk.com/id164044547	121
121	Youtube	https://youtube.com/channel/UC3VR_YuruliUM3O8gvzeh_w	122
122	VK	https://vk.com/id406675482	123
123	Youtube	https://youtube.com/channel/UCrtfx39BWI7v72xgoUHM6iA	124
124	VK	https://vk.com/id270805566	125
125	VK	https://vk.com/id267243330	126
126	Youtube	https://youtube.com/channel/UCBK3RJM8KeyATe0NbAG52ug	127
127	VK	https://vk.com/id293855534	128
128	VK	https://vk.com/id529043833	129
129	VK	https://vk.com/id417458605	130
130	VK	https://vk.com/id544923152	131
131	VK	https://vk.com/id340315962	132
132	Youtube	https://youtube.com/channel/UCAQdqrNiNieUAGi4Ham-04Q	133
133	VK	https://vk.com/id205215379	134
134	VK	https://vk.com/id372802216	135
135	VK	https://vk.com/id363519808	136
136	VK	https://vk.com/id397899679	137
137	Youtube	https://youtube.com/channel/UCLfG9hWUj_z_YZMCJbP1OLA	138
138	VK	https://vk.com/id379082227	139
139	VK	https://vk.com/id574308763	140
140	VK	https://vk.com/id392736363	141
141	Youtube	https://youtube.com/channel/UCff5LAYLOwckqbbhHEb5vSQ	142
142	VK	https://vk.com/id293846682	143
143	Youtube	https://youtube.com/channel/UCCvby61xg00DpMrgDJTkxpg	144
144	Youtube	https://youtube.com/channel/UC90R1ZoZTLjLN0bMV4_JoXg	145
145	Youtube	https://youtube.com/channel/UC6uSda177Xnb5osK70Z5EwA	146
146	Youtube	https://youtube.com/channel/UCfsV1CiCJZvPljBhC9aw9nA	147
147	Youtube	https://youtube.com/channel/UCTHkJ7O9bTlqsyr39FXhqYg	148
148	VK	https://vk.com/id430352462	149
149	Youtube	https://youtube.com/channel/UCRk_apABY9hTQYJQJ9A2aUw	150
150	Youtube	https://youtube.com/channel/UC2J8yhellBMFRvfLl4BMesw	151
151	VK	https://vk.com/id374002967	152
152	Youtube	https://youtube.com/channel/UCFF8cAtLfHivMbMUbAe_LTg	153
153	Youtube	https://youtube.com/channel/UCV4s88WwgvtgCNwkaXe7z8w	154
154	Youtube	https://youtube.com/channel/UCdORg4jVDu6yHSzVa148Wig	155
155	VK	https://vk.com/id312389981	156
156	VK	https://vk.com/id534386400	157
157	VK	https://vk.com/id468901396	158
158	VK	https://vk.com/id185598617	159
159	VK	https://vk.com/id512957083	160
160	VK	https://vk.com/id470497780	161
161	Youtube	https://youtube.com/channel/UCA2b8Yq3pIYwHDMkfxvGTvg	162
162	VK	https://vk.com/id332358484	163
163	VK	https://vk.com/id266817293	164
164	Youtube	https://youtube.com/channel/UCTqX9n075he7e8nXjSNOKcw	165
165	VK	https://vk.com/id336737252	166
166	Youtube	https://youtube.com/channel/UC6X_d-TGODprjat2eMHlK2A	167
167	Youtube	https://youtube.com/channel/UC1cES8dQpeR8ao1wPirWGAw	168
168	Youtube	https://youtube.com/channel/UCb7t8VvZXPk7km_tRwmSznQ	169
169	VK	https://vk.com/id553896722	170
170	VK	https://vk.com/id160777928	171
171	VK	https://vk.com/id445776236	172
172	VK	https://vk.com/id468975316	173
173	VK	https://vk.com/id555344057	174
174	VK	https://vk.com/id368250236	175
175	VK	https://vk.com/id506800667	176
176	Youtube	https://youtube.com/channel/UCa2_CFcE_ywtOIbSYvR0h2A	177
177	Youtube	https://youtube.com/channel/UCXsFWvLVi_VjyoGO7iKoE_Q	178
178	Youtube	https://youtube.com/channel/UC9JFh_hNhpdAyn9vnmI6I-w	179
179	VK	https://vk.com/id539337059	180
180	VK	https://vk.com/id451772261	181
181	VK	https://vk.com/id568742493	182
182	Youtube	https://youtube.com/channel/UCZLZJiR9bwLhJRhp3pcqyAQ	183
183	VK	https://vk.com/id186770757	184
184	Youtube	https://youtube.com/channel/UCiwTHMW-biOjLFFzjtuIjfg	185
185	VK	https://vk.com/id298865408	186
186	VK	https://vk.com/id155118859	187
187	Youtube	https://youtube.com/channel/UCKxj5aliBYIOXYdLof4YtWw	188
188	VK	https://vk.com/id353824206	189
189	VK	https://vk.com/id393575876	190
190	Youtube	https://youtube.com/channel/UC_t3E4jIJPCQsbz5pscdOvA	191
191	VK	https://vk.com/id380612304	192
192	VK	https://vk.com/id211789824	193
193	VK	https://vk.com/id548700140	194
194	VK	https://vk.com/id541723735	195
195	VK	https://vk.com/id265977493	196
196	VK	https://vk.com/id150750027	197
197	VK	https://vk.com/id334627276	198
198	Youtube	https://youtube.com/channel/UCL1DSQlpdwjE5s1RxIH1bng	199
199	Youtube	https://youtube.com/channel/UCU7Hw8plr94DPpBlEQgCv4g	200
200	VK	https://vk.com/id252619343	201
201	VK	https://vk.com/id513333443	202
202	VK	https://vk.com/id457749202	203
203	Youtube	https://youtube.com/channel/UCYJ0s4WOI4B0AHdNgCW4UMQ	204
204	VK	https://vk.com/id289689497	205
205	VK	https://vk.com/id437451556	206
207	VK	https://vk.com/id319973767	208
206	Youtube	https://youtube.com/channel/UCVcqj3m14xDpICdKiQ1aNSQ	207
212	Youtube	https://youtube.com/channel/UCFAFrDUQopPl0E2-Yf_-a9g	213
218	Youtube	https://youtube.com/channel/UC2vBcmDiU3Se7ZN3_htg4ew	219
220	VK	https://vk.com/id289182061	221
223	Youtube	https://youtube.com/channel/UCjkdUcMwDyqY4AmZsnPI6Bw	224
224	Youtube	https://youtube.com/channel/UC6n0c40OVQas34GTM6A8tnQ	225
225	VK	https://vk.com/id455239540	226
226	VK	https://vk.com/id351936508	227
228	Youtube	https://youtube.com/channel/UCLAThjpXHzB9s07TKupxSzQ	229
208	Youtube	https://youtube.com/channel/UCfKidzqXWLOFtR3oRhVphhw	209
209	VK	https://vk.com/id132460483	210
210	VK	https://vk.com/id315660222	211
213	VK	https://vk.com/id405466796	214
214	Youtube	https://youtube.com/channel/UC2eLp40oMxwWVzNlQ6wuNvQ	215
215	VK	https://vk.com/id537935306	216
216	Youtube	https://youtube.com/channel/UC_Ofn38NV-Qc0sU2zngBo0g	217
217	VK	https://vk.com/id436821388	218
219	VK	https://vk.com/id470342680	220
227	VK	https://vk.com/id313020506	228
230	Youtube	https://youtube.com/channel/UCogal6MqEoKCgHwCu-UY4AQ	231
231	Youtube	https://youtube.com/channel/UCtHsiyvq6NauseHk3jqEWgA	232
232	VK	https://vk.com/id341429679	233
233	VK	https://vk.com/id192561495	234
234	Youtube	https://youtube.com/channel/UCrbbprr8ysk8Wtmr1X87qQA	235
235	VK	https://vk.com/id210520401	236
211	VK	https://vk.com/id465092731	212
221	VK	https://vk.com/id572022924	222
222	VK	https://vk.com/id377091059	223
229	VK	https://vk.com/id409644776	230
236	Youtube	https://youtube.com/channel/UC9i73yFfoLAHayF6r0GAPUg	237
237	VK	https://vk.com/id260234406	238
238	VK	https://vk.com/id523393102	239
239	Youtube	https://youtube.com/channel/UCVXBgToGn8aRzzElHgPtpeQ	240
240	VK	https://vk.com/id528307457	241
241	Youtube	https://youtube.com/channel/UCWKHNHu7H9PKztJJeBiTcgw	242
242	VK	https://vk.com/id545025016	243
243	VK	https://vk.com/id223840853	244
244	VK	https://vk.com/id551623898	245
245	VK	https://vk.com/id218558358	246
246	Youtube	https://youtube.com/channel/UCLREWfeMfAlKUx0i-m4IWyg	247
247	VK	https://vk.com/id560396108	248
248	VK	https://vk.com/id244353499	249
249	VK	https://vk.com/id313007637	250
250	VK	https://vk.com/id472334073	251
251	VK	https://vk.com/id423316254	252
252	VK	https://vk.com/id223208373	253
253	VK	https://vk.com/id520966001	254
254	Youtube	https://youtube.com/channel/UCAtn7Vys2irJ-zmwd13GT7g	255
255	Youtube	https://youtube.com/channel/UCNXprkGa-cX2h5skSbfKKtg	256
256	Youtube	https://youtube.com/channel/UCnMOOWTrAI9mgRpncPX96KQ	257
257	VK	https://vk.com/id276682378	258
258	VK	https://vk.com/id561480300	259
259	Youtube	https://youtube.com/channel/UCKkkSG-751My56mqGlGCQ6Q	260
260	VK	https://vk.com/id502920425	261
261	VK	https://vk.com/id503228140	262
262	VK	https://vk.com/id389426179	263
263	VK	https://vk.com/id377514989	264
264	Youtube	https://youtube.com/channel/UCrqhBvgGPevtOF7KqH2JvKw	265
265	Youtube	https://youtube.com/channel/UCx9b9Q38a3vptCQTyfEYLGw	266
266	VK	https://vk.com/id484082552	267
267	VK	https://vk.com/id319715915	268
268	Youtube	https://youtube.com/channel/UCOF3QSR1XtWSxcFRUq6tTyA	269
269	VK	https://vk.com/id143986890	270
270	Youtube	https://youtube.com/channel/UCILICoYdVzPt6NAflcteWRQ	271
271	VK	https://vk.com/id217372561	272
272	Youtube	https://youtube.com/channel/UCpsZmC2ZslmeFqmZYY8X9gg	273
273	VK	https://vk.com/id149185241	274
274	VK	https://vk.com/id282370532	275
275	VK	https://vk.com/id410920818	276
276	VK	https://vk.com/id477671358	277
277	VK	https://vk.com/id570701094	278
278	Youtube	https://youtube.com/channel/UCGJ-QH1sJlM09vhs4oLlrkw	279
279	VK	https://vk.com/id288055013	280
280	VK	https://vk.com/id447179457	281
281	Youtube	https://youtube.com/channel/UCt7r8EbuWutM3mnMX3pJPhA	282
282	VK	https://vk.com/id203146754	283
283	VK	https://vk.com/id315947122	284
284	VK	https://vk.com/id266338505	285
285	VK	https://vk.com/id536817556	286
286	VK	https://vk.com/id473998048	287
287	Youtube	https://youtube.com/channel/UCzNiOdEuZdHWoBlZUQRoQmA	288
288	VK	https://vk.com/id339545129	289
289	VK	https://vk.com/id157092959	290
290	Youtube	https://youtube.com/channel/UCw_G8GbpfX7JNe7E-3Kk8Vw	291
291	VK	https://vk.com/id479003025	292
292	VK	https://vk.com/id238556358	293
293	VK	https://vk.com/id464165812	294
294	VK	https://vk.com/id250803297	295
295	VK	https://vk.com/id201595233	296
296	VK	https://vk.com/id508955089	297
297	Youtube	https://youtube.com/channel/UCnB5JC-XzER1FqeFcYXXzAQ	298
298	VK	https://vk.com/id368958612	299
299	VK	https://vk.com/id513338044	300
300	Youtube	https://youtube.com/channel/UCukthEZ_ntFYVXQiH5RUXcA	301
301	Youtube	https://youtube.com/channel/UCFphp64danQO-5JpiAFjbrw	302
302	VK	https://vk.com/id216410455	303
303	VK	https://vk.com/id421013452	304
304	VK	https://vk.com/id253026518	305
305	Youtube	https://youtube.com/channel/UCwttfKZqA95Y7GRzik1tpuQ	306
306	VK	https://vk.com/id303196152	307
307	VK	https://vk.com/id411694652	308
308	VK	https://vk.com/id307909199	309
309	VK	https://vk.com/id483590558	310
310	VK	https://vk.com/id372519101	311
311	Youtube	https://youtube.com/channel/UCzWZMEPuEXo_50wzwLe5HEA	312
312	Youtube	https://youtube.com/channel/UCaG8wKXtjMoMdpBmQ7xwmzA	313
313	VK	https://vk.com/id226640252	314
314	VK	https://vk.com/id302334361	315
315	VK	https://vk.com/id553149381	316
316	VK	https://vk.com/id351422756	317
317	Youtube	https://youtube.com/channel/UCxCzJrm1K6zwJ6kl9r25tyA	318
318	Youtube	https://youtube.com/channel/UCY3o0QfzSxNui3u1I4yNqmw	319
319	Youtube	https://youtube.com/channel/UCgo7hjFiuzTVuFtv2ZK2GSA	320
320	VK	https://vk.com/id506931523	321
321	VK	https://vk.com/id533810271	322
322	Youtube	https://youtube.com/channel/UCdi3m--wlkf0HzqD7RbDvlw	323
323	Youtube	https://youtube.com/channel/UCQsI9e4Ey9ZE6rlaUDYu4OA	324
324	VK	https://vk.com/id439641605	325
325	Youtube	https://youtube.com/channel/UCU2vlImlYY7cdS1vaJtc1UQ	326
326	VK	https://vk.com/id134216551	327
327	Youtube	https://youtube.com/channel/UCCOWdXs3vp5n9leYUkonH2A	328
328	Youtube	https://youtube.com/channel/UCVU0a8AwVEJoufBdZTOYCIw	329
329	Youtube	https://youtube.com/channel/UCU4Ia0LanmlugwfR4LT5bnQ	330
330	VK	https://vk.com/id540177991	331
331	VK	https://vk.com/id558879434	332
332	Youtube	https://youtube.com/channel/UCBfZmRkyaumBF3bdkIWi8PQ	333
333	VK	https://vk.com/id547622226	334
334	VK	https://vk.com/id296180789	335
335	VK	https://vk.com/id363195530	336
336	VK	https://vk.com/id429543208	337
341	Youtube	https://youtube.com/channel/UCH0jRJuyjZRMYhWCVrRisuw	342
342	VK	https://vk.com/id353698566	343
343	VK	https://vk.com/id236671655	344
344	Youtube	https://youtube.com/channel/UCpNL9EdLFS3FsqIBrda_kiA	345
349	VK	https://vk.com/id268059420	350
351	Youtube	https://youtube.com/channel/UCoM6lV5uVWlAUbYO25qCWEg	352
354	VK	https://vk.com/id195318892	355
358	Youtube	https://youtube.com/channel/UCx7hlxC_I4L2O_Rqo-bg14g	359
363	VK	https://vk.com/id217700943	364
364	VK	https://vk.com/id230560049	365
365	Youtube	https://youtube.com/channel/UCiQdnr0f70sLZ3lR1N7MXiA	366
366	VK	https://vk.com/id173876632	367
368	VK	https://vk.com/id438456683	369
371	VK	https://vk.com/id253994628	372
381	VK	https://vk.com/id517518799	382
385	VK	https://vk.com/id202157572	386
386	Youtube	https://youtube.com/channel/UC08K_7hOszrRNwLWYgOl45g	387
387	Youtube	https://youtube.com/channel/UCRRxUkkZ1QfepDjU6MOOtZg	388
391	Youtube	https://youtube.com/channel/UC5_JS76Y5kP6qP0u24jwVNQ	392
392	Youtube	https://youtube.com/channel/UCSx5-axRtnjR_ARUSLh34ow	393
393	Youtube	https://youtube.com/channel/UCHQhYuUyTEqKwUrwTIBt16w	394
337	Youtube	https://youtube.com/channel/UCD_XS9-sFyqYmWwBtOS27EA	338
338	VK	https://vk.com/id454034417	339
339	Youtube	https://youtube.com/channel/UCVhVcKgXolU-okarhY9u5yQ	340
347	VK	https://vk.com/id372843037	348
348	VK	https://vk.com/id444814571	349
350	VK	https://vk.com/id211539450	351
353	Youtube	https://youtube.com/channel/UCjmo2eXREr3BPnABh366NbA	354
355	Youtube	https://youtube.com/channel/UCq-rXq2gyh8KxhcMQ-TZVgg	356
370	VK	https://vk.com/id319736940	371
376	VK	https://vk.com/id428725939	377
377	Youtube	https://youtube.com/channel/UCbbPA3m4I7Twn-DjQSGcwmA	378
378	VK	https://vk.com/id567584409	379
379	Youtube	https://youtube.com/channel/UCB478iCxvY2DNvaRNxZhEow	380
388	VK	https://vk.com/id162897214	389
389	VK	https://vk.com/id187840420	390
390	VK	https://vk.com/id517844200	391
394	Youtube	https://youtube.com/channel/UCllO3NGeFj7xJdz2ucy1VFg	395
340	Youtube	https://youtube.com/channel/UCst1bZ1meh6kitmyxYgePbA	341
345	Youtube	https://youtube.com/channel/UCJY2pFiKmOGH8y-GdkZUrTw	346
346	VK	https://vk.com/id403976504	347
352	VK	https://vk.com/id496077189	353
356	VK	https://vk.com/id153569197	357
357	VK	https://vk.com/id539991765	358
359	Youtube	https://youtube.com/channel/UCzXfc4LTlfJHf8_ljVUElLQ	360
360	VK	https://vk.com/id233185333	361
361	Youtube	https://youtube.com/channel/UCEQkKZoKRqsCRphHUlbktuw	362
362	Youtube	https://youtube.com/channel/UC9Ax5mXDlV1289-Fx97EJyQ	363
367	VK	https://vk.com/id372803021	368
369	VK	https://vk.com/id138925538	370
372	VK	https://vk.com/id477571575	373
373	VK	https://vk.com/id223112898	374
374	VK	https://vk.com/id330476192	375
375	VK	https://vk.com/id305050915	376
380	VK	https://vk.com/id336825751	381
382	VK	https://vk.com/id272821182	383
383	VK	https://vk.com/id469489363	384
384	VK	https://vk.com/id233999439	385
395	VK	https://vk.com/id135476586	396
396	Youtube	https://youtube.com/channel/UCdwlIIGEAu06cloyrjMwYyg	397
397	VK	https://vk.com/id443741855	398
398	VK	https://vk.com/id346342545	399
399	VK	https://vk.com/id232178963	400
400	VK	https://vk.com/id255204498	401
401	VK	https://vk.com/id238226784	402
402	Youtube	https://youtube.com/channel/UCEytKBxA2xGaCsRpGbGKPZA	403
403	VK	https://vk.com/id320830089	404
404	VK	https://vk.com/id219059508	405
405	Youtube	https://youtube.com/channel/UCd2ZN444NowkgZqgusdQtRA	406
406	Youtube	https://youtube.com/channel/UCT4bF3QMnic6wMHx23SvZdw	407
407	Youtube	https://youtube.com/channel/UC6r7EevMwLQAupac0vLZVQw	408
408	VK	https://vk.com/id555128763	409
409	VK	https://vk.com/id200457683	410
410	Youtube	https://youtube.com/channel/UCvQpQUdJogKHAuEji7yodQg	411
411	Youtube	https://youtube.com/channel/UCNeMcIKmHf4ETXU2QQY5ARg	412
412	Youtube	https://youtube.com/channel/UC1cLjD4k6ZWJ4wFvMc0FcRg	413
413	VK	https://vk.com/id295532228	414
414	VK	https://vk.com/id261510045	415
415	VK	https://vk.com/id166151185	416
416	VK	https://vk.com/id272350769	417
417	VK	https://vk.com/id335667280	418
418	VK	https://vk.com/id388384996	419
419	Youtube	https://youtube.com/channel/UCJsY9alt4hARF2_nIjdZ10w	420
420	Youtube	https://youtube.com/channel/UCQEyEL1cpNZKPVsV-5vonaA	421
421	VK	https://vk.com/id147213167	422
422	VK	https://vk.com/id460666462	423
423	Youtube	https://youtube.com/channel/UC5QthFz5zXs2pwruWBqg_Lw	424
424	Youtube	https://youtube.com/channel/UCpb_9S-gSGMOFZd24s-7JiQ	425
425	Youtube	https://youtube.com/channel/UC5VK_TPvds4cAw2GhYKdLrQ	426
426	VK	https://vk.com/id357126440	427
427	Youtube	https://youtube.com/channel/UCxM4xOBQyyW-UVzp1Fn9Nqg	428
428	Youtube	https://youtube.com/channel/UC51VJPGwMm01-LfkxvBSojQ	429
429	Youtube	https://youtube.com/channel/UCe3sYQsGva20g7-5ZETq3JA	430
430	VK	https://vk.com/id255510167	431
431	VK	https://vk.com/id249215814	432
432	VK	https://vk.com/id279613566	433
433	Youtube	https://youtube.com/channel/UC0cAhRFzZY7xE8owOydThhw	434
434	VK	https://vk.com/id506386402	435
435	Youtube	https://youtube.com/channel/UCMz2wIhvnCeJaESEnnhLQpA	436
436	VK	https://vk.com/id502131689	437
437	VK	https://vk.com/id564808556	438
438	Youtube	https://youtube.com/channel/UCfJ_ad-xQp7dE19PVPkJKeQ	439
439	VK	https://vk.com/id378277130	440
440	VK	https://vk.com/id524947087	441
441	VK	https://vk.com/id441176332	442
442	VK	https://vk.com/id338413691	443
443	VK	https://vk.com/id497554396	444
444	VK	https://vk.com/id396628336	445
445	VK	https://vk.com/id371609652	446
446	Youtube	https://youtube.com/channel/UCYD4AI-2L4gUA_hIVLLmteA	447
447	Youtube	https://youtube.com/channel/UCikqQj8H63sSs556yM1R6fQ	448
448	Youtube	https://youtube.com/channel/UCZjNIHPU3H3gk5X-oMCtBRw	449
449	VK	https://vk.com/id482890485	450
450	Youtube	https://youtube.com/channel/UCjeL6aIvB3jZ12dG599QiIA	451
451	Youtube	https://youtube.com/channel/UCP6htZPbdk542ydRAQcYnOw	452
452	VK	https://vk.com/id419201472	453
453	VK	https://vk.com/id309093590	454
454	Youtube	https://youtube.com/channel/UCSn4KSm5rNeksEHdJJ4jSRQ	455
455	Youtube	https://youtube.com/channel/UCUP0WGxC44DhjNFYh19jioQ	456
456	VK	https://vk.com/id216607162	457
457	Youtube	https://youtube.com/channel/UCPfqUqkt0jerIseR4NDDU-Q	458
458	VK	https://vk.com/id393948453	459
459	VK	https://vk.com/id233178195	460
460	VK	https://vk.com/id532123293	461
461	VK	https://vk.com/id244167112	462
462	VK	https://vk.com/id336282831	463
463	VK	https://vk.com/id526415871	464
464	VK	https://vk.com/id450783100	465
465	Youtube	https://youtube.com/channel/UCwAZuP91vF0QxU5qd4tPTCw	466
466	Youtube	https://youtube.com/channel/UCiGixjgfq_MI3gOqdeRj5_A	467
467	VK	https://vk.com/id573687747	468
468	VK	https://vk.com/id233295003	469
469	Youtube	https://youtube.com/channel/UCCC_dRONp3ZqOfdnXahubVw	470
470	VK	https://vk.com/id477857239	471
471	VK	https://vk.com/id461775567	472
472	VK	https://vk.com/id460300237	473
473	VK	https://vk.com/id361597673	474
474	Youtube	https://youtube.com/channel/UC8ejH5Pwfyn3ro2jERCmfRg	475
475	VK	https://vk.com/id492176252	476
476	VK	https://vk.com/id234659713	477
477	VK	https://vk.com/id301705498	478
478	VK	https://vk.com/id446615056	479
479	Youtube	https://youtube.com/channel/UCeNZlUQfxcPHsK64pDhsi1A	480
485	VK	https://vk.com/id188320258	486
486	VK	https://vk.com/id411247038	487
487	Youtube	https://youtube.com/channel/UCPdxXVcAQ0h8xT8CXBaIVeg	488
488	VK	https://vk.com/id270633616	489
480	VK	https://vk.com/id398880041	481
481	VK	https://vk.com/id197420801	482
482	VK	https://vk.com/id222632106	483
483	VK	https://vk.com/id383662975	484
484	Youtube	https://youtube.com/channel/UCNZ2b8Vm7E_MvM3UwpnQQ-w	485
489	Youtube	https://youtube.com/channel/UCeLrwtsqqb8i8Uaa1RprDpQ	490
490	VK	https://vk.com/id214273098	491
491	VK	https://vk.com/id256620259	492
492	VK	https://vk.com/id343962358	493
493	VK	https://vk.com/id258040584	494
494	VK	https://vk.com/id316821713	495
495	Youtube	https://youtube.com/channel/UCvV7rAixFZwFD8k67sUHsSg	496
496	VK	https://vk.com/id166609919	497
497	VK	https://vk.com/id530801033	498
498	Youtube	https://youtube.com/channel/UChGm5KyX-F5bO5Z-45c6HLg	499
499	VK	https://vk.com/id333526734	500
500	Youtube	https://youtube.com/channel/UCFB0y2ORr7pnC6zVH5udgyQ	501
501	VK	https://vk.com/id333078705	502
502	Youtube	https://youtube.com/channel/UCEGbGr3sZBRTL66ea6s6hGg	503
503	VK	https://vk.com/id531108468	504
504	VK	https://vk.com/id538362439	505
505	VK	https://vk.com/id343294036	506
506	Youtube	https://youtube.com/channel/UCwS-T770rmKxWebll5YBOQA	507
507	Youtube	https://youtube.com/channel/UCjkf4U0EO-1J_cmp6FdB3DQ	508
508	Youtube	https://youtube.com/channel/UCLaPXuhYYjVoH_lsdJO3bzA	509
509	VK	https://vk.com/id550632104	510
510	VK	https://vk.com/id498301660	511
511	VK	https://vk.com/id323084480	512
512	Youtube	https://youtube.com/channel/UCaViySaoUCSZK75Dq6LHtKw	513
513	VK	https://vk.com/id146699597	514
514	VK	https://vk.com/id345780821	515
515	VK	https://vk.com/id511742596	516
516	VK	https://vk.com/id334689377	517
517	VK	https://vk.com/id463789231	518
518	VK	https://vk.com/id530224759	519
519	VK	https://vk.com/id267108900	520
520	VK	https://vk.com/id268679623	521
521	VK	https://vk.com/id482874272	522
522	VK	https://vk.com/id567212738	523
523	VK	https://vk.com/id272494922	524
524	VK	https://vk.com/id420719376	525
525	VK	https://vk.com/id338124774	526
526	Youtube	https://youtube.com/channel/UCPRB8wi4uTAw8IgYQzxJu3g	527
527	Youtube	https://youtube.com/channel/UCLVqXDgD4ewTk-e2LwKvl0A	528
528	VK	https://vk.com/id423167807	529
529	Youtube	https://youtube.com/channel/UC8ll8wVUfVT3wkOsE4wbGaw	530
530	Youtube	https://youtube.com/channel/UCdO2-iFcV0nJnMFdwvY2eIA	531
531	VK	https://vk.com/id401422622	532
532	VK	https://vk.com/id359326650	533
533	VK	https://vk.com/id223179835	534
534	Youtube	https://youtube.com/channel/UCv9UJrH8VTuJm6FKVJ_zLEw	535
535	VK	https://vk.com/id154617205	536
536	VK	https://vk.com/id471783525	537
537	VK	https://vk.com/id216060754	538
538	Youtube	https://youtube.com/channel/UC13FOYjWTRJMDL66aq0hh4w	539
539	Youtube	https://youtube.com/channel/UCb4pQSz9B5HbutKcGme2WoA	540
540	VK	https://vk.com/id134509098	541
541	VK	https://vk.com/id487790700	542
542	VK	https://vk.com/id365007407	543
543	Youtube	https://youtube.com/channel/UC4NC9itRrBCiShHJHrF2tNA	544
544	VK	https://vk.com/id573865891	545
545	Youtube	https://youtube.com/channel/UC-2bJXMUyVUw56zF_jCyMdw	546
546	Youtube	https://youtube.com/channel/UCzjqFwpBJ18pmh2d93W4DFQ	547
547	Youtube	https://youtube.com/channel/UCnm9ipecqFzLmwUWgz_Va8Q	548
548	VK	https://vk.com/id207051507	549
549	VK	https://vk.com/id406274281	550
550	VK	https://vk.com/id365129662	551
551	Youtube	https://youtube.com/channel/UCQ5bX-zZW__yyz9uEyhDLIg	552
552	VK	https://vk.com/id561457921	553
553	VK	https://vk.com/id340588380	554
554	Youtube	https://youtube.com/channel/UC_em2ya9IvzV5ZuIg-Yy1tA	555
555	VK	https://vk.com/id365399119	556
556	VK	https://vk.com/id251675225	557
557	VK	https://vk.com/id200957641	558
558	VK	https://vk.com/id433496348	559
559	VK	https://vk.com/id443185285	560
560	VK	https://vk.com/id571325958	561
561	VK	https://vk.com/id486038130	562
562	VK	https://vk.com/id281815987	563
563	Youtube	https://youtube.com/channel/UCltGUiPeMrzYmlLYFbpLovQ	564
564	Youtube	https://youtube.com/channel/UCapkbACCez3qiUEtVmwPj7A	565
565	VK	https://vk.com/id217087363	566
566	VK	https://vk.com/id193973881	567
567	VK	https://vk.com/id459577364	568
568	VK	https://vk.com/id226964739	569
569	VK	https://vk.com/id338049518	570
570	Youtube	https://youtube.com/channel/UCKz9luW4mDFK5KlvYzqrepw	571
571	Youtube	https://youtube.com/channel/UC3xIn4MQUR0gLyJ5BLl-wzg	572
572	VK	https://vk.com/id439802402	573
573	VK	https://vk.com/id510134748	574
574	Youtube	https://youtube.com/channel/UCfAuUZgv0DVxKy84BY5HwlA	575
575	VK	https://vk.com/id523119747	576
576	VK	https://vk.com/id364856704	577
577	Youtube	https://youtube.com/channel/UClcqljrwRVequeBH-wA4bqg	578
578	VK	https://vk.com/id530445515	579
579	VK	https://vk.com/id239373674	580
580	VK	https://vk.com/id370966821	581
581	VK	https://vk.com/id216662720	582
582	Youtube	https://youtube.com/channel/UCdzI9AzWmgDR4b0bY4XSp8w	583
583	Youtube	https://youtube.com/channel/UCF_gTkbUVoDMysEnLZLfbYQ	584
584	Youtube	https://youtube.com/channel/UCK-iDd90wiii51q2t4L5pzA	585
585	Youtube	https://youtube.com/channel/UCcYTqHINXUb4Ab_ZFrixn0Q	586
586	VK	https://vk.com/id443366708	587
587	Youtube	https://youtube.com/channel/UCb99gxPSSCBcjFE7S_OnvHw	588
588	Youtube	https://youtube.com/channel/UCI5KIW2bL12BuwwhL5xkcMw	589
589	VK	https://vk.com/id495207503	590
590	Youtube	https://youtube.com/channel/UCWVdw7XNp4y4sLG7Adl0USA	591
591	Youtube	https://youtube.com/channel/UCEs-Ao2IlHpHLR36pTejufA	592
592	VK	https://vk.com/id214358267	593
593	VK	https://vk.com/id476137928	594
594	Youtube	https://youtube.com/channel/UChIyly3zDBfo7pUZlTa3V2g	595
595	VK	https://vk.com/id479258296	596
596	VK	https://vk.com/id377595013	597
597	VK	https://vk.com/id224081502	598
598	VK	https://vk.com/id235496196	599
599	Youtube	https://youtube.com/channel/UCPfHSvHUTQgNIxVrRnsKuTA	600
600	Youtube	https://youtube.com/channel/UCNblvhl8B5VjNzlBEVpLJSw	601
601	Youtube	https://youtube.com/channel/UC805D25H-frAGKvcUdb7ACQ	602
602	VK	https://vk.com/id331552801	603
603	Youtube	https://youtube.com/channel/UCQkkfJdd0sz96X_KR1m433g	604
604	Youtube	https://youtube.com/channel/UCUBLeGFpV-s3JmGS6YdWD1w	605
605	VK	https://vk.com/id395419978	606
606	Youtube	https://youtube.com/channel/UCYpDYx_indQNjuvG4ZubhFw	607
607	Youtube	https://youtube.com/channel/UChpA94WzMJaHUJAiydXvHeA	608
608	VK	https://vk.com/id242926029	609
609	Youtube	https://youtube.com/channel/UCm-RUM71KAm7qL2e5PqI4dw	610
610	Youtube	https://youtube.com/channel/UCgTsSycIk7EfsVsNyaexZig	611
611	Youtube	https://youtube.com/channel/UCnCXzHVgaMwMBjM7YV8l05w	612
612	Youtube	https://youtube.com/channel/UClxxzSaFW-bUYYgtUIYcX8w	613
613	Youtube	https://youtube.com/channel/UCV0yrmyzAUTeAdJep8ajocA	614
614	Youtube	https://youtube.com/channel/UCONUUPRL7cYmngvK8QZ1Psg	615
615	Youtube	https://youtube.com/channel/UCpBwZ5KrZO7gXnZV80uLo_A	616
616	Youtube	https://youtube.com/channel/UCJI6R0OxXlZDtbENICKt5WA	617
617	Youtube	https://youtube.com/channel/UC_TAXl2tcx6ZvJMLNV9DgMw	618
618	VK	https://vk.com/id166493623	619
619	VK	https://vk.com/id357114430	620
620	VK	https://vk.com/id324154825	621
621	VK	https://vk.com/id467903351	622
622	Youtube	https://youtube.com/channel/UC3otI_7DjY9KIf3h0sbdjMA	623
623	VK	https://vk.com/id274881052	625
624	VK	https://vk.com/id373198440	626
625	VK	https://vk.com/id269354444	627
626	VK	https://vk.com/id311281827	628
627	VK	https://vk.com/id524482695	629
628	Youtube	https://youtube.com/channel/UCl00TBSWEkac3d2VZbyWXSw	630
629	VK	https://vk.com/id186624503	631
630	VK	https://vk.com/id511677712	632
631	Youtube	https://youtube.com/channel/UCfPP1FzE5ccqYtmeI8IMQ2w	633
632	Youtube	https://youtube.com/channel/UCUKBCpy_9HkmM_SB0FPGJqA	634
633	Youtube	https://youtube.com/channel/UCdfUREc6_IasMzIWaDwDnvw	635
634	VK	https://vk.com/id499893557	636
635	VK	https://vk.com/id269858264	637
636	Youtube	https://youtube.com/channel/UCRWW-FTKp8njMeqFFIU1BdQ	638
637	VK	https://vk.com/id537927601	639
638	Youtube	https://youtube.com/channel/UC3soO3eGEnqNCr71okG2zew	640
639	Youtube	https://youtube.com/channel/UCDRMbHi6X0Bgu698jpiQPwQ	641
640	Youtube	https://youtube.com/channel/UCpZ4iukNaT6YG9FSvY_kk4Q	642
641	VK	https://vk.com/id414836687	643
642	Youtube	https://youtube.com/channel/UCjMTKfX8EHkeONE93cnHuLw	644
643	Youtube	https://youtube.com/channel/UCtQhPeI6nLHKibH4scuuHrA	645
644	VK	https://vk.com/id511828026	646
645	VK	https://vk.com/id242908870	647
646	Youtube	https://youtube.com/channel/UC1g6je8AFJ0abyVHYjTG6Og	648
647	VK	https://vk.com/id335309225	649
648	Youtube	https://youtube.com/channel/UCPHB8haEHuF7qPsBEXp3Wig	650
649	Youtube	https://youtube.com/channel/UCHOUXno27gRYlInqoSWvd9g	651
650	VK	https://vk.com/id260611169	652
651	VK	https://vk.com/id539839432	653
652	Youtube	https://youtube.com/channel/UCodQ-HcbVhjgUgksjnqDafw	654
653	VK	https://vk.com/id460297690	655
654	Youtube	https://youtube.com/channel/UCK_kI9mVEBRMCrHrUa9JY9A	656
655	VK	https://vk.com/id538732892	657
656	VK	https://vk.com/id328990304	658
657	Youtube	https://youtube.com/channel/UC5wl2KT-aG68X_l9DWpYmhQ	659
658	Youtube	https://youtube.com/channel/UCfiSlusJ51kF2pEZN6l8y7w	660
659	VK	https://vk.com/id312461501	661
660	Youtube	https://youtube.com/channel/UCj5nXlF0SSdzwTr_OCAHIEg	662
661	VK	https://vk.com/id335277723	663
662	VK	https://vk.com/id277093096	664
663	VK	https://vk.com/id219453360	665
664	VK	https://vk.com/id269858393	666
665	Youtube	https://youtube.com/channel/UCf4QLteVsNnMbw27Aam-Ddg	667
666	VK	https://vk.com/id157744277	668
667	VK	https://vk.com/id273086036	669
668	Youtube	https://youtube.com/channel/UCyqm4KobkqTozUkPMT1Frzg	670
669	VK	https://vk.com/id303941085	671
670	Youtube	https://youtube.com/channel/UC4IXrzuIDB5L2HxTvo1tVqg	672
671	VK	https://vk.com/id450832163	673
672	VK	https://vk.com/id389438074	674
673	Youtube	https://youtube.com/channel/UCEhN2vqsZnBQJ6aqnl4_Rfg	675
674	Youtube	https://youtube.com/channel/UCaQhloWs1i1J4VVj1AjOcZQ	676
675	Youtube	https://youtube.com/channel/UCBT1MZSSoSyYRL5rEJrsxWQ	677
676	VK	https://vk.com/id343240386	678
677	Youtube	https://youtube.com/channel/UCYPuKHEp7UZKPdaWvc5Frpg	679
678	Youtube	https://youtube.com/channel/UCrEw25flA7KAwO9q1yZ5P4w	680
679	Youtube	https://youtube.com/channel/UC4ZFa_XaYssC3drISQ9MTGg	681
680	Youtube	https://youtube.com/channel/UC-rYOG1MSE5-5Vruzr4fX5Q	682
681	VK	https://vk.com/id220765756	683
682	Youtube	https://youtube.com/channel/UC7ee6GpHywVejknrXSZ2Q5g	684
683	VK	https://vk.com/id261416651	685
684	VK	https://vk.com/id546138225	686
685	Youtube	https://youtube.com/channel/UCTlbP0kKiUH7NBuhF-h4MHw	687
686	Youtube	https://youtube.com/channel/UCYTm0J9P_kpgt3uqrMCc_Mg	688
687	VK	https://vk.com/id546414871	689
688	Youtube	https://youtube.com/channel/UC1ZbId5RpzAIaNPCQ8QMV7w	690
689	Youtube	https://youtube.com/channel/UCrtNvaOcyupJmh7fdvhZUgg	691
690	Youtube	https://youtube.com/channel/UCFe_1BRnj8jb6KWRdYpovmQ	692
691	Youtube	https://youtube.com/channel/UCsu5UWFq2rdN50FpAtvCkSQ	693
692	VK	https://vk.com/id266879883	694
693	Youtube	https://youtube.com/channel/UC0zYs0ZJ1ptZTwGWL2r0MUg	695
694	Youtube	https://youtube.com/channel/UCVbJkJMcyrLQceKxs-MtrlA	696
695	Youtube	https://youtube.com/channel/UCqJv2i4n4a2rDuZTuRk0Zcw	697
696	VK	https://vk.com/id306892660	698
697	VK	https://vk.com/id205602350	699
698	Youtube	https://youtube.com/channel/UCTo3QRLge-MGqIUB5OR4nHA	700
699	Youtube	https://youtube.com/channel/UCaa_q5amcJDP9-qEqJHSBhA	701
700	VK	https://vk.com/id186059286	702
701	Youtube	https://youtube.com/channel/UCjJ-8gZXtstNcTyzh7lwDOQ	703
702	Youtube	https://youtube.com/channel/UCU49LxZCIif8mJ0gWrYLSrQ	704
703	Youtube	https://youtube.com/channel/UCOYvqek-UqgMsQA80t6owjA	705
704	Youtube	https://youtube.com/channel/UCYZjjmvhAgwUHDgkH8LwGIA	706
705	Youtube	https://youtube.com/channel/UCkCRquWaefVvCA7Ly1tgZUg	707
706	VK	https://vk.com/id576141143	708
707	VK	https://vk.com/id197031497	709
708	Youtube	https://youtube.com/channel/UCgUwND3Hs7SYXx4wncn_iGQ	710
709	Youtube	https://youtube.com/channel/UC_mqCaMQ95y7cLHrNJjPL9w	711
710	Youtube	https://youtube.com/channel/UCGbpTLv58wzpM-OHgeon3Tw	712
711	Youtube	https://youtube.com/channel/UCIOgqOGMX3z61gZyVmqtlwQ	713
712	Youtube	https://youtube.com/channel/UCEjtqDp31ShxoHHhM5uLB8w	714
713	VK	https://vk.com/id306084312	715
714	Youtube	https://youtube.com/channel/UC6V3hnEdGCMNBZvH31U7Zrg	716
715	Youtube	https://youtube.com/channel/UCNhGG3jQJUgjlzFuW4WJX0g	717
716	VK	https://vk.com/id423343488	718
717	Youtube	https://youtube.com/channel/UCB9qLb8wAFNp03sYFZxBKWw	719
718	Youtube	https://youtube.com/channel/UCFCQqVYA7PCA-iSsQU9hslw	720
719	Youtube	https://youtube.com/channel/UCG5iqFoYyV6SbPjhjPNu_aQ	721
720	VK	https://vk.com/id293365313	722
721	VK	https://vk.com/id519325542	723
722	VK	https://vk.com/id347806286	724
723	VK	https://vk.com/id540181388	725
724	Youtube	https://youtube.com/channel/UCW-hC8UDLgWs_V8F8_GW_yw	726
725	VK	https://vk.com/id456604726	727
726	VK	https://vk.com/id390761191	728
727	Youtube	https://youtube.com/channel/UCt_zEqR9Ppd8qRIriE82K9Q	729
728	Youtube	https://youtube.com/channel/UCzd9GrPZSfGisjo-rx4y26Q	730
729	Youtube	https://youtube.com/channel/UCqE_BC7_pM4PF_9NnlbsCpg	731
730	Youtube	https://youtube.com/channel/UC78nWlowPVAw0IyeXmQV37A	732
731	VK	https://vk.com/id277122221	733
732	VK	https://vk.com/id275079328	734
733	VK	https://vk.com/id505979479	735
734	VK	https://vk.com/id487312246	736
735	Youtube	https://youtube.com/channel/UCxewI8b-AsS7oWxZKPcYqWg	737
736	VK	https://vk.com/id396276307	738
737	VK	https://vk.com/id247139429	739
738	Youtube	https://youtube.com/channel/UCxW6yUBNM4NCFIj_ZO4Sf9g	740
739	Youtube	https://youtube.com/channel/UCd9YXqSBBIJHfMBftF7-qXw	741
740	Youtube	https://youtube.com/channel/UCSMvM0eWlDgIsLeq1eMBhQA	742
741	VK	https://vk.com/id312831892	743
742	VK	https://vk.com/id303507502	744
743	Youtube	https://youtube.com/channel/UC8vYaKgSojVR3BW9NpCFVRA	745
744	VK	https://vk.com/id298879357	746
745	VK	https://vk.com/id229105644	747
746	Youtube	https://youtube.com/channel/UCdbgZMvQRLKOMLvL38gOb6A	748
747	VK	https://vk.com/id533510111	749
748	Youtube	https://youtube.com/channel/UCdQ63WCFPkS-_4g8zc8nVsg	750
749	Youtube	https://youtube.com/channel/UCDEFAsL3cm1l1zTG1iRsRtQ	751
750	VK	https://vk.com/id516735649	752
751	VK	https://vk.com/id221655521	753
752	VK	https://vk.com/id242085637	754
753	Youtube	https://youtube.com/channel/UCFQSeoJCb1cHh-aBJW1EKFA	755
754	VK	https://vk.com/id420911853	756
755	Youtube	https://youtube.com/channel/UCv18bgcCBrKMj41WAEkaLOg	757
756	Youtube	https://youtube.com/channel/UCR8f6p7xiWMY5Goh5VsmVDg	758
757	VK	https://vk.com/id533072453	759
758	VK	https://vk.com/id497928020	760
759	Youtube	https://youtube.com/channel/UCJ3V1q9NlUbGEn4Hr_YBMZQ	761
760	VK	https://vk.com/id518382734	762
761	VK	https://vk.com/id367525803	763
762	VK	https://vk.com/id213849237	764
763	VK	https://vk.com/id466763855	765
764	Youtube	https://youtube.com/channel/UC4-P1Id3k6D-SAE7f2c9Wxg	766
765	VK	https://vk.com/id579977961	767
766	VK	https://vk.com/id207201264	768
767	Youtube	https://youtube.com/channel/UCU65oHji96XmFRrbFZ4TZ3g	769
768	VK	https://vk.com/id340423696	770
769	VK	https://vk.com/id530386420	771
770	VK	https://vk.com/id207671701	772
771	VK	https://vk.com/id223750819	773
772	Youtube	https://youtube.com/channel/UCE2rIcTKHIbI2Q1qP25DxTA	774
773	VK	https://vk.com/id319056165	775
774	VK	https://vk.com/id388231969	776
775	Youtube	https://youtube.com/channel/UCTjJ7-jotvLJF4lIaFUOkTQ	777
\.


--
-- TOC entry 3075 (class 0 OID 17331)
-- Dependencies: 236
-- Data for Name: Orders; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Orders" ("Id", "OrderedAt", "GoodId", "UserId", "Completed", "CompletedAt", "IsNotCalculated") FROM stdin;
1	2020-02-06 20:54:14.669103+03	1	16	f	\N	f
2	2020-02-07 08:49:32.131228+03	2	704	f	\N	f
3	2020-02-08 13:21:22.039782+03	2	106	f	\N	f
4	2020-02-08 16:49:30.913234+03	2	758	f	\N	f
\.


--
-- TOC entry 3061 (class 0 OID 17203)
-- Dependencies: 222
-- Data for Name: PhoneIdentificators; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."PhoneIdentificators" ("Id", "DeviceId", "PhoneType", "UserId") FROM stdin;
\.


--
-- TOC entry 3065 (class 0 OID 17237)
-- Dependencies: 226
-- Data for Name: Pushs; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Pushs" ("Id", "Title", "Content", "SurveyId", "AdminId", "CreatedAt") FROM stdin;
\.


--
-- TOC entry 3067 (class 0 OID 17258)
-- Dependencies: 228
-- Data for Name: Questionaries; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Questionaries" ("Id", "Question", "RightAnswer", "SurveyId") FROM stdin;
1	Воспроизводится ли видео?	Да	1
2	Воспроизводится ли видео?	Да	2
3	Воспроизводится ли видео?	Да	3
4	Воспроизводится ли видео?	Да	4
5	Воспроизводится ли видео?	Да	5
6	Воспроизводится ли видео?	Ага	6
7	Да	Да	7
8	Да	Да	7
9	Да	Да	8
10	Да	Да	8
11	Да	Да	8
12	Да	Да	9
13	Да	Да	9
14	Да	Да	9
15	Да	Да	10
16	Да	Да	10
17	Да	Да	11
18	Да	Да	11
19	Да	Да	12
20	Да	Да	12
21	Да	Да	13
22	Да	Да	13
23	Да	Да	14
\.


--
-- TOC entry 3069 (class 0 OID 17274)
-- Dependencies: 230
-- Data for Name: SurveyComments; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."SurveyComments" ("Id", "UserId", "SurveyId", "Text", "CreatedAt") FROM stdin;
\.


--
-- TOC entry 3053 (class 0 OID 17139)
-- Dependencies: 214
-- Data for Name: Surveys; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Surveys" ("Id", "Title", "Text", "AdditionalInfoId", "NeedToBeFinishedFor", "NeedToBeFinishedForStart", "Limit", "NumberOfUser", "IsActive", "CreatedAt", "Score") FROM stdin;
9	Тест 3 для Дерлоута	-\r\n5\r\n-\r\n5\r\n-\r\n5\r\n-\r\n5\r\n-\r\n5\r\n-	14	2020-01-26 19:41:24.531533+03	2020-01-26 19:41:24.531533+03	100	100	f	2020-01-26 19:41:24.531533+03	1
10	Тест перемотки	Тест перемотки	15	2020-01-27 11:19:16.531573+03	2020-01-27 11:19:16.531573+03	10	10	f	2020-01-27 11:19:16.531573+03	1
11	Тест опроса после обновления	Для прохождения этого опроса нужно обновить приложение до 1.0.32 \r\n	17	2020-02-01 11:59:18.693929+03	2020-02-01 11:59:18.693929+03	500	110	f	2020-02-01 11:59:18.693929+03	1
4	Проверка youtube видео	Проверка youtube видео	8	2020-01-23 20:46:54.082736+03	2020-01-22 20:47:54.082736+03	10000	4	f	2020-01-22 20:47:54.082736+03	10
5	Проверка youtube видео	Проверка youtube видео	9	2020-01-23 23:10:56.739429+03	2020-01-22 23:11:56.739429+03	10000	2	f	2020-01-22 23:11:56.739429+03	10
6	Проверка youtube видео	Проверка youtube видео	10	2020-01-23 07:49:31.376929+03	2020-01-23 07:49:31.376929+03	2	2	f	2020-01-23 07:49:31.376929+03	10
2	Проверка youtube видео	Воспроизводится ли видео?	3	2020-01-23 14:44:00.522233+03	2020-01-22 14:54:00.522233+03	1000	1	f	2020-01-22 14:45:35.703+03	10
8	Тест 2 для Дерлоута	-\r\n5\r\n-\r\n5\r\n-	13	2020-01-26 19:37:52.278784+03	2020-01-26 19:37:52.278784+03	100	69	f	2020-01-26 19:36:57.391+03	1
1	Проверка youtube видео	Проверка youtube видео	1	2020-01-23 03:42:57.295026+03	2020-01-22 14:43:57.295026+03	1000	11	f	2020-01-12 23:02:26.051+03	10
3	Проверка youtube видео	Проверка youtube видео	5	2020-01-23 15:13:00.976096+03	2020-01-22 15:14:00.976096+03	1000	2	f	2020-01-22 15:13:29.726+03	10
14	Тест обновления 1.0.33 (время)	Тест обновления 1.0.33 (время)	20	2020-02-06 15:39:03.358105+03	2020-02-06 15:09:03.358105+03	10	0	t	2020-02-06 15:09:03.358105+03	1
13	Тест обновления 1.0.33	У кого прилажка 1.0.32 версии.- обновляйте в Гугл маркете или удаляйте эту версию и скачивайте. \r\nРолик все так же нужно посмотреть до половины, только потом должны приниматься ответы. \r\nОтветы на все вопросы - Да	19	2020-02-05 20:16:56.639296+03	2020-02-05 20:16:56.639296+03	100	73	t	2020-02-05 20:16:25.295+03	1
7	Тестирование связки ютуб видео + проверка 	В этом апдейте мы трестируем функционал, который не дает пользователю ответить на вопросы до того, пока он не просмотрит ролик. \r\nОтветы на все вопросы - Да. \r\nМожете попробовать повсякому подводить ответы, не должно получаться, пока не будет просмотрено половину видео. \r\nЕсли у вас баг/лаг, пишите в дискорде - https://discord.gg/fREpPD	12	2020-01-25 09:14:55.12899+03	2020-01-25 09:14:55.12899+03	1000	317	f	2020-01-25 09:14:55.12899+03	1
12	Видос с рекламой 	Видос с рекламой Видос с рекламой Видос с рекламой Видос с рекламой Видос с рекламой Видос с рекламой Видос с рекламой 	18	2020-02-04 16:08:07.392393+03	2020-02-04 16:08:07.392393+03	500	40	f	2020-02-04 16:08:07.392393+03	1
\.


--
-- TOC entry 3071 (class 0 OID 17295)
-- Dependencies: 232
-- Data for Name: SurveysUsers; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."SurveysUsers" ("Id", "UserId", "SurveyId", "IsFinished", "IsAllAnswersCorrect", "StartDate", "FinishDate") FROM stdin;
1	7	1	t	t	2020-01-13 00:37:43.412465+03	2020-01-13 00:37:43.46559+03
2	8	1	t	t	2020-01-13 12:28:49.065414+03	2020-01-13 12:28:49.115158+03
28	54	7	t	t	2020-01-25 12:45:09.482119+03	2020-01-25 12:45:13.680645+03
3	10	1	t	t	2020-01-13 16:00:43.28684+03	2020-01-13 16:00:43.327898+03
4	11	1	t	t	2020-01-20 00:41:35.560543+03	2020-01-20 00:41:35.632375+03
78	147	7	t	t	2020-01-26 14:12:58.354291+03	2020-01-26 14:17:23.491885+03
5	3	1	t	t	2020-01-20 13:24:39.051892+03	2020-01-20 13:24:39.10156+03
29	55	7	t	t	2020-01-25 13:07:42.064455+03	2020-01-25 13:08:15.57131+03
6	14	1	t	t	2020-01-20 15:25:12.770548+03	2020-01-20 15:25:12.85351+03
7	27	1	t	t	2020-01-20 19:09:12.165459+03	2020-01-20 19:09:12.208647+03
60	118	7	t	t	2020-01-26 13:53:43.607977+03	2020-01-26 13:53:50.957484+03
8	29	1	t	t	2020-01-20 19:10:22.864779+03	2020-01-20 19:10:22.871236+03
30	51	7	t	t	2020-01-25 13:12:17.803515+03	2020-01-25 13:13:57.5131+03
9	30	1	t	t	2020-01-20 19:10:53.818454+03	2020-01-20 19:10:53.823215+03
10	31	1	t	t	2020-01-20 19:55:04.249296+03	2020-01-20 19:55:04.295099+03
11	14	2	t	t	2020-01-22 15:08:01.926897+03	2020-01-22 15:08:01.948226+03
31	62	7	t	t	2020-01-25 13:48:54.483057+03	2020-01-25 13:49:22.821155+03
12	12	3	t	t	2020-01-22 15:33:17.593397+03	2020-01-22 15:33:17.626422+03
13	12	1	t	t	2020-01-22 15:33:36.037873+03	2020-01-22 15:33:36.043229+03
14	14	3	t	t	2020-01-22 16:17:36.881542+03	2020-01-22 16:17:36.946074+03
32	63	7	t	t	2020-01-25 14:22:28.662129+03	2020-01-25 14:22:35.202468+03
15	30	4	t	t	2020-01-22 20:55:14.624899+03	2020-01-22 20:55:14.668118+03
16	27	4	t	t	2020-01-22 20:55:51.317494+03	2020-01-22 20:55:51.321482+03
61	122	7	t	t	2020-01-26 13:54:42.485497+03	2020-01-26 13:54:50.983167+03
17	14	4	t	t	2020-01-22 23:16:40.412999+03	2020-01-22 23:16:40.478868+03
33	68	7	t	t	2020-01-25 15:48:45.859022+03	2020-01-25 15:48:58.350579+03
18	14	5	t	t	2020-01-22 23:47:11.316606+03	2020-01-22 23:47:11.321232+03
19	16	5	t	t	2020-01-23 01:41:55.002499+03	2020-01-23 01:41:55.070439+03
20	16	4	t	t	2020-01-23 07:45:40.623427+03	2020-01-23 07:45:40.675522+03
34	69	7	t	t	2020-01-25 15:56:02.241696+03	2020-01-25 15:56:11.476379+03
21	16	6	t	t	2020-01-23 08:04:44.790086+03	2020-01-23 08:04:44.794242+03
22	34	6	t	t	2020-01-23 08:24:43.531181+03	2020-01-23 08:24:43.535016+03
110	65	7	t	t	2020-01-26 15:09:14.767784+03	2020-01-26 15:09:20.752135+03
23	46	7	t	t	2020-01-25 12:14:11.806761+03	2020-01-25 12:14:16.281046+03
35	70	7	t	t	2020-01-25 16:17:17.829533+03	2020-01-25 16:17:26.108982+03
24	48	7	t	t	2020-01-25 12:20:30.292131+03	2020-01-25 12:20:39.644825+03
25	47	7	t	t	2020-01-25 12:24:08.515675+03	2020-01-25 12:24:15.031718+03
62	71	7	t	t	2020-01-26 13:55:09.138379+03	2020-01-26 13:55:15.454377+03
26	44	7	t	t	2020-01-25 12:36:09.136687+03	2020-01-25 12:36:32.279807+03
36	72	7	t	t	2020-01-25 17:13:30.838259+03	2020-01-25 17:13:37.488038+03
27	53	7	t	t	2020-01-25 12:38:19.78428+03	2020-01-25 12:38:24.839913+03
37	75	7	t	t	2020-01-25 22:17:40.457024+03	2020-01-25 22:17:50.41015+03
82	39	7	t	t	2020-01-26 14:18:30.283766+03	2020-01-26 14:18:39.021287+03
38	76	7	t	t	2020-01-25 22:51:54.737101+03	2020-01-25 22:52:06.088568+03
63	93	7	t	t	2020-01-26 13:56:14.912877+03	2020-01-26 13:56:25.499639+03
39	78	7	t	t	2020-01-26 00:18:50.047583+03	2020-01-26 00:19:00.328394+03
40	80	7	t	t	2020-01-26 01:13:48.490489+03	2020-01-26 01:13:55.793025+03
41	81	7	t	t	2020-01-26 01:41:00.559773+03	2020-01-26 01:41:07.818439+03
64	112	7	t	t	2020-01-26 13:58:06.926537+03	2020-01-26 13:58:13.605832+03
42	82	7	t	t	2020-01-26 01:59:37.670932+03	2020-01-26 01:59:51.286088+03
43	83	7	t	t	2020-01-26 09:17:22.078668+03	2020-01-26 09:17:26.888818+03
94	162	7	t	t	2020-01-26 14:33:09.453354+03	2020-01-26 14:33:15.22143+03
44	60	7	t	t	2020-01-26 12:32:47.909713+03	2020-01-26 12:32:52.843416+03
65	129	7	t	t	2020-01-26 13:58:26.359962+03	2020-01-26 13:58:33.20657+03
45	87	7	t	t	2020-01-26 13:29:28.419026+03	2020-01-26 13:29:40.708653+03
46	88	7	t	t	2020-01-26 13:37:17.69943+03	2020-01-26 13:37:22.771211+03
83	143	7	t	t	2020-01-26 14:19:34.653936+03	2020-01-26 14:19:42.286897+03
47	90	7	t	t	2020-01-26 13:42:00.309902+03	2020-01-26 13:42:05.41955+03
66	128	7	t	t	2020-01-26 13:59:15.571894+03	2020-01-26 13:59:22.469305+03
48	25	7	t	t	2020-01-26 13:42:06.258935+03	2020-01-26 13:42:12.716547+03
49	102	7	t	t	2020-01-26 13:42:11.346827+03	2020-01-26 13:42:19.655771+03
50	105	7	t	t	2020-01-26 13:42:34.85376+03	2020-01-26 13:42:41.474074+03
67	126	7	t	t	2020-01-26 14:00:12.299052+03	2020-01-26 14:00:33.086924+03
51	106	7	t	t	2020-01-26 13:43:43.414667+03	2020-01-26 13:43:53.971616+03
52	98	7	t	t	2020-01-26 13:44:09.418941+03	2020-01-26 13:44:16.648432+03
53	96	7	t	t	2020-01-26 13:46:08.046241+03	2020-01-26 13:46:16.39241+03
54	24	7	t	t	2020-01-26 13:47:46.492163+03	2020-01-26 13:47:54.46491+03
69	134	7	t	t	2020-01-26 14:02:45.370605+03	2020-01-26 14:02:51.95808+03
55	113	7	t	t	2020-01-26 13:49:41.181653+03	2020-01-26 13:49:48.126903+03
84	156	7	t	t	2020-01-26 14:21:04.686425+03	2020-01-26 14:21:16.21696+03
56	101	7	t	t	2020-01-26 13:50:49.997724+03	2020-01-26 13:50:59.139613+03
68	132	7	t	t	2020-01-26 14:02:44.849611+03	2020-01-26 14:02:52.75918+03
57	111	7	t	t	2020-01-26 13:52:19.750942+03	2020-01-26 13:52:29.832271+03
58	123	7	t	t	2020-01-26 13:52:35.485043+03	2020-01-26 13:52:42.899002+03
59	121	7	t	t	2020-01-26 13:53:21.03862+03	2020-01-26 13:53:31.906683+03
70	133	7	t	t	2020-01-26 14:03:55.778482+03	2020-01-26 14:04:06.013123+03
102	169	7	t	t	2020-01-26 14:55:46.552898+03	2020-01-26 14:55:55.348775+03
71	131	7	t	t	2020-01-26 14:04:00.812512+03	2020-01-26 14:04:12.739221+03
85	148	7	t	t	2020-01-26 14:23:46.842627+03	2020-01-26 14:23:55.713708+03
72	136	7	t	t	2020-01-26 14:04:34.363037+03	2020-01-26 14:04:40.414083+03
73	130	7	t	t	2020-01-26 14:05:10.509458+03	2020-01-26 14:05:17.142371+03
74	94	7	t	t	2020-01-26 14:07:15.78733+03	2020-01-26 14:07:22.744669+03
95	170	7	t	t	2020-01-26 14:39:55.756323+03	2020-01-26 14:40:03.96436+03
75	141	7	t	t	2020-01-26 14:08:12.032169+03	2020-01-26 14:08:20.042342+03
86	155	7	t	t	2020-01-26 14:25:11.578269+03	2020-01-26 14:25:18.697906+03
76	139	7	t	t	2020-01-26 14:10:48.96042+03	2020-01-26 14:10:56.957011+03
77	138	7	t	t	2020-01-26 14:11:38.87549+03	2020-01-26 14:11:45.292964+03
87	114	7	t	t	2020-01-26 14:25:16.468159+03	2020-01-26 14:25:23.673056+03
79	115	7	t	t	2020-01-26 14:14:48.361109+03	2020-01-26 14:15:06.95897+03
80	145	7	t	t	2020-01-26 14:15:58.307192+03	2020-01-26 14:16:06.03483+03
81	149	7	f	f	2020-01-26 14:17:07.216497+03	\N
88	161	7	t	t	2020-01-26 14:27:01.652871+03	2020-01-26 14:27:11.062533+03
97	176	7	t	t	2020-01-26 14:40:34.973066+03	2020-01-26 14:40:40.434928+03
89	163	7	t	t	2020-01-26 14:29:52.708868+03	2020-01-26 14:30:02.363329+03
107	186	7	t	t	2020-01-26 15:02:13.070325+03	2020-01-26 15:02:19.799018+03
90	165	7	t	t	2020-01-26 14:31:00.330895+03	2020-01-26 14:31:23.65926+03
96	164	7	t	t	2020-01-26 14:40:34.366885+03	2020-01-26 14:40:46.379597+03
91	144	7	t	t	2020-01-26 14:32:06.265351+03	2020-01-26 14:32:14.018155+03
92	168	7	t	t	2020-01-26 14:32:35.368496+03	2020-01-26 14:32:41.695092+03
103	185	7	t	t	2020-01-26 14:59:33.374008+03	2020-01-26 14:59:38.194544+03
93	166	7	t	t	2020-01-26 14:32:36.78884+03	2020-01-26 14:32:42.400198+03
98	174	7	t	t	2020-01-26 14:41:21.227473+03	2020-01-26 14:41:30.29657+03
99	178	7	t	t	2020-01-26 14:43:05.525864+03	2020-01-26 14:43:10.745835+03
100	179	7	t	t	2020-01-26 14:47:31.88698+03	2020-01-26 14:47:38.354376+03
101	180	7	t	t	2020-01-26 14:48:01.452687+03	2020-01-26 14:48:06.421309+03
104	182	7	t	t	2020-01-26 15:00:23.483822+03	2020-01-26 15:00:31.725573+03
105	187	7	t	t	2020-01-26 15:00:25.62776+03	2020-01-26 15:00:35.95889+03
108	191	7	t	t	2020-01-26 15:06:18.09551+03	2020-01-26 15:06:27.934978+03
106	188	7	t	t	2020-01-26 15:00:46.168803+03	2020-01-26 15:00:53.994259+03
109	193	7	t	t	2020-01-26 15:07:36.737057+03	2020-01-26 15:07:50.283605+03
111	189	7	t	t	2020-01-26 15:10:55.270134+03	2020-01-26 15:11:15.484785+03
112	183	7	t	t	2020-01-26 15:11:03.33366+03	2020-01-26 15:11:12.119116+03
113	192	7	t	t	2020-01-26 15:12:52.056731+03	2020-01-26 15:12:59.534531+03
114	195	7	t	t	2020-01-26 15:14:56.407121+03	2020-01-26 15:15:00.499003+03
115	184	7	t	t	2020-01-26 15:15:12.640873+03	2020-01-26 15:15:22.24848+03
116	194	7	t	t	2020-01-26 15:15:51.174943+03	2020-01-26 15:16:02.238952+03
117	199	7	t	t	2020-01-26 15:17:12.471641+03	2020-01-26 15:17:19.280483+03
118	202	7	t	t	2020-01-26 15:21:41.613338+03	2020-01-26 15:21:53.731163+03
119	204	7	t	t	2020-01-26 15:24:57.662934+03	2020-01-26 15:25:05.599649+03
120	200	7	t	t	2020-01-26 15:26:08.659104+03	2020-01-26 15:26:14.885899+03
121	205	7	t	t	2020-01-26 15:26:23.50852+03	2020-01-26 15:26:30.549909+03
122	206	7	t	t	2020-01-26 15:27:32.451091+03	2020-01-26 15:27:39.291371+03
123	211	7	t	t	2020-01-26 15:30:03.507537+03	2020-01-26 15:30:08.253319+03
124	209	7	t	t	2020-01-26 15:30:09.173595+03	2020-01-26 15:30:14.063053+03
125	210	7	t	t	2020-01-26 15:31:16.475398+03	2020-01-26 15:33:49.044101+03
126	212	7	t	t	2020-01-26 15:39:30.322998+03	2020-01-26 15:39:40.643516+03
127	219	7	t	t	2020-01-26 15:46:14.948286+03	2020-01-26 15:46:20.6573+03
136	232	7	t	t	2020-01-26 16:22:30.87657+03	2020-01-26 16:22:36.277747+03
169	289	7	t	t	2020-01-26 19:21:58.303597+03	2020-01-26 19:22:05.60972+03
170	292	7	t	t	2020-01-26 19:22:15.043386+03	2020-01-26 19:22:32.685542+03
181	291	7	t	t	2020-01-26 19:29:50.43236+03	2020-01-26 19:29:57.016346+03
223	366	7	t	t	2020-01-26 19:41:05.125711+03	2020-01-26 19:41:11.719809+03
184	319	7	t	t	2020-01-26 19:30:42.199165+03	2020-01-26 19:30:51.471548+03
183	325	7	t	t	2020-01-26 19:30:41.780782+03	2020-01-26 19:30:52.290947+03
182	305	7	t	t	2020-01-26 19:29:53.428688+03	2020-01-26 19:31:28.982096+03
226	103	7	t	t	2020-01-26 19:42:09.376443+03	2020-01-26 19:42:15.276567+03
192	339	7	t	t	2020-01-26 19:32:32.269424+03	2020-01-26 19:32:39.817813+03
228	311	8	f	f	2020-01-26 19:42:26.799987+03	\N
193	310	7	t	t	2020-01-26 19:32:45.445335+03	2020-01-26 19:32:53.178854+03
195	299	7	t	t	2020-01-26 19:33:07.110922+03	2020-01-26 19:33:14.42353+03
200	352	7	t	t	2020-01-26 19:35:38.579728+03	2020-01-26 19:35:46.261742+03
233	348	8	t	t	2020-01-26 19:43:14.880329+03	2020-01-26 19:43:26.864048+03
201	353	7	t	t	2020-01-26 19:35:38.85456+03	2020-01-26 19:35:49.543706+03
208	357	8	t	t	2020-01-26 19:39:46.127429+03	2020-01-26 19:39:54.33533+03
207	351	8	t	t	2020-01-26 19:39:45.138077+03	2020-01-26 19:39:55.535405+03
206	313	8	t	t	2020-01-26 19:39:43.791816+03	2020-01-26 19:39:56.243642+03
212	263	8	t	t	2020-01-26 19:39:57.86935+03	2020-01-26 19:40:13.940778+03
237	318	8	t	t	2020-01-26 19:43:52.956025+03	2020-01-26 19:44:02.971907+03
215	46	8	t	t	2020-01-26 19:40:07.180878+03	2020-01-26 19:40:22.469582+03
286	103	9	t	t	2020-01-26 19:51:05.281253+03	2020-01-26 19:51:15.528763+03
220	83	8	t	t	2020-01-26 19:40:44.400916+03	2020-01-26 19:40:58.862838+03
238	310	8	t	t	2020-01-26 19:43:55.034146+03	2020-01-26 19:44:07.319656+03
242	373	8	t	t	2020-01-26 19:44:27.187379+03	2020-01-26 19:44:34.88088+03
287	404	7	t	t	2020-01-26 19:51:06.492299+03	2020-01-26 19:51:17.021233+03
247	312	8	t	t	2020-01-26 19:45:23.263346+03	2020-01-26 19:45:38.461528+03
248	378	8	t	t	2020-01-26 19:45:25.292684+03	2020-01-26 19:45:53.125925+03
288	379	7	t	t	2020-01-26 19:51:09.417944+03	2020-01-26 19:51:17.470623+03
255	378	7	t	t	2020-01-26 19:46:50.550473+03	2020-01-26 19:46:59.985765+03
256	368	7	t	t	2020-01-26 19:47:30.770457+03	2020-01-26 19:47:37.874712+03
346	398	9	t	t	2020-01-26 19:58:00.825691+03	2020-01-26 19:58:08.578369+03
257	362	8	t	t	2020-01-26 19:48:02.002657+03	2020-01-26 19:48:14.630332+03
262	332	9	f	f	2020-01-26 19:49:05.487726+03	\N
289	380	8	t	t	2020-01-26 19:51:14.717696+03	2020-01-26 19:51:26.458369+03
271	153	9	t	t	2020-01-26 19:49:48.849277+03	2020-01-26 19:50:04.816079+03
273	300	9	t	t	2020-01-26 19:49:55.163746+03	2020-01-26 19:50:04.883039+03
290	105	9	t	t	2020-01-26 19:51:15.194114+03	2020-01-26 19:51:28.277013+03
239	354	7	t	t	2020-01-26 19:43:55.095387+03	2020-01-26 19:50:08.434239+03
274	397	7	t	t	2020-01-26 19:49:55.896887+03	2020-01-26 19:50:09.069119+03
292	415	7	t	t	2020-01-26 19:51:26.412236+03	2020-01-26 19:51:34.118997+03
347	223	7	t	t	2020-01-26 19:58:09.809812+03	2020-01-26 19:58:19.240049+03
295	359	7	t	t	2020-01-26 19:51:39.0184+03	2020-01-26 19:51:43.363878+03
411	486	9	t	t	2020-01-26 20:40:13.247027+03	2020-01-26 20:40:23.328182+03
296	105	8	t	t	2020-01-26 19:51:41.004678+03	2020-01-26 19:51:48.47213+03
348	88	8	t	t	2020-01-26 19:58:16.845259+03	2020-01-26 19:58:26.406623+03
297	373	9	t	t	2020-01-26 19:51:42.608818+03	2020-01-26 19:51:53.108815+03
298	292	9	t	t	2020-01-26 19:51:48.559265+03	2020-01-26 19:52:16.974394+03
305	394	7	t	t	2020-01-26 19:52:20.79626+03	2020-01-26 19:52:30.320561+03
306	318	9	t	t	2020-01-26 19:52:32.564887+03	2020-01-26 19:52:42.249117+03
349	404	9	t	t	2020-01-26 19:58:36.431797+03	2020-01-26 19:58:51.116461+03
317	333	8	t	t	2020-01-26 19:53:47.62907+03	2020-01-26 19:53:58.202114+03
318	358	8	t	t	2020-01-26 19:53:49.680131+03	2020-01-26 19:53:59.762455+03
321	228	9	t	t	2020-01-26 19:54:10.37112+03	2020-01-26 19:54:23.245454+03
351	441	7	t	t	2020-01-26 19:59:39.703973+03	2020-01-26 19:59:46.736288+03
322	381	8	t	t	2020-01-26 19:54:24.822332+03	2020-01-26 19:54:34.55626+03
323	84	7	t	t	2020-01-26 19:54:48.719561+03	2020-01-26 19:54:59.138677+03
325	49	7	t	t	2020-01-26 19:54:50.117883+03	2020-01-26 19:55:11.862229+03
413	119	9	t	t	2020-01-26 20:43:16.619903+03	2020-01-26 20:43:28.892986+03
324	374	9	t	t	2020-01-26 19:54:48.887778+03	2020-01-26 19:55:12.123952+03
361	148	9	t	t	2020-01-26 20:00:56.918037+03	2020-01-26 20:01:10.966924+03
328	250	8	t	t	2020-01-26 19:55:12.851878+03	2020-01-26 19:56:04.686255+03
333	383	9	t	t	2020-01-26 19:56:00.2916+03	2020-01-26 19:56:10.199857+03
362	49	8	t	t	2020-01-26 20:01:05.075392+03	2020-01-26 20:01:21.112662+03
332	73	9	t	t	2020-01-26 19:55:58.066877+03	2020-01-26 19:56:12.966804+03
335	431	8	t	t	2020-01-26 19:56:02.502967+03	2020-01-26 19:56:17.290829+03
336	438	8	t	t	2020-01-26 19:56:03.018566+03	2020-01-26 19:56:18.103369+03
433	525	9	t	t	2020-01-26 21:19:20.512198+03	2020-01-26 21:19:37.144952+03
339	140	7	t	t	2020-01-26 19:56:11.917262+03	2020-01-26 19:56:19.380524+03
363	358	9	t	t	2020-01-26 20:01:24.520669+03	2020-01-26 20:01:36.298252+03
416	200	9	t	t	2020-01-26 20:46:05.978659+03	2020-01-26 20:46:22.80662+03
364	115	9	t	t	2020-01-26 20:01:29.723169+03	2020-01-26 20:01:38.931745+03
366	425	8	t	t	2020-01-26 20:02:10.644727+03	2020-01-26 20:02:29.980628+03
367	420	7	t	t	2020-01-26 20:02:43.690575+03	2020-01-26 20:02:48.850033+03
382	111	9	t	t	2020-01-26 20:08:41.583631+03	2020-01-26 20:08:59.245092+03
417	253	9	t	t	2020-01-26 20:46:43.497772+03	2020-01-26 20:46:56.167632+03
384	466	7	t	t	2020-01-26 20:10:15.059301+03	2020-01-26 20:10:22.005766+03
453	244	9	t	t	2020-01-26 22:35:25.931177+03	2020-01-26 22:35:39.9746+03
385	325	9	t	t	2020-01-26 20:11:48.607786+03	2020-01-26 20:12:01.822372+03
418	425	9	t	t	2020-01-26 20:46:49.525057+03	2020-01-26 20:47:04.821493+03
388	420	9	t	t	2020-01-26 20:13:25.740495+03	2020-01-26 20:13:38.264305+03
393	475	9	t	t	2020-01-26 20:17:00.910796+03	2020-01-26 20:17:14.519148+03
434	347	9	t	t	2020-01-26 21:20:38.966187+03	2020-01-26 21:20:50.328024+03
394	477	9	t	t	2020-01-26 20:17:55.217253+03	2020-01-26 20:18:17.969479+03
406	497	7	t	t	2020-01-26 20:35:15.188987+03	2020-01-26 20:50:56.74453+03
395	342	7	t	t	2020-01-26 20:19:08.695344+03	2020-01-26 20:19:18.642431+03
407	357	9	t	t	2020-01-26 20:36:31.1433+03	2020-01-26 20:36:40.675258+03
420	450	9	t	t	2020-01-26 20:50:48.857245+03	2020-01-26 20:51:02.092441+03
408	242	9	t	t	2020-01-26 20:36:31.189768+03	2020-01-26 20:36:51.484748+03
422	516	7	t	t	2020-01-26 20:52:45.569402+03	2020-01-26 20:52:54.099575+03
435	522	9	t	t	2020-01-26 21:21:44.322224+03	2020-01-26 21:21:56.666924+03
425	518	7	t	t	2020-01-26 20:59:26.089951+03	2020-01-26 20:59:34.218347+03
428	132	9	t	t	2020-01-26 21:05:11.878401+03	2020-01-26 21:05:24.902324+03
477	200	10	t	t	2020-01-27 11:46:31.744455+03	2020-01-27 11:46:36.438776+03
430	519	9	t	t	2020-01-26 21:11:30.668202+03	2020-01-26 21:11:45.225606+03
442	529	9	t	t	2020-01-26 21:50:33.574292+03	2020-01-26 21:50:51.272942+03
431	522	7	t	t	2020-01-26 21:14:42.519384+03	2020-01-26 21:14:49.78996+03
432	523	9	t	t	2020-01-26 21:18:15.724837+03	2020-01-26 21:18:28.556749+03
454	538	7	t	t	2020-01-26 23:05:56.186768+03	2020-01-26 23:06:50.501692+03
444	248	9	t	t	2020-01-26 21:53:14.356022+03	2020-01-26 21:53:28.328471+03
445	527	9	f	f	2020-01-26 21:54:07.498205+03	\N
446	527	7	f	f	2020-01-26 21:55:06.920633+03	\N
449	70	9	t	t	2020-01-26 22:01:34.578925+03	2020-01-26 22:01:45.063064+03
466	560	7	t	t	2020-01-27 09:36:33.573115+03	2020-01-27 09:36:44.289159+03
450	178	9	t	t	2020-01-26 22:13:00.051872+03	2020-01-26 22:13:08.62751+03
455	539	7	t	t	2020-01-26 23:21:15.145334+03	2020-01-26 23:21:23.231489+03
472	34	7	f	f	2020-01-27 11:17:51.98997+03	\N
462	550	7	t	t	2020-01-27 01:46:50.1591+03	2020-01-27 01:47:02.008207+03
465	557	7	t	t	2020-01-27 09:06:37.633318+03	2020-01-27 09:07:15.161953+03
475	566	7	t	t	2020-01-27 11:37:18.577747+03	2020-01-27 11:37:23.929853+03
479	84	10	t	t	2020-01-27 11:55:57.877181+03	2020-01-27 11:56:02.274598+03
478	566	10	t	t	2020-01-27 11:47:25.937533+03	2020-01-27 11:47:31.611168+03
480	132	10	t	t	2020-01-27 11:56:04.744698+03	2020-01-27 11:56:12.419325+03
481	427	10	t	t	2020-01-27 12:04:18.54502+03	2020-01-27 12:04:26.859082+03
483	380	10	t	t	2020-01-27 12:05:33.564914+03	2020-01-27 12:05:39.847361+03
485	297	7	f	f	2020-01-27 12:44:40.801955+03	\N
484	508	7	t	t	2020-01-27 12:26:43.24624+03	2020-01-27 12:26:49.796416+03
486	284	7	t	t	2020-01-27 12:45:17.387941+03	2020-01-27 12:45:21.764604+03
491	509	7	f	f	2020-01-27 16:33:19.528121+03	\N
489	569	7	t	t	2020-01-27 15:39:07.064447+03	2020-01-27 15:39:15.829967+03
493	578	7	t	t	2020-01-27 18:49:44.688502+03	2020-01-27 18:50:10.324983+03
496	483	7	t	t	2020-01-27 21:01:34.622736+03	2020-01-27 21:01:46.400081+03
498	240	7	t	t	2020-01-27 23:13:15.736844+03	2020-01-27 23:13:21.975517+03
500	591	7	t	t	2020-01-28 01:45:43.651861+03	2020-01-28 01:45:51.492305+03
502	582	7	t	t	2020-01-28 13:46:10.090043+03	2020-01-28 13:46:18.887846+03
506	382	7	f	f	2020-01-28 16:31:34.762786+03	\N
504	598	7	t	t	2020-01-28 15:23:02.658547+03	2020-01-28 15:23:10.283625+03
128	220	7	t	t	2020-01-26 15:54:41.460477+03	2020-01-26 15:54:46.062131+03
129	224	7	t	t	2020-01-26 15:56:55.455214+03	2020-01-26 15:57:22.891478+03
130	227	7	t	t	2020-01-26 16:02:54.430436+03	2020-01-26 16:03:05.536665+03
171	301	7	t	t	2020-01-26 19:24:44.643337+03	2020-01-26 19:24:56.47616+03
222	364	7	t	t	2020-01-26 19:41:04.622731+03	2020-01-26 19:41:20.7477+03
173	300	7	t	t	2020-01-26 19:25:48.166684+03	2020-01-26 19:25:54.404316+03
180	312	7	t	t	2020-01-26 19:29:31.124291+03	2020-01-26 19:29:39.01249+03
185	334	7	t	t	2020-01-26 19:30:57.226735+03	2020-01-26 19:31:02.176714+03
227	321	7	t	t	2020-01-26 19:42:21.677357+03	2020-01-26 19:42:26.923522+03
186	307	7	t	t	2020-01-26 19:31:00.354733+03	2020-01-26 19:31:08.918694+03
187	332	7	t	t	2020-01-26 19:31:06.242079+03	2020-01-26 19:31:21.326393+03
189	331	7	t	t	2020-01-26 19:31:55.742125+03	2020-01-26 19:32:05.204379+03
188	314	7	t	t	2020-01-26 19:31:38.610913+03	2020-01-26 19:32:09.530343+03
190	341	7	t	t	2020-01-26 19:32:08.112096+03	2020-01-26 19:32:15.98827+03
285	367	8	t	t	2020-01-26 19:51:01.631082+03	2020-01-26 19:51:10.988745+03
194	345	7	t	t	2020-01-26 19:32:53.692476+03	2020-01-26 19:33:07.370343+03
229	103	8	t	t	2020-01-26 19:42:32.271897+03	2020-01-26 19:42:43.824005+03
198	348	7	t	t	2020-01-26 19:34:22.422033+03	2020-01-26 19:34:35.421139+03
350	47	8	t	t	2020-01-26 19:59:25.489938+03	2020-01-26 19:59:41.432615+03
209	305	8	t	t	2020-01-26 19:39:47.437419+03	2020-01-26 19:39:57.437447+03
232	343	7	t	t	2020-01-26 19:42:43.503417+03	2020-01-26 19:42:49.902702+03
210	153	8	t	t	2020-01-26 19:39:52.804229+03	2020-01-26 19:40:03.142304+03
284	398	8	t	t	2020-01-26 19:51:00.871255+03	2020-01-26 19:51:12.123874+03
216	345	8	t	t	2020-01-26 19:40:11.502334+03	2020-01-26 19:40:34.294661+03
230	364	8	t	t	2020-01-26 19:42:37.30623+03	2020-01-26 19:42:50.387187+03
218	189	8	t	t	2020-01-26 19:40:16.744524+03	2020-01-26 19:40:37.22495+03
219	75	8	t	t	2020-01-26 19:40:32.631951+03	2020-01-26 19:40:47.68321+03
211	334	8	t	t	2020-01-26 19:39:53.747128+03	2020-01-26 19:40:48.406807+03
221	358	7	t	t	2020-01-26 19:40:49.659545+03	2020-01-26 19:40:59.016887+03
234	355	7	t	t	2020-01-26 19:43:19.491701+03	2020-01-26 19:43:37.878708+03
282	354	8	t	t	2020-01-26 19:50:56.256481+03	2020-01-26 19:51:14.82256+03
235	369	7	t	t	2020-01-26 19:43:30.687476+03	2020-01-26 19:43:38.019294+03
240	373	7	t	t	2020-01-26 19:44:10.782956+03	2020-01-26 19:44:15.970547+03
241	301	8	t	t	2020-01-26 19:44:21.934289+03	2020-01-26 19:44:35.443461+03
243	327	7	t	t	2020-01-26 19:44:35.32227+03	2020-01-26 19:44:40.970589+03
245	377	7	t	t	2020-01-26 19:45:06.802071+03	2020-01-26 19:45:24.380462+03
279	83	9	t	t	2020-01-26 19:50:31.225362+03	2020-01-26 19:51:39.887432+03
246	275	8	t	t	2020-01-26 19:45:13.041696+03	2020-01-26 19:45:24.814271+03
249	374	7	t	t	2020-01-26 19:46:09.238965+03	2020-01-26 19:46:14.398534+03
293	412	9	t	t	2020-01-26 19:51:32.350878+03	2020-01-26 19:51:42.519875+03
250	111	8	t	t	2020-01-26 19:46:16.037915+03	2020-01-26 19:46:28.396799+03
252	374	8	t	t	2020-01-26 19:46:31.923299+03	2020-01-26 19:46:47.663691+03
291	344	8	t	t	2020-01-26 19:51:21.543957+03	2020-01-26 19:51:46.456794+03
254	362	7	t	t	2020-01-26 19:46:47.301693+03	2020-01-26 19:47:02.336268+03
352	344	9	t	t	2020-01-26 19:59:42.029286+03	2020-01-26 19:59:53.546712+03
259	368	8	t	t	2020-01-26 19:48:17.329522+03	2020-01-26 19:48:31.079704+03
294	305	9	t	t	2020-01-26 19:51:35.61228+03	2020-01-26 19:51:51.419423+03
261	349	9	t	t	2020-01-26 19:48:47.708188+03	2020-01-26 19:48:59.121649+03
263	306	7	t	t	2020-01-26 19:49:14.212171+03	2020-01-26 19:49:20.047511+03
265	345	9	t	t	2020-01-26 19:49:25.252132+03	2020-01-26 19:49:42.096081+03
267	351	9	t	t	2020-01-26 19:49:36.050147+03	2020-01-26 19:49:48.658768+03
268	310	9	t	t	2020-01-26 19:49:40.329955+03	2020-01-26 19:49:49.37196+03
266	73	8	t	t	2020-01-26 19:49:32.033747+03	2020-01-26 19:49:49.374519+03
300	380	7	t	t	2020-01-26 19:51:58.385307+03	2020-01-26 19:52:03.275689+03
269	334	9	t	t	2020-01-26 19:49:44.355395+03	2020-01-26 19:49:54.895309+03
353	159	8	t	t	2020-01-26 19:59:45.771964+03	2020-01-26 19:59:54.838439+03
270	168	9	t	t	2020-01-26 19:49:47.107285+03	2020-01-26 19:49:55.471303+03
299	75	9	t	t	2020-01-26 19:51:52.182589+03	2020-01-26 19:52:07.094369+03
272	313	9	t	t	2020-01-26 19:49:54.140324+03	2020-01-26 19:50:08.145946+03
278	359	9	t	t	2020-01-26 19:50:30.841237+03	2020-01-26 19:50:40.412417+03
301	338	9	t	t	2020-01-26 19:51:59.438018+03	2020-01-26 19:52:11.31998+03
276	251	9	t	t	2020-01-26 19:50:25.004811+03	2020-01-26 19:50:43.313609+03
283	409	7	f	f	2020-01-26 19:50:59.273027+03	\N
391	463	7	t	t	2020-01-26 20:15:33.396824+03	2020-01-26 20:15:39.664342+03
302	421	9	t	t	2020-01-26 19:51:59.655766+03	2020-01-26 19:52:14.590368+03
357	441	8	t	t	2020-01-26 20:00:06.324898+03	2020-01-26 20:00:21.351482+03
304	115	8	t	t	2020-01-26 19:52:20.356655+03	2020-01-26 19:52:32.042525+03
307	136	8	t	t	2020-01-26 19:52:50.347379+03	2020-01-26 19:53:00.370777+03
308	427	9	t	t	2020-01-26 19:53:03.776829+03	2020-01-26 19:53:11.557322+03
311	418	7	t	t	2020-01-26 19:53:10.990174+03	2020-01-26 19:53:16.409433+03
359	427	8	t	t	2020-01-26 20:00:33.367289+03	2020-01-26 20:00:39.960079+03
309	333	7	t	t	2020-01-26 19:53:09.754126+03	2020-01-26 19:53:20.214512+03
451	288	9	f	f	2020-01-26 22:24:03.712731+03	\N
314	419	8	t	t	2020-01-26 19:53:24.072259+03	2020-01-26 19:53:38.446092+03
360	379	9	t	t	2020-01-26 20:00:38.677746+03	2020-01-26 20:00:50.424257+03
315	370	9	t	t	2020-01-26 19:53:24.998831+03	2020-01-26 19:53:47.232987+03
342	62	8	t	t	2020-01-26 19:57:17.8503+03	2020-01-26 19:57:32.936055+03
392	466	9	t	t	2020-01-26 20:16:43.392309+03	2020-01-26 20:16:56.670509+03
345	389	7	t	t	2020-01-26 19:57:50.131026+03	2020-01-26 19:57:57.381422+03
368	438	9	t	t	2020-01-26 20:03:10.316085+03	2020-01-26 20:03:25.570915+03
344	422	9	t	t	2020-01-26 19:57:47.388501+03	2020-01-26 19:57:58.341848+03
371	295	9	t	t	2020-01-26 20:04:07.337939+03	2020-01-26 20:04:24.310256+03
423	433	9	t	t	2020-01-26 20:54:59.965996+03	2020-01-26 20:55:12.450881+03
372	88	9	t	t	2020-01-26 20:04:25.947157+03	2020-01-26 20:04:33.977526+03
373	295	8	f	f	2020-01-26 20:04:50.776306+03	\N
396	470	9	t	t	2020-01-26 20:20:51.171966+03	2020-01-26 20:21:10.424811+03
369	431	9	t	t	2020-01-26 20:03:32.007121+03	2020-01-26 20:05:18.930036+03
374	84	9	t	t	2020-01-26 20:05:46.691361+03	2020-01-26 20:05:56.876612+03
375	159	9	t	t	2020-01-26 20:05:56.479592+03	2020-01-26 20:06:50.121489+03
377	450	7	t	t	2020-01-26 20:06:52.569899+03	2020-01-26 20:07:09.779687+03
402	448	7	t	t	2020-01-26 20:33:23.802123+03	2020-01-26 20:33:34.556353+03
378	49	9	t	t	2020-01-26 20:07:02.085557+03	2020-01-26 20:07:16.931003+03
380	462	7	f	f	2020-01-26 20:07:52.839021+03	\N
383	444	9	t	t	2020-01-26 20:09:21.977854+03	2020-01-26 20:09:46.104184+03
403	487	7	t	t	2020-01-26 20:33:34.087554+03	2020-01-26 20:33:40.162153+03
356	446	8	t	t	2020-01-26 19:59:47.211789+03	2020-01-26 20:10:41.526021+03
424	261	9	t	t	2020-01-26 20:56:57.378607+03	2020-01-26 20:57:44.562302+03
409	501	9	t	t	2020-01-26 20:38:02.924465+03	2020-01-26 20:38:24.405969+03
410	217	9	t	t	2020-01-26 20:38:14.851159+03	2020-01-26 20:38:27.198119+03
482	168	10	t	t	2020-01-27 12:04:58.44832+03	2020-01-27 12:05:02.495282+03
412	487	9	t	t	2020-01-26 20:42:01.813424+03	2020-01-26 20:42:12.884478+03
426	516	9	t	t	2020-01-26 20:59:49.684251+03	2020-01-26 21:00:11.317175+03
231	251	8	t	t	2020-01-26 19:42:40.11907+03	2020-01-26 20:43:33.765135+03
421	500	9	t	t	2020-01-26 20:52:25.039825+03	2020-01-26 20:52:55.8267+03
452	275	9	t	t	2020-01-26 22:34:03.669012+03	2020-01-26 22:34:13.945167+03
427	519	7	t	t	2020-01-26 21:01:57.34506+03	2020-01-26 21:02:12.341439+03
439	524	7	f	f	2020-01-26 21:29:29.81422+03	\N
440	526	7	t	t	2020-01-26 21:33:26.784353+03	2020-01-26 21:33:32.352391+03
463	551	7	t	t	2020-01-27 02:05:20.793851+03	2020-01-27 02:05:35.621213+03
443	69	9	t	t	2020-01-26 21:52:09.416308+03	2020-01-26 21:52:19.560802+03
459	544	7	t	t	2020-01-26 23:47:23.194942+03	2020-01-26 23:47:31.21982+03
460	543	7	t	t	2020-01-26 23:48:16.602938+03	2020-01-26 23:48:28.751681+03
467	530	7	t	t	2020-01-27 10:21:15.788238+03	2020-01-27 10:21:22.579876+03
487	469	7	t	t	2020-01-27 12:46:54.024895+03	2020-01-27 12:47:10.296238+03
488	461	7	t	t	2020-01-27 15:19:44.844096+03	2020-01-27 15:19:53.356149+03
490	570	7	t	t	2020-01-27 15:58:54.723696+03	2020-01-27 15:59:03.980429+03
492	576	7	t	t	2020-01-27 18:23:43.124157+03	2020-01-27 18:23:51.618289+03
494	579	7	t	t	2020-01-27 19:38:03.569689+03	2020-01-27 19:38:14.771612+03
495	581	7	t	t	2020-01-27 19:54:51.748188+03	2020-01-27 19:55:01.282381+03
497	585	7	t	t	2020-01-27 22:27:32.873055+03	2020-01-27 22:27:38.085355+03
499	588	7	t	t	2020-01-27 23:18:36.59236+03	2020-01-27 23:18:45.010628+03
501	596	7	t	t	2020-01-28 11:40:43.77343+03	2020-01-28 11:40:52.004317+03
503	329	7	t	t	2020-01-28 13:54:57.66226+03	2020-01-28 13:55:05.787826+03
505	599	7	t	t	2020-01-28 15:46:45.087246+03	2020-01-28 15:46:59.920236+03
507	12	7	t	t	2020-01-28 16:48:17.440827+03	2020-01-28 16:48:27.112851+03
508	604	7	t	t	2020-01-28 19:42:52.970392+03	2020-01-28 19:43:00.175152+03
509	606	7	t	t	2020-01-28 20:39:49.329313+03	2020-01-28 20:40:00.37557+03
131	228	7	t	t	2020-01-26 16:17:42.187318+03	2020-01-26 16:17:55.679524+03
132	235	7	t	t	2020-01-26 16:20:37.667201+03	2020-01-26 16:20:44.755586+03
133	229	7	t	t	2020-01-26 16:20:51.414775+03	2020-01-26 16:21:05.926223+03
172	283	7	t	t	2020-01-26 19:25:23.627348+03	2020-01-26 19:25:31.53644+03
134	43	7	t	t	2020-01-26 16:21:00.118465+03	2020-01-26 16:21:06.090172+03
135	234	7	t	t	2020-01-26 16:21:03.426082+03	2020-01-26 16:21:10.820001+03
224	148	8	t	t	2020-01-26 19:41:28.555311+03	2020-01-26 19:41:41.072577+03
137	159	7	t	t	2020-01-26 16:26:00.37179+03	2020-01-26 16:26:05.984275+03
174	308	7	t	t	2020-01-26 19:27:25.406552+03	2020-01-26 19:27:30.980053+03
138	233	7	t	t	2020-01-26 16:30:06.932704+03	2020-01-26 16:30:18.023694+03
139	172	7	t	t	2020-01-26 16:32:55.239969+03	2020-01-26 16:32:59.737939+03
140	238	7	t	t	2020-01-26 16:33:39.826188+03	2020-01-26 16:33:47.496127+03
175	323	7	t	t	2020-01-26 19:28:03.392454+03	2020-01-26 19:28:14.673862+03
141	241	7	t	t	2020-01-26 16:38:58.329946+03	2020-01-26 16:40:09.184862+03
142	242	7	t	t	2020-01-26 16:41:36.783766+03	2020-01-26 16:41:43.946875+03
143	243	7	t	t	2020-01-26 16:43:49.334002+03	2020-01-26 16:43:55.543727+03
176	295	7	t	t	2020-01-26 19:28:56.347678+03	2020-01-26 19:29:01.586717+03
145	245	7	t	t	2020-01-26 16:47:54.214574+03	2020-01-26 16:48:02.661016+03
144	244	7	t	t	2020-01-26 16:47:47.81275+03	2020-01-26 16:48:05.767719+03
146	247	7	t	t	2020-01-26 16:52:27.318458+03	2020-01-26 16:52:37.136721+03
147	239	7	t	t	2020-01-26 16:55:17.955699+03	2020-01-26 16:55:24.365008+03
148	248	7	t	t	2020-01-26 16:59:30.149309+03	2020-01-26 16:59:37.743001+03
177	287	7	t	t	2020-01-26 19:29:16.090093+03	2020-01-26 19:29:27.026718+03
149	251	7	t	t	2020-01-26 17:06:07.402252+03	2020-01-26 17:06:18.397873+03
236	359	8	t	t	2020-01-26 19:43:38.390384+03	2020-01-26 19:43:49.91446+03
150	250	7	t	t	2020-01-26 17:06:50.549388+03	2020-01-26 17:06:58.036325+03
178	153	7	t	t	2020-01-26 19:29:24.41739+03	2020-01-26 19:29:33.52812+03
151	253	7	t	t	2020-01-26 17:08:10.372224+03	2020-01-26 17:08:17.898497+03
152	254	7	t	t	2020-01-26 17:11:02.02965+03	2020-01-26 17:11:14.669448+03
179	311	7	t	t	2020-01-26 19:29:24.845381+03	2020-01-26 19:29:33.977257+03
153	77	7	t	t	2020-01-26 17:11:59.952849+03	2020-01-26 17:12:12.964109+03
154	255	7	t	t	2020-01-26 17:13:23.297358+03	2020-01-26 17:13:30.388244+03
225	327	8	t	t	2020-01-26 19:41:57.094612+03	2020-01-26 19:44:22.394312+03
155	258	7	t	t	2020-01-26 17:19:45.422759+03	2020-01-26 17:19:53.404529+03
191	313	7	t	t	2020-01-26 19:32:17.409759+03	2020-01-26 19:32:28.384962+03
156	259	7	t	t	2020-01-26 17:19:50.447832+03	2020-01-26 17:19:57.343344+03
157	231	7	t	t	2020-01-26 17:34:10.542374+03	2020-01-26 17:34:15.808083+03
158	262	7	t	t	2020-01-26 17:36:51.803548+03	2020-01-26 17:37:21.852556+03
196	338	7	t	t	2020-01-26 19:33:50.699072+03	2020-01-26 19:33:55.852336+03
159	261	7	t	t	2020-01-26 17:38:37.327216+03	2020-01-26 17:38:44.770678+03
160	270	7	t	t	2020-01-26 18:12:24.516522+03	2020-01-26 18:12:30.156029+03
303	404	8	t	t	2020-01-26 19:52:03.764313+03	2020-01-26 19:52:27.97521+03
161	276	7	t	t	2020-01-26 18:19:53.987259+03	2020-01-26 18:19:59.638451+03
197	318	7	t	t	2020-01-26 19:34:13.126987+03	2020-01-26 19:34:20.322547+03
162	263	7	t	t	2020-01-26 18:22:47.363826+03	2020-01-26 18:23:12.71333+03
163	275	7	t	t	2020-01-26 18:30:42.285475+03	2020-01-26 18:30:48.241121+03
244	372	7	t	t	2020-01-26 19:44:55.066192+03	2020-01-26 19:45:04.147251+03
164	279	7	t	t	2020-01-26 18:33:16.126013+03	2020-01-26 18:33:22.355842+03
199	349	7	t	t	2020-01-26 19:34:51.487617+03	2020-01-26 19:35:05.091321+03
165	190	7	t	t	2020-01-26 18:35:33.176706+03	2020-01-26 18:35:38.02867+03
166	277	7	t	t	2020-01-26 18:35:55.290065+03	2020-01-26 18:36:41.825781+03
167	280	7	t	t	2020-01-26 18:49:52.261345+03	2020-01-26 18:50:02.88745+03
202	351	7	t	t	2020-01-26 19:35:51.996758+03	2020-01-26 19:36:00.405383+03
168	286	7	t	t	2020-01-26 19:09:22.994353+03	2020-01-26 19:14:47.554315+03
310	400	9	f	f	2020-01-26 19:53:10.976881+03	\N
203	357	7	t	t	2020-01-26 19:38:09.090766+03	2020-01-26 19:38:14.238491+03
251	370	7	t	t	2020-01-26 19:46:27.318041+03	2020-01-26 19:46:33.262783+03
205	300	8	t	t	2020-01-26 19:38:13.62446+03	2020-01-26 19:38:21.66321+03
204	349	8	t	t	2020-01-26 19:38:11.943274+03	2020-01-26 19:38:24.056149+03
213	332	8	f	f	2020-01-26 19:39:59.16967+03	\N
214	338	8	t	t	2020-01-26 19:40:05.536664+03	2020-01-26 19:40:17.372393+03
253	370	8	t	t	2020-01-26 19:46:46.036693+03	2020-01-26 19:47:01.159685+03
217	168	8	t	t	2020-01-26 19:40:16.623267+03	2020-01-26 19:40:30.263003+03
258	341	8	t	t	2020-01-26 19:48:06.713437+03	2020-01-26 19:48:17.216094+03
260	383	7	t	t	2020-01-26 19:48:37.360673+03	2020-01-26 19:48:42.12789+03
264	383	8	t	t	2020-01-26 19:49:21.550187+03	2020-01-26 19:49:32.015678+03
313	301	9	t	t	2020-01-26 19:53:20.712196+03	2020-01-26 19:53:33.217249+03
275	73	7	t	t	2020-01-26 19:50:14.672341+03	2020-01-26 19:50:18.838143+03
277	367	7	t	t	2020-01-26 19:50:27.961034+03	2020-01-26 19:50:35.90692+03
316	379	8	t	t	2020-01-26 19:53:31.698584+03	2020-01-26 19:53:43.248377+03
281	398	7	t	t	2020-01-26 19:50:33.861273+03	2020-01-26 19:50:41.972184+03
280	364	9	t	t	2020-01-26 19:50:33.341883+03	2020-01-26 19:50:50.614038+03
354	439	7	t	t	2020-01-26 19:59:45.874744+03	2020-01-26 19:59:49.379688+03
320	381	7	t	t	2020-01-26 19:53:59.846627+03	2020-01-26 19:54:07.552353+03
389	470	7	t	t	2020-01-26 20:14:25.480645+03	2020-01-26 20:14:51.191248+03
319	341	9	t	t	2020-01-26 19:53:57.224167+03	2020-01-26 19:54:09.37153+03
355	136	9	t	t	2020-01-26 19:59:45.97422+03	2020-01-26 19:59:55.311087+03
326	340	9	t	t	2020-01-26 19:54:50.700085+03	2020-01-26 19:55:02.375356+03
327	431	7	t	t	2020-01-26 19:55:03.03209+03	2020-01-26 19:55:14.205472+03
329	438	7	t	t	2020-01-26 19:55:16.762194+03	2020-01-26 19:55:23.191873+03
358	344	7	t	t	2020-01-26 20:00:08.634373+03	2020-01-26 20:00:13.051778+03
330	84	8	t	t	2020-01-26 19:55:24.095985+03	2020-01-26 19:55:32.960234+03
331	362	9	t	t	2020-01-26 19:55:40.981711+03	2020-01-26 19:55:55.117852+03
419	206	9	t	t	2020-01-26 20:48:36.865654+03	2020-01-26 20:48:50.745189+03
334	435	7	t	t	2020-01-26 19:56:00.833383+03	2020-01-26 19:56:05.838437+03
365	312	9	t	t	2020-01-26 20:01:29.922807+03	2020-01-26 20:01:45.260137+03
338	424	7	t	t	2020-01-26 19:56:10.203779+03	2020-01-26 19:56:18.54641+03
337	397	8	t	t	2020-01-26 19:56:07.932309+03	2020-01-26 19:56:24.393887+03
390	420	8	t	t	2020-01-26 20:14:51.777677+03	2020-01-26 20:15:01.750402+03
340	415	8	t	t	2020-01-26 19:56:43.395736+03	2020-01-26 19:56:56.541091+03
370	397	9	t	t	2020-01-26 20:03:39.80849+03	2020-01-26 20:03:53.541625+03
341	435	8	t	t	2020-01-26 19:56:43.749306+03	2020-01-26 19:57:01.221839+03
343	435	9	f	f	2020-01-26 19:57:29.407517+03	\N
376	47	9	t	t	2020-01-26 20:06:20.055774+03	2020-01-26 20:06:32.219478+03
404	223	9	t	t	2020-01-26 20:34:38.772402+03	2020-01-26 20:34:49.900297+03
312	380	9	t	t	2020-01-26 19:53:15.654813+03	2020-01-26 20:06:47.467836+03
397	473	7	t	t	2020-01-26 20:22:09.732095+03	2020-01-26 20:22:13.305045+03
379	441	9	t	t	2020-01-26 20:07:08.013113+03	2020-01-26 20:07:20.862913+03
381	389	9	t	t	2020-01-26 20:08:22.772818+03	2020-01-26 20:08:36.845807+03
386	456	7	t	t	2020-01-26 20:12:11.124683+03	2020-01-26 20:12:18.206161+03
398	456	9	t	t	2020-01-26 20:23:41.423278+03	2020-01-26 20:23:55.320024+03
387	101	9	t	t	2020-01-26 20:12:22.063255+03	2020-01-26 20:12:35.19199+03
405	119	7	t	t	2020-01-26 20:34:46.404185+03	2020-01-26 20:34:52.464828+03
399	59	7	t	t	2020-01-26 20:23:55.771691+03	2020-01-26 20:24:02.971681+03
400	59	9	t	t	2020-01-26 20:29:45.410241+03	2020-01-26 20:30:01.320702+03
401	486	7	t	t	2020-01-26 20:30:58.297692+03	2020-01-26 20:31:04.864055+03
414	433	7	t	t	2020-01-26 20:44:26.553031+03	2020-01-26 20:44:34.057593+03
429	506	9	t	t	2020-01-26 21:11:16.098084+03	2020-01-26 21:11:24.133014+03
415	501	7	t	t	2020-01-26 20:45:29.714086+03	2020-01-26 20:45:40.841792+03
437	523	7	t	t	2020-01-26 21:27:20.24191+03	2020-01-26 21:27:25.946022+03
436	283	9	t	t	2020-01-26 21:25:47.589225+03	2020-01-26 21:26:03.742817+03
438	525	7	t	t	2020-01-26 21:27:21.501461+03	2020-01-26 21:27:29.163658+03
441	308	9	t	t	2020-01-26 21:43:31.973823+03	2020-01-26 21:43:42.083471+03
447	529	7	t	t	2020-01-26 21:58:38.781648+03	2020-01-26 21:58:46.089226+03
448	72	9	t	t	2020-01-26 22:00:21.930411+03	2020-01-26 22:00:31.574806+03
456	541	7	t	t	2020-01-26 23:42:59.399617+03	2020-01-26 23:43:05.272112+03
457	542	7	t	t	2020-01-26 23:44:34.962238+03	2020-01-26 23:44:43.275011+03
458	475	7	t	t	2020-01-26 23:45:16.359318+03	2020-01-26 23:45:22.384647+03
461	547	7	t	t	2020-01-27 00:19:29.584097+03	2020-01-27 00:19:37.193795+03
464	454	7	t	t	2020-01-27 08:27:40.155576+03	2020-01-27 08:27:47.469892+03
468	442	7	t	t	2020-01-27 10:41:55.95127+03	2020-01-27 10:42:04.435955+03
469	365	7	t	t	2020-01-27 10:42:23.402531+03	2020-01-27 10:42:29.602902+03
470	555	7	t	t	2020-01-27 10:57:14.341974+03	2020-01-27 10:57:30.04074+03
471	564	7	t	t	2020-01-27 10:58:24.843944+03	2020-01-27 10:58:33.600447+03
473	379	10	t	t	2020-01-27 11:31:09.734749+03	2020-01-27 11:31:18.022652+03
474	70	10	t	t	2020-01-27 11:33:44.076181+03	2020-01-27 11:33:49.808561+03
476	557	10	t	t	2020-01-27 11:41:02.958505+03	2020-01-27 11:41:07.990211+03
510	11	7	t	t	2020-01-28 23:48:06.513459+03	2020-01-28 23:48:10.890369+03
511	573	7	t	t	2020-01-29 17:19:20.384539+03	2020-01-29 17:19:32.309344+03
512	468	7	t	t	2020-01-29 17:37:58.967081+03	2020-01-29 17:38:07.511165+03
554	250	11	t	t	2020-02-01 16:32:59.284739+03	2020-02-01 16:33:07.058198+03
513	614	7	t	t	2020-01-29 20:48:56.565587+03	2020-01-29 20:49:02.8982+03
514	617	7	t	t	2020-01-29 23:17:01.589623+03	2020-01-29 23:17:07.510006+03
515	619	7	t	t	2020-01-30 12:55:01.634938+03	2020-01-30 12:55:11.843315+03
555	49	11	t	t	2020-02-01 17:18:10.97875+03	2020-02-01 17:18:14.292615+03
516	556	7	t	t	2020-01-30 17:11:23.701107+03	2020-01-30 17:11:28.688896+03
517	621	7	t	t	2020-01-30 23:21:02.944719+03	2020-01-30 23:21:10.830529+03
518	419	7	f	f	2020-01-31 05:59:13.173982+03	\N
519	627	7	t	t	2020-01-31 21:36:34.801291+03	2020-01-31 21:36:40.280593+03
582	256	7	t	t	2020-02-01 17:34:08.805998+03	2020-02-01 17:34:18.516025+03
520	535	7	t	t	2020-01-31 23:22:36.955927+03	2020-01-31 23:22:46.45859+03
556	541	11	t	t	2020-02-01 17:19:56.782714+03	2020-02-01 17:20:02.103287+03
521	439	11	t	t	2020-02-01 12:19:17.835255+03	2020-02-01 12:19:23.933139+03
522	370	11	t	t	2020-02-01 12:28:32.885427+03	2020-02-01 12:28:38.231844+03
557	399	11	t	t	2020-02-01 17:20:00.332921+03	2020-02-01 17:20:10.649539+03
523	627	11	t	t	2020-02-01 12:29:43.946604+03	2020-02-01 12:29:49.465426+03
524	450	11	t	t	2020-02-01 12:37:15.203175+03	2020-02-01 12:37:22.16309+03
525	631	7	t	t	2020-02-01 12:39:23.201646+03	2020-02-01 12:39:29.889537+03
598	501	11	t	t	2020-02-01 23:56:45.958046+03	2020-02-01 23:56:59.712001+03
526	238	11	t	t	2020-02-01 12:44:58.564752+03	2020-02-01 12:45:03.565151+03
558	476	11	t	t	2020-02-01 17:20:12.10671+03	2020-02-01 17:20:18.783067+03
527	631	11	t	t	2020-02-01 12:45:30.437705+03	2020-02-01 12:45:34.915056+03
528	441	11	t	t	2020-02-01 12:56:51.795345+03	2020-02-01 12:57:00.337446+03
583	678	7	t	t	2020-02-01 17:40:41.309399+03	2020-02-01 17:40:48.521971+03
529	55	11	t	t	2020-02-01 12:58:52.873016+03	2020-02-01 12:59:02.940765+03
560	223	11	t	t	2020-02-01 17:20:42.076099+03	2020-02-01 17:20:48.398584+03
530	312	11	t	t	2020-02-01 12:59:49.308336+03	2020-02-01 12:59:55.418493+03
531	633	11	t	t	2020-02-01 13:00:18.05415+03	2020-02-01 13:00:27.950005+03
559	70	11	t	t	2020-02-01 17:20:13.903113+03	2020-02-01 17:20:58.248792+03
532	633	7	t	t	2020-02-01 13:09:17.611557+03	2020-02-01 13:09:29.683372+03
533	486	11	t	t	2020-02-01 13:13:06.9646+03	2020-02-01 13:13:14.263128+03
534	358	11	t	t	2020-02-01 13:17:56.729482+03	2020-02-01 13:18:01.826189+03
561	646	11	t	t	2020-02-01 17:21:41.00569+03	2020-02-01 17:21:45.360273+03
535	73	11	t	t	2020-02-01 13:35:46.644366+03	2020-02-01 13:35:53.250562+03
536	579	11	t	t	2020-02-01 13:40:05.21353+03	2020-02-01 13:40:09.545625+03
584	180	11	t	t	2020-02-01 17:44:22.552137+03	2020-02-01 17:44:30.392565+03
537	636	11	t	t	2020-02-01 13:47:42.856486+03	2020-02-01 13:47:49.245632+03
562	105	11	t	t	2020-02-01 17:21:52.559202+03	2020-02-01 17:21:59.2739+03
538	253	11	t	t	2020-02-01 13:54:38.886631+03	2020-02-01 13:54:44.089423+03
539	604	11	t	t	2020-02-01 13:56:31.960651+03	2020-02-01 13:56:36.038835+03
540	165	11	t	t	2020-02-01 13:58:27.824412+03	2020-02-01 13:58:49.806716+03
541	638	7	t	t	2020-02-01 14:07:35.500125+03	2020-02-01 14:07:40.606474+03
563	256	11	t	t	2020-02-01 17:22:11.66488+03	2020-02-01 17:22:18.630307+03
542	466	11	t	t	2020-02-01 14:08:56.268266+03	2020-02-01 14:09:02.462936+03
543	13	11	t	t	2020-02-01 14:13:37.248664+03	2020-02-01 14:13:45.582382+03
564	649	11	t	t	2020-02-01 17:22:15.333295+03	2020-02-01 17:22:23.77907+03
544	132	11	t	t	2020-02-01 14:49:42.055012+03	2020-02-01 14:49:46.999561+03
545	129	11	t	t	2020-02-01 15:12:26.369213+03	2020-02-01 15:12:33.439536+03
585	647	11	t	t	2020-02-01 17:45:25.448918+03	2020-02-01 17:45:31.995248+03
546	461	11	t	t	2020-02-01 15:26:45.067405+03	2020-02-01 15:26:56.148017+03
565	174	11	t	t	2020-02-01 17:22:30.125056+03	2020-02-01 17:22:40.367895+03
547	193	11	t	t	2020-02-01 15:56:17.989524+03	2020-02-01 15:56:23.932165+03
548	262	11	t	t	2020-02-01 15:58:46.584312+03	2020-02-01 15:59:04.83212+03
549	325	11	t	t	2020-02-01 15:58:57.743659+03	2020-02-01 15:59:07.306765+03
566	115	11	t	t	2020-02-01 17:22:40.414049+03	2020-02-01 17:22:46.407395+03
550	275	11	t	t	2020-02-01 16:10:05.194915+03	2020-02-01 16:10:10.030107+03
551	348	11	t	t	2020-02-01 16:10:35.83473+03	2020-02-01 16:10:44.893815+03
599	686	11	t	t	2020-02-02 09:42:05.951994+03	2020-02-02 09:42:14.511241+03
552	84	11	t	t	2020-02-01 16:11:46.679659+03	2020-02-01 16:11:51.494963+03
567	661	11	t	t	2020-02-01 17:22:47.767853+03	2020-02-01 17:23:00.251313+03
553	72	11	t	t	2020-02-01 16:25:59.075781+03	2020-02-01 16:26:05.922857+03
586	674	11	t	t	2020-02-01 17:49:58.541094+03	2020-02-01 17:50:03.687912+03
568	138	11	t	t	2020-02-01 17:23:10.852259+03	2020-02-01 17:23:17.652361+03
569	645	7	t	t	2020-02-01 17:23:38.892865+03	2020-02-01 17:23:44.268903+03
570	653	7	t	t	2020-02-01 17:23:54.273979+03	2020-02-01 17:24:03.743896+03
587	679	11	t	t	2020-02-01 17:50:15.01261+03	2020-02-01 17:50:20.575085+03
571	662	11	t	t	2020-02-01 17:24:14.311418+03	2020-02-01 17:24:29.039059+03
572	666	11	t	t	2020-02-01 17:24:34.198334+03	2020-02-01 17:24:38.47014+03
609	634	11	t	t	2020-02-02 13:57:04.962148+03	2020-02-02 13:57:12.048854+03
573	39	11	t	t	2020-02-01 17:24:59.50247+03	2020-02-01 17:25:05.245488+03
588	672	11	t	t	2020-02-01 18:00:31.829541+03	2020-02-01 18:00:38.703092+03
574	663	7	t	t	2020-02-01 17:26:59.469798+03	2020-02-01 17:27:06.52553+03
575	652	11	f	f	2020-02-01 17:27:41.881116+03	\N
576	669	11	t	t	2020-02-01 17:27:51.840291+03	2020-02-01 17:27:57.67893+03
600	102	11	t	t	2020-02-02 10:14:39.55261+03	2020-02-02 10:14:44.032776+03
577	543	11	t	t	2020-02-01 17:28:08.548984+03	2020-02-01 17:28:15.235733+03
578	671	11	f	f	2020-02-01 17:28:50.819624+03	\N
589	106	11	t	t	2020-02-01 18:13:57.583947+03	2020-02-01 18:14:02.456539+03
579	673	11	t	t	2020-02-01 17:28:59.690153+03	2020-02-01 17:29:06.718509+03
580	663	11	t	t	2020-02-01 17:33:00.156161+03	2020-02-01 17:33:09.249738+03
581	373	11	t	t	2020-02-01 17:33:42.607643+03	2020-02-01 17:33:48.130386+03
590	134	11	t	t	2020-02-01 18:14:21.520843+03	2020-02-01 18:14:26.957932+03
591	425	11	t	t	2020-02-01 18:26:36.14786+03	2020-02-01 18:26:44.077653+03
601	379	11	t	t	2020-02-02 10:37:13.926259+03	2020-02-02 10:37:19.741538+03
592	245	11	t	t	2020-02-01 19:34:38.359405+03	2020-02-01 19:34:44.06154+03
593	83	11	t	t	2020-02-01 20:12:05.870302+03	2020-02-01 20:12:09.887178+03
615	92	7	t	t	2020-02-02 15:52:03.59127+03	2020-02-02 15:52:08.70992+03
594	673	7	t	t	2020-02-01 20:22:47.034309+03	2020-02-01 20:22:53.179594+03
602	591	11	t	t	2020-02-02 10:46:24.025248+03	2020-02-02 10:46:28.629111+03
595	617	11	t	t	2020-02-01 21:08:11.304574+03	2020-02-01 21:08:18.146171+03
596	555	11	t	t	2020-02-01 22:41:45.732955+03	2020-02-01 22:41:52.410329+03
610	410	11	t	t	2020-02-02 14:08:44.456651+03	2020-02-02 14:08:51.718584+03
597	683	11	t	t	2020-02-01 23:04:39.404122+03	2020-02-01 23:04:43.769612+03
603	349	11	t	t	2020-02-02 11:02:08.861274+03	2020-02-02 11:02:20.342377+03
604	155	11	t	t	2020-02-02 11:28:25.809605+03	2020-02-02 11:28:30.782502+03
606	525	11	f	f	2020-02-02 12:32:33.583211+03	\N
605	525	11	t	t	2020-02-02 12:32:33.567005+03	2020-02-02 12:32:43.636264+03
607	168	11	t	t	2020-02-02 12:41:34.43349+03	2020-02-02 12:41:39.314691+03
611	519	11	t	t	2020-02-02 14:40:33.051653+03	2020-02-02 14:40:42.465041+03
608	687	11	t	t	2020-02-02 13:08:30.544161+03	2020-02-02 13:08:37.813895+03
621	557	11	t	t	2020-02-02 22:52:13.694457+03	2020-02-02 22:52:18.486233+03
612	162	11	t	t	2020-02-02 14:40:42.243034+03	2020-02-02 14:40:49.733968+03
616	283	11	t	t	2020-02-02 16:36:39.150133+03	2020-02-02 16:36:46.557336+03
613	433	11	t	t	2020-02-02 14:49:58.438242+03	2020-02-02 14:50:03.981953+03
614	92	11	t	t	2020-02-02 15:28:57.85504+03	2020-02-02 15:29:04.793284+03
619	186	11	t	t	2020-02-02 19:44:37.853127+03	2020-02-02 19:44:41.577424+03
617	427	11	t	t	2020-02-02 18:27:40.335352+03	2020-02-02 18:27:44.409275+03
618	59	11	t	t	2020-02-02 18:51:38.039157+03	2020-02-02 18:51:45.388075+03
620	689	7	t	t	2020-02-02 20:17:15.283743+03	2020-02-02 20:17:21.483913+03
622	75	11	t	t	2020-02-02 23:21:51.54534+03	2020-02-02 23:22:00.670788+03
623	614	11	t	t	2020-02-03 07:57:12.672968+03	2020-02-03 07:57:18.634607+03
624	239	11	t	t	2020-02-03 09:56:00.647601+03	2020-02-03 09:56:06.584728+03
625	593	11	t	t	2020-02-03 12:17:57.380393+03	2020-02-03 12:18:01.894564+03
626	90	11	t	t	2020-02-03 13:00:35.816327+03	2020-02-03 13:00:42.635532+03
627	292	11	t	t	2020-02-03 13:22:26.541714+03	2020-02-03 13:22:46.981419+03
628	206	11	t	t	2020-02-03 18:37:51.706707+03	2020-02-03 18:37:57.101734+03
629	690	7	t	t	2020-02-03 22:34:37.425361+03	2020-02-03 22:34:47.986725+03
630	690	11	t	t	2020-02-03 22:41:08.832462+03	2020-02-03 22:41:16.342333+03
631	94	11	t	t	2020-02-04 06:58:40.702034+03	2020-02-04 06:58:48.681345+03
632	694	12	t	t	2020-02-04 16:35:07.452863+03	2020-02-04 16:35:23.544393+03
633	695	12	t	t	2020-02-04 16:36:29.425731+03	2020-02-04 16:36:36.270025+03
634	690	12	t	t	2020-02-04 16:43:55.403192+03	2020-02-04 16:44:01.897624+03
635	155	12	t	t	2020-02-04 17:04:15.771015+03	2020-02-04 17:04:21.712934+03
636	132	12	t	t	2020-02-04 17:05:53.210346+03	2020-02-04 17:06:02.133685+03
637	604	12	t	t	2020-02-04 17:17:20.117733+03	2020-02-04 17:17:24.337682+03
638	114	12	f	f	2020-02-04 18:10:50.974031+03	\N
639	78	11	t	t	2020-02-04 18:27:32.78765+03	2020-02-04 18:27:41.154626+03
640	78	12	t	t	2020-02-04 18:40:14.009806+03	2020-02-04 18:40:22.664237+03
681	709	13	t	t	2020-02-05 20:44:13.601374+03	2020-02-05 20:44:17.985678+03
641	358	12	t	t	2020-02-04 19:08:04.063458+03	2020-02-04 19:08:17.128367+03
642	168	12	t	t	2020-02-04 19:10:04.328084+03	2020-02-04 19:10:08.2997+03
643	275	12	t	t	2020-02-04 20:21:04.663165+03	2020-02-04 20:21:10.868697+03
644	461	12	t	t	2020-02-04 21:31:14.263969+03	2020-02-04 21:31:23.991379+03
682	177	13	t	t	2020-02-05 20:44:36.864778+03	2020-02-05 20:44:44.440101+03
645	542	11	t	t	2020-02-04 21:52:24.297408+03	2020-02-04 21:52:30.897699+03
726	75	13	t	t	2020-02-05 21:59:37.105533+03	2020-02-05 21:59:45.831517+03
646	557	12	t	t	2020-02-04 22:33:59.950429+03	2020-02-04 22:34:04.669489+03
683	68	13	t	t	2020-02-05 20:44:41.086012+03	2020-02-05 20:44:47.250295+03
647	312	12	t	t	2020-02-04 22:36:40.552176+03	2020-02-04 22:36:48.240709+03
648	102	12	t	t	2020-02-04 22:40:24.084742+03	2020-02-04 22:40:29.904127+03
711	723	13	t	t	2020-02-05 20:52:52.076186+03	2020-02-05 20:52:58.148042+03
649	186	12	t	t	2020-02-04 23:47:21.23343+03	2020-02-04 23:47:25.060619+03
684	12	13	t	t	2020-02-05 20:45:06.622637+03	2020-02-05 20:45:11.593225+03
650	379	12	t	t	2020-02-05 00:51:15.117379+03	2020-02-05 00:51:20.46856+03
651	543	12	t	t	2020-02-05 07:00:44.978132+03	2020-02-05 07:00:51.399913+03
652	245	12	t	t	2020-02-05 09:55:38.656023+03	2020-02-05 09:55:44.938882+03
653	62	11	t	t	2020-02-05 12:52:06.532072+03	2020-02-05 12:52:19.829862+03
654	62	12	t	t	2020-02-05 13:01:19.92562+03	2020-02-05 13:01:35.394401+03
686	541	13	t	t	2020-02-05 20:45:31.666898+03	2020-02-05 20:45:37.035933+03
655	49	12	t	t	2020-02-05 13:35:32.89416+03	2020-02-05 13:35:38.274844+03
656	415	12	t	t	2020-02-05 13:37:47.382665+03	2020-02-05 13:37:53.159695+03
712	720	13	t	t	2020-02-05 20:52:55.908837+03	2020-02-05 20:52:59.805789+03
657	105	12	t	t	2020-02-05 13:49:50.554146+03	2020-02-05 13:49:58.838817+03
685	719	13	t	t	2020-02-05 20:45:23.317626+03	2020-02-05 20:45:46.951545+03
658	704	7	t	t	2020-02-05 13:54:49.454696+03	2020-02-05 13:54:57.42586+03
689	718	13	f	f	2020-02-05 20:45:47.202221+03	\N
659	704	11	t	t	2020-02-05 14:05:36.79325+03	2020-02-05 14:05:43.828195+03
660	69	12	t	t	2020-02-05 15:15:40.737134+03	2020-02-05 15:15:47.414493+03
688	449	13	t	t	2020-02-05 20:45:44.808337+03	2020-02-05 20:45:52.726183+03
661	69	11	t	t	2020-02-05 15:26:11.066308+03	2020-02-05 15:26:16.644752+03
662	206	12	t	t	2020-02-05 16:21:59.903397+03	2020-02-05 16:22:05.299911+03
687	479	13	t	t	2020-02-05 20:45:34.98609+03	2020-02-05 20:45:53.939715+03
663	704	12	t	t	2020-02-05 16:33:18.221125+03	2020-02-05 16:33:24.135856+03
664	262	12	t	t	2020-02-05 18:19:11.196208+03	2020-02-05 18:19:28.372823+03
665	84	12	t	t	2020-02-05 19:44:25.933166+03	2020-02-05 19:44:30.660846+03
690	443	13	t	t	2020-02-05 20:45:57.962892+03	2020-02-05 20:46:04.152177+03
666	55	12	t	t	2020-02-05 19:56:22.702498+03	2020-02-05 19:57:07.447282+03
691	726	13	f	f	2020-02-05 20:46:07.654662+03	\N
667	62	13	t	t	2020-02-05 20:25:45.11935+03	2020-02-05 20:26:03.412113+03
668	345	13	t	t	2020-02-05 20:26:54.841664+03	2020-02-05 20:27:00.747724+03
669	710	13	t	t	2020-02-05 20:29:25.9989+03	2020-02-05 20:29:32.399928+03
670	669	13	t	t	2020-02-05 20:33:53.225853+03	2020-02-05 20:34:04.165419+03
713	686	12	t	t	2020-02-05 20:54:24.587175+03	2020-02-05 20:54:28.593681+03
671	686	13	t	t	2020-02-05 20:34:08.170878+03	2020-02-05 20:34:15.133505+03
693	355	13	t	t	2020-02-05 20:46:22.680242+03	2020-02-05 20:46:28.083757+03
672	713	11	t	t	2020-02-05 20:34:42.252678+03	2020-02-05 20:34:53.776829+03
695	715	13	f	f	2020-02-05 20:46:30.467123+03	\N
673	105	13	t	t	2020-02-05 20:34:59.684056+03	2020-02-05 20:35:13.221927+03
727	292	13	t	t	2020-02-05 22:30:35.702646+03	2020-02-05 22:31:00.576001+03
674	83	12	t	t	2020-02-05 20:35:11.082099+03	2020-02-05 20:35:24.663931+03
692	725	13	t	t	2020-02-05 20:46:19.69167+03	2020-02-05 20:46:31.47379+03
676	49	13	t	t	2020-02-05 20:35:39.698663+03	2020-02-05 20:35:44.078296+03
714	752	13	t	t	2020-02-05 20:54:25.769552+03	2020-02-05 20:54:32.753647+03
675	258	13	t	t	2020-02-05 20:35:37.505969+03	2020-02-05 20:35:46.828673+03
694	449	7	t	t	2020-02-05 20:46:23.458029+03	2020-02-05 20:46:33.09052+03
677	478	13	t	t	2020-02-05 20:39:14.034454+03	2020-02-05 20:39:23.584731+03
678	716	13	t	t	2020-02-05 20:41:36.363822+03	2020-02-05 20:41:43.806622+03
679	83	13	t	t	2020-02-05 20:41:58.066944+03	2020-02-05 20:42:07.89607+03
696	714	13	t	t	2020-02-05 20:46:38.863662+03	2020-02-05 20:46:47.39619+03
680	717	7	t	t	2020-02-05 20:42:20.357188+03	2020-02-05 20:42:28.368657+03
697	735	13	t	t	2020-02-05 20:46:48.346251+03	2020-02-05 20:46:56.566381+03
715	358	13	t	t	2020-02-05 20:56:14.344786+03	2020-02-05 20:56:20.904576+03
698	48	13	t	t	2020-02-05 20:46:56.91998+03	2020-02-05 20:47:01.097661+03
699	103	13	t	t	2020-02-05 20:47:00.686077+03	2020-02-05 20:47:10.186794+03
736	762	11	t	t	2020-02-06 06:42:23.646557+03	2020-02-06 06:42:29.773723+03
700	312	13	t	t	2020-02-05 20:47:37.72833+03	2020-02-05 20:47:42.258716+03
716	754	11	t	t	2020-02-05 20:58:29.730634+03	2020-02-05 20:58:36.41454+03
701	736	13	t	t	2020-02-05 20:47:38.743987+03	2020-02-05 20:47:44.122475+03
702	738	13	t	t	2020-02-05 20:47:41.067755+03	2020-02-05 20:47:51.281199+03
703	737	13	f	f	2020-02-05 20:48:01.846968+03	\N
728	165	12	t	t	2020-02-05 23:46:00.328518+03	2020-02-05 23:46:10.129037+03
704	84	13	t	t	2020-02-05 20:48:25.535197+03	2020-02-05 20:48:29.625201+03
717	500	13	t	t	2020-02-05 21:00:57.237092+03	2020-02-05 21:01:04.901903+03
705	722	11	t	t	2020-02-05 20:49:04.592137+03	2020-02-05 20:49:12.098664+03
706	746	13	f	f	2020-02-05 20:49:28.251192+03	\N
707	579	12	t	t	2020-02-05 20:50:13.605959+03	2020-02-05 20:50:23.395905+03
708	743	13	t	t	2020-02-05 20:50:23.754644+03	2020-02-05 20:50:34.732792+03
718	579	13	t	t	2020-02-05 21:02:08.798392+03	2020-02-05 21:02:15.933095+03
709	102	13	t	t	2020-02-05 20:51:04.081238+03	2020-02-05 20:51:10.412508+03
710	336	13	t	t	2020-02-05 20:51:33.644854+03	2020-02-05 20:51:46.943903+03
719	500	11	t	t	2020-02-05 21:11:19.102526+03	2020-02-05 21:11:30.305915+03
729	761	13	t	t	2020-02-06 04:13:39.554052+03	2020-02-06 04:13:49.156553+03
720	72	12	t	t	2020-02-05 21:24:51.732422+03	2020-02-05 21:24:57.666732+03
721	72	13	t	t	2020-02-05 21:30:40.689415+03	2020-02-05 21:30:45.144035+03
722	449	12	t	t	2020-02-05 21:44:28.14426+03	2020-02-05 21:44:32.915858+03
730	761	7	t	t	2020-02-06 04:24:49.720234+03	2020-02-06 04:24:55.99507+03
723	758	13	t	t	2020-02-05 21:46:50.488747+03	2020-02-05 21:46:56.391454+03
724	75	12	t	t	2020-02-05 21:50:59.009605+03	2020-02-05 21:51:17.213268+03
737	334	12	t	t	2020-02-06 06:55:43.917686+03	2020-02-06 06:55:48.605994+03
725	449	11	t	t	2020-02-05 21:56:03.427762+03	2020-02-05 21:56:08.273682+03
731	761	11	t	t	2020-02-06 04:33:09.322878+03	2020-02-06 04:33:17.125112+03
743	379	13	t	t	2020-02-06 10:42:45.485914+03	2020-02-06 10:42:50.352419+03
732	283	12	t	t	2020-02-06 05:51:50.902125+03	2020-02-06 05:51:58.504787+03
738	334	13	t	t	2020-02-06 07:24:47.440449+03	2020-02-06 07:24:55.550949+03
733	283	13	t	t	2020-02-06 06:02:57.518318+03	2020-02-06 06:03:07.029345+03
734	762	13	t	t	2020-02-06 06:32:16.269164+03	2020-02-06 06:32:24.315516+03
735	334	11	t	t	2020-02-06 06:38:38.702631+03	2020-02-06 06:38:49.415529+03
739	763	13	t	t	2020-02-06 08:17:39.448257+03	2020-02-06 08:17:56.980794+03
750	519	13	t	t	2020-02-06 14:42:51.641111+03	2020-02-06 14:42:58.051575+03
740	132	13	t	t	2020-02-06 09:06:53.567881+03	2020-02-06 09:07:00.969906+03
741	765	13	f	f	2020-02-06 10:11:53.227205+03	\N
744	78	13	t	t	2020-02-06 11:33:41.079323+03	2020-02-06 11:33:48.115677+03
742	12	11	t	t	2020-02-06 10:34:09.938907+03	2020-02-06 10:34:15.350278+03
747	627	12	t	t	2020-02-06 13:00:27.870626+03	2020-02-06 13:00:32.679041+03
745	557	13	t	t	2020-02-06 12:28:22.271036+03	2020-02-06 12:28:26.716247+03
746	770	13	t	t	2020-02-06 12:46:50.178138+03	2020-02-06 12:47:00.142189+03
749	519	12	t	t	2020-02-06 14:35:07.852797+03	2020-02-06 14:35:13.827589+03
748	627	13	t	t	2020-02-06 13:06:34.987513+03	2020-02-06 13:06:38.931594+03
751	193	13	t	t	2020-02-06 15:12:33.281807+03	2020-02-06 15:12:38.935815+03
752	193	12	t	t	2020-02-06 15:23:00.454091+03	2020-02-06 15:23:04.550863+03
753	771	13	t	t	2020-02-06 16:52:02.546828+03	2020-02-06 16:52:15.564852+03
754	262	13	t	t	2020-02-06 18:09:07.854087+03	2020-02-06 18:09:13.541705+03
755	772	13	t	t	2020-02-06 19:08:51.716566+03	2020-02-06 19:09:00.92893+03
756	325	13	t	t	2020-02-06 20:23:11.99523+03	2020-02-06 20:23:17.121856+03
757	461	13	t	t	2020-02-06 20:23:59.630008+03	2020-02-06 20:24:08.263422+03
758	441	13	t	t	2020-02-06 20:37:19.099082+03	2020-02-06 20:37:26.844028+03
759	129	13	t	t	2020-02-06 22:27:45.693835+03	2020-02-06 22:27:52.063349+03
760	591	13	t	t	2020-02-07 00:59:15.207007+03	2020-02-07 00:59:20.283776+03
761	704	13	t	t	2020-02-07 08:48:35.231226+03	2020-02-07 08:48:42.533281+03
762	275	13	t	t	2020-02-07 19:19:10.764306+03	2020-02-07 19:19:19.647666+03
763	73	13	t	t	2020-02-07 21:33:51.511416+03	2020-02-07 21:34:00.284604+03
764	13	13	t	t	2020-02-07 23:08:44.752289+03	2020-02-07 23:08:53.268457+03
765	470	13	t	t	2020-02-08 00:36:03.893917+03	2020-02-08 00:36:21.074027+03
766	543	13	t	t	2020-02-08 10:05:58.778375+03	2020-02-08 10:06:03.657712+03
767	604	13	t	t	2020-02-08 11:36:44.839943+03	2020-02-08 11:36:50.125723+03
768	92	13	t	t	2020-02-08 12:18:40.665368+03	2020-02-08 12:18:45.81442+03
769	180	13	t	t	2020-02-08 13:09:24.176624+03	2020-02-08 13:09:28.987786+03
\.


--
-- TOC entry 3077 (class 0 OID 17349)
-- Dependencies: 238
-- Data for Name: UserQuestionAnswers; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."UserQuestionAnswers" ("Id", "SurveyUserId", "QuestionaryID", "Answer") FROM stdin;
1	1	1	да
2	2	1	Да
3	3	1	да
4	4	1	Да
5	5	1	да
6	6	1	Да
7	7	1	Да
8	8	1	Да
9	9	1	да
10	10	1	Да
11	11	2	Да
12	12	3	да
13	13	1	да
14	14	3	Да
15	15	4	да
16	16	4	да
17	17	4	Да
18	18	5	Да
19	19	5	Да
20	20	4	Да
21	21	6	Ага
22	22	6	Ага
23	23	7	Да
24	23	8	Да
25	24	8	Да
26	24	7	Да
27	25	7	да
28	25	8	да
29	26	7	Да
30	26	8	Да
31	27	7	Да
32	27	8	Да
33	28	7	да
34	28	8	да
35	29	7	да
36	29	8	да
37	30	7	Да
38	30	8	да
39	31	7	да
40	31	8	да
41	32	7	да
42	32	8	да
43	33	7	Да
44	33	8	да
45	34	7	да
46	34	8	да
47	35	7	Да
48	35	8	да
49	36	7	Да
50	36	8	Да
51	37	7	да
52	37	8	да
53	38	7	Да
54	38	8	Да
55	39	7	Да
56	39	8	Да
57	40	7	Да
58	40	8	Да
59	41	7	Да
60	41	8	Да
61	42	7	да
62	42	8	да
63	43	7	да
64	43	8	да
65	44	7	да
66	44	8	да
67	45	7	да
68	45	8	да
69	46	7	да
70	46	8	да
71	47	7	да
72	47	8	да
73	48	7	Да
74	49	7	да
75	48	8	Да
76	49	8	да
77	50	7	да
78	50	8	да
79	51	7	да
80	51	8	да
81	52	7	да
82	52	8	да
83	53	7	Да
84	53	8	Да
85	54	7	Да
86	54	8	Да
87	55	7	Да
88	55	8	Да
89	56	7	да
90	56	8	да
91	57	7	да
92	57	8	да
93	58	7	да
94	58	8	да
95	59	7	Да
96	59	8	Да
97	60	7	да
98	60	8	да
99	61	7	Да
100	61	8	да
101	62	7	Да
102	62	8	Да
103	63	7	Да
104	63	8	Да
105	64	7	Да
106	64	8	Да
107	65	7	Да
108	65	8	Да
109	66	7	да
110	66	8	да
111	67	7	Да
112	67	8	Да
113	68	7	да
114	69	7	да
115	69	8	да
116	68	8	да
117	70	7	Да
118	71	7	да
119	70	8	Да
120	71	8	да
121	72	7	да
122	72	8	да
123	73	7	да
124	73	8	да
125	74	7	Да
126	74	8	Да
127	75	7	Да
128	75	8	Да
129	76	7	Да
130	76	8	Да
131	77	7	да
132	77	8	да
133	78	7	Да
134	79	7	да
135	79	8	да
136	80	7	Да
137	80	8	Да
138	81	7	да
139	78	8	Да
140	82	8	да
141	82	7	да
142	83	7	да
143	83	8	да
144	84	7	Да
145	84	8	да
146	85	7	да
147	85	8	да
148	86	7	Да
149	87	7	Да
150	86	8	Да
151	87	8	да
152	88	7	Да
153	88	8	Да
154	89	7	Да
155	89	8	Да
156	90	7	Да
157	90	8	Да
158	91	7	Да
159	91	8	Да
169	97	8	да
160	92	7	да
164	94	7	Да
165	94	8	Да
161	93	7	да
162	92	8	да
163	93	8	да
166	95	7	да
167	95	8	да
168	96	7	да
170	97	7	да
171	96	8	да
172	98	7	Да
173	98	8	Да
174	99	7	Да
175	99	8	Да
176	100	7	да
177	100	8	да
178	101	7	Да
179	101	8	Да
180	102	7	Да
181	102	8	Да
182	103	7	Да
183	103	8	Да
184	104	7	Да
185	105	7	да
186	104	8	Да
187	105	8	да
188	106	7	Да
189	106	8	Да
190	107	7	да
191	107	8	да
192	108	7	Да
193	108	8	да
194	109	7	Да
195	109	8	Да
196	110	7	да
197	110	8	да
198	111	7	Да
199	112	7	да
200	112	8	да
201	111	8	Да
202	113	7	Да
203	113	8	Да
204	114	7	да
205	114	8	да
206	115	7	Да
207	115	8	Да
208	116	7	Да
209	116	8	Да
210	117	7	Да
211	117	8	Да
212	118	7	да
213	118	8	да
214	119	7	да
215	119	8	да
216	120	7	да
217	120	8	да
218	121	7	Да
219	121	8	Да
220	122	7	Да
221	122	8	Да
222	123	7	да
223	123	8	да
224	124	7	да
225	124	8	да
226	125	7	Да
227	125	8	Да
228	126	7	да
229	126	8	да
230	127	7	да
231	127	8	да
232	128	7	Да
233	128	8	Да
234	129	7	да
235	129	8	да
236	130	7	Да
237	130	8	Да
238	131	7	Да
239	131	8	Да
240	132	7	Да
241	132	8	Да
242	133	7	Да
243	134	7	Да
244	135	7	да
245	133	8	Да
246	134	8	Да
247	135	8	да
248	136	7	Да
249	136	8	Да
250	137	7	да
251	137	8	да
252	138	7	да
253	138	8	да
254	139	7	да
255	139	8	да
256	140	7	Да
257	140	8	Да
258	141	7	да
259	141	8	Да
260	142	7	Да
261	142	8	Да
262	143	7	да
263	143	8	да
264	144	7	да
265	145	7	да
266	145	8	да
267	144	8	да
268	146	7	Да
269	146	8	Да
270	147	7	Да
271	147	8	Да
272	148	7	да
273	148	8	да
274	149	7	Да
275	149	8	Да
276	150	7	да
277	150	8	да
278	151	7	да
279	151	8	Да
280	152	7	да
281	152	8	да
282	153	7	Да
283	153	8	Да
284	154	7	да
285	154	8	да
286	155	7	да
287	156	7	Да
288	155	8	да
289	156	8	Да
290	157	7	да
291	157	8	да
292	158	7	да
293	158	8	да
294	159	7	Да
295	159	8	Да
296	160	7	да
297	160	8	да
298	161	7	Да
299	161	8	Да
300	162	7	Да
301	162	8	Да
302	163	7	да
303	163	8	да
304	164	7	да
305	164	8	да
306	165	7	да
307	165	8	да
308	166	8	Да
309	166	7	Да
310	167	7	Да
311	167	8	Да
312	168	7	Да
313	168	8	да
314	169	7	да
315	169	8	да
316	170	7	Да
317	170	8	Да
318	171	7	Да
319	171	8	да
320	172	7	да
321	172	8	да
322	173	7	Да
323	173	8	Да
333	177	8	да
334	180	7	Да
335	178	7	Да
343	184	8	да
344	183	8	Да
345	185	7	да
346	186	7	Да
347	185	8	да
349	186	8	Да
351	182	8	да
352	188	7	да
355	190	7	да
356	188	8	да
358	191	7	да
364	194	7	Да
371	197	8	Да
372	198	7	да
390	206	9	да
391	207	9	Да
392	208	9	да
403	209	11	да
404	210	10	Да
405	212	9	Да
324	174	7	да
325	174	8	да
326	175	7	да
327	175	8	да
328	176	7	да
329	176	8	да
330	177	7	Да
331	178	8	Да
332	179	7	Да
337	180	8	Да
340	181	8	Да
341	183	7	Да
342	184	7	да
348	187	7	да
350	187	8	да
360	192	7	да
361	192	8	да
362	193	7	да
363	193	8	да
367	195	8	Да
375	199	8	да
376	200	7	да
377	201	7	Да
393	209	9	да
394	207	10	Да
395	206	10	да
396	208	10	да
397	209	10	да
398	210	9	Да
399	211	9	да
400	208	11	да
401	207	11	Да
402	206	11	да
336	179	8	Да
338	181	7	Да
339	182	7	Да
353	189	7	Да
354	189	8	Да
357	190	8	да
359	191	8	да
365	195	7	Да
366	194	8	Да
368	196	7	да
369	196	8	да
370	197	7	Да
373	198	8	да
374	199	7	да
378	200	8	да
379	201	8	да
380	202	7	Да
381	202	8	Да
382	203	7	да
383	204	9	да
384	205	9	Да
385	203	8	да
386	204	10	да
387	205	10	Да
388	205	11	Да
389	204	11	да
406	213	9	да
407	210	11	Да
408	214	9	да
409	215	9	Да
410	212	10	Да
411	213	10	да
412	216	9	Да
413	214	10	да
414	215	10	Да
415	212	11	Да
416	217	9	да
417	218	11	Да
418	214	11	да
419	215	11	Да
420	216	10	Да
421	217	10	да
422	217	11	да
423	218	10	Да
424	219	9	да
425	216	11	Да
426	218	9	Да
427	219	10	да
428	211	10	да
429	220	9	да
430	219	11	да
431	211	11	да
432	221	7	Да
433	220	10	да
434	220	11	да
435	221	8	Да
436	222	7	да
437	223	7	Да
438	223	8	да
439	222	8	да
440	224	9	да
441	224	10	да
442	224	11	да
443	225	9	да
444	226	7	Да
445	226	8	Да
446	227	7	Да
447	228	9	Да
448	227	8	Да
449	229	9	Да
450	230	9	да
451	229	10	Да
452	231	10	Да
453	230	10	да
454	232	7	да
455	229	11	Да
456	231	11	Да
457	232	8	да
458	230	11	да
459	233	9	да
460	234	7	Да
461	233	10	да
462	233	11	да
463	235	7	Да
464	234	8	Да
465	235	8	Да
466	236	11	Да
467	236	10	Да
468	236	9	Да
469	237	9	Да
470	238	9	Да
471	239	7	Да
472	237	10	Да
473	238	10	да
474	237	11	Да
475	238	11	да
476	240	7	да
477	240	8	да
478	225	10	да
479	241	9	да
480	225	11	да
481	242	9	да
482	241	10	да
483	242	10	да
484	242	11	да
485	243	7	да
486	241	11	да
487	243	8	да
488	244	7	Да
489	244	8	Да
490	245	7	Да
491	246	9	да
492	246	10	да
493	247	9	Да
494	245	8	да
495	246	11	да
496	248	9	да
497	247	10	Да
498	247	11	Да
499	248	10	да
500	248	11	да
501	249	7	Да
502	249	8	Да
503	250	9	да
504	250	10	да
505	251	7	Да
506	250	11	да
507	252	9	Да
508	251	8	да
509	252	10	Да
510	253	9	да
511	254	7	да
512	252	11	Да
513	255	7	да
514	253	10	да
515	255	8	да
516	253	11	да
517	254	8	да
518	256	7	да
519	256	8	да
520	257	9	да
521	258	9	да
522	257	10	да
523	258	10	да
524	257	11	да
525	258	11	да
526	259	9	да
527	259	10	да
528	259	11	да
529	260	7	да
530	260	8	да
531	261	12	да
532	261	13	да
533	261	14	да
534	262	12	да
535	263	7	да
536	263	8	да
537	264	11	да
539	264	9	да
540	264	10	да
555	269	13	да
563	273	13	Да
564	272	12	да
565	271	14	Да
567	272	14	да
568	239	8	Да
569	274	8	да
570	275	7	Да
573	277	7	да
576	280	12	да
577	281	7	да
580	276	14	Да
581	278	14	Да
582	280	13	да
583	281	8	да
584	276	13	Да
598	284	11	да
604	288	8	Да
606	291	9	да
610	290	14	да
611	293	12	да
613	279	13	да
614	294	12	да
624	296	10	да
629	294	14	да
630	299	12	да
631	297	14	да
632	300	7	да
633	301	12	да
634	302	12	Да
637	300	8	да
538	265	12	Да
541	266	9	Да
542	265	13	Да
543	267	12	Да
544	268	12	да
545	266	10	Да
546	265	14	Да
549	268	13	да
550	270	12	да
553	268	14	да
556	270	13	да
557	272	13	да
571	275	8	Да
572	276	12	Да
574	278	12	Да
575	279	12	да
578	278	13	Да
579	277	8	да
585	280	14	да
586	282	9	Да
587	283	7	Да
588	284	9	да
589	285	9	да
592	285	10	да
595	288	7	Да
596	286	13	да
597	285	11	да
599	289	9	да
600	282	11	Да
601	290	12	да
602	286	14	да
603	287	8	Да
605	289	10	да
607	290	13	да
608	292	7	Да
609	289	11	да
615	293	13	да
616	295	7	Да
617	291	10	да
618	279	14	да
619	296	9	да
620	293	14	да
621	297	12	да
622	295	8	Да
623	294	13	да
547	267	13	Да
548	269	12	да
551	267	14	Да
552	271	12	Да
554	266	11	Да
558	269	14	да
559	273	12	Да
560	270	14	да
561	274	7	да
562	271	13	Да
566	273	14	Да
590	286	12	да
591	282	10	Да
593	287	7	Да
594	284	10	да
612	292	8	Да
625	291	11	да
626	297	13	да
627	296	11	да
628	298	12	Да
635	299	13	да
636	298	13	Да
638	303	10	Да
639	302	14	Да
640	301	13	да
641	299	14	да
642	301	14	да
643	303	9	Да
644	302	13	Да
645	298	14	Да
646	304	9	да
647	305	7	да
648	304	10	да
649	303	11	Да
650	305	8	да
651	304	11	да
652	306	12	Да
653	306	13	Да
654	306	14	Да
655	307	9	да
656	307	10	да
657	307	11	да
658	308	12	да
659	308	13	да
660	309	7	Да
661	310	13	да
662	311	7	да
663	308	14	да
664	312	12	да
665	311	8	да
666	309	8	Да
667	313	12	да
668	314	9	да
669	315	12	да
670	313	13	да
671	316	9	Да
672	313	14	да
673	314	10	да
674	315	13	да
675	316	10	Да
676	314	11	да
677	316	11	Да
678	315	14	да
679	317	9	Да
680	318	9	Да
681	317	10	Да
682	318	10	Да
683	319	12	да
684	317	11	Да
685	318	11	Да
686	320	7	Да
687	319	13	да
688	320	8	Да
689	319	14	да
690	321	12	да
691	321	13	да
692	321	14	да
693	322	9	Да
694	322	10	Да
695	322	11	да
696	323	7	да
697	324	12	Да
698	325	7	да
699	326	12	да
700	326	13	да
701	323	8	да
702	324	13	Да
703	326	14	да
704	327	8	Да
705	325	8	да
706	324	14	Да
707	328	9	да
708	327	7	Да
709	329	7	Да
710	329	8	Да
711	330	9	да
712	330	10	да
713	330	11	да
714	331	12	да
715	331	13	да
716	328	10	да
717	331	14	да
718	332	12	Да
719	333	12	да
720	334	7	да
721	335	9	Да
722	336	9	Да
723	332	13	Да
724	328	11	да
725	333	13	да
726	334	8	да
727	337	9	да
728	336	10	Да
729	333	14	да
730	338	7	да
731	335	10	Да
732	339	7	Да
733	332	14	Да
734	337	10	да
735	335	11	Да
736	336	11	Да
737	338	8	да
738	339	8	Да
739	337	11	да
740	340	9	Да
741	341	9	да
742	340	10	Да
743	341	10	да
744	340	11	Да
745	341	11	да
746	342	9	да
747	342	10	да
748	343	12	да
749	342	11	да
750	344	12	Да
751	345	7	да
752	344	13	Да
753	345	8	да
754	344	14	Да
755	346	12	да
756	346	13	да
757	346	14	да
758	347	7	Да
759	348	9	да
760	347	8	Да
761	348	10	да
762	348	11	да
763	349	14	Да
764	349	12	Да
765	349	13	Да
766	350	9	да
767	350	10	да
768	351	7	Да
769	350	11	да
770	352	12	да
771	353	9	да
772	354	7	Да
773	355	12	да
780	352	14	да
781	353	11	да
784	358	7	да
785	357	10	Да
786	358	8	да
787	357	11	Да
803	363	13	да
804	364	13	да
815	368	13	Да
818	370	12	да
819	370	13	да
821	370	14	да
830	369	14	Да
835	375	13	да
836	376	12	да
844	379	12	Да
845	377	8	да
846	378	13	да
851	381	12	да
859	383	13	да
860	383	14	да
862	384	7	Да
863	356	11	да
867	386	7	Да
868	386	8	Да
869	387	12	да
870	387	13	да
871	387	14	да
873	388	13	да
874	388	14	да
875	389	7	Да
876	389	8	Да
877	390	9	да
881	391	8	Да
774	351	8	Да
775	356	9	да
776	352	13	да
777	354	8	Да
778	353	10	да
779	355	13	да
782	355	14	да
783	357	9	Да
788	359	9	да
789	359	10	да
790	360	12	Да
809	366	9	да
810	366	10	да
811	366	11	да
812	367	7	да
813	367	8	да
852	381	13	да
853	381	14	да
854	382	12	да
861	384	8	Да
864	385	14	Да
865	385	12	Да
866	385	13	Да
872	388	12	да
791	359	11	да
792	360	13	Да
793	360	14	Да
794	361	12	да
795	361	13	да
796	362	9	да
797	361	14	да
798	362	10	да
799	362	11	да
800	363	12	да
801	364	12	да
802	365	12	Да
805	363	14	да
806	365	13	Да
807	364	14	да
808	365	14	Да
814	368	12	Да
816	368	14	Да
817	369	12	Да
820	369	13	Да
822	371	12	да
823	371	14	да
824	371	13	да
825	372	12	да
826	356	10	да
827	372	13	да
828	372	14	да
829	373	9	да
831	374	14	да
832	374	12	да
833	375	12	да
834	374	13	да
837	376	13	да
838	376	14	да
839	312	13	да
840	312	14	да
841	375	14	да
842	377	7	да
843	378	12	да
847	379	13	Да
848	378	14	да
849	379	14	Да
850	380	8	да
855	382	13	да
856	262	13	да
857	382	14	да
858	383	12	Да
878	390	10	да
879	390	11	да
880	391	7	Да
882	392	12	да
883	392	13	да
884	392	14	да
885	393	12	Да
886	393	13	Да
887	393	14	Да
888	394	14	Да
889	394	12	Да
890	394	13	Да
891	395	7	Да
892	395	8	Да
893	396	12	Да
894	396	13	Да
895	396	14	Да
896	397	7	да
897	397	8	да
898	398	12	Да
899	398	13	Да
900	398	14	Да
901	399	7	да
902	399	8	да
903	400	12	да
904	400	13	да
905	400	14	да
906	401	7	Да
907	401	8	Да
908	402	7	Да
909	403	7	да
910	402	8	Да
911	403	8	да
912	404	12	Да
913	404	13	Да
914	405	7	Да
915	404	14	Да
916	405	8	да
917	406	8	Да
918	407	12	да
919	408	12	Да
920	407	13	да
921	407	14	да
922	408	13	Да
923	408	14	Да
924	409	12	да
925	410	12	да
926	409	13	да
927	410	13	да
928	409	14	да
929	410	14	да
930	411	12	Да
931	411	13	Да
932	411	14	да
933	412	12	да
934	412	13	да
935	412	14	да
936	413	12	да
937	413	13	да
938	413	14	да
939	231	9	Да
940	414	7	да
941	414	8	да
942	415	7	да
943	415	8	да
944	416	12	да
945	416	13	да
946	416	14	да
947	417	12	да
948	417	13	да
949	418	12	да
950	417	14	да
951	418	13	да
952	418	14	да
953	419	14	Да
954	419	13	Да
955	419	12	Да
956	420	12	да
957	420	13	да
958	406	7	да
959	420	14	да
960	421	12	да
961	422	8	да
962	421	13	да
963	422	7	да
964	421	14	да
965	423	12	да
966	423	13	да
967	423	14	да
968	424	12	Да
969	424	13	Да
970	424	14	Да
971	425	7	Да
972	425	8	Да
973	426	12	да
974	426	13	да
975	426	14	да
976	427	7	да
977	427	8	да
978	428	12	да
979	428	13	да
980	428	14	да
981	429	14	Да
982	429	13	Да
983	429	12	Да
984	430	12	да
985	430	13	да
986	430	14	да
987	431	7	Да
988	431	8	Да
989	432	12	да
990	432	13	да
991	432	14	да
992	433	12	да
993	433	14	да
994	433	13	да
995	434	12	да
996	434	13	да
997	434	14	да
998	435	12	Да
999	435	13	Да
1000	435	14	Да
1014	442	12	Да
1015	442	14	Да
1020	444	12	да
1021	444	13	да
1022	444	14	да
1023	445	14	Да
1001	436	12	да
1002	436	13	да
1003	436	14	да
1004	437	7	да
1005	438	7	да
1006	437	8	да
1007	438	8	да
1011	441	12	да
1012	441	13	да
1013	441	14	да
1016	442	13	Да
1008	439	7	да
1009	440	7	да
1010	440	8	да
1017	443	12	да
1018	443	13	да
1019	443	14	да
1024	446	8	Да
1025	447	7	Да
1026	447	8	Да
1027	448	12	Да
1028	448	13	Да
1029	448	14	Да
1030	449	12	да
1031	449	13	да
1032	449	14	да
1033	450	12	Да
1034	450	13	Да
1035	450	14	Да
1036	451	12	да
1037	452	12	да
1038	452	13	да
1039	452	14	да
1040	453	12	да
1041	453	13	да
1042	453	14	да
1043	454	7	Да
1044	454	8	Да
1045	455	7	да
1046	455	8	да
1047	456	7	да
1048	456	8	да
1049	457	7	да
1050	457	8	да
1051	458	7	Да
1052	458	8	Да
1053	459	8	Да
1054	459	8	Да
1055	459	7	Да
1056	460	7	да
1057	460	8	Да
1058	461	7	Да
1059	461	8	Да
1060	462	7	да
1061	462	8	да
1062	463	7	Да
1063	463	8	Да
1064	464	7	Да
1065	464	8	Да
1066	465	7	Да
1067	465	8	да
1068	466	7	да
1069	466	8	да
1070	467	7	Да
1071	467	8	Да
1072	468	7	Да
1073	468	8	Да
1074	469	7	Да
1075	469	8	Да
1076	470	7	Да
1077	470	8	Да
1078	471	7	да
1079	471	8	да
1080	472	7	Да
1081	473	15	Да
1082	473	16	Да
1083	474	15	Да
1084	474	16	да
1085	475	7	Да
1086	475	8	Да
1087	476	15	Да
1088	476	16	Да
1089	477	15	да
1090	477	16	да
1091	478	15	Да
1092	478	16	Да
1093	479	15	да
1094	479	16	да
1095	480	15	да
1096	480	16	да
1097	481	15	да
1098	481	16	да
1099	482	15	да
1100	482	16	да
1101	483	15	да
1102	483	16	да
1103	484	7	да
1104	484	8	да
1105	485	7	да
1106	486	7	да
1107	486	8	да
1108	487	7	Да
1109	487	8	Да
1110	488	7	Да
1111	488	8	Да
1112	489	7	да
1113	489	8	да
1114	490	7	да
1115	490	8	да
1116	491	7	Да
1117	492	7	да
1118	492	8	да
1119	493	7	да
1120	493	8	да
1121	494	7	Да
1122	494	8	Да
1123	495	7	да
1124	495	8	да
1125	496	8	Да
1126	496	7	Да
1127	497	7	Да
1128	497	8	Да
1129	498	7	Да
1130	498	8	Да
1131	499	8	да
1132	499	7	да
1133	500	7	да
1134	500	8	да
1135	501	7	Да
1136	501	8	Да
1137	502	7	да
1138	502	8	да
1139	503	7	да
1140	503	8	да
1141	504	7	да
1142	504	8	да
1143	505	7	да
1144	505	8	да
1145	506	7	да
1146	507	7	да
1147	507	8	да
1148	508	7	да
1149	508	8	да
1150	509	7	да
1151	509	8	да
1152	510	7	Да
1153	510	8	Да
1154	511	7	да
1155	511	8	да
1156	512	7	Да
1157	512	8	Да
1158	513	7	Да
1159	513	8	Да
1160	514	7	Да
1161	514	8	Да
1162	515	7	Да
1163	515	8	Да
1164	516	7	Да
1165	516	8	Да
1166	517	7	да
1167	517	8	да
1168	518	8	да
1169	519	7	да
1170	519	8	да
1171	520	7	да
1172	520	8	да
1173	521	18	Да
1174	521	17	Да
1175	522	17	да
1176	522	18	да
1177	523	17	да
1178	523	18	да
1179	524	17	да
1180	524	18	да
1181	525	7	Да
1182	525	8	Да
1183	526	17	Да
1184	526	18	Да
1185	527	18	Да
1186	527	17	Да
1187	528	17	Да
1188	528	18	Да
1189	529	17	да
1190	529	18	Да
1191	530	17	Да
1192	530	18	Да
1193	531	17	Да
1194	531	18	Да
1195	532	7	Да
1196	532	8	Да
1197	533	17	Да
1198	533	18	Да
1199	534	17	Да
1200	534	18	Да
1201	535	17	Да
1202	535	18	Да
1203	536	18	Да
1204	536	17	Да
1205	537	17	да
1206	537	18	да
1207	538	17	да
1208	538	18	да
1209	539	17	да
1210	539	18	да
1211	540	17	Да
1212	540	18	Да
1213	541	7	да
1214	541	8	да
1215	542	17	да
1216	542	18	да
1217	543	17	да
1218	543	18	да
1219	544	17	да
1220	544	18	да
1221	545	17	Да
1222	545	18	Да
1223	546	17	Да
1224	546	18	Да
1225	547	17	Да
1226	547	18	Да
1227	548	17	да
1228	549	18	Да
1229	548	18	да
1230	549	17	Да
1231	550	17	да
1232	550	18	да
1233	551	17	да
1234	551	18	да
1235	552	18	да
1236	552	17	да
1237	553	17	Да
1238	553	18	Да
1239	554	17	да
1240	554	18	да
1241	555	17	да
1242	555	18	да
1243	556	17	да
1244	557	17	Да
1245	556	18	да
1246	557	18	Да
1247	558	17	да
1248	559	17	да
1249	558	18	да
1250	560	17	Да
1251	560	18	Да
1252	559	18	да
1253	561	18	да
1254	561	17	да
1255	562	17	да
1256	562	18	да
1257	563	17	да
1258	564	17	Да
1259	563	18	да
1260	564	18	Да
1261	565	17	Да
1262	565	18	Да
1263	566	17	Да
1264	566	18	да
1265	567	17	да
1266	567	18	да
1267	568	17	Да
1268	568	18	Да
1269	569	7	Да
1270	569	8	Да
1271	570	7	Да
1272	570	8	Да
1273	571	17	Да
1274	571	18	Да
1275	572	17	да
1276	572	18	да
1277	573	17	да
1278	573	18	да
1279	574	7	Да
1280	574	8	Да
1281	575	18	Да
1282	576	17	да
1283	576	18	да
1284	577	17	Да
1285	577	18	Да
1286	578	17	Да
1287	579	18	да
1288	579	17	да
1289	580	17	Да
1290	580	18	Да
1291	581	17	да
1292	581	18	да
1293	582	7	да
1294	582	8	да
1295	583	7	да
1296	583	8	да
1297	584	17	Да
1298	584	18	Да
1299	585	17	Да
1300	585	18	Да
1301	586	17	Да
1302	586	18	Да
1303	587	17	Да
1304	587	18	Да
1305	588	17	Да
1306	588	18	Да
1307	589	17	да
1308	589	18	да
1309	590	17	да
1310	590	18	да
1311	591	17	да
1312	591	18	да
1313	592	17	да
1314	592	18	да
1315	593	17	да
1316	593	18	да
1317	594	7	да
1318	594	8	да
1319	595	18	Да
1320	595	17	Да
1321	596	17	Да
1322	596	18	Да
1323	597	17	Да
1324	597	18	Да
1325	598	17	да
1326	598	18	да
1327	599	17	да
1328	599	18	да
1329	600	17	да
1330	600	18	да
1331	601	17	Да
1332	601	18	Да
1333	602	17	да
1334	602	18	да
1335	603	17	да
1336	603	18	да
1337	604	17	Да
1338	604	18	Да
1339	605	17	да
1340	606	18	да
1341	606	17	да
1342	607	17	да
1343	607	18	да
1344	608	17	да
1345	608	18	да
1346	609	17	да
1347	609	18	да
1348	610	17	да
1349	610	18	да
1350	611	17	да
1351	612	18	Да
1352	611	18	да
1353	612	17	Да
1354	613	17	да
1355	613	18	да
1356	614	17	да
1357	614	18	да
1358	615	7	да
1359	615	8	да
1360	616	17	да
1361	616	18	да
1362	617	17	да
1363	617	18	да
1364	618	17	да
1365	618	18	да
1366	619	17	да
1367	619	18	да
1368	620	7	да
1369	620	8	да
1370	621	17	да
1371	621	18	да
1372	622	17	да
1373	622	18	да
1374	623	17	Да
1375	623	18	Да
1376	624	17	Да
1377	624	18	Да
1378	625	17	да
1379	625	18	да
1380	626	17	да
1381	626	18	да
1382	627	17	Да
1383	627	18	Да
1384	628	17	Да
1385	628	18	Да
1386	629	7	да
1387	629	8	да
1388	630	17	да
1389	630	18	да
1390	631	17	Да
1391	631	18	Да
1392	632	19	да
1393	632	20	да
1394	633	19	да
1395	633	20	да
1396	634	19	да
1397	634	20	да
1398	635	19	Да
1399	635	20	Да
1400	636	19	да
1401	636	20	да
1402	637	19	да
1403	637	20	да
1404	638	19	да
1405	639	17	да
1406	639	18	да
1407	640	19	Да
1408	640	20	Да
1409	641	19	Да
1410	641	20	Да
1411	642	19	да
1412	642	20	да
1413	643	19	да
1414	643	20	да
1415	644	19	Да
1416	644	20	Да
1417	645	17	да
1418	645	18	да
1419	646	19	да
1420	646	20	да
1421	647	19	Да
1422	647	20	да
1423	648	19	да
1424	648	20	да
1425	649	19	да
1426	649	20	да
1427	650	20	Да
1428	650	19	Да
1429	651	19	да
1430	651	20	да
1431	652	19	да
1432	652	20	да
1433	653	17	да
1434	653	18	да
1435	654	19	да
1436	654	20	да
1437	655	20	да
1438	655	19	да
1439	656	19	Да
1440	656	20	Да
1441	657	19	да
1442	657	20	да
1443	658	7	Да
1444	658	8	Да
1445	659	17	Да
1446	659	18	Да
1447	660	19	да
1448	660	20	да
1449	661	17	да
1450	661	18	да
1451	662	20	Да
1452	662	19	Да
1453	663	19	Да
1454	663	20	Да
1455	664	19	да
1456	664	20	да
1457	665	19	да
1458	665	20	да
1459	666	19	да
1460	666	20	Да
1461	667	21	да
1462	667	22	Да
1463	668	21	Да
1464	668	22	Да
1465	669	21	Да
1466	669	22	Да
1467	670	21	Да
1468	670	22	Да
1469	671	21	да
1470	671	22	да
1471	672	17	Да
1472	672	18	Да
1473	673	21	да
1474	674	19	да
1475	673	22	да
1476	674	20	дА
1477	675	22	Да
1478	676	21	Да
1479	676	22	да
1480	675	21	Да
1481	677	21	Да
1482	677	22	да
1483	678	21	Да
1484	678	22	Да
1485	679	21	да
1486	679	22	ДА
1487	680	7	Да
1488	680	8	Да
1489	681	21	да
1490	681	22	да
1493	682	22	Да
1494	683	22	Да
1501	688	21	Да
1502	685	22	Да
1503	689	21	ДА
1509	692	21	Да
1511	694	7	да
1512	693	22	Да
1516	696	21	Да
1491	682	21	Да
1492	683	21	Да
1497	685	21	Да
1498	686	21	да
1499	687	21	Да
1500	686	22	да
1506	690	21	Да
1507	690	22	Да
1508	691	22	Да
1510	693	21	Да
1513	695	21	Да
1514	692	22	Да
1515	694	8	да
1517	696	22	Да
1518	697	21	Да
1519	697	22	Да
1520	698	21	да
1523	699	22	да
1495	684	21	да
1496	684	22	да
1504	688	22	да
1505	687	22	Да
1521	699	21	да
1522	698	22	да
1524	700	21	Да
1525	701	21	Да
1526	702	21	Да
1527	700	22	Да
1528	701	22	Да
1529	702	22	Да
1530	703	21	да
1531	704	21	да
1532	704	22	да
1533	705	17	да
1534	705	18	да
1535	706	21	да
1536	707	19	Да
1537	707	20	Да
1538	708	21	Да
1539	708	22	Да
1540	709	21	да
1541	709	22	да
1542	710	21	Да
1543	710	22	Да
1544	711	21	Да
1545	712	21	да
1546	711	22	Да
1547	712	22	да
1548	713	19	да
1549	714	21	Да
1550	713	20	да
1551	714	22	Да
1552	715	21	да
1553	715	22	да
1554	716	17	Да
1555	716	18	Да
1556	717	21	да
1557	717	22	да
1558	718	21	Да
1559	718	22	Да
1560	719	17	да
1561	719	18	да
1562	720	19	Да
1563	720	20	Да
1564	721	21	Да
1565	721	22	Да
1566	722	19	да
1567	722	20	да
1568	723	21	да
1569	723	22	да
1570	724	19	да
1571	724	20	да
1572	725	17	да
1573	725	18	да
1574	726	21	да
1575	726	22	да
1576	727	22	Да
1577	727	21	Да
1578	728	19	Да
1579	728	20	Да
1580	729	21	да
1581	729	22	да
1582	730	7	да
1583	730	8	да
1584	731	17	да
1585	731	18	да
1586	732	19	да
1587	732	20	да
1588	733	21	да
1589	733	22	да
1590	734	21	Да
1591	734	22	Да
1592	735	17	да
1593	735	18	да
1594	736	17	Да
1595	736	18	Да
1596	737	19	да
1597	737	20	да
1598	738	21	да
1599	738	22	да
1600	739	21	Да
1601	739	22	Да
1602	740	21	да
1603	740	22	да
1604	741	21	да
1605	742	17	да
1606	742	18	да
1607	743	22	Да
1608	743	21	Да
1609	744	21	Да
1610	744	22	да
1611	745	21	да
1612	745	22	да
1613	746	21	Да
1614	746	22	Да
1615	747	20	да
1616	747	19	да
1617	748	21	да
1618	748	22	да
1619	749	19	да
1620	749	20	да
1621	750	21	да
1622	750	22	да
1623	751	21	Да
1624	751	22	Да
1625	752	19	Да
1626	752	20	да
1627	753	21	да
1628	753	22	да
1629	754	21	да
1630	754	22	да
1631	755	22	да
1632	755	21	да
1633	756	21	Да
1634	756	22	Да
1635	757	21	Да
1636	757	22	Да
1637	758	21	Да
1638	758	22	Да
1639	759	21	Да
1640	759	22	Да
1641	760	21	да
1642	760	22	да
1643	761	21	Да
1644	761	22	Да
1645	762	21	да
1646	762	22	да
1647	763	21	Да
1648	763	22	Да
1649	764	21	да
1650	764	22	да
1651	765	21	Да
1652	765	22	Да
1653	766	21	Да
1654	766	22	да
1655	767	21	да
1656	767	22	да
1657	768	21	Да
1658	768	22	Да
1659	769	21	Да
1660	769	22	Да
\.


--
-- TOC entry 3073 (class 0 OID 17313)
-- Dependencies: 234
-- Data for Name: UserTransactions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."UserTransactions" ("Id", "UserId", "SurveyId", "Score", "CreatedAt", "Type") FROM stdin;
1	7	1	10	2020-01-13 00:37:43.482136+03	0
2	8	1	10	2020-01-13 12:28:49.133334+03	0
3	10	1	10	2020-01-13 16:00:43.347144+03	0
4	11	1	10	2020-01-20 00:41:35.647118+03	0
5	3	1	10	2020-01-20 13:24:39.116099+03	0
6	14	1	10	2020-01-20 15:25:12.872341+03	0
7	27	1	10	2020-01-20 19:09:12.225869+03	0
8	29	1	10	2020-01-20 19:10:22.873904+03	0
9	30	1	10	2020-01-20 19:10:53.825023+03	0
10	31	1	10	2020-01-20 19:55:04.312895+03	0
11	14	2	10	2020-01-22 15:08:01.968886+03	0
12	12	3	10	2020-01-22 15:33:17.640174+03	0
13	12	1	10	2020-01-22 15:33:36.04531+03	0
14	14	3	10	2020-01-22 16:17:36.964791+03	0
15	30	4	10	2020-01-22 20:55:14.683434+03	0
16	27	4	10	2020-01-22 20:55:51.323029+03	0
17	14	4	10	2020-01-22 23:16:40.493859+03	0
18	14	5	10	2020-01-22 23:47:11.322924+03	0
19	16	5	10	2020-01-23 01:41:55.085331+03	0
20	16	4	10	2020-01-23 07:45:40.690372+03	0
21	16	6	10	2020-01-23 08:04:44.795936+03	0
22	34	6	10	2020-01-23 08:24:43.536344+03	0
23	46	7	1	2020-01-25 12:14:16.294756+03	0
24	48	7	1	2020-01-25 12:20:39.646622+03	0
25	47	7	1	2020-01-25 12:24:15.036219+03	0
26	44	7	1	2020-01-25 12:36:32.283637+03	0
27	53	7	1	2020-01-25 12:38:24.842358+03	0
28	54	7	1	2020-01-25 12:45:13.683494+03	0
29	55	7	1	2020-01-25 13:08:15.575587+03	0
30	51	7	1	2020-01-25 13:13:57.515678+03	0
31	62	7	1	2020-01-25 13:49:22.823034+03	0
32	63	7	1	2020-01-25 14:22:35.204498+03	0
33	68	7	1	2020-01-25 15:48:58.364346+03	0
34	69	7	1	2020-01-25 15:56:11.479747+03	0
35	70	7	1	2020-01-25 16:17:26.110915+03	0
36	72	7	1	2020-01-25 17:13:37.508741+03	0
37	75	7	1	2020-01-25 22:17:50.437746+03	0
38	76	7	1	2020-01-25 22:52:06.090718+03	0
39	78	7	1	2020-01-26 00:19:00.343457+03	0
40	80	7	1	2020-01-26 01:13:55.806488+03	0
41	81	7	1	2020-01-26 01:41:07.820734+03	0
42	82	7	1	2020-01-26 01:59:51.288819+03	0
43	83	7	1	2020-01-26 09:17:26.904628+03	0
44	60	7	1	2020-01-26 12:32:52.858566+03	0
45	87	7	1	2020-01-26 13:29:40.723044+03	0
46	88	7	1	2020-01-26 13:37:22.773477+03	0
47	90	7	1	2020-01-26 13:42:05.42184+03	0
48	25	7	1	2020-01-26 13:42:12.718796+03	0
49	102	7	1	2020-01-26 13:42:19.65788+03	0
50	105	7	1	2020-01-26 13:42:41.479635+03	0
51	106	7	1	2020-01-26 13:43:53.977323+03	0
52	98	7	1	2020-01-26 13:44:16.6508+03	0
53	96	7	1	2020-01-26 13:46:16.397495+03	0
54	24	7	1	2020-01-26 13:47:54.468898+03	0
55	113	7	1	2020-01-26 13:49:48.13268+03	0
56	101	7	1	2020-01-26 13:50:59.142202+03	0
57	111	7	1	2020-01-26 13:52:29.834844+03	0
58	123	7	1	2020-01-26 13:52:42.901256+03	0
59	121	7	1	2020-01-26 13:53:31.909121+03	0
60	118	7	1	2020-01-26 13:53:50.959966+03	0
61	122	7	1	2020-01-26 13:54:50.985756+03	0
62	71	7	1	2020-01-26 13:55:15.456985+03	0
63	93	7	1	2020-01-26 13:56:25.502191+03	0
64	112	7	1	2020-01-26 13:58:13.608483+03	0
65	129	7	1	2020-01-26 13:58:33.20908+03	0
66	128	7	1	2020-01-26 13:59:22.472024+03	0
67	126	7	1	2020-01-26 14:00:33.089354+03	0
68	134	7	1	2020-01-26 14:02:51.960599+03	0
69	132	7	1	2020-01-26 14:02:52.761526+03	0
70	133	7	1	2020-01-26 14:04:06.015847+03	0
71	131	7	1	2020-01-26 14:04:12.742041+03	0
72	136	7	1	2020-01-26 14:04:40.416791+03	0
73	130	7	1	2020-01-26 14:05:17.145184+03	0
74	94	7	1	2020-01-26 14:07:22.747428+03	0
75	141	7	1	2020-01-26 14:08:20.046078+03	0
76	139	7	1	2020-01-26 14:10:56.960182+03	0
77	138	7	1	2020-01-26 14:11:45.296291+03	0
78	115	7	1	2020-01-26 14:15:06.963082+03	0
79	145	7	1	2020-01-26 14:16:06.037846+03	0
80	147	7	1	2020-01-26 14:17:23.494905+03	0
81	39	7	1	2020-01-26 14:18:39.024917+03	0
82	143	7	1	2020-01-26 14:19:42.294057+03	0
83	156	7	1	2020-01-26 14:21:16.22221+03	0
84	148	7	1	2020-01-26 14:23:55.716911+03	0
85	155	7	1	2020-01-26 14:25:18.701112+03	0
86	114	7	1	2020-01-26 14:25:23.677432+03	0
87	161	7	1	2020-01-26 14:27:11.065722+03	0
88	163	7	1	2020-01-26 14:30:02.366536+03	0
89	165	7	1	2020-01-26 14:31:23.664324+03	0
90	144	7	1	2020-01-26 14:32:14.021487+03	0
91	168	7	1	2020-01-26 14:32:41.698733+03	0
92	166	7	1	2020-01-26 14:32:42.405733+03	0
93	162	7	1	2020-01-26 14:33:15.227183+03	0
94	170	7	1	2020-01-26 14:40:03.967649+03	0
95	176	7	1	2020-01-26 14:40:40.44351+03	0
96	164	7	1	2020-01-26 14:40:46.38511+03	0
97	174	7	1	2020-01-26 14:41:30.302275+03	0
98	178	7	1	2020-01-26 14:43:10.74916+03	0
99	179	7	1	2020-01-26 14:47:38.358746+03	0
100	180	7	1	2020-01-26 14:48:06.427245+03	0
101	169	7	1	2020-01-26 14:55:55.353633+03	0
102	185	7	1	2020-01-26 14:59:38.19859+03	0
103	182	7	1	2020-01-26 15:00:31.729144+03	0
104	187	7	1	2020-01-26 15:00:35.963274+03	0
105	188	7	1	2020-01-26 15:00:53.99785+03	0
106	186	7	1	2020-01-26 15:02:19.802643+03	0
107	191	7	1	2020-01-26 15:06:27.938815+03	0
108	193	7	1	2020-01-26 15:07:50.287526+03	0
109	65	7	1	2020-01-26 15:09:20.755795+03	0
110	183	7	1	2020-01-26 15:11:12.12375+03	0
111	189	7	1	2020-01-26 15:11:15.489079+03	0
112	192	7	1	2020-01-26 15:12:59.538218+03	0
113	195	7	1	2020-01-26 15:15:00.503545+03	0
114	184	7	1	2020-01-26 15:15:22.253358+03	0
115	194	7	1	2020-01-26 15:16:02.242797+03	0
116	199	7	1	2020-01-26 15:17:19.288829+03	0
117	202	7	1	2020-01-26 15:21:53.735025+03	0
118	204	7	1	2020-01-26 15:25:05.605931+03	0
119	200	7	1	2020-01-26 15:26:14.889971+03	0
120	205	7	1	2020-01-26 15:26:30.553807+03	0
121	206	7	1	2020-01-26 15:27:39.295243+03	0
122	211	7	1	2020-01-26 15:30:08.257321+03	0
123	209	7	1	2020-01-26 15:30:14.067191+03	0
124	210	7	1	2020-01-26 15:33:49.04852+03	0
125	212	7	1	2020-01-26 15:39:40.647404+03	0
126	219	7	1	2020-01-26 15:46:20.661387+03	0
127	220	7	1	2020-01-26 15:54:46.066795+03	0
128	224	7	1	2020-01-26 15:57:22.895914+03	0
129	227	7	1	2020-01-26 16:03:05.540756+03	0
130	228	7	1	2020-01-26 16:17:55.68382+03	0
131	235	7	1	2020-01-26 16:20:44.759765+03	0
132	229	7	1	2020-01-26 16:21:05.930635+03	0
133	43	7	1	2020-01-26 16:21:06.094179+03	0
134	234	7	1	2020-01-26 16:21:10.824305+03	0
135	232	7	1	2020-01-26 16:22:36.282086+03	0
136	159	7	1	2020-01-26 16:26:05.988714+03	0
137	233	7	1	2020-01-26 16:30:18.02802+03	0
150	253	7	1	2020-01-26 17:08:17.903493+03	0
153	255	7	1	2020-01-26 17:13:30.393201+03	0
154	258	7	1	2020-01-26 17:19:53.409276+03	0
155	259	7	1	2020-01-26 17:19:57.348194+03	0
156	231	7	1	2020-01-26 17:34:15.813106+03	0
161	263	7	1	2020-01-26 18:23:12.718311+03	0
164	190	7	1	2020-01-26 18:35:38.033607+03	0
165	277	7	1	2020-01-26 18:36:41.831069+03	0
167	286	7	1	2020-01-26 19:14:47.559448+03	0
168	289	7	1	2020-01-26 19:22:05.615027+03	0
138	172	7	1	2020-01-26 16:32:59.742697+03	0
139	238	7	1	2020-01-26 16:33:47.500445+03	0
140	241	7	1	2020-01-26 16:40:09.190521+03	0
143	245	7	1	2020-01-26 16:48:02.665625+03	0
144	244	7	1	2020-01-26 16:48:05.772792+03	0
145	247	7	1	2020-01-26 16:52:37.141449+03	0
146	239	7	1	2020-01-26 16:55:24.369845+03	0
147	248	7	1	2020-01-26 16:59:37.747526+03	0
151	254	7	1	2020-01-26 17:11:14.674231+03	0
152	77	7	1	2020-01-26 17:12:12.969439+03	0
158	261	7	1	2020-01-26 17:38:44.775589+03	0
159	270	7	1	2020-01-26 18:12:30.160953+03	0
160	276	7	1	2020-01-26 18:19:59.643256+03	0
162	275	7	1	2020-01-26 18:30:48.246266+03	0
163	279	7	1	2020-01-26 18:33:22.361335+03	0
166	280	7	1	2020-01-26 18:50:02.892535+03	0
169	292	7	1	2020-01-26 19:22:32.690826+03	0
141	242	7	1	2020-01-26 16:41:43.951508+03	0
142	243	7	1	2020-01-26 16:43:55.548058+03	0
148	251	7	1	2020-01-26 17:06:18.402379+03	0
149	250	7	1	2020-01-26 17:06:58.041052+03	0
157	262	7	1	2020-01-26 17:37:21.85719+03	0
170	301	7	1	2020-01-26 19:24:56.481501+03	0
171	283	7	1	2020-01-26 19:25:31.541886+03	0
172	300	7	1	2020-01-26 19:25:54.410177+03	0
173	308	7	1	2020-01-26 19:27:30.985912+03	0
174	323	7	1	2020-01-26 19:28:14.679542+03	0
175	295	7	1	2020-01-26 19:29:01.591988+03	0
176	287	7	1	2020-01-26 19:29:27.032915+03	0
177	153	7	1	2020-01-26 19:29:33.534282+03	0
178	311	7	1	2020-01-26 19:29:33.984006+03	0
179	312	7	1	2020-01-26 19:29:39.018251+03	0
180	291	7	1	2020-01-26 19:29:57.022311+03	0
181	319	7	1	2020-01-26 19:30:51.47675+03	0
182	325	7	1	2020-01-26 19:30:52.296406+03	0
183	334	7	1	2020-01-26 19:31:02.183325+03	0
184	307	7	1	2020-01-26 19:31:08.924703+03	0
185	332	7	1	2020-01-26 19:31:21.332427+03	0
186	305	7	1	2020-01-26 19:31:28.98804+03	0
187	331	7	1	2020-01-26 19:32:05.210019+03	0
188	314	7	1	2020-01-26 19:32:09.53619+03	0
189	341	7	1	2020-01-26 19:32:15.994143+03	0
190	313	7	1	2020-01-26 19:32:28.391423+03	0
191	339	7	1	2020-01-26 19:32:39.823893+03	0
192	310	7	1	2020-01-26 19:32:53.184849+03	0
193	345	7	1	2020-01-26 19:33:07.376091+03	0
194	299	7	1	2020-01-26 19:33:14.429116+03	0
195	338	7	1	2020-01-26 19:33:55.858392+03	0
196	318	7	1	2020-01-26 19:34:20.328454+03	0
197	348	7	1	2020-01-26 19:34:35.427818+03	0
198	349	7	1	2020-01-26 19:35:05.097757+03	0
199	352	7	1	2020-01-26 19:35:46.267973+03	0
200	353	7	1	2020-01-26 19:35:49.55002+03	0
201	351	7	1	2020-01-26 19:36:00.411311+03	0
202	357	7	1	2020-01-26 19:38:14.245528+03	0
203	300	8	1	2020-01-26 19:38:21.664924+03	0
204	349	8	1	2020-01-26 19:38:24.057815+03	0
205	357	8	1	2020-01-26 19:39:54.337135+03	0
206	351	8	1	2020-01-26 19:39:55.537342+03	0
207	313	8	1	2020-01-26 19:39:56.24555+03	0
208	305	8	1	2020-01-26 19:39:57.439176+03	0
209	153	8	1	2020-01-26 19:40:03.144147+03	0
210	263	8	1	2020-01-26 19:40:13.942756+03	0
211	338	8	1	2020-01-26 19:40:17.374565+03	0
212	46	8	1	2020-01-26 19:40:22.471516+03	0
213	168	8	1	2020-01-26 19:40:30.265205+03	0
214	345	8	1	2020-01-26 19:40:34.296949+03	0
215	189	8	1	2020-01-26 19:40:37.227072+03	0
216	75	8	1	2020-01-26 19:40:47.685311+03	0
217	334	8	1	2020-01-26 19:40:48.409488+03	0
218	83	8	1	2020-01-26 19:40:58.865211+03	0
219	358	7	1	2020-01-26 19:40:59.023323+03	0
220	366	7	1	2020-01-26 19:41:11.726154+03	0
221	364	7	1	2020-01-26 19:41:20.753956+03	0
222	148	8	1	2020-01-26 19:41:41.074657+03	0
223	103	7	1	2020-01-26 19:42:15.283603+03	0
224	321	7	1	2020-01-26 19:42:27.166791+03	0
225	103	8	1	2020-01-26 19:42:43.82633+03	0
226	343	7	1	2020-01-26 19:42:49.909587+03	0
227	364	8	1	2020-01-26 19:42:50.389402+03	0
228	348	8	1	2020-01-26 19:43:26.866734+03	0
229	355	7	1	2020-01-26 19:43:37.885595+03	0
230	369	7	1	2020-01-26 19:43:38.026104+03	0
231	359	8	1	2020-01-26 19:43:49.916765+03	0
232	318	8	1	2020-01-26 19:44:02.974216+03	0
233	310	8	1	2020-01-26 19:44:07.322664+03	0
234	373	7	1	2020-01-26 19:44:15.977109+03	0
235	327	8	1	2020-01-26 19:44:22.39701+03	0
236	373	8	1	2020-01-26 19:44:34.883354+03	0
237	301	8	1	2020-01-26 19:44:35.44622+03	0
238	327	7	1	2020-01-26 19:44:40.977327+03	0
239	372	7	1	2020-01-26 19:45:04.15478+03	0
240	377	7	1	2020-01-26 19:45:24.387251+03	0
241	275	8	1	2020-01-26 19:45:24.817058+03	0
242	312	8	1	2020-01-26 19:45:38.464272+03	0
243	378	8	1	2020-01-26 19:45:53.12882+03	0
244	374	7	1	2020-01-26 19:46:14.405203+03	0
245	111	8	1	2020-01-26 19:46:28.399286+03	0
246	370	7	1	2020-01-26 19:46:33.26916+03	0
247	374	8	1	2020-01-26 19:46:47.666985+03	0
248	378	7	1	2020-01-26 19:46:59.992696+03	0
249	370	8	1	2020-01-26 19:47:01.162472+03	0
250	362	7	1	2020-01-26 19:47:02.343507+03	0
251	368	7	1	2020-01-26 19:47:37.881898+03	0
252	362	8	1	2020-01-26 19:48:14.633137+03	0
253	341	8	1	2020-01-26 19:48:17.219236+03	0
254	368	8	1	2020-01-26 19:48:31.08297+03	0
255	383	7	1	2020-01-26 19:48:42.136149+03	0
256	349	9	1	2020-01-26 19:48:59.123208+03	0
257	306	7	1	2020-01-26 19:49:20.05447+03	0
258	383	8	1	2020-01-26 19:49:32.018828+03	0
259	345	9	1	2020-01-26 19:49:42.097989+03	0
260	351	9	1	2020-01-26 19:49:48.660858+03	0
261	310	9	1	2020-01-26 19:49:49.374001+03	0
262	73	8	1	2020-01-26 19:49:49.37808+03	0
263	334	9	1	2020-01-26 19:49:54.897188+03	0
264	168	9	1	2020-01-26 19:49:55.47329+03	0
265	153	9	1	2020-01-26 19:50:04.817982+03	0
266	300	9	1	2020-01-26 19:50:04.885239+03	0
267	313	9	1	2020-01-26 19:50:08.147692+03	0
268	354	7	1	2020-01-26 19:50:08.44293+03	0
269	397	7	1	2020-01-26 19:50:09.07671+03	0
270	73	7	1	2020-01-26 19:50:18.845341+03	0
271	367	7	1	2020-01-26 19:50:35.91551+03	0
272	359	9	1	2020-01-26 19:50:40.414353+03	0
273	398	7	1	2020-01-26 19:50:41.979444+03	0
274	251	9	1	2020-01-26 19:50:43.31573+03	0
275	364	9	1	2020-01-26 19:50:50.616146+03	0
276	367	8	1	2020-01-26 19:51:10.992337+03	0
277	398	8	1	2020-01-26 19:51:12.126985+03	0
278	354	8	1	2020-01-26 19:51:14.825709+03	0
279	103	9	1	2020-01-26 19:51:15.531091+03	0
280	404	7	1	2020-01-26 19:51:17.029283+03	0
281	379	7	1	2020-01-26 19:51:17.479266+03	0
282	380	8	1	2020-01-26 19:51:26.461806+03	0
283	105	9	1	2020-01-26 19:51:28.279124+03	0
284	415	7	1	2020-01-26 19:51:34.127276+03	0
285	83	9	1	2020-01-26 19:51:39.890126+03	0
286	412	9	1	2020-01-26 19:51:42.522116+03	0
287	359	7	1	2020-01-26 19:51:43.371442+03	0
288	344	8	1	2020-01-26 19:51:46.459745+03	0
289	105	8	1	2020-01-26 19:51:48.475447+03	0
290	305	9	1	2020-01-26 19:51:51.422144+03	0
291	373	9	1	2020-01-26 19:51:53.111771+03	0
292	380	7	1	2020-01-26 19:52:03.284058+03	0
293	75	9	1	2020-01-26 19:52:07.09711+03	0
294	338	9	1	2020-01-26 19:52:11.322423+03	0
295	421	9	1	2020-01-26 19:52:14.592908+03	0
296	292	9	1	2020-01-26 19:52:16.977156+03	0
297	404	8	1	2020-01-26 19:52:27.978568+03	0
298	394	7	1	2020-01-26 19:52:30.32796+03	0
299	115	8	1	2020-01-26 19:52:32.049777+03	0
300	318	9	1	2020-01-26 19:52:42.252041+03	0
301	136	8	1	2020-01-26 19:53:00.374444+03	0
302	427	9	1	2020-01-26 19:53:11.563663+03	0
303	418	7	1	2020-01-26 19:53:16.416635+03	0
304	333	7	1	2020-01-26 19:53:20.222031+03	0
305	301	9	1	2020-01-26 19:53:33.220049+03	0
306	419	8	1	2020-01-26 19:53:38.449402+03	0
307	379	8	1	2020-01-26 19:53:43.252151+03	0
309	333	8	1	2020-01-26 19:53:58.206242+03	0
310	358	8	1	2020-01-26 19:53:59.768524+03	0
311	381	7	1	2020-01-26 19:54:07.560418+03	0
313	228	9	1	2020-01-26 19:54:23.248237+03	0
314	381	8	1	2020-01-26 19:54:34.560669+03	0
315	84	7	1	2020-01-26 19:54:59.147364+03	0
316	340	9	1	2020-01-26 19:55:02.379129+03	0
308	370	9	1	2020-01-26 19:53:47.23662+03	0
312	341	9	1	2020-01-26 19:54:09.374154+03	0
317	49	7	1	2020-01-26 19:55:11.869731+03	0
318	374	9	1	2020-01-26 19:55:12.126734+03	0
319	431	7	1	2020-01-26 19:55:14.214295+03	0
320	438	7	1	2020-01-26 19:55:23.199414+03	0
321	84	8	1	2020-01-26 19:55:32.963723+03	0
322	362	9	1	2020-01-26 19:55:55.120957+03	0
323	250	8	1	2020-01-26 19:56:04.6908+03	0
324	435	7	1	2020-01-26 19:56:05.847399+03	0
325	383	9	1	2020-01-26 19:56:10.203082+03	0
326	73	9	1	2020-01-26 19:56:12.969805+03	0
327	431	8	1	2020-01-26 19:56:17.297084+03	0
328	438	8	1	2020-01-26 19:56:18.107217+03	0
329	424	7	1	2020-01-26 19:56:18.554752+03	0
330	140	7	1	2020-01-26 19:56:19.389766+03	0
331	397	8	1	2020-01-26 19:56:24.397493+03	0
332	415	8	1	2020-01-26 19:56:56.546629+03	0
333	435	8	1	2020-01-26 19:57:01.226159+03	0
334	62	8	1	2020-01-26 19:57:32.939852+03	0
335	389	7	1	2020-01-26 19:57:57.390468+03	0
336	422	9	1	2020-01-26 19:57:58.346866+03	0
337	398	9	1	2020-01-26 19:58:08.58137+03	0
338	223	7	1	2020-01-26 19:58:19.247687+03	0
339	88	8	1	2020-01-26 19:58:26.411172+03	0
340	404	9	1	2020-01-26 19:58:51.119573+03	0
341	47	8	1	2020-01-26 19:59:41.436446+03	0
342	441	7	1	2020-01-26 19:59:46.744079+03	0
343	439	7	1	2020-01-26 19:59:49.387967+03	0
344	344	9	1	2020-01-26 19:59:53.549741+03	0
345	159	8	1	2020-01-26 19:59:54.842603+03	0
346	136	9	1	2020-01-26 19:59:55.314997+03	0
347	344	7	1	2020-01-26 20:00:13.059745+03	0
348	441	8	1	2020-01-26 20:00:21.357662+03	0
349	427	8	1	2020-01-26 20:00:39.964938+03	0
350	379	9	1	2020-01-26 20:00:50.427905+03	0
351	148	9	1	2020-01-26 20:01:10.970726+03	0
352	49	8	1	2020-01-26 20:01:21.117088+03	0
353	358	9	1	2020-01-26 20:01:36.301946+03	0
354	115	9	1	2020-01-26 20:01:38.935064+03	0
355	312	9	1	2020-01-26 20:01:45.26342+03	0
356	425	8	1	2020-01-26 20:02:29.985458+03	0
357	420	7	1	2020-01-26 20:02:48.859265+03	0
358	438	9	1	2020-01-26 20:03:25.575543+03	0
359	397	9	1	2020-01-26 20:03:53.545299+03	0
360	295	9	1	2020-01-26 20:04:24.314046+03	0
361	88	9	1	2020-01-26 20:04:33.980812+03	0
362	431	9	1	2020-01-26 20:05:18.934391+03	0
363	84	9	1	2020-01-26 20:05:56.880267+03	0
364	47	9	1	2020-01-26 20:06:32.223989+03	0
365	380	9	1	2020-01-26 20:06:47.471727+03	0
366	159	9	1	2020-01-26 20:06:50.125715+03	0
367	450	7	1	2020-01-26 20:07:09.79002+03	0
368	49	9	1	2020-01-26 20:07:16.935548+03	0
369	441	9	1	2020-01-26 20:07:20.866808+03	0
370	389	9	1	2020-01-26 20:08:36.849533+03	0
371	111	9	1	2020-01-26 20:08:59.248919+03	0
372	444	9	1	2020-01-26 20:09:46.108664+03	0
373	466	7	1	2020-01-26 20:10:22.014495+03	0
374	446	8	1	2020-01-26 20:10:41.530136+03	0
375	325	9	1	2020-01-26 20:12:01.826283+03	0
376	456	7	1	2020-01-26 20:12:18.215431+03	0
377	101	9	1	2020-01-26 20:12:35.196222+03	0
378	420	9	1	2020-01-26 20:13:38.268755+03	0
379	470	7	1	2020-01-26 20:14:51.200605+03	0
380	420	8	1	2020-01-26 20:15:01.754652+03	0
381	463	7	1	2020-01-26 20:15:39.672768+03	0
382	466	9	1	2020-01-26 20:16:56.674384+03	0
383	475	9	1	2020-01-26 20:17:14.523039+03	0
384	477	9	1	2020-01-26 20:18:17.975753+03	0
385	342	7	1	2020-01-26 20:19:18.65156+03	0
386	470	9	1	2020-01-26 20:21:10.429068+03	0
387	473	7	1	2020-01-26 20:22:13.314948+03	0
388	456	9	1	2020-01-26 20:23:55.324892+03	0
389	59	7	1	2020-01-26 20:24:02.980037+03	0
390	59	9	1	2020-01-26 20:30:01.325003+03	0
391	486	7	1	2020-01-26 20:31:04.872415+03	0
392	448	7	1	2020-01-26 20:33:34.565135+03	0
393	487	7	1	2020-01-26 20:33:40.171019+03	0
394	223	9	1	2020-01-26 20:34:49.90612+03	0
395	119	7	1	2020-01-26 20:34:52.473654+03	0
396	357	9	1	2020-01-26 20:36:40.681169+03	0
397	242	9	1	2020-01-26 20:36:51.491126+03	0
398	501	9	1	2020-01-26 20:38:24.410633+03	0
399	217	9	1	2020-01-26 20:38:27.202556+03	0
400	486	9	1	2020-01-26 20:40:23.333703+03	0
401	487	9	1	2020-01-26 20:42:12.888905+03	0
402	119	9	1	2020-01-26 20:43:28.897506+03	0
403	251	8	1	2020-01-26 20:43:33.769345+03	0
404	433	7	1	2020-01-26 20:44:34.065982+03	0
405	501	7	1	2020-01-26 20:45:40.851722+03	0
406	200	9	1	2020-01-26 20:46:22.811066+03	0
407	253	9	1	2020-01-26 20:46:56.172176+03	0
408	425	9	1	2020-01-26 20:47:04.826238+03	0
409	206	9	1	2020-01-26 20:48:50.750139+03	0
410	497	7	1	2020-01-26 20:50:56.752735+03	0
411	450	9	1	2020-01-26 20:51:02.097355+03	0
412	516	7	1	2020-01-26 20:52:54.109584+03	0
413	500	9	1	2020-01-26 20:52:55.831536+03	0
414	433	9	1	2020-01-26 20:55:12.455856+03	0
415	261	9	1	2020-01-26 20:57:44.567488+03	0
416	518	7	1	2020-01-26 20:59:34.227674+03	0
417	516	9	1	2020-01-26 21:00:11.322307+03	0
418	519	7	1	2020-01-26 21:02:12.350255+03	0
419	132	9	1	2020-01-26 21:05:24.906984+03	0
420	506	9	1	2020-01-26 21:11:24.138502+03	0
421	519	9	1	2020-01-26 21:11:45.230246+03	0
422	522	7	1	2020-01-26 21:14:49.799128+03	0
423	523	9	1	2020-01-26 21:18:28.561463+03	0
424	525	9	1	2020-01-26 21:19:37.150345+03	0
425	347	9	1	2020-01-26 21:20:50.333603+03	0
426	522	9	1	2020-01-26 21:21:56.671674+03	0
427	283	9	1	2020-01-26 21:26:03.747573+03	0
428	523	7	1	2020-01-26 21:27:25.955144+03	0
429	525	7	1	2020-01-26 21:27:29.664022+03	0
430	526	7	1	2020-01-26 21:33:32.361663+03	0
431	308	9	1	2020-01-26 21:43:42.088155+03	0
432	529	9	1	2020-01-26 21:50:51.278257+03	0
433	69	9	1	2020-01-26 21:52:19.566303+03	0
434	248	9	1	2020-01-26 21:53:28.333942+03	0
435	529	7	1	2020-01-26 21:58:46.098217+03	0
436	72	9	1	2020-01-26 22:00:31.579874+03	0
437	70	9	1	2020-01-26 22:01:45.068388+03	0
438	178	9	1	2020-01-26 22:13:08.633186+03	0
439	275	9	1	2020-01-26 22:34:13.950476+03	0
440	244	9	1	2020-01-26 22:35:39.979806+03	0
441	538	7	1	2020-01-26 23:06:50.512082+03	0
442	539	7	1	2020-01-26 23:21:23.241851+03	0
443	541	7	1	2020-01-26 23:43:05.281383+03	0
444	542	7	1	2020-01-26 23:44:43.284873+03	0
445	475	7	1	2020-01-26 23:45:22.395497+03	0
446	544	7	1	2020-01-26 23:47:31.229327+03	0
447	543	7	1	2020-01-26 23:48:28.761063+03	0
448	547	7	1	2020-01-27 00:19:37.203212+03	0
449	550	7	1	2020-01-27 01:47:02.017981+03	0
450	551	7	1	2020-01-27 02:05:35.631881+03	0
451	454	7	1	2020-01-27 08:27:47.494414+03	0
452	557	7	1	2020-01-27 09:07:15.173099+03	0
453	560	7	1	2020-01-27 09:36:44.299969+03	0
454	530	7	1	2020-01-27 10:21:22.59004+03	0
455	442	7	1	2020-01-27 10:42:04.450067+03	0
456	365	7	1	2020-01-27 10:42:29.612906+03	0
457	555	7	1	2020-01-27 10:57:30.050592+03	0
458	564	7	1	2020-01-27 10:58:33.613035+03	0
459	379	10	1	2020-01-27 11:31:18.025033+03	0
460	70	10	1	2020-01-27 11:33:49.810343+03	0
461	566	7	1	2020-01-27 11:37:23.940767+03	0
462	557	10	1	2020-01-27 11:41:07.992013+03	0
463	200	10	1	2020-01-27 11:46:36.441978+03	0
464	566	10	1	2020-01-27 11:47:31.614313+03	0
465	84	10	1	2020-01-27 11:56:02.276539+03	0
466	132	10	1	2020-01-27 11:56:12.421485+03	0
467	427	10	1	2020-01-27 12:04:26.861144+03	0
468	168	10	1	2020-01-27 12:05:02.499567+03	0
469	380	10	1	2020-01-27 12:05:39.849396+03	0
470	508	7	1	2020-01-27 12:26:49.806547+03	0
471	284	7	1	2020-01-27 12:45:21.776711+03	0
472	469	7	1	2020-01-27 12:47:10.309347+03	0
473	461	7	1	2020-01-27 15:19:53.366642+03	0
474	569	7	1	2020-01-27 15:39:15.840475+03	0
475	570	7	1	2020-01-27 15:59:03.991326+03	0
476	576	7	1	2020-01-27 18:23:51.629459+03	0
477	578	7	1	2020-01-27 18:50:10.335428+03	0
478	579	7	1	2020-01-27 19:38:14.782712+03	0
479	581	7	1	2020-01-27 19:55:01.294389+03	0
480	483	7	1	2020-01-27 21:01:46.410621+03	0
481	585	7	1	2020-01-27 22:27:38.09663+03	0
482	240	7	1	2020-01-27 23:13:21.986206+03	0
483	588	7	1	2020-01-27 23:18:45.021642+03	0
484	591	7	1	2020-01-28 01:45:51.504574+03	0
485	596	7	1	2020-01-28 11:40:52.027989+03	0
486	582	7	1	2020-01-28 13:46:18.913354+03	0
487	329	7	1	2020-01-28 13:55:05.7988+03	0
488	598	7	1	2020-01-28 15:23:10.294793+03	0
489	599	7	1	2020-01-28 15:46:59.931716+03	0
490	12	7	1	2020-01-28 16:48:27.125175+03	0
491	604	7	1	2020-01-28 19:43:00.186189+03	0
492	606	7	1	2020-01-28 20:40:00.400277+03	0
493	11	7	1	2020-01-28 23:48:10.914485+03	0
494	573	7	1	2020-01-29 17:19:32.333679+03	0
495	468	7	1	2020-01-29 17:38:07.522881+03	0
496	614	7	1	2020-01-29 20:49:02.909336+03	0
497	617	7	1	2020-01-29 23:17:07.535173+03	0
498	619	7	1	2020-01-30 12:55:11.868204+03	0
499	556	7	1	2020-01-30 17:11:28.714885+03	0
500	621	7	1	2020-01-30 23:21:10.855883+03	0
501	627	7	1	2020-01-31 21:36:40.305861+03	0
502	535	7	1	2020-01-31 23:22:46.470764+03	0
503	439	11	1	2020-02-01 12:19:23.948511+03	0
504	370	11	1	2020-02-01 12:28:38.233824+03	0
505	627	11	1	2020-02-01 12:29:49.466989+03	0
506	450	11	1	2020-02-01 12:37:22.164706+03	0
507	631	7	1	2020-02-01 12:39:30.415237+03	0
508	238	11	1	2020-02-01 12:45:03.566914+03	0
509	631	11	1	2020-02-01 12:45:34.916679+03	0
510	441	11	1	2020-02-01 12:57:00.339461+03	0
511	55	11	1	2020-02-01 12:59:02.942732+03	0
512	312	11	1	2020-02-01 12:59:55.420344+03	0
513	633	11	1	2020-02-01 13:00:27.951909+03	0
514	633	7	1	2020-02-01 13:09:29.696176+03	0
515	486	11	1	2020-02-01 13:13:14.264871+03	0
516	358	11	1	2020-02-01 13:18:01.82821+03	0
517	73	11	1	2020-02-01 13:35:53.252888+03	0
518	579	11	1	2020-02-01 13:40:09.547631+03	0
519	636	11	1	2020-02-01 13:47:49.249636+03	0
520	253	11	1	2020-02-01 13:54:44.091582+03	0
521	604	11	1	2020-02-01 13:56:36.041243+03	0
522	165	11	1	2020-02-01 13:58:49.808953+03	0
523	638	7	1	2020-02-01 14:07:40.619115+03	0
524	466	11	1	2020-02-01 14:09:02.465444+03	0
525	13	11	1	2020-02-01 14:13:45.584714+03	0
526	132	11	1	2020-02-01 14:49:47.00215+03	0
527	129	11	1	2020-02-01 15:12:33.44329+03	0
528	461	11	1	2020-02-01 15:26:56.150581+03	0
529	193	11	1	2020-02-01 15:56:23.934465+03	0
530	262	11	1	2020-02-01 15:59:04.834583+03	0
531	325	11	1	2020-02-01 15:59:07.309139+03	0
532	275	11	1	2020-02-01 16:10:10.032959+03	0
533	348	11	1	2020-02-01 16:10:44.896225+03	0
534	84	11	1	2020-02-01 16:11:51.497716+03	0
535	72	11	1	2020-02-01 16:26:05.926051+03	0
536	250	11	1	2020-02-01 16:33:07.060968+03	0
537	49	11	1	2020-02-01 17:18:14.295699+03	0
538	541	11	1	2020-02-01 17:20:02.106246+03	0
539	399	11	1	2020-02-01 17:20:10.652198+03	0
540	476	11	1	2020-02-01 17:20:18.785937+03	0
541	223	11	1	2020-02-01 17:20:48.401972+03	0
542	70	11	1	2020-02-01 17:20:58.2521+03	0
543	646	11	1	2020-02-01 17:21:45.363619+03	0
544	105	11	1	2020-02-01 17:21:59.276909+03	0
545	256	11	1	2020-02-01 17:22:18.633761+03	0
546	649	11	1	2020-02-01 17:22:23.782646+03	0
547	174	11	1	2020-02-01 17:22:40.371103+03	0
548	115	11	1	2020-02-01 17:22:46.410465+03	0
549	661	11	1	2020-02-01 17:23:00.254636+03	0
550	138	11	1	2020-02-01 17:23:17.656052+03	0
551	645	7	1	2020-02-01 17:23:44.279993+03	0
552	653	7	1	2020-02-01 17:24:03.756179+03	0
553	662	11	1	2020-02-01 17:24:29.042326+03	0
554	666	11	1	2020-02-01 17:24:38.473456+03	0
555	39	11	1	2020-02-01 17:25:05.249702+03	0
556	663	7	1	2020-02-01 17:27:06.538714+03	0
557	669	11	1	2020-02-01 17:27:57.682421+03	0
558	543	11	1	2020-02-01 17:28:15.238956+03	0
559	673	11	1	2020-02-01 17:29:06.723038+03	0
560	663	11	1	2020-02-01 17:33:09.253225+03	0
561	373	11	1	2020-02-01 17:33:48.134216+03	0
562	256	7	1	2020-02-01 17:34:18.528443+03	0
563	678	7	1	2020-02-01 17:40:48.53434+03	0
564	180	11	1	2020-02-01 17:44:30.396076+03	0
565	647	11	1	2020-02-01 17:45:31.99865+03	0
566	674	11	1	2020-02-01 17:50:03.691802+03	0
567	679	11	1	2020-02-01 17:50:20.578996+03	0
568	672	11	1	2020-02-01 18:00:38.706515+03	0
569	106	11	1	2020-02-01 18:14:02.460294+03	0
570	134	11	1	2020-02-01 18:14:26.962095+03	0
571	425	11	1	2020-02-01 18:26:44.081468+03	0
572	245	11	1	2020-02-01 19:34:44.080353+03	0
573	83	11	1	2020-02-01 20:12:09.891422+03	0
574	673	7	1	2020-02-01 20:22:53.192274+03	0
575	617	11	1	2020-02-01 21:08:18.164331+03	0
576	555	11	1	2020-02-01 22:41:52.427562+03	0
577	683	11	1	2020-02-01 23:04:43.774538+03	0
578	501	11	1	2020-02-01 23:56:59.715996+03	0
579	686	11	1	2020-02-02 09:42:14.529281+03	0
580	102	11	1	2020-02-02 10:14:44.037081+03	0
581	379	11	1	2020-02-02 10:37:19.746153+03	0
582	591	11	1	2020-02-02 10:46:28.633241+03	0
583	349	11	1	2020-02-02 11:02:20.347444+03	0
584	155	11	1	2020-02-02 11:28:30.786949+03	0
585	525	11	1	2020-02-02 12:32:43.654136+03	0
586	168	11	1	2020-02-02 12:41:39.319754+03	0
587	687	11	1	2020-02-02 13:08:37.818168+03	0
588	634	11	1	2020-02-02 13:57:12.053226+03	0
589	410	11	1	2020-02-02 14:08:51.723377+03	0
590	519	11	1	2020-02-02 14:40:42.470164+03	0
591	162	11	1	2020-02-02 14:40:49.73904+03	0
592	433	11	1	2020-02-02 14:50:03.986444+03	0
593	92	11	1	2020-02-02 15:29:04.797679+03	0
594	92	7	1	2020-02-02 15:52:08.722373+03	0
595	283	11	1	2020-02-02 16:36:46.562346+03	0
596	427	11	1	2020-02-02 18:27:44.428061+03	0
597	59	11	1	2020-02-02 18:51:45.393033+03	0
598	186	11	1	2020-02-02 19:44:41.582077+03	0
599	689	7	1	2020-02-02 20:17:21.496259+03	0
600	557	11	1	2020-02-02 22:52:18.506728+03	0
601	75	11	1	2020-02-02 23:22:00.676023+03	0
602	614	11	1	2020-02-03 07:57:18.656249+03	0
603	239	11	1	2020-02-03 09:56:06.603193+03	0
604	593	11	1	2020-02-03 12:18:01.914835+03	0
605	90	11	1	2020-02-03 13:00:42.641207+03	0
606	292	11	1	2020-02-03 13:22:46.98721+03	0
607	206	11	1	2020-02-03 18:37:57.121013+03	0
608	690	7	1	2020-02-03 22:34:48.014638+03	0
609	690	11	1	2020-02-03 22:41:16.347597+03	0
610	94	11	1	2020-02-04 06:58:48.701656+03	0
611	694	12	1	2020-02-04 16:35:23.563068+03	0
612	695	12	1	2020-02-04 16:36:36.272065+03	0
613	690	12	1	2020-02-04 16:44:01.901128+03	0
614	155	12	1	2020-02-04 17:04:21.715038+03	0
615	132	12	1	2020-02-04 17:06:02.135469+03	0
616	604	12	1	2020-02-04 17:17:24.343124+03	0
617	78	11	1	2020-02-04 18:27:41.176412+03	0
618	78	12	1	2020-02-04 18:40:22.666456+03	0
619	358	12	1	2020-02-04 19:08:17.130664+03	0
620	168	12	1	2020-02-04 19:10:08.302435+03	0
621	275	12	1	2020-02-04 20:21:10.887224+03	0
622	461	12	1	2020-02-04 21:31:24.007645+03	0
623	542	11	1	2020-02-04 21:52:30.903898+03	0
624	557	12	1	2020-02-04 22:34:04.672109+03	0
625	312	12	1	2020-02-04 22:36:48.242869+03	0
626	102	12	1	2020-02-04 22:40:29.906714+03	0
627	186	12	1	2020-02-04 23:47:25.06299+03	0
628	379	12	1	2020-02-05 00:51:20.470858+03	0
629	543	12	1	2020-02-05 07:00:51.416418+03	0
630	245	12	1	2020-02-05 09:55:44.954069+03	0
631	62	11	1	2020-02-05 12:52:19.847969+03	0
632	62	12	1	2020-02-05 13:01:35.396981+03	0
633	49	12	1	2020-02-05 13:35:38.277491+03	0
634	415	12	1	2020-02-05 13:37:53.16222+03	0
635	105	12	1	2020-02-05 13:49:58.841873+03	0
636	704	7	1	2020-02-05 13:54:57.438825+03	0
637	704	11	1	2020-02-05 14:05:43.835662+03	0
638	69	12	1	2020-02-05 15:15:47.417405+03	0
639	69	11	1	2020-02-05 15:26:16.650032+03	0
640	206	12	1	2020-02-05 16:22:05.314443+03	0
641	704	12	1	2020-02-05 16:33:24.138671+03	0
642	262	12	1	2020-02-05 18:19:28.375883+03	0
643	84	12	1	2020-02-05 19:44:30.664005+03	0
644	55	12	1	2020-02-05 19:57:07.450798+03	0
645	62	13	1	2020-02-05 20:26:03.414392+03	0
646	345	13	1	2020-02-05 20:27:00.749426+03	0
647	710	13	1	2020-02-05 20:29:32.401666+03	0
648	669	13	1	2020-02-05 20:34:04.167311+03	0
649	686	13	1	2020-02-05 20:34:15.135907+03	0
650	713	11	1	2020-02-05 20:34:53.782312+03	0
651	105	13	1	2020-02-05 20:35:13.223585+03	0
652	83	12	1	2020-02-05 20:35:24.667358+03	0
653	49	13	1	2020-02-05 20:35:44.080579+03	0
654	258	13	1	2020-02-05 20:35:46.831036+03	0
655	478	13	1	2020-02-05 20:39:23.586601+03	0
656	716	13	1	2020-02-05 20:41:43.808631+03	0
657	83	13	1	2020-02-05 20:42:07.898007+03	0
658	717	7	1	2020-02-05 20:42:28.381175+03	0
659	709	13	1	2020-02-05 20:44:17.988286+03	0
660	177	13	1	2020-02-05 20:44:44.441964+03	0
661	68	13	1	2020-02-05 20:44:47.252381+03	0
662	12	13	1	2020-02-05 20:45:11.595286+03	0
663	541	13	1	2020-02-05 20:45:37.038385+03	0
664	719	13	1	2020-02-05 20:45:46.953821+03	0
665	449	13	1	2020-02-05 20:45:52.728354+03	0
666	479	13	1	2020-02-05 20:45:53.942238+03	0
667	443	13	1	2020-02-05 20:46:04.154409+03	0
668	355	13	1	2020-02-05 20:46:28.086163+03	0
669	725	13	1	2020-02-05 20:46:31.476692+03	0
670	449	7	1	2020-02-05 20:46:33.102667+03	0
671	714	13	1	2020-02-05 20:46:47.398429+03	0
672	735	13	1	2020-02-05 20:46:56.568612+03	0
673	48	13	1	2020-02-05 20:47:01.100401+03	0
674	103	13	1	2020-02-05 20:47:10.192529+03	0
675	312	13	1	2020-02-05 20:47:42.261485+03	0
676	736	13	1	2020-02-05 20:47:44.124924+03	0
677	738	13	1	2020-02-05 20:47:51.284379+03	0
678	84	13	1	2020-02-05 20:48:29.628023+03	0
679	722	11	1	2020-02-05 20:49:12.104407+03	0
680	579	12	1	2020-02-05 20:50:23.399086+03	0
681	743	13	1	2020-02-05 20:50:34.737046+03	0
682	102	13	1	2020-02-05 20:51:10.415495+03	0
683	336	13	1	2020-02-05 20:51:46.94678+03	0
684	723	13	1	2020-02-05 20:52:58.151885+03	0
685	720	13	1	2020-02-05 20:52:59.809435+03	0
686	686	12	1	2020-02-05 20:54:28.596839+03	0
687	752	13	1	2020-02-05 20:54:32.756406+03	0
688	358	13	1	2020-02-05 20:56:20.907602+03	0
689	754	11	1	2020-02-05 20:58:36.420974+03	0
690	500	13	1	2020-02-05 21:01:04.904873+03	0
691	579	13	1	2020-02-05 21:02:15.936578+03	0
692	500	11	1	2020-02-05 21:11:30.312599+03	0
693	72	12	1	2020-02-05 21:24:57.670152+03	0
694	72	13	1	2020-02-05 21:30:45.147304+03	0
695	449	12	1	2020-02-05 21:44:32.919068+03	0
696	758	13	1	2020-02-05 21:46:56.394733+03	0
697	75	12	1	2020-02-05 21:51:17.21643+03	0
698	449	11	1	2020-02-05 21:56:08.281288+03	0
699	75	13	1	2020-02-05 21:59:45.836042+03	0
700	292	13	1	2020-02-05 22:31:00.580279+03	0
701	165	12	1	2020-02-05 23:46:10.148309+03	0
702	761	13	1	2020-02-06 04:13:49.172048+03	0
703	761	7	1	2020-02-06 04:24:56.008702+03	0
704	761	11	1	2020-02-06 04:33:17.131426+03	0
705	283	12	1	2020-02-06 05:51:58.521927+03	0
706	283	13	1	2020-02-06 06:03:07.03409+03	0
707	762	13	1	2020-02-06 06:32:24.319617+03	0
708	334	11	1	2020-02-06 06:38:49.421817+03	0
709	762	11	1	2020-02-06 06:42:29.78026+03	0
710	334	12	1	2020-02-06 06:55:48.609594+03	0
711	334	13	1	2020-02-06 07:24:55.554665+03	0
712	763	13	1	2020-02-06 08:17:56.997933+03	0
713	132	13	1	2020-02-06 09:07:00.987747+03	0
714	12	11	1	2020-02-06 10:34:15.357805+03	0
715	379	13	1	2020-02-06 10:42:50.357075+03	0
716	78	13	1	2020-02-06 11:33:48.120169+03	0
717	557	13	1	2020-02-06 12:28:26.723255+03	0
718	770	13	1	2020-02-06 12:47:00.149245+03	0
719	627	12	1	2020-02-06 13:00:32.683173+03	0
720	627	13	1	2020-02-06 13:06:38.937063+03	0
721	519	12	1	2020-02-06 14:35:13.832944+03	0
722	519	13	1	2020-02-06 14:42:58.05621+03	0
723	193	13	1	2020-02-06 15:12:38.941448+03	0
724	193	12	1	2020-02-06 15:23:04.560968+03	0
725	771	13	1	2020-02-06 16:52:15.588992+03	0
726	262	13	1	2020-02-06 18:09:13.559328+03	0
727	772	13	1	2020-02-06 19:09:00.947513+03	0
728	325	13	1	2020-02-06 20:23:17.127006+03	0
729	461	13	1	2020-02-06 20:24:08.267775+03	0
730	441	13	1	2020-02-06 20:37:26.848416+03	0
731	16	\N	-10	2020-02-06 20:54:14.684687+03	1
732	129	13	1	2020-02-06 22:27:52.069463+03	0
733	591	13	1	2020-02-07 00:59:20.301869+03	0
734	704	13	1	2020-02-07 08:48:42.550915+03	0
735	704	\N	-1	2020-02-07 08:49:32.145584+03	1
736	275	13	1	2020-02-07 19:19:19.665214+03	0
737	73	13	1	2020-02-07 21:34:00.301481+03	0
738	13	13	1	2020-02-07 23:08:53.287069+03	0
739	470	13	1	2020-02-08 00:36:21.095217+03	0
740	543	13	1	2020-02-08 10:06:03.677368+03	0
741	604	13	1	2020-02-08 11:36:50.144716+03	0
742	92	13	1	2020-02-08 12:18:45.820932+03	0
743	180	13	1	2020-02-08 13:09:29.00938+03	0
744	106	\N	-1	2020-02-08 13:21:22.055208+03	1
745	758	\N	-1	2020-02-08 16:49:30.964902+03	1
\.


--
-- TOC entry 3051 (class 0 OID 17126)
-- Dependencies: 212
-- Data for Name: Users; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Users" ("Id", "Nick", "Name", "Surname", "AvatarPath", "Email", "RegistredAt", "IsBanned", "BanStartedAt", "BanFineshedAt", "Balance") FROM stdin;
1	\N	BoP4yH	\N	https://yt3.ggpht.com/a/AGF-l7-KUg0c2uTOVfxrBA5HJRIDyKesR0ZSY_srWw=s800-c-k-c0xffffffff-no-rj-mo	UCTCWlEJVLlu6evt_okyT0_A	2020-01-11 17:04:17.434495+03	f	\N	\N	0
2	\N	Андрей Иванов	\N	https://yt3.ggpht.com/a/AGF-l78xWySu6pw_pY7Q8OvVgvB5OQ75v3T9V-M1=s800-c-k-c0xffffffff-no-rj-mo	UC2SxoOteAK772J7Ah0dxzAQ	2020-01-11 20:58:28.643102+03	f	\N	\N	0
11	SERTIM1900_GT	Sasha	Pronsky	https://sun6-19.userapi.com/c858036/v858036885/1ebe5/iu1Oc7fSdSY.jpg?ava=1	431690723	2020-01-14 01:18:07.211207+03	f	\N	\N	11
22	malinki_boss	Samo	Pogosyan	https://sun9-16.userapi.com/c841239/v841239067/6e142/YOqeAr75MCQ.jpg?ava=1	418075039	2020-01-16 09:39:57.721282+03	f	\N	\N	0
23	\N	Евгений Бабарыкин	\N	https://yt3.ggpht.com/a/AGF-l78Zu4iLjxVyupqV_38NdBlSBdAmpMPP1xFCPQ=s800-c-k-c0xffffffff-no-rj-mo	UCVHj1l3RXGBfkB6fDE9uXnA	2020-01-16 12:57:07.458388+03	f	\N	\N	0
4	XX_CAXAPOK_XX	Влад Кочкало	\N	https://yt3.ggpht.com/a/AGF-l7_hM9h_UEYWd5Vg_yRRKeBnXMxogO0SBprHUA=s800-c-k-c0xffffffff-no-rj-mo	UCBfYMz8co0G5vy2zozRBJuw	2020-01-12 15:15:32.138101+03	f	\N	\N	0
5	AMOPAJIbHA9I	Diana	Milevskaya	https://sun9-61.userapi.com/c200328/v200328731/36b1a/ETmF_HJVqiM.jpg?ava=1	397301755	2020-01-12 17:26:32.657117+03	f	\N	\N	0
6	\N	Inkvays	\N	https://yt3.ggpht.com/a/AGF-l79R-yxH4PaiWcCexkfyyWLgi3FIgcgRW_c1bA=s800-c-k-c0xffffffff-no-rj-mo	UCuPEtmXnPVf7UNuL5VskMAQ	2020-01-12 20:04:54.721831+03	f	\N	\N	0
7	\N	[aprill] ghita_master_moldova	\N	https://yt3.ggpht.com/a/AGF-l79rvp9yZpiTH3_udjmBykTbA1RO3MtoytKLJA=s800-c-k-c0xffffffff-no-rj-mo	UCSjTfrAbD8rPpAHSD5Uuw_A	2020-01-13 00:36:38.669174+03	f	\N	\N	10
8	\N	Gek Fert	\N	https://yt3.ggpht.com/a/AGF-l7_EAU_m1q6IqyviiMjoMgS3na-tQp6fGlfqyQ=s800-c-k-c0xffffffff-no-rj-mo	UC-BQ8hghiIiT1xsiB4meJkA	2020-01-13 12:28:39.368913+03	f	\N	\N	10
9	\N	Artem	Rudakov	https://sun9-20.userapi.com/c824503/v824503355/c9e5d/yNPZOoVtr0o.jpg?ava=1	311675174	2020-01-13 15:37:25.738958+03	f	\N	\N	0
10	shwads	Arnold Rakovski	\N	https://yt3.ggpht.com/a/AGF-l7_LMGUxRyWDcI4KUsw982R2oFCUMheMUOc9dQ=s800-c-k-c0xffffffff-no-rj-mo	UCSJp9EHcDP8nNx1gsaSKDaQ	2020-01-13 15:59:58.503477+03	f	\N	\N	10
29	\N	Cătălin Flocea	\N	https://lh3.googleusercontent.com/-fQyyDDeoqdE/AAAAAAAAAAI/AAAAAAAAAAA/ACHi3rcgYydcAmG_crQa3FK4noFq_Hw_5g/photo.jpg	UCKnwPXD1ykOFhILX33ACKCA	2020-01-20 19:10:05.916993+03	f	\N	\N	10
13	Mr.Ecoprettiness	Konstantin	Vasilyev	https://sun9-27.userapi.com/c205328/v205328432/47575/hHdGCJqz92A.jpg?ava=1	540187759	2020-01-15 07:11:09.195628+03	f	\N	\N	2
26	\N	Ilya	Bebenov	https://sun9-30.userapi.com/c854120/v854120033/1896a4/BptbmBvHa28.jpg?ava=1	520518743	2020-01-19 13:51:42.567485+03	f	\N	\N	0
17	\N	Satoshi Bitcoinov	\N	https://lh5.googleusercontent.com/-sjcSi-OdMUY/AAAAAAAAAAI/AAAAAAAAAAA/ACHi3rfB1ZjAIzwO6AAg896icVLMaGXy8w/photo.jpg	UCpKKLjJxFVEMfaTPxULw_pQ	2020-01-15 15:32:23.618215+03	f	\N	\N	0
18	\N	Богдан Тарасенко	\N	https://lh3.googleusercontent.com/-c8PQK0Q5iDg/AAAAAAAAAAI/AAAAAAAAAAA/ACHi3rcrRx3h1kGMwEc7CwJE_Fi_gbChqQ/photo.jpg	UCDmPgDHMNeu_BbWmRhW3RoQ	2020-01-15 15:32:33.943414+03	f	\N	\N	0
30	\N	Cătălin Flocea	\N	https://yt3.ggpht.com/a/AGF-l793GSs68lVqWUFJWftlV-x6_4IFtOtnKnikDg=s800-c-k-c0xffffffff-no-rj-mo	UCUOKwRnzZLCdSfWeXg-pMNA	2020-01-20 19:10:42.093773+03	f	\N	\N	20
20	\N	Ivan	Koyashov	https://sun9-31.userapi.com/c853620/v853620272/d0a8a/_oBNJUOOe5w.jpg?ava=1	440009070	2020-01-15 16:20:02.788503+03	f	\N	\N	0
21	\N	МАКС	\N	https://yt3.ggpht.com/a/AGF-l7-QtzuXZwAPW0hK_x9BxC0y3fkWWAIq45w=s800-c-k-c0xffffffff-no-rj-mo	UC6xNtxXcWBoLt7SH-0Hj12A	2020-01-16 02:08:18.400936+03	f	\N	\N	0
31	\N	Саша Ковела	\N	https://yt3.ggpht.com/a/AGF-l7-x3PNqXdNk-k0xs91R9qWUhWqF6Ak-XAeDhQ=s800-c-k-c0xffffffff-no-rj-mo	UCPZfmODTKtpsanz22yvfB1Q	2020-01-20 19:54:35.023719+03	f	\N	\N	10
32	\N	Viktor	Sorokin	https://sun9-45.userapi.com/c630230/v630230756/520ea/Wvze2sT3shc.jpg?ava=1	341977696	2020-01-21 08:22:04.449752+03	f	\N	\N	0
3	\N	Ivan	Zinziver	https://sun9-27.userapi.com/c855324/v855324807/14e48c/yF5Jw1i4Y0Q.jpg?ava=1	330068337	2020-01-12 01:58:45.818594+03	f	\N	\N	10
33	\N	MrToxickShot	\N	https://yt3.ggpht.com/a/AGF-l79H8ojeTBiAoE8wuMSajJY0kD8_NcOhbDnTgQ=s800-c-k-c0xffffffff-no-rj-mo	UCB1aCc1aLry1QuOsYbITanA	2020-01-21 08:25:08.59854+03	f	\N	\N	0
44	\N	Nikita	Syrtsev	https://sun9-66.userapi.com/c855236/v855236761/bfe3c/QVm0oMkyE7U.jpg?ava=1	348013118	2020-01-24 19:05:21.686015+03	f	\N	\N	1
35	\N	Rinat	Grechka	https://sun6-19.userapi.com/c854128/v854128118/192a7a/rBQ4TUvcSdU.jpg?ava=1	406802380	2020-01-23 14:51:38.586967+03	f	\N	\N	0
27	\N	Viorel Flocea	\N	https://yt3.ggpht.com/a/AGF-l7-aLBCm-lVUTKoaguNGNaYPmgaYhAmQAirkLA=s800-c-k-c0xffffffff-no-rj-mo	UC7PNT7jR3JZairmHJB1WB5g	2020-01-20 19:08:03.827396+03	f	\N	\N	20
14	\N	Евгений Речков	\N	https://yt3.ggpht.com/a/AGF-l79_hotNcZpAlQ67920j_ec-46zNerils-TCgQ=s800-c-k-c0xffffffff-no-rj-mo	UC8C9WoT4w6ONpr1D4jYagHg	2020-01-15 15:31:01.601703+03	f	\N	\N	50
34	\N	Evgeny	Gladkov	https://vk.com/images/camera_200.png?ava=1	512200291	2020-01-23 08:06:56.302447+03	f	\N	\N	10
19	\N	MaZaHaKa ™	\N	https://yt3.ggpht.com/a/AGF-l7-kABOjJ1dS2Kip4QOOMJcDqnVRyykMQrFKzA=s800-c-k-c0xffffffff-no-rj-mo	UC_O3lqQ7wX6HVefQfV43fuQ	2020-01-15 15:33:31.536132+03	f	\N	\N	0
36	\N	Periscope Live & Gymnastics	\N	https://yt3.ggpht.com/a/AGF-l79gAvMrhPbHkmwMOnQPcYyU2MMQeSQOWUiPlw=s800-c-k-c0xffffffff-no-rj-mo	UCU1P9BtAF-PBDK8V2uXp0bQ	2020-01-24 04:21:44.288708+03	f	\N	\N	0
37	\N	СО-23 LIVЕ Безлимитный сезон	\N	https://yt3.ggpht.com/a/AGF-l79zU0uuguQ3kOleTxHdIcJlBuayR3AAUEFL_g=s800-c-k-c0xffffffff-no-rj-mo	UC_TE_59dHYIPTWL9inrfevg	2020-01-24 04:23:49.899324+03	f	\N	\N	0
38	\N	сезон охоты 21 прямые эфиры	\N	https://yt3.ggpht.com/a/AGF-l7-TemtwQIiiiBnI26-BgGnfvhGJh6yTzrCgZA=s800-c-k-c0xffffffff-no-rj-mo	UCko5m-cnYzkpU02jS3cyHAg	2020-01-24 04:32:05.146001+03	f	\N	\N	0
40	\N	Евгений Козорезов	\N	https://yt3.ggpht.com/a/AGF-l78guwVosqdy1Oz5QNRtSUdJeUcdt2WlvEhKfA=s800-c-k-c0xffffffff-no-rj-mo	UCgiMcdxi8ks12CAmAvUguuQ	2020-01-24 14:14:13.896906+03	f	\N	\N	0
41	\N	Mt. BiT	\N	https://yt3.ggpht.com/a/AGF-l7_3gguiS9OzxT4Ec1ZYb2LIva-KGTJpdLfoGQ=s800-c-k-c0xffffffff-no-rj-mo	UC6-91rUoHjBsIyfkLTVdWVg	2020-01-24 14:15:20.686041+03	f	\N	\N	0
42	Garrix	Alexander	Herzog	https://sun6-13.userapi.com/c855632/v855632527/d8fde/VG4VKpuePsA.jpg?ava=1	234831110	2020-01-24 18:28:56.19927+03	f	\N	\N	0
25	\N	Lam Waster	\N	https://yt3.ggpht.com/a/AGF-l7-nSu4efOwrcAheFjGALP-RM1wPKy0VnxgsZg=s800-c-k-c0xffffffff-no-rj-mo	UCan2gr-xvLcXHoyI9YsINNg	2020-01-19 01:47:27.029869+03	f	\N	\N	1
24	\N	Vladislav	Kutukov	https://sun9-23.userapi.com/c824501/v824501910/14511/fPk4yX5iVuU.jpg?ava=1	204987739	2020-01-17 15:16:12.931918+03	f	\N	\N	1
43	\N	Maxim	Krivulenko	https://sun6-19.userapi.com/c206616/v206616849/3cf9a/bv5iPSZjkHg.jpg?ava=1	228472898	2020-01-24 18:58:27.862501+03	f	\N	\N	1
39	\N	Evgeny	Kozorezov	https://sun9-55.userapi.com/c630631/v630631139/41fab/uadiBrjt5Sk.jpg?ava=1	260204139	2020-01-24 14:13:01.332607+03	f	\N	\N	2
15	\N	Bogdan Tarasenko	\N	https://yt3.ggpht.com/a/AGF-l7_WgBPMevENunvO8NM3NkD9OuiWQ4pZz7w4Kw=s800-c-k-c0xffffffff-no-rj-mo	UCAK5fAnc-Bzgfn_n_8T1KcQ	2020-01-15 15:31:45.702236+03	f	\N	\N	0
78	\N	Danil	Khomyakov	https://sun9-50.userapi.com/c855016/v855016873/1aec52/bJu7MDHevlo.jpg?ava=1	384852954	2020-01-26 00:08:36.282923+03	f	\N	\N	4
45	\N	Alisa	Gromova	https://sun9-37.userapi.com/c854128/v854128494/1d44b5/ByfdNsvscJg.jpg?ava=1	370966743	2020-01-24 23:46:52.014905+03	f	\N	\N	0
59	\N	Matvey	Yakovlev	https://sun9-29.userapi.com/c852124/v852124341/49dda/8VNtu-qxjL0.jpg?ava=1	190947439	2020-01-25 13:09:23.639407+03	f	\N	\N	3
50	\N	Илья Галагуза	\N	https://yt3.ggpht.com/a/AGF-l7_mrCrzPJxcAJC5rifygUYuHCmqa8bikLV-JA=s800-c-k-c0xffffffff-no-rj-mo	UC3KwLg9x0wAaYydp3wF8s0w	2020-01-25 12:10:51.371052+03	f	\N	\N	0
48	Мастер по-насадке	Artyom	Pristupa	https://sun9-47.userapi.com/c855128/v855128477/1c949d/Ejn4PTMb_0M.jpg?ava=1	255023338	2020-01-25 12:07:45.325881+03	f	\N	\N	2
52	\N	Kostya	Uzun	https://sun6-16.userapi.com/c848628/v848628639/1c9cf8/5pVPILuL1OQ.jpg?ava=1	240381811	2020-01-25 12:21:53.732125+03	f	\N	\N	0
84	MCZamanov	Aigiz Zamanov	\N	https://yt3.ggpht.com/a/AGF-l7-wcYhOt4mjv88hEG_4DiNePeXNOpoiQKEm3w=s800-c-k-c0xffffffff-no-rj-mo	UCTSZCYdXkPsgBAK0SeXdHpA	2020-01-26 11:26:32.269865+03	f	\N	\N	7
54	\N	Denis	Rezhimsky	https://sun6-19.userapi.com/c853428/v853428316/18b3b4/E_LFRf5GY9s.jpg?ava=1	540848988	2020-01-25 12:35:29.7594+03	f	\N	\N	1
16	\N	myhwm Mh	\N	https://yt3.ggpht.com/a/AGF-l7-03pm4DTzdB-jWiveeYf6LM-kaoBTJkpyccw=s800-c-k-c0xffffffff-no-rj-mo	UCOoYF6K4UGd3kYLw3Ubc5_Q	2020-01-15 15:31:50.649417+03	f	\N	\N	20
53	\N	Cosmic Disease	\N	https://yt3.ggpht.com/a/AGF-l78_A6zuZghrToDFPdiS5DsC-K8Zl79MLqG62g=s800-c-k-c0xffffffff-no-rj-mo	UCGMkocozj67EEIPVhaGS3Nw	2020-01-25 12:28:36.988662+03	f	\N	\N	1
60	\N	No cap Я реальней чем ты думал	\N	https://yt3.ggpht.com/a/AGF-l78SZ0MPLinqFOEa4GT3LwevaA48Pf-GO5EpYQ=s800-c-k-c0xffffffff-no-rj-mo	UC9bbTTIjXvqeN7Fvp6qauYw	2020-01-25 13:15:07.545083+03	f	\N	\N	1
75	\N	Nekit	\N	https://yt3.ggpht.com/a/AGF-l78BTfdTCATnhv4oSEQ3km6-Njm21RuEP36V1Q=s800-c-k-c0xffffffff-no-rj-mo	UC8wR95YTkUSw3L2HyfCgjnw	2020-01-25 22:08:25.120051+03	f	\N	\N	6
63	mahmo193	Alexander	Kukharenko	https://sun9-50.userapi.com/c857520/v857520035/11581d/m6YX7dU0p8A.jpg?ava=1	207473489	2020-01-25 13:59:21.286917+03	f	\N	\N	1
57	\N	Alexander	Feshkov	https://sun9-71.userapi.com/c851020/v851020897/190530/HRneJf1g9gY.jpg?ava=1	555263653	2020-01-25 12:57:48.846488+03	f	\N	\N	0
58	\N	Polina	Grin	https://sun9-30.userapi.com/c850528/v850528224/e7503/WmAV9FLcgeg.jpg?ava=1	233689337	2020-01-25 13:02:27.753301+03	f	\N	\N	0
66	\N	n Omega	\N	https://yt3.ggpht.com/a/AGF-l7_4dN1mpyAfTwR05MN0bCg_EZzSntb01rRBkg=s800-c-k-c0xffffffff-no-rj-mo	UCAmcyDn6w79xn_9Yd7ReLig	2020-01-25 15:41:52.870516+03	f	\N	\N	0
67	\N	David	Artyomenko	https://sun6-14.userapi.com/c851416/v851416311/7c780/T0_Sk79hU18.jpg?ava=1	303823372	2020-01-25 15:43:10.50225+03	f	\N	\N	0
55	ванёк 	Dafn Lcvvii	\N	https://lh3.googleusercontent.com/-3h0sGr10Kyc/AAAAAAAAAAI/AAAAAAAAAAA/ACHi3reHB9pbAtLI9pfTxk3YeqxmNXv0qw/photo.jpg	UCb2OhZzmRG-Njwq3tSlGCkg	2020-01-25 12:44:52.709986+03	f	\N	\N	3
61	\N	Кирилл Полуненко	\N	https://yt3.ggpht.com/a/AGF-l78NwnowShC_BWjlGYr_yXNdjgOnXYCSU3tiHg=s800-c-k-c0xffffffff-no-rj-mo	UC_g2MQSkSyCVaSbgmeGjdXg	2020-01-25 13:16:40.0932+03	f	\N	\N	0
70	Cy6apucT	Erik	Bubejev	https://sun9-62.userapi.com/c844416/v844416733/1b88ac/2_CQ730WsJM.jpg?ava=1	180824748	2020-01-25 16:10:54.581396+03	f	\N	\N	4
49	\N	Ivan	Mironenko	https://sun9-69.userapi.com/c854124/v854124159/176986/_2VlrxBy5YA.jpg?ava=1	153541658	2020-01-25 12:08:25.237614+03	f	\N	\N	6
56	\N	KylbTypNblu	\N	https://yt3.ggpht.com/a/AGF-l7_cL3cBewHvmbh7OHn5EKh3_cZbdRnJLVnE-Q=s800-c-k-c0xffffffff-no-rj-mo	UCZ_aEIroHvb3VAs2nGAyqEA	2020-01-25 12:53:49.581498+03	f	\N	\N	0
72	HARYTO	Black Prince	\N	https://yt3.ggpht.com/a/AGF-l7-_LMGyQ1ezFQw4v2XYjzqWfecbOPEefPq0Ew=s800-c-k-c0xffffffff-no-rj-mo	UC3Nsrt4iuInGAEPp4jP6ONw	2020-01-25 17:07:30.014104+03	f	\N	\N	5
76	Sandu.2C	Dima	Eskin	https://sun9-66.userapi.com/c849220/v849220880/1863c6/h7FYLfKZA5k.jpg?ava=1	325816174	2020-01-25 22:45:42.390205+03	f	\N	\N	1
69	\N	Bato Ra	\N	https://yt3.ggpht.com/a/AGF-l79qkZA25ypZqHBAyMYB9HjF89U6PLfoM3PayA=s800-c-k-c0xffffffff-no-rj-mo	UC8p_v7yxUhK6pSTAvitVQwQ	2020-01-25 15:47:39.258153+03	f	\N	\N	4
68	\N	Andrey	Brandt	https://sun6-16.userapi.com/c639220/v639220220/5565c/1eGEgYGWWdU.jpg?ava=1	297202371	2020-01-25 15:45:54.192522+03	f	\N	\N	2
46	Inkognito	Artyom	Shepovalov	https://sun9-18.userapi.com/c851432/v851432113/a1299/VGxxgb-8Uac.jpg?ava=1	486620080	2020-01-25 12:06:28.969971+03	f	\N	\N	2
74	\N	Артём	\N	https://yt3.ggpht.com/a/AGF-l783vKWRuYNR9KNf-AvIZydzLe1_vBNITTLtxQ=s800-c-k-c0xffffffff-no-rj-mo	UCbCIhc2bbL8Ee-Mmn1iduUg	2020-01-25 20:50:22.145433+03	f	\N	\N	0
62	\N	Artem	Usov	https://sun9-58.userapi.com/c204620/v204620645/8086/DLrhhOBTnwk.jpg?ava=1	18084318	2020-01-25 13:40:40.493558+03	f	\N	\N	5
79	\N	Bayras	Diarov	https://sun6-14.userapi.com/c857428/v857428880/1340e2/c3QRldcrK-s.jpg?ava=1	371892598	2020-01-26 00:44:05.192187+03	f	\N	\N	0
80	Break-dans	Break-Dans	\N	https://yt3.ggpht.com/a/AGF-l79e2fFxTGxyC4UZ9UYZGsptb4UrRF4oeVyPXA=s800-c-k-c0xffffffff-no-rj-mo	UCOkEvy-I2P7FGWSpjdem5qg	2020-01-26 01:07:29.211323+03	f	\N	\N	1
81	[GAGARS]Tem_Reddl	Artyom	Parfyonov	https://sun6-13.userapi.com/c855536/v855536486/b1207/GL6NOPz2G9U.jpg?ava=1	157615978	2020-01-26 01:30:07.652285+03	f	\N	\N	1
82	\N	Kiki Do	\N	https://lh5.googleusercontent.com/-A5XMKCvPoRg/AAAAAAAAAAI/AAAAAAAAAAA/ACHi3rcf-giSsmra67SF4UwUlrMrYH2ztw/photo.jpg	UCO48ci7xVhht562Kmtj_G7Q	2020-01-26 01:58:25.812327+03	f	\N	\N	1
73	\N	Fedya	Petrenko	https://sun9-2.userapi.com/c855432/v855432662/1c0e60/FB8SPmmLQK8.jpg?ava=1	297657545	2020-01-25 18:48:06.174565+03	f	\N	\N	5
64	\N	Лэйми	\N	https://lh3.googleusercontent.com/a-/AAuE7mACNOA7lha5dt2WKHs-Dr8Jmx57Xd5EDQv-l9Nc	UCqsmoXP605AAb6B4DCVCZKw	2020-01-25 14:08:23.956138+03	f	\N	\N	0
47	\N	Ilkham	Alizade	https://sun9-72.userapi.com/c857536/v857536124/73e8e/fk-Dk2cmjnU.jpg?ava=1	428403452	2020-01-25 12:06:37.786646+03	f	\N	\N	3
85	\N	Evgeny	Shatanov	https://sun9-67.userapi.com/c846324/v846324147/1ea53d/jp0DICVfuSA.jpg?ava=1	542650135	2020-01-26 12:42:37.152154+03	f	\N	\N	0
86	\N	Блудный Чел	\N	https://yt3.ggpht.com/a/AGF-l78Fbw9I2n5Bb23MKwe5k_1GB5AyBfliXwgL2w=s800-c-k-c0xffffffff-no-rj-mo	UC4BdQ4lHbCugNWiHOvjJvtQ	2020-01-26 12:43:25.241505+03	f	\N	\N	0
12	\N	BeTTepoK	\N	https://yt3.ggpht.com/a/AGF-l787X--QTzH34li2jhgHdXsGMAOGlBsVCGSHeg=s800-c-k-c0xffffffff-no-rj-mo	UCTpSem5iQlcAd5ePvhOYa0A	2020-01-14 12:35:08.017186+03	f	\N	\N	23
65	jeja	Evgeny	Korostelev	https://sun9-3.userapi.com/c850416/v850416086/18385c/bkXlXyacFto.jpg?ava=1	505247743	2020-01-25 15:35:48.708603+03	f	\N	\N	1
77	\N	Mark	Smirnov	https://sun9-29.userapi.com/c857632/v857632642/3188e/FlPIHDwsGYs.jpg?ava=1	256502830	2020-01-26 00:00:46.230097+03	f	\N	\N	1
83	MixTypa	Alexander	Serebrennikov	https://sun9-66.userapi.com/c851236/v851236634/fb663/S3K9oiFvlrE.jpg?ava=1	160645053	2020-01-26 09:04:18.450003+03	f	\N	\N	6
51	JOPA	SegaDrive	\N	https://yt3.ggpht.com/a/AGF-l7-uynITI0gYYtc7PZzOgFdxoX5wDjhy8BNVfQ=s800-c-k-c0xffffffff-no-rj-mo	UCIzIpLKqxgIo7kwq-h7NgLg	2020-01-25 12:13:00.580752+03	f	\N	\N	1
89	\N	Viktor	Kuznetsov	https://sun9-37.userapi.com/c854024/v854024121/1bbabd/D3FAchbyQcg.jpg?ava=1	337508198	2020-01-26 13:27:37.332764+03	f	\N	\N	0
91	\N	Domen tu	\N	https://yt3.ggpht.com/a/AGF-l7-HYp83d4NVI6VpXny2SxysCgUPl_DrbG0G=s800-c-k-c0xffffffff-no-rj-mo	UCy1Kxv3Gho6QHYsPTvOpP4g	2020-01-26 13:29:09.639559+03	f	\N	\N	0
87	\N	Ayk	Shakhbazyan	https://sun6-19.userapi.com/c856524/v856524882/c5851/dzym1-DFjJM.jpg?ava=1	455167329	2020-01-26 13:22:43.241558+03	f	\N	\N	1
124	\N	FazZzy	\N	https://yt3.ggpht.com/a/AGF-l7-EUseUaPRDK_6QznPv1yNwK5qZLotZ5v2PRA=s800-c-k-c0xffffffff-no-rj-mo	UCrtfx39BWI7v72xgoUHM6iA	2020-01-26 13:49:04.179541+03	f	\N	\N	0
95	\N	Miras	Amrinov	https://sun9-65.userapi.com/c857620/v857620696/ab2c9/9udAzawENW0.jpg?ava=1	323175893	2020-01-26 13:32:50.790009+03	f	\N	\N	0
97	\N	Maxim	Korchuganov	https://sun9-55.userapi.com/c851020/v851020008/1a704b/2sOKL3UyUCg.jpg?ava=1	371105032	2020-01-26 13:33:06.218765+03	f	\N	\N	0
99	\N	Влад Опря	\N	https://yt3.ggpht.com/a/AGF-l79ZwWifBzXd0sgZkkXeid0dbLKewba5k95IZQ=s800-c-k-c0xffffffff-no-rj-mo	UCWahF-Om76Hq2MHk2WidzHQ	2020-01-26 13:33:41.909857+03	f	\N	\N	0
100	\N	Aki l	\N	https://yt3.ggpht.com/a/AGF-l7_mYk4LgzBLfPu6QyRL7CoJOnoqKs-w9kjMPQ=s800-c-k-c0xffffffff-no-rj-mo	UCoSrV1W8DB79A_whKdHeGYg	2020-01-26 13:33:57.82742+03	f	\N	\N	0
125	\N	Ivan	Bebyakin	https://sun9-7.userapi.com/c856020/v856020281/122365/oKjNHxYKXPg.jpg?ava=1	270805566	2020-01-26 13:49:40.688185+03	f	\N	\N	0
90	\N	FRAM	\N	https://yt3.ggpht.com/a/AGF-l7-PL8oppqd9vUNtJxDEeP4Uwq3gmyXnQsYpTA=s800-c-k-c0xffffffff-no-rj-mo	UCYCxA3j7tK_AC_lpITonhcg	2020-01-26 13:28:34.312032+03	f	\N	\N	2
104	\N	Egor	Stepanov	https://sun9-59.userapi.com/c836535/v836535699/563f3/we2Ku1QGELs.jpg?ava=1	278780127	2020-01-26 13:36:03.820662+03	f	\N	\N	0
119	\N	Kirill	Kasimov	https://sun9-3.userapi.com/c858024/v858024584/14970b/D6FUNNgGkKo.jpg?ava=1	238623261	2020-01-26 13:44:51.753569+03	f	\N	\N	2
107	valerian10	Valerian	Prokhnitsky	https://sun9-47.userapi.com/c857036/v857036739/4053b/q8nB15m-JJY.jpg?ava=1	264733683	2020-01-26 13:37:33.662682+03	f	\N	\N	0
108	\N	Denis	Kulbaev	https://sun9-9.userapi.com/c850328/v850328169/8e789/7LiObTeoZmA.jpg?ava=1	514138670	2020-01-26 13:38:19.44103+03	f	\N	\N	0
109	\N	Евгений Охрименко	\N	https://lh5.googleusercontent.com/-De4u9tlhAj0/AAAAAAAAAAI/AAAAAAAAAAA/ACHi3rdTxPkC2TRbdB7Osj7wDeEZO5fuOg/photo.jpg	UCKaEmgjGfV0fMo7gVrfB_nA	2020-01-26 13:39:27.696922+03	f	\N	\N	0
110	\N	Evgeny	Okhrimenko	https://sun9-52.userapi.com/c852120/v852120273/13e52b/98db9qrDslk.jpg?ava=1	396692094	2020-01-26 13:39:41.87097+03	f	\N	\N	0
101	CAH9I_IBR_TOP	Ibrakhim	Benaliev	https://sun9-52.userapi.com/c858532/v858532492/a90cc/3NJOM0LEkLQ.jpg?ava=1	551745317	2020-01-26 13:34:12.589132+03	f	\N	\N	2
102	\N	Zbyszka	Kropa	https://sun9-40.userapi.com/c855132/v855132030/447d/lOHY7GHnAkU.jpg?ava=1	380021693	2020-01-26 13:35:38.989319+03	f	\N	\N	4
106	IXI_Legenda_IXI	Kolya	David	https://sun9-20.userapi.com/c857428/v857428894/154d06/MFOneaQiZ8Q.jpg?ava=1	245913985	2020-01-26 13:37:07.84422+03	f	\N	\N	1
116	\N	Руслан Мишура	\N	https://yt3.ggpht.com/a/AGF-l7_nq5vRqo44RmB3sVQEkNYPhGi-qtDfZmfsiQ=s800-c-k-c0xffffffff-no-rj-mo	UCVXgYrG1na7u9Un2NDboGJw	2020-01-26 13:41:24.598744+03	f	\N	\N	0
117	\N	Fedya	Panarad	https://sun9-55.userapi.com/c853528/v853528697/75f07/dMM9BBf48rE.jpg?ava=1	439887495	2020-01-26 13:42:05.019628+03	f	\N	\N	0
130	\N	Sergey	Gordienko	https://sun9-67.userapi.com/c850736/v850736106/a07bc/r1FM78w6lCA.jpg?ava=1	417458605	2020-01-26 13:54:02.858133+03	f	\N	\N	1
113	9l_MPK	Max	Suvorov	https://sun9-25.userapi.com/c854520/v854520353/10ae6f/dJzAzdevBF0.jpg?ava=1	383793968	2020-01-26 13:40:24.316411+03	f	\N	\N	1
98	\N	Vano Markosyan	\N	https://lh3.googleusercontent.com/-3b19VYAT9pk/AAAAAAAAAAI/AAAAAAAAAAA/ACHi3rf-CpZy0kVm1tUroQmX3O4FdAzrLg/photo.jpg	UCUV1fHBLsiq7zOvWdd4gacQ	2020-01-26 13:33:26.21003+03	f	\N	\N	1
129	Diman2.0	Dmitry	Denko	https://sun9-16.userapi.com/c858032/v858032664/47f77/bit46qaRCTk.jpg?ava=1	529043833	2020-01-26 13:52:45.76838+03	f	\N	\N	3
120	VG20082010	ARMENIAN CRAFTERS	\N	https://yt3.ggpht.com/a/AGF-l7-qeLnR5N1e1CVKAFj2_BeqkT5XDpm1rzI8Bw=s800-c-k-c0xffffffff-no-rj-mo	UCOXUERyjgsolakppnQVMjWw	2020-01-26 13:44:56.93447+03	f	\N	\N	0
96	Tbl_YBoJleH	Y8oJleH	\N	https://yt3.ggpht.com/a/AGF-l78lzDrZhkLYM9xyFRNflNmV14WLE4sSoQokPg=s800-c-k-c0xffffffff-no-rj-mo	UCSkGgKO1vz73Rhwn0XCZXRQ	2020-01-26 13:32:52.136235+03	f	\N	\N	1
105	ksphv	Ksyusha	Vishnyakova	https://vk.com/images/camera_200.png?ava=1	543691647	2020-01-26 13:36:12.539547+03	f	\N	\N	6
127	\N	Б Иван	\N	https://yt3.ggpht.com/a/AGF-l7_ElBFwivAtZpBtPJY5WH05ndTey45TnQoPMw=s800-c-k-c0xffffffff-no-rj-mo	UCBK3RJM8KeyATe0NbAG52ug	2020-01-26 13:51:53.023441+03	f	\N	\N	0
111	VITIOK	VITIOK Production	\N	https://yt3.ggpht.com/a/AGF-l7_1Q8MZdu3LlVJszxMylGZ7yDR12yNqcFRaIA=s800-c-k-c0xffffffff-no-rj-mo	UCK4PBtX3MBYIKbStbQIenIA	2020-01-26 13:39:50.381369+03	f	\N	\N	3
123	\N	Artyom	Chemeris	https://sun9-8.userapi.com/c856024/v856024649/51258/LzgRgiOhd_I.jpg?ava=1	406675482	2020-01-26 13:48:28.156786+03	f	\N	\N	1
118	mmj910	9ine7even	\N	https://yt3.ggpht.com/a/AGF-l7_bZM5rNXMLCBmZyXEwUIBEZUZhJctJpr3nPA=s800-c-k-c0xffffffff-no-rj-mo	UCiQ9pVNsM9kc1Mp4HmZF01g	2020-01-26 13:44:26.318398+03	f	\N	\N	1
122	\N	СТИЧ- 666	\N	https://lh3.googleusercontent.com/a-/AAuE7mDLSsFAnymlx7xWyXyQ4gK--ENscSD-wX8PYIkU	UC3VR_YuruliUM3O8gvzeh_w	2020-01-26 13:47:29.305003+03	f	\N	\N	1
121	Scray2D 	Kirill	Arzumanov	https://sun9-6.userapi.com/c857532/v857532535/13a87d/a0zw7EM4pQQ.jpg?ava=1	164044547	2020-01-26 13:47:08.736001+03	f	\N	\N	1
126	TaHKiCT_BJIAD	Vlad	Rekunenko	https://sun9-70.userapi.com/c853424/v853424071/4bfaf/fuRj0N1pf6Y.jpg?ava=1	267243330	2020-01-26 13:51:31.713599+03	f	\N	\N	1
93	\N	CkuLLoBou TaHk	\N	https://yt3.ggpht.com/a/AGF-l7-WSx6aKjq0aEvhcDxk8IuirMrwN1vvx1zaAQ=s800-c-k-c0xffffffff-no-rj-mo	UCE9TwBTLCQt8mDl10r2px_A	2020-01-26 13:30:42.940764+03	f	\N	\N	1
112	\N	Maxim	Semyonov	https://sun9-36.userapi.com/c633228/v633228354/99cd/u0XIUG4Z9oQ.jpg?ava=1	163758354	2020-01-26 13:40:03.88756+03	f	\N	\N	1
128	\N	Yaroslav	Sidorov	https://sun9-45.userapi.com/c627818/v627818534/19c17/Kzr55ggbGQ4.jpg?ava=1	293855534	2020-01-26 13:52:16.722487+03	f	\N	\N	1
114	III.KOLLIAK.III	Trend Boy	\N	https://yt3.ggpht.com/a/AGF-l7__CBjA_zuQ8Y97v0BnyhQ8HOd0jykhPAOzZw=s800-c-k-c0xffffffff-no-rj-mo	UCSoSZiLHlws7-UV3k_pVxGg	2020-01-26 13:40:49.311925+03	f	\N	\N	1
94	Tbl_YBoJleH	Nikita	Noskov	https://sun9-68.userapi.com/c852028/v852028908/1a5c51/eJG0t8vg6rU.jpg?ava=1	458895117	2020-01-26 13:31:21.672601+03	f	\N	\N	2
88	\N	Ilya	Guschin	https://sun9-63.userapi.com/c200424/v200424867/113a4/FEvjRtd-hTU.jpg?ava=1	401299138	2020-01-26 13:24:58.222754+03	f	\N	\N	3
115	\N	Ilya	Lipatov	https://sun9-70.userapi.com/c844618/v844618679/43b4f/3XLTMbXyYks.jpg?ava=1	163536784	2020-01-26 13:41:06.024732+03	f	\N	\N	4
92	\N	Т. К.	\N	https://yt3.ggpht.com/a/AGF-l78EWhDcmT8atZZxEY6wLHHXqA1mtDgNS0U_MQ=s800-c-k-c0xffffffff-no-rj-mo	UC5YmlDHAxOn-Fu-XqGiGwRg	2020-01-26 13:29:39.973828+03	f	\N	\N	3
133	\N	1 1	\N	https://lh6.googleusercontent.com/-S7uQ3YTa5xk/AAAAAAAAAAI/AAAAAAAAAAA/ACHi3rccv0ityk0zhPcUBq-poECkG6gblQ/photo.jpg	UCAQdqrNiNieUAGi4Ham-04Q	2020-01-26 13:56:24.57088+03	f	\N	\N	1
131	CaJlaBaT	Salavat	Gumerov	https://sun9-59.userapi.com/c857624/v857624387/24a9b/YcJqUckjSaA.jpg?ava=1	544923152	2020-01-26 13:54:12.748256+03	f	\N	\N	1
71	\N	Artfak	\N	https://yt3.ggpht.com/a/AGF-l79gZWqH764Ocz5i9IomA3ooUWDsCYhKldd1TQ=s800-c-k-c0xffffffff-no-rj-mo	UC2uyATOWIJF2gUj9AcpdJjw	2020-01-25 16:18:48.48212+03	f	\N	\N	1
135	\N	Sasha	Gorodilov	https://sun9-64.userapi.com/c857128/v857128050/77ec0/bNLgB8KemNk.jpg?ava=1	372802216	2020-01-26 13:56:59.636613+03	f	\N	\N	0
137	\N	Daniil	Chernov	https://sun9-19.userapi.com/c850620/v850620309/185ef/gbug4PphTR0.jpg?ava=1	397899679	2020-01-26 13:58:09.748084+03	f	\N	\N	0
142	TankostreL	WanVan	\N	https://yt3.ggpht.com/a/AGF-l7-X0JHTTETETvxyJCpTkKxPGqj-dPhgLanD1g=s800-c-k-c0xffffffff-no-rj-mo	UCff5LAYLOwckqbbhHEb5vSQ	2020-01-26 14:02:32.112058+03	f	\N	\N	0
138	\N	MATRIX	\N	https://yt3.ggpht.com/a/AGF-l782kYGLK3x3qfu4OkZj0WGopFNYJ_9HDDSbVg=s800-c-k-c0xffffffff-no-rj-mo	UCLfG9hWUj_z_YZMCJbP1OLA	2020-01-26 13:58:23.773299+03	f	\N	\N	2
132	\N	Ivan	Burbyka	https://sun9-127.userapi.com/c852132/v852132646/1b35b5/Zjjy5le88Zo.jpg?ava=1	340315962	2020-01-26 13:56:05.369056+03	f	\N	\N	6
139	LowTanks	Rinat	Kurbiev	https://sun9-15.userapi.com/c847018/v847018530/fa36c/xZhOzgM6cuI.jpg?ava=1	379082227	2020-01-26 13:58:56.072328+03	f	\N	\N	1
144	Tank_Ha_1_Pa3	НастяЗай NastyaZau	\N	https://yt3.ggpht.com/a/AGF-l7-QDZU31SYDgDFuzcG7J52O3mILN5T_PG4uOQ=s800-c-k-c0xffffffff-no-rj-mo	UCCvby61xg00DpMrgDJTkxpg	2020-01-26 14:03:55.937349+03	f	\N	\N	1
145	Sepro	Freebitron	\N	https://yt3.ggpht.com/a/AGF-l7_sLzkS_2NkJBHcxAb_mgcIwGVmal4fnnY1qg=s800-c-k-c0xffffffff-no-rj-mo	UC90R1ZoZTLjLN0bMV4_JoXg	2020-01-26 14:05:01.784259+03	f	\N	\N	1
146	\N	Garmis	\N	https://yt3.ggpht.com/a/AGF-l79Cc1X4ABUwivG33LxtxDUgu9SdkqyVnruF=s800-c-k-c0xffffffff-no-rj-mo	UC6uSda177Xnb5osK70Z5EwA	2020-01-26 14:05:20.999133+03	f	\N	\N	0
171	\N	Stas	Yagodinets	https://sun6-13.userapi.com/c851136/v851136563/1e8cc8/ZTOfXArPkck.jpg?ava=1	160777928	2020-01-26 14:28:34.256156+03	f	\N	\N	0
159	igor2vasura2	Igor	Vasyura	https://vk.com/images/camera_200.png?ava=1	185598617	2020-01-26 14:19:31.560803+03	f	\N	\N	3
141	\N	Denis	Timkin	https://sun9-39.userapi.com/c856128/v856128293/aea5a/ZSJ6b-3ee6g.jpg?ava=1	392736363	2020-01-26 14:00:58.806329+03	f	\N	\N	1
149	\N	Roma	Nazarov	https://sun6-16.userapi.com/c850420/v850420634/1e24e7/wIPT_3F50As.jpg?ava=1	430352462	2020-01-26 14:09:39.416441+03	f	\N	\N	0
150	\N	LEGENDA	\N	https://yt3.ggpht.com/a/AGF-l79Jg8St087qwUVpZhp_fHYt6RhF522K-EonNQ=s800-c-k-c0xffffffff-no-rj-mo	UCRk_apABY9hTQYJQJ9A2aUw	2020-01-26 14:10:42.522622+03	f	\N	\N	0
151	\N	Dima Shpakovski Y	\N	https://yt3.ggpht.com/a/AGF-l78tZWiqSc0IlyWadc-E2E121wPQjsrnO-dfIg=s800-c-k-c0xffffffff-no-rj-mo	UC2J8yhellBMFRvfLl4BMesw	2020-01-26 14:10:47.029182+03	f	\N	\N	0
148	bismark585	Slava Muradovi	\N	https://yt3.ggpht.com/a/AGF-l7_35Blhp8FppvCpgxwbJ98QFUKvloo0rUO43w=s800-c-k-c0xffffffff-no-rj-mo	UCTHkJ7O9bTlqsyr39FXhqYg	2020-01-26 14:07:53.61859+03	f	\N	\N	3
152	ŦØP4Ęř	Vlad	Kirov	https://sun9-55.userapi.com/c831308/v831308971/af4b3/7lUaopc84f4.jpg?ava=1	374002967	2020-01-26 14:11:22.104047+03	f	\N	\N	0
134	\N	Mikhail	Nazarov	https://sun9-44.userapi.com/c840336/v840336209/7af22/57MUyqQqM1U.jpg?ava=1	205215379	2020-01-26 13:56:29.711965+03	f	\N	\N	2
154	\N	Лимон Ігри	\N	https://yt3.ggpht.com/a/AGF-l7_Z-RHeo05wb4rAZjipwLimpDL4SZ0gWgD-gw=s800-c-k-c0xffffffff-no-rj-mo	UCV4s88WwgvtgCNwkaXe7z8w	2020-01-26 14:14:19.004211+03	f	\N	\N	0
157	LowSkillPvP	Vladimir	Goryachev	https://sun6-13.userapi.com/c855216/v855216731/1949fb/ONEs9aTgds4.jpg?ava=1	534386400	2020-01-26 14:17:52.507556+03	f	\N	\N	0
158	Mr.Exceptional	Alexander	Kireev	https://sun9-12.userapi.com/c858224/v858224789/3c4/Bp3n2POW0Tg.jpg?ava=1	468901396	2020-01-26 14:18:05.235309+03	f	\N	\N	0
167	\N	l_lmonsterl_l	\N	https://yt3.ggpht.com/a/AGF-l7-Lcal3Aeg76TAopsFwN_Nizxdgfz7OSqNN9g=s800-c-k-c0xffffffff-no-rj-mo	UC6X_d-TGODprjat2eMHlK2A	2020-01-26 14:25:25.255178+03	f	\N	\N	0
147	Spike	Linfini	\N	https://yt3.ggpht.com/a/AGF-l78rzG9-sj1-IE5gi8n0_6NSXk6Lexpg5ecRJw=s800-c-k-c0xffffffff-no-rj-mo	UCfsV1CiCJZvPljBhC9aw9nA	2020-01-26 14:05:57.885489+03	f	\N	\N	1
160	\N	Alexey	Yushkov	https://sun6-14.userapi.com/c204628/v204628598/34dc2/IOReKFaMk20.jpg?ava=1	512957083	2020-01-26 14:20:48.778419+03	f	\N	\N	0
155	Elsker	MOR	\N	https://yt3.ggpht.com/a/AGF-l7_XjdFGP6GS_8GROHZU0e0dD2iapq0C2MOtfQ=s800-c-k-c0xffffffff-no-rj-mo	UCdORg4jVDu6yHSzVa148Wig	2020-01-26 14:14:29.875318+03	f	\N	\N	3
156	andreymog	Andrey	Kozyars	https://vk.com/images/camera_200.png?ava=1	312389981	2020-01-26 14:14:54.88331+03	f	\N	\N	1
168	BuKa_GPoM	ilyanom	\N	https://yt3.ggpht.com/a/AGF-l7-8hZlqYEPnEUnHclk3TGDoPvrebBa4lx_1Ew=s800-c-k-c0xffffffff-no-rj-mo	UC1cES8dQpeR8ao1wPirWGAw	2020-01-26 14:26:20.157854+03	f	\N	\N	6
143	PEJLBCOBOD596 	Linad	Nidyrbod	https://sun9-57.userapi.com/c855320/v855320043/9ce59/cKLg37Wx6wo.jpg?ava=1	293846682	2020-01-26 14:03:48.707261+03	f	\N	\N	1
161	\N	Kirill	Volkov	https://sun9-5.userapi.com/c858532/v858532511/8cdc7/rkuAk5WPo34.jpg?ava=1	470497780	2020-01-26 14:20:52.343783+03	f	\N	\N	1
163	\N	Nikita	Eroshkin	https://sun9-43.userapi.com/c858320/v858320503/11c629/KVyisVBn6U8.jpg?ava=1	332358484	2020-01-26 14:21:54.396341+03	f	\N	\N	1
173	\N	Erik	Sarkisyan	https://sun9-28.userapi.com/c852032/v852032998/eef67/AUiPcultcTo.jpg?ava=1	468975316	2020-01-26 14:30:21.031937+03	f	\N	\N	0
182	OxpuTT	Artyom	Mirny	https://sun9-5.userapi.com/c200628/v200628520/32c04/U5amwHwhH8s.jpg?ava=1	568742493	2020-01-26 14:43:13.490771+03	f	\N	\N	1
153	\N	Vitec583	\N	https://yt3.ggpht.com/a/AGF-l7-mYokWTKzG3EJd7AsE6fhmUAAcIGdNutHSpA=s800-c-k-c0xffffffff-no-rj-mo	UCFF8cAtLfHivMbMUbAe_LTg	2020-01-26 14:14:14.53881+03	f	\N	\N	3
175	\N	Nikolay	Nabokov	https://sun6-13.userapi.com/pxE1E4bvWSzvhW6QGKiMBG6hklLsJUsjSo85mA/0x80MtrD0BE.jpg?ava=1	368250236	2020-01-26 14:33:58.978732+03	f	\N	\N	0
174	\N	Sasha	Kakaulin	https://sun9-32.userapi.com/c855736/v855736971/150b50/Zxr1_3v42OE.jpg?ava=1	555344057	2020-01-26 14:33:53.061662+03	f	\N	\N	2
166	FOPMYJla	Ulyana	Sysoeva	https://sun9-12.userapi.com/c204824/v204824816/4468d/wJczKGlmBrU.jpg?ava=1	336737252	2020-01-26 14:23:46.081823+03	f	\N	\N	1
164	Tomik	Danil	Bayron	https://sun9-7.userapi.com/c855624/v855624196/11ba91/XdK9wUp8rz8.jpg?ava=1	266817293	2020-01-26 14:22:41.968753+03	f	\N	\N	1
176	SweetArmory	Maxim	Baluk	https://sun9-53.userapi.com/c855636/v855636584/1295fa/dW13hpopaKE.jpg?ava=1	506800667	2020-01-26 14:34:01.495316+03	f	\N	\N	1
162	\N	exide	\N	https://yt3.ggpht.com/a/AGF-l7-pa2irSoL2zMugXBba4o05R-U6oOfpQIDIwg=s800-c-k-c0xffffffff-no-rj-mo	UCA2b8Yq3pIYwHDMkfxvGTvg	2020-01-26 14:21:28.878102+03	f	\N	\N	2
172	\N	Roman	Maslov	https://sun9-49.userapi.com/c857016/v857016769/d017/X_doRlZPaQY.jpg?ava=1	445776236	2020-01-26 14:29:21.772647+03	f	\N	\N	1
136	CLABA_UKRAINI	Max	Vorobyov	https://sun6-13.userapi.com/c206728/v206728438/2b53f/-GFU0W1jEmA.jpg?ava=1	363519808	2020-01-26 13:57:23.395861+03	f	\N	\N	3
140	\N	Maxim	Matveev	https://vk.com/images/camera_200.png?ava=1	574308763	2020-01-26 13:59:51.061878+03	f	\N	\N	1
177	\N	star lad	\N	https://yt3.ggpht.com/a/AGF-l7_cF72pQoiQcK572RqVScvTfbj1qVtagcROqA=s800-c-k-c0xffffffff-no-rj-mo	UCa2_CFcE_ywtOIbSYvR0h2A	2020-01-26 14:35:47.663059+03	f	\N	\N	1
170	\N	Bogdan	Kuznetsov	https://sun9-55.userapi.com/c849424/v849424409/1dc923/q9gzqSvJd6o.jpg?ava=1	553896722	2020-01-26 14:27:14.59714+03	f	\N	\N	1
181	Ha_KaMTTJleKTax	Erik	Myan	https://vk.com/images/camera_200.png?ava=1	451772261	2020-01-26 14:41:57.915507+03	f	\N	\N	0
179	\N	Илья Ганин	\N	https://yt3.ggpht.com/a/AGF-l79TZ0XvKnfHYIz0pdevQQsyLHc0nKxFnGot2g=s800-c-k-c0xffffffff-no-rj-mo	UC9JFh_hNhpdAyn9vnmI6I-w	2020-01-26 14:40:09.403554+03	f	\N	\N	1
169	berik	[Krisser_TO] бумчiк	\N	https://yt3.ggpht.com/a/AGF-l794GK87GdYKFvczqRblvr9uyVK42RIJax8URw=s800-c-k-c0xffffffff-no-rj-mo	UCb7t8VvZXPk7km_tRwmSznQ	2020-01-26 14:26:31.872052+03	f	\N	\N	1
183	\N	Taras Velukorod	\N	https://yt3.ggpht.com/a/AGF-l78EP6GkL3GJvy5s0Bo-bwScr-FTAgbY-IMEwg=s800-c-k-c0xffffffff-no-rj-mo	UCZLZJiR9bwLhJRhp3pcqyAQ	2020-01-26 14:45:56.953237+03	f	\N	\N	1
178	qqSquick	Smiley Mega	\N	https://yt3.ggpht.com/a/AGF-l7_XQt64zVwCHDV3JnJ_enlbRZwsy_p5xlC8-w=s800-c-k-c0xffffffff-no-rj-mo	UCXsFWvLVi_VjyoGO7iKoE_Q	2020-01-26 14:36:01.218912+03	f	\N	\N	2
180	\N	Muratov	Emilyen	https://sun9-63.userapi.com/c855132/v855132531/8d692/sXbLRdAfGEg.jpg?ava=1	539337059	2020-01-26 14:40:27.864526+03	f	\N	\N	3
203	\N	Egor	Zakharov	https://sun6-16.userapi.com/c854016/v854016549/1d4197/O_-GrP9W2Hk.jpg?ava=1	457749202	2020-01-26 15:15:46.134159+03	f	\N	\N	0
194	TTOHUMAIO	Daniil	Egumenov	https://sun6-19.userapi.com/c857236/v857236751/ba0c4/5jgkjrfriUw.jpg?ava=1	548700140	2020-01-26 15:02:27.736775+03	f	\N	\N	1
199	Dimonbl4 	Ирина Кравченко	\N	https://yt3.ggpht.com/a/AGF-l79PQTnQH6akHsQwwXBuKQA5P3BSjaQyskj0Rg=s800-c-k-c0xffffffff-no-rj-mo	UCL1DSQlpdwjE5s1RxIH1bng	2020-01-26 15:09:26.441342+03	f	\N	\N	1
213	\N	Ghost Russia	\N	https://yt3.ggpht.com/a/AGF-l7-2Shob2ykX7lZP3jg8HV0moDcruxJC4C6n1Q=s800-c-k-c0xffffffff-no-rj-mo	UCFAFrDUQopPl0E2-Yf_-a9g	2020-01-26 15:28:53.909772+03	f	\N	\N	0
185	dima24680123	No Name	\N	https://yt3.ggpht.com/a/AGF-l78H_s5LVRPbfuRC2SqqD3Y6-fGnkJ86xKTACA=s800-c-k-c0xffffffff-no-rj-mo	UCiwTHMW-biOjLFFzjtuIjfg	2020-01-26 14:50:33.377433+03	f	\N	\N	1
187	irka52x	Evgeny	Popovich	https://vk.com/images/camera_200.png?ava=1	155118859	2020-01-26 14:53:33.410593+03	f	\N	\N	1
190	Do3a_Hapko3aa	Denis	Kol	https://sun9-39.userapi.com/c854024/v854024539/1082e5/z7Zt6Lxy5us.jpg?ava=1	393575876	2020-01-26 15:00:08.372969+03	f	\N	\N	1
188	\N	Александр Лисицин	\N	https://yt3.ggpht.com/a/AGF-l7-FhfxMb7-RC-z0L4wuFXEop467Rr5U7Zl4=s800-c-k-c0xffffffff-no-rj-mo	UCKxj5aliBYIOXYdLof4YtWw	2020-01-26 14:54:12.604837+03	f	\N	\N	1
186	\N	Roma	Tarlev	https://sun9-60.userapi.com/c849128/v849128704/14f1e2/m1AxYFksuE8.jpg?ava=1	298865408	2020-01-26 14:50:40.579437+03	f	\N	\N	3
222	\N	Maksim	Mmm	https://vk.com/images/camera_200.png?ava=1	572022924	2020-01-26 15:44:51.669888+03	f	\N	\N	0
191	\N	Артур Павлюк	\N	https://yt3.ggpht.com/a/AGF-l7_GGd-J8Ztkr6zJrUE61ufN1eTvvPjzJmTssg=s800-c-k-c0xffffffff-no-rj-mo	UC_t3E4jIJPCQsbz5pscdOvA	2020-01-26 15:00:24.094551+03	f	\N	\N	1
202	TTaM9lTb_TTETPy	Dmitry	Dankovtsev	https://sun6-16.userapi.com/c205528/v205528095/3099b/8hxR2YxFU5k.jpg?ava=1	513333443	2020-01-26 15:14:55.016328+03	f	\N	\N	1
196	\N	Valera	Shtykov	https://sun9-11.userapi.com/c846217/v846217349/205891/cX5au6qHKxU.jpg?ava=1	265977493	2020-01-26 15:09:09.945883+03	f	\N	\N	0
197	\N	Nikita	Kapustin	https://sun9-33.userapi.com/c834304/v834304661/5659a/gL-tL-LP4_s.jpg?ava=1	150750027	2020-01-26 15:09:18.917783+03	f	\N	\N	0
198	\N	Zhenya	Litvinsky	https://sun9-67.userapi.com/c858428/v858428667/10a8c3/y1HBxTbhnjc.jpg?ava=1	334627276	2020-01-26 15:09:22.126999+03	f	\N	\N	0
209	\N	Alex TV	\N	https://yt3.ggpht.com/a/AGF-l78cfAFblB4pUCYXRTU4NkhQF_a3UD9ouNwf6w=s800-c-k-c0xffffffff-no-rj-mo	UCfKidzqXWLOFtR3oRhVphhw	2020-01-26 15:22:36.174387+03	f	\N	\N	1
189	Shaft0v0d	Albert	Biktimirov	https://sun9-63.userapi.com/c852032/v852032059/16afab/HlZSZKsilWI.jpg?ava=1	353824206	2020-01-26 14:55:57.888934+03	f	\N	\N	2
201	\N	Aydar	Mirgaliev	https://sun9-47.userapi.com/c854120/v854120996/1aaf1b/SEEBpI9N2QA.jpg?ava=1	252619343	2020-01-26 15:11:22.004912+03	f	\N	\N	0
192	\N	Artyom	Ayrapetyan	https://sun9-56.userapi.com/c858016/v858016340/a7f83/7xXmAC6SpqY.jpg?ava=1	380612304	2020-01-26 15:00:38.928767+03	f	\N	\N	1
195	\N	Denis	Pakurov	https://sun9-64.userapi.com/c851220/v851220303/1f37ea/nk_09heOf78.jpg?ava=1	541723735	2020-01-26 15:08:25.800589+03	f	\N	\N	1
184	AntlDepresant	Vlad	Protansky	https://sun9-41.userapi.com/c846324/v846324306/cfad1/zgbZgCZKMSY.jpg?ava=1	186770757	2020-01-26 14:49:28.004306+03	f	\N	\N	1
207	Fred_YouTube	Fred	\N	https://yt3.ggpht.com/a/AGF-l7_2M4Wk9viwg9KkpZAMVkIAEGB7B2oGWio-cA=s800-c-k-c0xffffffff-no-rj-mo	UCVcqj3m14xDpICdKiQ1aNSQ	2020-01-26 15:21:42.13991+03	f	\N	\N	0
223	\N	Viktor	Zhavoronkov	https://vk.com/images/camera_200.png?ava=1	377091059	2020-01-26 15:45:08.640749+03	f	\N	\N	3
208	JekaMixJekaMLX	Akop	Torosyan	https://sun6-19.userapi.com/c853520/v853520346/bff92/rUhlO5X2iGY.jpg?ava=1	319973767	2020-01-26 15:22:12.036929+03	f	\N	\N	0
204	\N	Олег Гонтар	\N	https://yt3.ggpht.com/a/AGF-l79moVuQ1ZI18X2n9pytkEY5-dod2xN_30NRXA=s800-c-k-c0xffffffff-no-rj-mo	UCYJ0s4WOI4B0AHdNgCW4UMQ	2020-01-26 15:16:10.932424+03	f	\N	\N	1
211	tankergan	Matvey	Pavlitsky	https://sun6-16.userapi.com/c855320/v855320409/6ae8d/9JimVrdTbV4.jpg?ava=1	315660222	2020-01-26 15:23:56.253716+03	f	\N	\N	1
200	\N	Котик Brawl Stars	\N	https://yt3.ggpht.com/a/AGF-l7_dKGu6xRAc6S-1UKfAhmKNYfS0G9xC_5NGPA=s800-c-k-c0xffffffff-no-rj-mo	UCU7Hw8plr94DPpBlEQgCv4g	2020-01-26 15:09:39.738907+03	f	\N	\N	3
205	\N	Zhenya	Vasilyev	https://sun6-14.userapi.com/c850620/v850620172/15efb0/Df9lI2JvciA.jpg?ava=1	289689497	2020-01-26 15:18:13.485344+03	f	\N	\N	1
206	\N	Fedor	Kaplunov	https://sun9-18.userapi.com/c855224/v855224675/1a4297/i78-NxtcDOE.jpg?ava=1	437451556	2020-01-26 15:19:57.80368+03	f	\N	\N	4
210	alexej235	Alexey	Malsam	https://sun9-30.userapi.com/c848632/v848632162/a48e9/YWg-KOBLUbI.jpg?ava=1	132460483	2020-01-26 15:23:39.267319+03	f	\N	\N	1
215	\N	Привет 90 дней тебе осталось	\N	https://yt3.ggpht.com/a/AGF-l7-3FCsnLZcXsDeWeq4EWYVf0sg1POH9hgxJEA=s800-c-k-c0xffffffff-no-rj-mo	UC2eLp40oMxwWVzNlQ6wuNvQ	2020-01-26 15:34:17.602274+03	f	\N	\N	0
216	\N	Timofey	Shishkin	https://sun9-8.userapi.com/c850524/v850524781/13e0de/88n8aedWg5M.jpg?ava=1	537935306	2020-01-26 15:34:54.034877+03	f	\N	\N	0
214	OXOTA_3A_GOLDOM	Serezha	Klimyato	https://sun9-48.userapi.com/c853620/v853620009/1c571d/yGP6oOPnTss.jpg?ava=1	405466796	2020-01-26 15:31:29.678692+03	f	\N	\N	0
218	\N	Mark	Kaloshin	https://sun9-32.userapi.com/c855532/v855532253/384e8/wD9lx_13-qU.jpg?ava=1	436821388	2020-01-26 15:37:36.205701+03	f	\N	\N	0
212	Артур Филоник	Artur	Filonik	https://vk.com/images/camera_200.png?ava=1	465092731	2020-01-26 15:25:36.523652+03	f	\N	\N	1
221	\N	Nikita	Shavlovsky	https://sun9-67.userapi.com/c854220/v854220285/1d20ec/txK_bs6GjeU.jpg?ava=1	289182061	2020-01-26 15:43:23.290975+03	f	\N	\N	0
219	\N	Daviduk	\N	https://yt3.ggpht.com/a/AGF-l7_xQK3FdPuWCLSgv1TeBwLMaCYS-RM0XLhpuA=s800-c-k-c0xffffffff-no-rj-mo	UC2vBcmDiU3Se7ZN3_htg4ew	2020-01-26 15:38:24.008253+03	f	\N	\N	1
226	\N	Iron	Blade	https://sun6-13.userapi.com/c846419/v846419002/132571/DK9_oHOH0dY.jpg?ava=1	455239540	2020-01-26 15:54:10.94043+03	f	\N	\N	0
225	6e3_goHaTa_u3u	[ATT] Brous	\N	https://yt3.ggpht.com/a/AGF-l782VnGI1DkU7ThHzjN-MM5TQuOl0FcWamrPGg=s800-c-k-c0xffffffff-no-rj-mo	UC6n0c40OVQas34GTM6A8tnQ	2020-01-26 15:51:29.226479+03	f	\N	\N	0
220	\N	Kristina	Veselova	https://sun9-30.userapi.com/c855020/v855020511/190622/jtR3nqvN4tQ.jpg?ava=1	470342680	2020-01-26 15:43:06.284322+03	f	\N	\N	1
227	\N	Roman	Kniga	https://sun6-14.userapi.com/c840237/v840237538/14c25/-J4Yvy2pcqI.jpg?ava=1	351936508	2020-01-26 15:56:54.188442+03	f	\N	\N	1
230	\N	Stas	Samotyuk	https://sun9-12.userapi.com/c851024/v851024930/7b113/u9wLr8Iw3vs.jpg?ava=1	409644776	2020-01-26 16:06:08.844528+03	f	\N	\N	0
193	roma7456	Ruslan	Gaugas	https://sun9-31.userapi.com/c626629/v626629824/3c187/ISbGUbpwVp4.jpg?ava=1	211789824	2020-01-26 15:00:40.816117+03	f	\N	\N	4
217	\N	Olexandr	\N	https://yt3.ggpht.com/a/AGF-l78mctMBgZYf0FRNp7xwAhnpOo9nMYJi7hLv-Q=s800-c-k-c0xffffffff-no-rj-mo	UC_Ofn38NV-Qc0sU2zngBo0g	2020-01-26 15:35:30.088134+03	f	\N	\N	1
224	\N	đεάðpỌỢĽ	\N	https://yt3.ggpht.com/a/AGF-l79uERY0D4WqyCJB1ai9QzQ8H2-idy0FOWrLpA=s800-c-k-c0xffffffff-no-rj-mo	UCjkdUcMwDyqY4AmZsnPI6Bw	2020-01-26 15:49:05.114284+03	f	\N	\N	1
229	Sapiens	Сицилий - Дьямовоцу	\N	https://yt3.ggpht.com/a/AGF-l7-RgifjW7Q3F16EtBVis8T3npFJbGPvPOBFrg=s800-c-k-c0xffffffff-no-rj-mo	UCLAThjpXHzB9s07TKupxSzQ	2020-01-26 16:04:31.251322+03	f	\N	\N	1
236	\N	Roman	Bukhalov	https://sun9-11.userapi.com/c854024/v854024326/10678f/GVWMbk3jKPk.jpg?ava=1	210520401	2020-01-26 16:14:53.056808+03	f	\N	\N	0
234	\N	Sergey	Sheyfer	https://sun9-1.userapi.com/c858224/v858224170/eb889/a_sKxKh6PoI.jpg?ava=1	192561495	2020-01-26 16:14:32.646521+03	f	\N	\N	1
243	\N	Ilya	Gorokhov	https://sun9-66.userapi.com/c851432/v851432844/19932c/UupiTGI35rc.jpg?ava=1	545025016	2020-01-26 16:31:46.748936+03	f	\N	\N	1
231	ЯичныйКомпот	Chex	\N	https://yt3.ggpht.com/a/AGF-l79LRLwzIZzzfNR7xVfaI3BwBKZsUqWrx4amaQ=s800-c-k-c0xffffffff-no-rj-mo	UCogal6MqEoKCgHwCu-UY4AQ	2020-01-26 16:11:21.095259+03	f	\N	\N	1
233	\N	Maxim	Dyadenko	https://sun9-61.userapi.com/c205424/v205424594/2d880/pMs6oLzYHmQ.jpg?ava=1	341429679	2020-01-26 16:11:42.356406+03	f	\N	\N	1
235	\N	lezgin tv	\N	https://yt3.ggpht.com/a/AGF-l79VeS_tRg_K0ggEvC_WdUv9kN3dBfrQOpMtTA=s800-c-k-c0xffffffff-no-rj-mo	UCrbbprr8ysk8Wtmr1X87qQA	2020-01-26 16:14:51.93204+03	f	\N	\N	1
239	aIexdeIex	Mikhail	Monzharenko	https://vk.com/images/camera_200.png?ava=1	523393102	2020-01-26 16:23:56.215912+03	f	\N	\N	2
232	Mr_ofline	Руслан Захаркіа	\N	https://lh3.googleusercontent.com/-pNIBWGs3ZuI/AAAAAAAAAAI/AAAAAAAAAAA/ACHi3rf_ztH73oAfTlefvqKR3Hji0o0hGQ/photo.jpg	UCtHsiyvq6NauseHk3jqEWgA	2020-01-26 16:11:33.168742+03	f	\N	\N	1
228	\N	Kirill	Karas	https://sun9-22.userapi.com/c855320/v855320904/1cd1f6/XCz7Sh-Rg70.jpg?ava=1	313020506	2020-01-26 15:57:33.53339+03	f	\N	\N	2
237	\N	паша варибрус	\N	https://yt3.ggpht.com/a/AGF-l7-85edJPC4eaPOpI3iMeXvoAO1YKWd67wS4UQ=s800-c-k-c0xffffffff-no-rj-mo	UC9i73yFfoLAHayF6r0GAPUg	2020-01-26 16:17:55.902823+03	f	\N	\N	0
260	\N	morkovka	\N	https://yt3.ggpht.com/a/AGF-l7_rviMJL8m-eI2FcIIHsqSuIoYhDhfTSD5mrw=s800-c-k-c0xffffffff-no-rj-mo	UCKkkSG-751My56mqGlGCQ6Q	2020-01-26 17:12:10.134347+03	f	\N	\N	0
255	\N	VetalMIX	\N	https://yt3.ggpht.com/a/AGF-l78fNEwsUdaJmAQUuIFTjHCqKr7FLu76vVKkcQ=s800-c-k-c0xffffffff-no-rj-mo	UCAtn7Vys2irJ-zmwd13GT7g	2020-01-26 17:07:10.641228+03	f	\N	\N	1
240	Jarico	Дартик :3	\N	https://yt3.ggpht.com/a/AGF-l79UmoqRpRaMcaXlGtd0zvm6-_SkXJDzN5vggw=s800-c-k-c0xffffffff-no-rj-mo	UCVXBgToGn8aRzzElHgPtpeQ	2020-01-26 16:27:11.509322+03	f	\N	\N	1
256	gigafifa	андрей лобань	\N	https://yt3.ggpht.com/a/AGF-l79e6P2ZAa3dXxgo8JQhY9dIVG-1IsJ7bZXnfQ=s800-c-k-c0xffffffff-no-rj-mo	UCNXprkGa-cX2h5skSbfKKtg	2020-01-26 17:07:30.346785+03	f	\N	\N	2
241	\N	Ayrat	Shabakaev	https://sun9-26.userapi.com/c855336/v855336928/33ead/cIABSVvvV2c.jpg?ava=1	528307457	2020-01-26 16:27:40.10832+03	f	\N	\N	1
258	\N	Ridvan	Abdulaev	https://sun9-47.userapi.com/c854532/v854532678/1b6534/ckp6zP-StNs.jpg?ava=1	276682378	2020-01-26 17:08:05.246739+03	f	\N	\N	2
259	\N	Evgeniy	Bulgakov	https://sun9-51.userapi.com/c855416/v855416767/10f3e6/vJLZ7joJBPk.jpg?ava=1	561480300	2020-01-26 17:08:06.576386+03	f	\N	\N	1
242	BOP_B_3AKOHE_Fluyz	Dona Ter	\N	https://lh5.googleusercontent.com/-YY1GcmyrYts/AAAAAAAAAAI/AAAAAAAAAAA/ACHi3rd7pVzMpPk_efiMyjrXZmOD-mIiug/photo.jpg	UCWKHNHu7H9PKztJJeBiTcgw	2020-01-26 16:28:56.50657+03	f	\N	\N	2
245	\N	Sasha	Grama	https://sun9-69.userapi.com/c206624/v206624543/37efb/PYiAaJGkKFE.jpg?ava=1	551623898	2020-01-26 16:41:03.101546+03	f	\N	\N	3
244	Fokyc_HuK	Dima	Agafonov	https://sun9-61.userapi.com/c851036/v851036774/c3ddf/VsXwEwj2Ye8.jpg?ava=1	223840853	2020-01-26 16:40:52.773114+03	f	\N	\N	2
247	\N	Light	\N	https://yt3.ggpht.com/a/AGF-l79_QyK71lsSq6702YZobI4YivtelWoaigHekg=s800-c-k-c0xffffffff-no-rj-mo	UCLREWfeMfAlKUx0i-m4IWyg	2020-01-26 16:43:57.572953+03	f	\N	\N	1
249	\N	Kirill	Bely	https://sun6-16.userapi.com/c849328/v849328258/10295b/3fV2PxoN5ts.jpg?ava=1	244353499	2020-01-26 16:52:49.803769+03	f	\N	\N	0
248	Markich	Markus	Savin	https://sun9-63.userapi.com/c204628/v204628283/4acfa/OkTv7CfWhYE.jpg?ava=1	560396108	2020-01-26 16:51:20.366071+03	f	\N	\N	2
252	\N	Timur	Pazylov	https://vk.com/images/camera_200.png?ava=1	423316254	2020-01-26 17:00:11.937293+03	f	\N	\N	0
246	\N	Sasha	Kozlov	https://sun9-40.userapi.com/c621701/v621701611/3a87/9l56wb7GkGE.jpg?ava=1	218558358	2020-01-26 16:42:13.423967+03	f	\N	\N	0
250	\N	Vanya	Bely	https://sun9-43.userapi.com/c857432/v857432225/f7621/UtmmV2jNokw.jpg?ava=1	313007637	2020-01-26 16:53:58.84483+03	f	\N	\N	3
262	9I_TBOU_Alpha	Balan	Vlad	https://sun9-45.userapi.com/c845124/v845124669/d2923/cU67IVCbMDQ.jpg?ava=1	503228140	2020-01-26 17:23:29.128372+03	f	\N	\N	4
257	\N	Максим Рыжинский	\N	https://yt3.ggpht.com/a/AGF-l78hD6RFFzIlz0JaG52xt_oKeMGRX0Qk9jIt_w=s800-c-k-c0xffffffff-no-rj-mo	UCnMOOWTrAI9mgRpncPX96KQ	2020-01-26 17:07:58.757936+03	f	\N	\N	0
253	\N	Rafael	Musakaev	https://sun9-16.userapi.com/c854216/v854216572/15a580/UX-9HmD0a68.jpg?ava=1	223208373	2020-01-26 17:01:08.747111+03	f	\N	\N	3
254	Dudik-666	Dmitry	Simonov	https://vk.com/images/camera_200.png?ava=1	520966001	2020-01-26 17:03:30.913554+03	f	\N	\N	1
263	qwertyuiop007	Kirill	Anisimov	https://sun9-21.userapi.com/c834203/v834203449/b2b3b/xPiYemK2glY.jpg?ava=1	389426179	2020-01-26 17:24:22.658155+03	f	\N	\N	2
269	\N	OQELOT 480	\N	https://yt3.ggpht.com/a/AGF-l7-DERUjra28P4r7SbxaHt4QTdeITbj38G6_=s800-c-k-c0xffffffff-no-rj-mo	UCOF3QSR1XtWSxcFRUq6tTyA	2020-01-26 18:05:11.639875+03	f	\N	\N	0
264	\N	Yury	Khvostov	https://sun9-7.userapi.com/c857336/v857336660/aa030/fxdiu8SJJTw.jpg?ava=1	377514989	2020-01-26 17:31:57.799652+03	f	\N	\N	0
266	\N	WoolfyGames	\N	https://yt3.ggpht.com/a/AGF-l7-5Psn7brFP0l2VhYxXHHpI38yIc_KHBvmw1A=s800-c-k-c0xffffffff-no-rj-mo	UCx9b9Q38a3vptCQTyfEYLGw	2020-01-26 17:35:31.657129+03	f	\N	\N	0
267	\N	Timur	Korneev	https://sun6-16.userapi.com/c205328/v205328603/1c90a/toZCGmr62Qw.jpg?ava=1	484082552	2020-01-26 17:36:33.533355+03	f	\N	\N	0
278	Подписчик JekaMiXa	Fayaz	Zirgansky	https://sun9-24.userapi.com/c204624/v204624295/41e1c/_SkOb_KpDRg.jpg?ava=1	570701094	2020-01-26 18:21:43.000531+03	f	\N	\N	0
261	PARKUR_MACTEP	Vladislav	Vartanyan	https://sun9-59.userapi.com/c856128/v856128991/1d3653/xG5tfd7QYQU.jpg?ava=1	502920425	2020-01-26 17:20:14.614232+03	f	\N	\N	2
271	\N	Не граф	\N	https://yt3.ggpht.com/a/AGF-l7_F9KmpJkhbyb75XUQ9HEJbkPsEd_5veRMfDA=s800-c-k-c0xffffffff-no-rj-mo	UCILICoYdVzPt6NAflcteWRQ	2020-01-26 18:06:04.670508+03	f	\N	\N	0
265	BOTOSH_UA	Міша Староста	\N	https://yt3.ggpht.com/a/AGF-l78_Ud1zqCyBVY_miTygoZGxpgtZM_t2UUoRmg=s800-c-k-c0xffffffff-no-rj-mo	UCrqhBvgGPevtOF7KqH2JvKw	2020-01-26 17:34:27.407489+03	f	\N	\N	0
268	\N	Maxim	Podakov	https://sun9-16.userapi.com/c854520/v854520554/d59e9/C1H9ZSpAaUE.jpg?ava=1	319715915	2020-01-26 17:56:14.095112+03	f	\N	\N	0
272	1stanislavchyk1	Stasik	Lichman	https://sun9-45.userapi.com/c853624/v853624337/1cf7d9/2zGMrn41iVg.jpg?ava=1	217372561	2020-01-26 18:06:36.387378+03	f	\N	\N	0
273	\N	Adrian Profor	\N	https://yt3.ggpht.com/a/AGF-l79fCqi-ZL1QYAeWdqlNG_YM6ULJcM3Jo2hiug=s800-c-k-c0xffffffff-no-rj-mo	UCpsZmC2ZslmeFqmZYY8X9gg	2020-01-26 18:08:22.487407+03	f	\N	\N	0
274	\N	Denis	Solovyev	https://sun9-5.userapi.com/c857624/v857624774/151ba1/_jsUwnR86NE.jpg?ava=1	149185241	2020-01-26 18:10:00.179296+03	f	\N	\N	0
270	Rinatlider	Rinat	Gilmanov	https://sun9-49.userapi.com/c858332/v858332873/ed4e4/QYWNauxjWf0.jpg?ava=1	143986890	2020-01-26 18:05:13.664844+03	f	\N	\N	1
276	\N	Ilya	Grek	https://sun6-13.userapi.com/c858024/v858024005/6381b/_rYAJUtpXzI.jpg?ava=1	410920818	2020-01-26 18:13:32.460466+03	f	\N	\N	1
279	\N	nekto v chernom	\N	https://yt3.ggpht.com/a/AGF-l78Kr0lVgjYUotwuLx_IQzjVO6CF9V6944tGvw=s800-c-k-c0xffffffff-no-rj-mo	UCGJ-QH1sJlM09vhs4oLlrkw	2020-01-26 18:25:47.794455+03	f	\N	\N	1
275	\N	Seryozha	Tolstunov	https://sun9-5.userapi.com/c840736/v840736523/f302/5v2uLFmfh_o.jpg?ava=1	282370532	2020-01-26 18:12:03.329973+03	f	\N	\N	6
277	\N	Danil	Kraus	https://vk.com/images/camera_200.png?ava=1	477671358	2020-01-26 18:21:15.741286+03	f	\N	\N	1
281	R4VIK	Ernar	Kardyrbekov	https://sun6-16.userapi.com/c850228/v850228699/14b347/5nIpD9Tq4Dc.jpg?ava=1	447179457	2020-01-26 18:44:08.563608+03	f	\N	\N	0
280	shafter777	Sergey	Saschenko	https://sun6-19.userapi.com/c854128/v854128234/1d0e77/tsCbTMUF42Y.jpg?ava=1	288055013	2020-01-26 18:37:58.204595+03	f	\N	\N	1
285	\N	Arsen	Mustakimov	https://sun6-19.userapi.com/c854320/v854320128/1b9f4b/MCfy2dqQ2Eo.jpg?ava=1	266338505	2020-01-26 18:58:08.859304+03	f	\N	\N	0
251	x10	Sergiy	Ohonovskiy	https://vk.com/images/camera_200.png?ava=1	472334073	2020-01-26 17:00:02.144384+03	f	\N	\N	3
238	\N	Dmitry	Salnikov	https://sun6-19.userapi.com/c850216/v850216568/1aff36/4ZXcs4WjIpA.jpg?ava=1	260234406	2020-01-26 16:21:58.900076+03	f	\N	\N	2
292	\N	Evgeny	Chuprov	https://sun9-12.userapi.com/c855336/v855336940/196b5b/lnOBMae5SA8.jpg?ava=1	479003025	2020-01-26 19:16:19.092367+03	f	\N	\N	4
286	goldguy	Vladis	Wine	https://sun9-35.userapi.com/c856036/v856036992/1538f1/d9FfcOVaoTg.jpg?ava=1	536817556	2020-01-26 18:59:57.588575+03	f	\N	\N	1
290	\N	Lida	Avdeeva	https://sun9-40.userapi.com/c639326/v639326982/40ea5/q2SCWEleoh4.jpg?ava=1	157092959	2020-01-26 19:15:59.958703+03	f	\N	\N	0
293	\N	Kirill	Slyusarenko	https://sun9-68.userapi.com/c855128/v855128743/18bd0a/Uq-KN-VcMzU.jpg?ava=1	238556358	2020-01-26 19:16:47.402054+03	f	\N	\N	0
294	\N	Vadim	Bereka	https://sun9-65.userapi.com/c824601/v824601849/13b99c/vxyx0R297MI.jpg?ava=1	464165812	2020-01-26 19:16:48.344853+03	f	\N	\N	0
295	Maks_550	Max	Vash-Povelitel-Ubity-Grustyu-Eb	https://sun9-3.userapi.com/c847122/v847122718/1685b7/HFnE2Xh6NXo.jpg?ava=1	250803297	2020-01-26 19:17:05.015458+03	f	\N	\N	2
302	\N	Данил Полуян	\N	https://yt3.ggpht.com/a/AGF-l78swUWDyyeZkzEXbIeDbiTS95fVuN4ibQBWxA=s800-c-k-c0xffffffff-no-rj-mo	UCFphp64danQO-5JpiAFjbrw	2020-01-26 19:19:11.398478+03	f	\N	\N	0
303	\N	Alexander	Nosov	https://vk.com/images/camera_200.png?ava=1	216410455	2020-01-26 19:19:13.983819+03	f	\N	\N	0
304	\N	Denis	Rozov	https://sun9-51.userapi.com/c849224/v849224520/110b33/d6RZBn_6Zmg.jpg?ava=1	421013452	2020-01-26 19:19:15.275354+03	f	\N	\N	0
309	\N	Timofey	Buchumash	https://sun9-4.userapi.com/c855320/v855320295/11714f/xO5vbdHbn3U.jpg?ava=1	307909199	2020-01-26 19:20:02.777078+03	f	\N	\N	0
315	\N	Alesya	Kiulova	https://sun9-57.userapi.com/c857524/v857524481/123347/KmBf_UjPJgs.jpg?ava=1	302334361	2020-01-26 19:21:09.065161+03	f	\N	\N	0
320	\N	Denys_s03 ,	\N	https://yt3.ggpht.com/a/AGF-l78WehDjbDX5UOV7_Mipqm3v7WDtGKHtLUMaSw=s800-c-k-c0xffffffff-no-rj-mo	UCgo7hjFiuzTVuFtv2ZK2GSA	2020-01-26 19:21:58.931517+03	f	\N	\N	0
319	pobokon	Dima Karpishin	\N	https://yt3.ggpht.com/a/AGF-l79DpoyHDDmAnmklwPd6sLa_JaUXatZz1Rlrqg=s800-c-k-c0xffffffff-no-rj-mo	UCY3o0QfzSxNui3u1I4yNqmw	2020-01-26 19:21:39.08004+03	f	\N	\N	1
289	\N	Danil	Oshev	https://sun9-43.userapi.com/c849032/v849032689/a4a31/gDGbL_j3f1Y.jpg?ava=1	339545129	2020-01-26 19:08:30.544514+03	f	\N	\N	1
307	\N	Artis	Blinovs	https://sun9-58.userapi.com/c850036/v850036204/1083ef/d9Jixw_Z6b8.jpg?ava=1	303196152	2020-01-26 19:19:24.903498+03	f	\N	\N	1
312	Hameleon32	Ярослав Данилюк	\N	https://lh5.googleusercontent.com/-6dwrmuuE49Q/AAAAAAAAAAI/AAAAAAAAAAA/ACHi3rcbw4j7T60GvkzNyhJ4HiFfocYJDw/photo.jpg	UCzWZMEPuEXo_50wzwLe5HEA	2020-01-26 19:20:44.55633+03	f	\N	\N	6
308	\N	Ayrat	Ganiev	https://sun9-35.userapi.com/c853628/v853628945/106753/K0MBgQeCgN4.jpg?ava=1	411694652	2020-01-26 19:19:59.658508+03	f	\N	\N	2
314	cat123045	Marta	Fedorova	https://sun9-12.userapi.com/c854228/v854228085/1b6f78/KKwyjljWzvY.jpg?ava=1	226640252	2020-01-26 19:21:01.965746+03	f	\N	\N	1
287	\N	Daniil	Bykov	https://sun9-47.userapi.com/c206624/v206624386/3d550/KEO0bl2pAWE.jpg?ava=1	473998048	2020-01-26 19:00:37.78185+03	f	\N	\N	1
310	\N	Dima	Lyapin	https://sun6-14.userapi.com/aw7li__mwIJLvzF9-UocWEdi_U8KgSIUyBb-WA/9T8WRN6aqv4.jpg?ava=1	483590558	2020-01-26 19:20:11.341417+03	f	\N	\N	3
313	\N	Andriy Golodriga	\N	https://yt3.ggpht.com/a/AGF-l7_kjpPgTt06oDzoCt_qOBaI-AQfzbNnwJM2MA=s800-c-k-c0xffffffff-no-rj-mo	UCaG8wKXtjMoMdpBmQ7xwmzA	2020-01-26 19:20:58.612585+03	f	\N	\N	3
288	\N	Industrial Live	\N	https://yt3.ggpht.com/a/AGF-l7-5H1tsJKULxpcS4j_Fqev2l2fTg9T_kkQuvQ=s800-c-k-c0xffffffff-no-rj-mo	UCzNiOdEuZdHWoBlZUQRoQmA	2020-01-26 19:02:22.263998+03	f	\N	\N	0
284	\N	Egor	Mescheryakov	https://sun9-45.userapi.com/c633924/v633924122/2ddc8/HSWUhW_7KSA.jpg?ava=1	315947122	2020-01-26 18:53:16.348893+03	f	\N	\N	1
311	Novel	Goga	Beriashvili	https://sun9-35.userapi.com/c846121/v846121455/de830/U58JbnMRzJw.jpg?ava=1	372519101	2020-01-26 19:20:18.278017+03	f	\N	\N	1
306	ytt	TTPOCTO -PAK	\N	https://yt3.ggpht.com/a/AGF-l7-9gNiy-VskqOSla4QTpWl9DBoovUaktxkpkw=s800-c-k-c0xffffffff-no-rj-mo	UCwttfKZqA95Y7GRzik1tpuQ	2020-01-26 19:19:24.724601+03	f	\N	\N	1
305	F57	Artyom	Rusinov	https://sun6-16.userapi.com/c631226/v631226518/64db5/K1nzEq74zL4.jpg?ava=1	253026518	2020-01-26 19:19:20.928008+03	f	\N	\N	3
283	gg15215_9005	Dmitry	Petukhov	https://sun9-44.userapi.com/c840139/v840139754/e594/zThv9XqD22U.jpg?ava=1	203146754	2020-01-26 18:50:31.193759+03	f	\N	\N	5
282	\N	Xx_HeUtPoH_ xX	\N	https://yt3.ggpht.com/a/AGF-l79RTcaytdcy0qdbF4jpTTETw3WjiOT8FNutXg=s800-c-k-c0xffffffff-no-rj-mo	UCt7r8EbuWutM3mnMX3pJPhA	2020-01-26 18:49:22.456267+03	f	\N	\N	0
296	\N	Alexey	Kulikov	https://sun6-13.userapi.com/c858232/v858232347/161b5f/B_kPLkWhots.jpg?ava=1	201595233	2020-01-26 19:18:00.367356+03	f	\N	\N	0
298	\N	BLAZE ;D	\N	https://yt3.ggpht.com/a/AGF-l797hT4RUf27Sf4aJc5KFp54-PB9-UaOvUyw4Q=s800-c-k-c0xffffffff-no-rj-mo	UCnB5JC-XzER1FqeFcYXXzAQ	2020-01-26 19:18:22.86501+03	f	\N	\N	0
336	\N	Ivan	Belogur	https://sun9-47.userapi.com/c854228/v854228208/32f30/-sdQyBuA8OA.jpg?ava=1	363195530	2020-01-26 19:25:24.462923+03	f	\N	\N	1
316	\N	Dmitry	Ivanov	https://sun6-14.userapi.com/c855628/v855628648/1d5055/-wjj-hZFuq4.jpg?ava=1	553149381	2020-01-26 19:21:19.723364+03	f	\N	\N	0
317	\N	Nikolay	Buldakov	https://sun9-36.userapi.com/c851132/v851132035/fb1bb/YT-gcJz3M-A.jpg?ava=1	351422756	2020-01-26 19:21:24.83846+03	f	\N	\N	0
324	\N	Rachok	\N	https://yt3.ggpht.com/a/AGF-l789JiwPtMsusAdZlUMQsORc1OBW68dcnWZcJg=s800-c-k-c0xffffffff-no-rj-mo	UCQsI9e4Ey9ZE6rlaUDYu4OA	2020-01-26 19:22:33.978527+03	f	\N	\N	0
322	TB0U_6AT9I_497	Kamil	Fakhargaleev	https://sun9-17.userapi.com/c854120/v854120501/1a7284/Xh33HBKUUdI.jpg?ava=1	533810271	2020-01-26 19:22:07.808617+03	f	\N	\N	0
326	\N	Зелёный Чай	\N	https://yt3.ggpht.com/a/AGF-l7_Fn_8Pm2J8DxeyXzaG-QDlmPE8YZg3P0rvfA=s800-c-k-c0xffffffff-no-rj-mo	UCU2vlImlYY7cdS1vaJtc1UQ	2020-01-26 19:23:10.126009+03	f	\N	\N	0
328	\N	Parkour Warrior	\N	https://yt3.ggpht.com/a/AGF-l7_0jRjGttbK8PweDiMx6sTPqC5IDZlI1AxLZw=s800-c-k-c0xffffffff-no-rj-mo	UCCOWdXs3vp5n9leYUkonH2A	2020-01-26 19:24:08.156674+03	f	\N	\N	0
329	\N	shepel61	\N	https://yt3.ggpht.com/a/AGF-l786Co7BzGzhXaVaUp5HRTWYlBzXIkm5DnQApg=s800-c-k-c0xffffffff-no-rj-mo	UCVU0a8AwVEJoufBdZTOYCIw	2020-01-26 19:24:20.404995+03	f	\N	\N	1
335	\N	Roma	Davydov	https://sun9-2.userapi.com/c849420/v849420943/18465f/pM7_Ds4IOhQ.jpg?ava=1	296180789	2020-01-26 19:25:18.490777+03	f	\N	\N	0
337	\N	Yura	Epanechnikov	https://sun6-19.userapi.com/c855720/v855720941/1d6aa6/fuoG7edwqsY.jpg?ava=1	429543208	2020-01-26 19:25:26.310619+03	f	\N	\N	0
354	\N	Данил Моргун	\N	https://yt3.ggpht.com/a/AGF-l79Nrq4So-eehnheh1E3teOSb_lUSOFQj58DlA=s800-c-k-c0xffffffff-no-rj-mo	UCjmo2eXREr3BPnABh366NbA	2020-01-26 19:31:30.033243+03	f	\N	\N	2
348	Лох Цветочный	Nikolay	Makalov	https://sun9-127.userapi.com/c851528/v851528333/10c910/sq7Y1CbTF_U.jpg?ava=1	372843037	2020-01-26 19:28:15.266255+03	f	\N	\N	3
347	\N	Grisha	Shakhov	https://sun6-16.userapi.com/c857032/v857032543/bd676/7XaAd4TyZow.jpg?ava=1	403976504	2020-01-26 19:27:45.85333+03	f	\N	\N	1
346	4el_kakoyto	Mr. street	\N	https://yt3.ggpht.com/a/AGF-l7_hnrFXSjm60_egZVqzjvzW0kAU4oLK1LxIfg=s800-c-k-c0xffffffff-no-rj-mo	UCJY2pFiKmOGH8y-GdkZUrTw	2020-01-26 19:27:34.046462+03	f	\N	\N	0
323	\N	Юра Луцюк	\N	https://yt3.ggpht.com/a/AGF-l7--qVf2J2qj5W4Aq4R49_z0UWo9FwPv-6QEKw=s800-c-k-c0xffffffff-no-rj-mo	UCdi3m--wlkf0HzqD7RbDvlw	2020-01-26 19:22:27.875876+03	f	\N	\N	1
350	\N	Egor	Matrosov	https://sun9-32.userapi.com/c854524/v854524542/10aed2/yBZXOthjLgY.jpg?ava=1	268059420	2020-01-26 19:28:44.383788+03	f	\N	\N	0
334	\N	Dana	Julya	https://vk.com/images/camera_200.png?ava=1	547622226	2020-01-26 19:25:15.080744+03	f	\N	\N	6
291	\N	Dimas Fantomas	\N	https://yt3.ggpht.com/a/AGF-l7-gYuPAkThGg3x-MlW-OnWPnPC3GXoSOBCeRw=s800-c-k-c0xffffffff-no-rj-mo	UCw_G8GbpfX7JNe7E-3Kk8Vw	2020-01-26 19:16:12.311684+03	f	\N	\N	1
300	kidnapping	Ioann	Dobrovolsky	https://sun9-10.userapi.com/c854128/v854128423/1930bf/jc7eXHesp-M.jpg?ava=1	513338044	2020-01-26 19:18:57.112337+03	f	\N	\N	3
338	CkiJloBou	Aggressor	\N	https://yt3.ggpht.com/a/AGF-l79awpa7Upfs_awVCeTGK6ByKe0upXItTp6uiQ=s800-c-k-c0xffffffff-no-rj-mo	UCD_XS9-sFyqYmWwBtOS27EA	2020-01-26 19:25:38.002082+03	f	\N	\N	3
299	\N	Rasif	Akhmadullin	https://sun9-11.userapi.com/c830308/v830308319/13bb6e/nM8ZrDozmRA.jpg?ava=1	368958612	2020-01-26 19:18:48.274465+03	f	\N	\N	1
339	\N	Dima	Rachkelyuk	https://vk.com/images/camera_200.png?ava=1	454034417	2020-01-26 19:25:58.784145+03	f	\N	\N	1
301	\N	Віталій Хаймик	\N	https://lh3.googleusercontent.com/a-/AAuE7mDiFzsUS3n5871-jEbXsGjsXRioPFEr7_m4vxVx	UCukthEZ_ntFYVXQiH5RUXcA	2020-01-26 19:19:01.3686+03	f	\N	\N	3
332	\N	Roman	Onischenko	https://vk.com/images/camera_200.png?ava=1	558879434	2020-01-26 19:25:02.002699+03	f	\N	\N	1
351	\N	Alexey	Artemov	https://sun6-13.userapi.com/c857416/v857416891/107589/BfYqY9yKN_Q.jpg?ava=1	211539450	2020-01-26 19:29:25.271143+03	f	\N	\N	3
341	\N	Maxik Play	\N	https://yt3.ggpht.com/a/AGF-l781C3qcS4PW--ryvN1JFY4qP17Abp1jB8pQ6Q=s800-c-k-c0xffffffff-no-rj-mo	UCst1bZ1meh6kitmyxYgePbA	2020-01-26 19:26:19.178408+03	f	\N	\N	3
333	\N	Olesya Greenberg	\N	https://yt3.ggpht.com/a/AGF-l7-ICHBU6WgUeO_B80GkVPmpBg09GGlBRxqGog=s800-c-k-c0xffffffff-no-rj-mo	UCBfZmRkyaumBF3bdkIWi8PQ	2020-01-26 19:25:03.070426+03	f	\N	\N	2
352	\N	Rayder X	\N	https://yt3.ggpht.com/a/AGF-l7_avGuXBu24o3VMghBK4_82ILSyehe7cxG4zA=s800-c-k-c0xffffffff-no-rj-mo	UCoM6lV5uVWlAUbYO25qCWEg	2020-01-26 19:29:29.794118+03	f	\N	\N	1
353	\N	Nikita	Murzakoi	https://sun9-54.userapi.com/c855020/v855020450/d92f8/gdoowSGyCwo.jpg?ava=1	496077189	2020-01-26 19:29:49.679407+03	f	\N	\N	1
342	\N	Max's GameCaunt	\N	https://yt3.ggpht.com/a/AGF-l79Yz81AceUWatjl_G41vI214KfhYs3OvwDE2Q=s800-c-k-c0xffffffff-no-rj-mo	UCH0jRJuyjZRMYhWCVrRisuw	2020-01-26 19:26:40.235176+03	f	\N	\N	1
349	\N	Dima	Pershivalov	https://sun9-48.userapi.com/c855616/v855616325/11c75a/yyjokLLrrgI.jpg?ava=1	444814571	2020-01-26 19:28:21.795989+03	f	\N	\N	4
355	\N	Anatoly	Shkulin	https://sun9-62.userapi.com/c854120/v854120754/13442a/2Gn_AERYG2M.jpg?ava=1	195318892	2020-01-26 19:31:47.894697+03	f	\N	\N	2
321	\N	Matvey	Ashanov	https://sun6-14.userapi.com/c856132/v856132090/18c34c/Ag9eoYfh4hE.jpg?ava=1	506931523	2020-01-26 19:22:04.016649+03	f	\N	\N	1
343	\N	Dima	Fenzel	https://sun9-12.userapi.com/c847020/v847020764/12b17c/OUZ2H003I0A.jpg?ava=1	353698566	2020-01-26 19:26:48.01548+03	f	\N	\N	1
327	\N	Andriy	Rarik	https://sun6-16.userapi.com/c638321/v638321551/4300c/DQ7F-F000q0.jpg?ava=1	134216551	2020-01-26 19:23:59.936113+03	f	\N	\N	2
318	\N	KING'PLAY	\N	https://yt3.ggpht.com/a/AGF-l79DUdpAgJ0ex3vCPc1d_3XwsmbROTWIqfvwGA=s800-c-k-c0xffffffff-no-rj-mo	UCxCzJrm1K6zwJ6kl9r25tyA	2020-01-26 19:21:31.744453+03	f	\N	\N	3
344	\N	Stas	Chemyrtan	https://sun9-34.userapi.com/c846322/v846322289/1f27c6/c3zNWjl_XuI.jpg?ava=1	236671655	2020-01-26 19:27:08.899694+03	f	\N	\N	3
340	\N	Yuriy Epanechnikov	\N	https://yt3.ggpht.com/a/AGF-l79VYpEATkiXZJVq2h7lLuVk_HQmvimlOy3pvw=s800-c-k-c0xffffffff-no-rj-mo	UCVhVcKgXolU-okarhY9u5yQ	2020-01-26 19:26:01.399806+03	f	\N	\N	1
330	nikita69	Никита Емченко	\N	https://yt3.ggpht.com/a/AGF-l7_br-KI6FThDnAvEnunHkg2ovdFhDpKPsj9dA=s800-c-k-c0xffffffff-no-rj-mo	UCU4Ia0LanmlugwfR4LT5bnQ	2020-01-26 19:24:38.118556+03	f	\N	\N	0
297	\N	Denis	Filatov	https://sun9-38.userapi.com/c855324/v855324712/11f13e/cOg_8SMrcyE.jpg?ava=1	508955089	2020-01-26 19:18:14.404611+03	f	\N	\N	0
325	Young.Forever	Vladimir	Strugaylo	https://sun6-14.userapi.com/c204624/v204624753/35d80/UMVaixpQmEM.jpg?ava=1	439641605	2020-01-26 19:22:34.585358+03	f	\N	\N	4
356	\N	Сергій Михальчук	\N	https://yt3.ggpht.com/a/AGF-l7-oIXVnD_lnxjMcIJQnxRcPp_lwcmQweG2eeQ=s800-c-k-c0xffffffff-no-rj-mo	UCq-rXq2gyh8KxhcMQ-TZVgg	2020-01-26 19:31:54.09373+03	f	\N	\N	0
331	\N	Miron	Kachkovsky	https://vk.com/images/camera_200.png?ava=1	540177991	2020-01-26 19:24:44.282009+03	f	\N	\N	1
361	\N	German	Tsarevich	https://sun9-11.userapi.com/c200528/v200528288/27f88/29Oo349WfGk.jpg?ava=1	233185333	2020-01-26 19:33:29.142879+03	f	\N	\N	0
360	Kingal2	Андрій Юськів	\N	https://yt3.ggpht.com/a/AGF-l7994SarA25Fe4o_zgtTveuwDPekBwEkA6-zvw=s800-c-k-c0xffffffff-no-rj-mo	UCzXfc4LTlfJHf8_ljVUElLQ	2020-01-26 19:33:23.804901+03	f	\N	\N	0
363	\N	MELLO GANG	\N	https://yt3.ggpht.com/a/AGF-l79XOwZ_mo0dYtafVndBpW8NWdvfZlv59XABmQ=s800-c-k-c0xffffffff-no-rj-mo	UC9Ax5mXDlV1289-Fx97EJyQ	2020-01-26 19:34:55.965589+03	f	\N	\N	0
345	TOP4908	adskaya Bashnya	\N	https://yt3.ggpht.com/a/AGF-l7-mFyNhRhlAQUywooOChluV1iFdPttgpPa0Pw=s800-c-k-c0xffffffff-no-rj-mo	UCpNL9EdLFS3FsqIBrda_kiA	2020-01-26 19:27:09.210745+03	f	\N	\N	4
371	Lean	Nikita	Pavlenko	https://sun9-27.userapi.com/c854128/v854128177/10177f/rY6NsmKzDIQ.jpg?ava=1	319736940	2020-01-26 19:37:00.52373+03	f	\N	\N	0
366	\N	Dencik Vzdaniji	\N	https://yt3.ggpht.com/a/AGF-l7_43Hvg5qFo5HL187xaiGi2ptZuirGfDrIwkQ=s800-c-k-c0xffffffff-no-rj-mo	UCiQdnr0f70sLZ3lR1N7MXiA	2020-01-26 19:35:29.535387+03	f	\N	\N	1
375	\N	Mihai	Djagerboss	https://sun9-7.userapi.com/c851136/v851136789/19430c/wdzEq1kp6rU.jpg?ava=1	330476192	2020-01-26 19:38:26.940743+03	f	\N	\N	0
376	\N	Evgeny	Sukhochev	https://sun9-66.userapi.com/c851336/v851336666/1ce1b0/xhUElmErM_Q.jpg?ava=1	305050915	2020-01-26 19:38:28.114489+03	f	\N	\N	0
357	\N	Maxim	Yarmots	https://sun9-35.userapi.com/c854428/v854428232/18b0b6/UL1xrKec598.jpg?ava=1	153569197	2020-01-26 19:32:01.944184+03	f	\N	\N	3
384	\N	Dima	Zyryanov	https://sun6-13.userapi.com/oC6q2-6qW2n3TkSjViZkbxPAH2ZkWrog2tyxQw/92jTmaDlJ3U.jpg?ava=1	469489363	2020-01-26 19:40:21.105845+03	f	\N	\N	0
385	\N	Dima	Rodin	https://sun9-2.userapi.com/c854028/v854028877/1ce63d/NqBi0mLPwkA.jpg?ava=1	233999439	2020-01-26 19:40:23.609115+03	f	\N	\N	0
383	\N	Kolya	Maslun	https://sun9-66.userapi.com/c857320/v857320863/5f1a5/GMUCT1rKpao.jpg?ava=1	272821182	2020-01-26 19:40:05.250738+03	f	\N	\N	3
397	\N	ФК. Колос	\N	https://yt3.ggpht.com/a/AGF-l7-uiPs0IFS0IWPRfBrCmTf4UJJSFkaYsD55wg=s800-c-k-c0xffffffff-no-rj-mo	UCdwlIIGEAu06cloyrjMwYyg	2020-01-26 19:44:05.973331+03	f	\N	\N	3
387	\N	BRABUS	\N	https://yt3.ggpht.com/a/AGF-l78R9J3NdfgqMjZKQWEpQ-e_L-lfnxdbNT4pIw=s800-c-k-c0xffffffff-no-rj-mo	UC08K_7hOszrRNwLWYgOl45g	2020-01-26 19:41:01.358968+03	f	\N	\N	0
388	\N	Владислав Верхола	\N	https://yt3.ggpht.com/a/AGF-l79cEIocJPvL7kcHyiVNdMIsF8rfDVmz8G6TiA=s800-c-k-c0xffffffff-no-rj-mo	UCRRxUkkZ1QfepDjU6MOOtZg	2020-01-26 19:41:03.959988+03	f	\N	\N	0
390	\N	Kirill	Koshevets	https://sun6-16.userapi.com/c850424/v850424478/107f33/RjVaOi4Dm4A.jpg?ava=1	187840420	2020-01-26 19:41:15.816897+03	f	\N	\N	0
395	\N	неизвестность #2	\N	https://yt3.ggpht.com/a/AGF-l7_X798nigan0ehpJM08BORNzNwrw153kfIqnw=s800-c-k-c0xffffffff-no-rj-mo	UCllO3NGeFj7xJdz2ucy1VFg	2020-01-26 19:43:32.93661+03	f	\N	\N	0
369	\N	Maxim	Pogosyan	https://sun9-28.userapi.com/c853516/v853516704/1d614d/TE9JcRLlSsg.jpg?ava=1	438456683	2020-01-26 19:36:26.150651+03	f	\N	\N	1
391	\N	Egor	Pankov	https://sun9-12.userapi.com/c856036/v856036368/19c02f/OqqGTPU0Bqg.jpg?ava=1	517844200	2020-01-26 19:42:19.031039+03	f	\N	\N	0
392	\N	Виталий Толдаев	\N	https://yt3.ggpht.com/a/AGF-l7-7DfKOz_Hs9hmApKZudIQF1D9TXETn5yotiA=s800-c-k-c0xffffffff-no-rj-mo	UC5_JS76Y5kP6qP0u24jwVNQ	2020-01-26 19:42:21.058055+03	f	\N	\N	0
393	\N	с названием	\N	https://yt3.ggpht.com/a/AGF-l79smA4Th3nAS8z-ylHk_qB2lvr18d_3XTK-hQ=s800-c-k-c0xffffffff-no-rj-mo	UCSx5-axRtnjR_ARUSLh34ow	2020-01-26 19:42:28.874249+03	f	\N	\N	0
370	\N	Sergey	Berkov	https://sun9-29.userapi.com/c633319/v633319538/fb4d/ydbqh6Lmnok.jpg?ava=1	138925538	2020-01-26 19:36:29.598717+03	f	\N	\N	4
396	\N	Vladislav	Zakharov	https://sun6-16.userapi.com/c858520/v858520235/6bd42/IrysYBtgrLo.jpg?ava=1	135476586	2020-01-26 19:43:49.077304+03	f	\N	\N	0
380	\N	King Game	\N	https://yt3.ggpht.com/a/AGF-l7929VTiw-epO9XELsy647pBbCo0K_OKSgMzZA=s800-c-k-c0xffffffff-no-rj-mo	UCB478iCxvY2DNvaRNxZhEow	2020-01-26 19:39:08.041818+03	f	\N	\N	4
372	\N	Kirill	Kirillov	https://sun9-49.userapi.com/c851220/v851220196/102cb4/xFzC-Ea4FUU.jpg?ava=1	253994628	2020-01-26 19:37:45.782622+03	f	\N	\N	1
400	\N	Daniil	Maryan	https://sun9-55.userapi.com/c851328/v851328008/163c97/VZFcBo5JRjw.jpg?ava=1	232178963	2020-01-26 19:44:22.896467+03	f	\N	\N	0
377	\N	Artyom	Volkov	https://sun9-31.userapi.com/c856136/v856136727/1c6b14/x4y5xiguj0E.jpg?ava=1	428725939	2020-01-26 19:38:36.943925+03	f	\N	\N	1
382	\N	Pavel	Tulbukonov	https://sun9-14.userapi.com/c854320/v854320300/1d42cd/WcGEhELBTGs.jpg?ava=1	517518799	2020-01-26 19:39:54.142595+03	f	\N	\N	0
378	\N	Павел	\N	https://yt3.ggpht.com/a/AGF-l7834EFTg1t98fVRSHSOUdJ-fSnbsytaLkJsog=s800-c-k-c0xffffffff-no-rj-mo	UCbbPA3m4I7Twn-DjQSGcwmA	2020-01-26 19:39:01.369286+03	f	\N	\N	2
368	\N	Kirill	Matrosov	https://sun9-62.userapi.com/c847020/v847020282/1217c4/qufeHKCz320.jpg?ava=1	372803021	2020-01-26 19:36:04.914306+03	f	\N	\N	2
374	\N	Andriy	Paskiv	https://sun6-19.userapi.com/c853620/v853620023/b9a65/DOW5LlPh9_o.jpg?ava=1	223112898	2020-01-26 19:38:08.21283+03	f	\N	\N	3
398	LITE_KPN	Raima	Vk	https://sun9-11.userapi.com/c855636/v855636366/1d58eb/Qg_0UThv7yo.jpg?ava=1	443741855	2020-01-26 19:44:16.060868+03	f	\N	\N	3
379	Lo creo	Lo	Creo	https://sun9-45.userapi.com/c206828/v206828525/317a9/_o_ja62imIA.jpg?ava=1	567584409	2020-01-26 19:39:02.883157+03	f	\N	\N	7
367	\N	Alexander	Goryainov	https://sun9-5.userapi.com/c857028/v857028428/bacf8/pH3OhzwqZ0Y.jpg?ava=1	173876632	2020-01-26 19:35:29.808987+03	f	\N	\N	2
358	Vagr1400	Vagram	Vardanyan	https://sun9-8.userapi.com/c849220/v849220740/16a585/LqfjYPjUNLY.jpg?ava=1	539991765	2020-01-26 19:32:55.037037+03	f	\N	\N	6
394	\N	Виталий Поздеев	\N	https://yt3.ggpht.com/a/AGF-l7-ru2pmQh6jq5qikTU6Q-HB7V7JY4j38jYDaA=s800-c-k-c0xffffffff-no-rj-mo	UCHQhYuUyTEqKwUrwTIBt16w	2020-01-26 19:42:57.359116+03	f	\N	\N	1
364	sergopika	Sergey	Penkov	https://vk.com/images/camera_200.png?ava=1	217700943	2020-01-26 19:35:05.681711+03	f	\N	\N	3
359	\N	Анатолий Светашев	\N	https://yt3.ggpht.com/a/AGF-l7_IUj7PiVpdva6mreZH5X4I4dkN5EKv1P5gOw=s800-c-k-c0xffffffff-no-rj-mo	UCx7hlxC_I4L2O_Rqo-bg14g	2020-01-26 19:33:05.780092+03	f	\N	\N	3
381	\N	Danil	Goncharov	https://sun9-23.userapi.com/c851128/v851128381/dd7e1/UpUwYHKJuno.jpg?ava=1	336825751	2020-01-26 19:39:27.658457+03	f	\N	\N	2
389	\N	Vika	Khvorova	https://sun9-68.userapi.com/c837538/v837538703/800eb/cSmrkRCYH0M.jpg?ava=1	162897214	2020-01-26 19:41:13.445901+03	f	\N	\N	2
365	\N	Svyatoslav	Matsiopa	https://sun9-10.userapi.com/c845220/v845220272/16cedb/2pUf1R49vQU.jpg?ava=1	230560049	2020-01-26 19:35:11.593427+03	f	\N	\N	1
386	\N	Nikita	Krasnov	https://sun9-14.userapi.com/c854128/v854128662/981c8/tnSYtTZoZvs.jpg?ava=1	202157572	2020-01-26 19:40:51.885777+03	f	\N	\N	0
399	\N	Semyon	Zubov	https://sun9-44.userapi.com/c857724/v857724556/5f14f/nAbnDvZR9mk.jpg?ava=1	346342545	2020-01-26 19:44:20.79869+03	f	\N	\N	1
403	\N	а	\N	https://yt3.ggpht.com/a/AGF-l79YcABLocBOi81h5R8cqOlpGF8dmlZnnY0PMg=s800-c-k-c0xffffffff-no-rj-mo	UCEytKBxA2xGaCsRpGbGKPZA	2020-01-26 19:44:30.049937+03	f	\N	\N	0
407	\N	Amigo	\N	https://yt3.ggpht.com/a/AGF-l79NZcGQkaTfuq4e0ebHd1kHCRlD_L-mUkMZDw=s800-c-k-c0xffffffff-no-rj-mo	UCT4bF3QMnic6wMHx23SvZdw	2020-01-26 19:44:36.998822+03	f	\N	\N	0
414	\N	Pavel	Sirotkin	https://sun6-16.userapi.com/c858132/v858132645/97d01/79llSVSZOVQ.jpg?ava=1	295532228	2020-01-26 19:45:18.037346+03	f	\N	\N	0
421	\N	Vova MIX	\N	https://yt3.ggpht.com/a/AGF-l783h3jHOZ06vCgQ5xpKruLU0lVlhzFCxaiH=s800-c-k-c0xffffffff-no-rj-mo	UCQEyEL1cpNZKPVsV-5vonaA	2020-01-26 19:46:27.58123+03	f	\N	\N	1
412	DJLE5T	DJ LEST	\N	https://yt3.ggpht.com/a/AGF-l7_ZnQQDOPeiUn3kOxzfMfbYXQXwLR8wk3L6mg=s800-c-k-c0xffffffff-no-rj-mo	UCNeMcIKmHf4ETXU2QQY5ARg	2020-01-26 19:45:15.530033+03	f	\N	\N	1
401	maskmike	Zhenya	Zhinko	https://sun9-59.userapi.com/c857624/v857624746/3437b/PTm1oc0tNM8.jpg?ava=1	255204498	2020-01-26 19:44:23.950288+03	f	\N	\N	0
165	\N	Artem Burlaka	\N	https://yt3.ggpht.com/a/AGF-l78EQ_IF0bO9di7bDI-A732vi1A-SsIX7J0e5w=s800-c-k-c0xffffffff-no-rj-mo	UCTqX9n075he7e8nXjSNOKcw	2020-01-26 14:22:42.606727+03	f	\N	\N	3
402	\N	Ilya	Mirny	https://sun9-19.userapi.com/c857620/v857620652/15fd2b/0vZqenM7LoE.jpg?ava=1	238226784	2020-01-26 19:44:25.139285+03	f	\N	\N	0
405	\N	Dima	Dareshkin	https://sun9-6.userapi.com/c854120/v854120170/1aacac/vKw6UElx03U.jpg?ava=1	219059508	2020-01-26 19:44:33.293669+03	f	\N	\N	0
406	dima2117	Остроушко	\N	https://yt3.ggpht.com/a/AGF-l78WNaI35ZXFEoPOzB1MSk_yaZLddB2oOTpNIQ=s800-c-k-c0xffffffff-no-rj-mo	UCd2ZN444NowkgZqgusdQtRA	2020-01-26 19:44:33.684904+03	f	\N	\N	0
409	\N	Mikhail	Belousov	https://sun9-21.userapi.com/c850324/v850324836/1a5996/N7YxPa7xoIw.jpg?ava=1	555128763	2020-01-26 19:45:02.00069+03	f	\N	\N	0
416	\N	Slava	Voronkovsky	https://sun9-15.userapi.com/c856520/v856520381/63c23/2dBECs1V_Ew.jpg?ava=1	166151185	2020-01-26 19:45:22.995008+03	f	\N	\N	0
417	\N	Roman	Khismatullin	https://sun9-23.userapi.com/c836229/v836229769/522/KxqrOmVZZu8.jpg?ava=1	272350769	2020-01-26 19:45:27.988217+03	f	\N	\N	0
423	\N	Roma	Lukin	https://sun9-48.userapi.com/c853520/v853520307/17f4d9/h7Sa1P0e0xY.jpg?ava=1	460666462	2020-01-26 19:46:45.217613+03	f	\N	\N	0
428	\N	ky ky ept	\N	https://yt3.ggpht.com/a/AGF-l7-Iph8017gvSm35-Nc4f2BFFYybIcthN_iq0Q=s800-c-k-c0xffffffff-no-rj-mo	UCxM4xOBQyyW-UVzp1Fn9Nqg	2020-01-26 19:47:28.415617+03	f	\N	\N	0
418	\N	Vlad	Mikhaylov	https://sun9-8.userapi.com/c204620/v204620941/a303/2OCr1zzdtm8.jpg?ava=1	335667280	2020-01-26 19:45:51.910748+03	f	\N	\N	1
424	\N	Николай Чувиков	\N	https://yt3.ggpht.com/a/AGF-l7_bKFeAk5Y1fP3fEqootg3X939NPKuQihoPMg=s800-c-k-c0xffffffff-no-rj-mo	UC5QthFz5zXs2pwruWBqg_Lw	2020-01-26 19:47:00.32897+03	f	\N	\N	1
430	бомбящий жека	Lich	\N	https://yt3.ggpht.com/a/AGF-l7-_waH_rF0_hOy3WqNQunKHOOS9hl_HDEgpdg=s800-c-k-c0xffffffff-no-rj-mo	UCe3sYQsGva20g7-5ZETq3JA	2020-01-26 19:47:46.64902+03	f	\N	\N	0
431	\N	Alexey	Ivanov	https://sun9-66.userapi.com/c851220/v851220924/197386/24RmB2uhv1g.jpg?ava=1	255510167	2020-01-26 19:48:01.059672+03	f	\N	\N	3
373	\N	Vlad	Galunov	https://sun6-14.userapi.com/c205128/v205128295/16105/sZWk6B9oIcI.jpg?ava=1	477571575	2020-01-26 19:38:08.131842+03	f	\N	\N	4
425	Rif	BOLTER ,	\N	https://yt3.ggpht.com/a/AGF-l7_hiIdVASt0BLmTOXYQYay__Gu0dGkxfXfeCw=s800-c-k-c0xffffffff-no-rj-mo	UCpb_9S-gSGMOFZd24s-7JiQ	2020-01-26 19:47:04.34027+03	f	\N	\N	3
427	\N	Egor	Semirenchenkov	https://sun9-35.userapi.com/c854320/v854320734/1c53ac/GjGPk6AK618.jpg?ava=1	357126440	2020-01-26 19:47:26.882853+03	f	\N	\N	4
408	\N	BesPalivo	\N	https://yt3.ggpht.com/a/AGF-l79I9Mrxwv-yrKxKCfGqgoRYW9Tjm20ZFcMxFA=s800-c-k-c0xffffffff-no-rj-mo	UC6r7EevMwLQAupac0vLZVQw	2020-01-26 19:44:47.692948+03	f	\N	\N	0
411	\N	EpicMoments	\N	https://yt3.ggpht.com/a/AGF-l79WIgt3ZdWP58rh4t_3hG6zv5-VcXpU6qtNkg=s800-c-k-c0xffffffff-no-rj-mo	UCvQpQUdJogKHAuEji7yodQg	2020-01-26 19:45:13.873076+03	f	\N	\N	0
413	\N	afghd_420	\N	https://yt3.ggpht.com/a/AGF-l7-hw4qi2rTU3Pzzbz07RHL8QECw--xNnuq03A=s800-c-k-c0xffffffff-no-rj-mo	UC1cLjD4k6ZWJ4wFvMc0FcRg	2020-01-26 19:45:17.317786+03	f	\N	\N	0
426	\N	Повзрослею	\N	https://yt3.ggpht.com/a/AGF-l7-U_az6P3MA2uokI1jh0TzrjCB9cv23yp_edQ=s800-c-k-c0xffffffff-no-rj-mo	UC5VK_TPvds4cAw2GhYKdLrQ	2020-01-26 19:47:07.102284+03	f	\N	\N	0
429	\N	изи дольче	\N	https://yt3.ggpht.com/a/AGF-l79WBOVAcBroJD2LfijoUo8lkQy2ft_q4wFBsw=s800-c-k-c0xffffffff-no-rj-mo	UC51VJPGwMm01-LfkxvBSojQ	2020-01-26 19:47:41.51862+03	f	\N	\N	0
432	\N	Misha	Ivanov	https://sun9-10.userapi.com/c858436/v858436796/5bf99/uAWpLc1xWKI.jpg?ava=1	249215814	2020-01-26 19:48:17.108701+03	f	\N	\N	0
434	\N	Влад Пилип'юк	\N	https://lh3.googleusercontent.com/a-/AAuE7mDR_e5Rv4p8vK-aZPh2ATKM4kp-25KFT0ydiiKZ	UC0cAhRFzZY7xE8owOydThhw	2020-01-26 19:48:20.27119+03	f	\N	\N	0
436	\N	ИТУБЕРЫ ТВ	\N	https://yt3.ggpht.com/a/AGF-l7_-rdxGbcmuE7p0dKITquMToDzGZnmZ5tHTJg=s800-c-k-c0xffffffff-no-rj-mo	UCMz2wIhvnCeJaESEnnhLQpA	2020-01-26 19:48:32.928289+03	f	\N	\N	0
437	\N	Krovavy	Mech	https://sun6-19.userapi.com/c858032/v858032146/fd121/5DA-ED4oHjI.jpg?ava=1	502131689	2020-01-26 19:48:48.763682+03	f	\N	\N	0
404	\N	Danil	Komarov	https://sun9-55.userapi.com/c845120/v845120571/107056/Mi87kDOt8G4.jpg?ava=1	320830089	2020-01-26 19:44:31.365104+03	f	\N	\N	3
457	\N	Egor	Arkhipov	https://sun9-45.userapi.com/c851428/v851428332/13cc99/keL2TOXxlZM.jpg?ava=1	216607162	2020-01-26 19:59:48.297462+03	f	\N	\N	0
440	kaka2019	Denis	Kopytin	https://sun9-62.userapi.com/c855536/v855536902/ab654/iBXOBveams0.jpg?ava=1	378277130	2020-01-26 19:52:01.468131+03	f	\N	\N	0
442	XaunoBbIu 	Nikita	Kuzmin	https://vk.com/images/camera_200.png?ava=1	441176332	2020-01-26 19:52:19.912209+03	f	\N	\N	1
445	\N	Alexander	Karpievich	https://sun9-29.userapi.com/c855616/v855616378/80b75/znsGI7ZS0Yg.jpg?ava=1	396628336	2020-01-26 19:53:16.117299+03	f	\N	\N	0
452	mafiozi6789	Nikita Flouu	\N	https://lh4.googleusercontent.com/-wiVlciYhduo/AAAAAAAAAAI/AAAAAAAAAAA/ACHi3rdv5DbIct75uyQGsWIDAKB1dejolA/photo.jpg	UCP6htZPbdk542ydRAQcYnOw	2020-01-26 19:55:58.276668+03	f	\N	\N	0
410	\N	Petr	Slav	https://sun6-19.userapi.com/c849036/v849036980/f1f9a/cmdO1QYIRtw.jpg?ava=1	200457683	2020-01-26 19:45:03.853133+03	f	\N	\N	1
447	\N	Bartley	\N	https://yt3.ggpht.com/a/AGF-l7-izkHn66CgARmQA14jcEiJ9iQfQ8rFaf0EPA=s800-c-k-c0xffffffff-no-rj-mo	UCYD4AI-2L4gUA_hIVLLmteA	2020-01-26 19:53:33.846464+03	f	\N	\N	0
439	\N	Позитивный Кирилл	\N	https://yt3.ggpht.com/a/AGF-l7_3VLYzVBcw0pMDGAYhi-Z78SahuXiZHhstlw=s800-c-k-c0xffffffff-no-rj-mo	UCfJ_ad-xQp7dE19PVPkJKeQ	2020-01-26 19:51:32.805638+03	f	\N	\N	2
451	\N	Роман	\N	https://yt3.ggpht.com/a/AGF-l7_50JyL08AUFdsDpqFhEdJMVc5VOpI4OEbG_g=s800-c-k-c0xffffffff-no-rj-mo	UCjeL6aIvB3jZ12dG599QiIA	2020-01-26 19:55:24.992636+03	f	\N	\N	0
362	артем	ТЕМА ОФФНИК	\N	https://lh4.googleusercontent.com/-cqCcfDjeTqU/AAAAAAAAAAI/AAAAAAAAAAA/ACHi3rdUxqm78GZ12xJ1NzKn4NQWVqO6sA/photo.jpg	UCEQkKZoKRqsCRphHUlbktuw	2020-01-26 19:34:40.746596+03	f	\N	\N	3
465	\N	Andrey	Skrygan	https://sun9-12.userapi.com/c855332/v855332598/1a8122/lvt_QXXv19M.jpg?ava=1	450783100	2020-01-26 20:03:50.418037+03	f	\N	\N	0
453	\N	David	Avakyan	https://sun6-16.userapi.com/rNoKGFDmDdmZKOcy6j5Rj32AyPCFUkJapib0fg/9n451Njp1to.jpg?ava=1	419201472	2020-01-26 19:56:23.995818+03	f	\N	\N	0
415	\N	Vlad	Matyunin	https://sun9-51.userapi.com/c849432/v849432567/22f3/6SvrAsPhc88.jpg?ava=1	261510045	2020-01-26 19:45:19.880373+03	f	\N	\N	3
435	\N	Daniil	Dolgopolov	https://sun9-10.userapi.com/c852224/v852224172/14c53a/rLcROBIXgaY.jpg?ava=1	506386402	2020-01-26 19:48:21.170355+03	f	\N	\N	2
455	\N	Артём Павлов	\N	https://yt3.ggpht.com/a/AGF-l7_b06YkBClucIzbLJ5sVUhXzkgFRCzEVeMKWw=s800-c-k-c0xffffffff-no-rj-mo	UCSn4KSm5rNeksEHdJJ4jSRQ	2020-01-26 19:57:02.612127+03	f	\N	\N	0
422	\N	Vladislav	Yurchuk	https://sun9-63.userapi.com/c852236/v852236272/1d3052/4MxWQnjaUkE.jpg?ava=1	147213167	2020-01-26 19:46:29.827446+03	f	\N	\N	1
460	\N	Alexander	Kolyazin	https://sun9-27.userapi.com/c857728/v857728980/2a388/g9N_NMXb-48.jpg?ava=1	233178195	2020-01-26 20:01:00.196951+03	f	\N	\N	0
450	\N	Alexander	Vasilyev	https://sun9-26.userapi.com/c858028/v858028711/21c6e/cy7pDnXlda8.jpg?ava=1	482890485	2020-01-26 19:55:00.026277+03	f	\N	\N	3
458	\N	Max Konstantinov	\N	https://yt3.ggpht.com/a/AGF-l786wp9VM1qfzVmyuv050RZHtUHbpR6nVh6TeA=s800-c-k-c0xffffffff-no-rj-mo	UCPfqUqkt0jerIseR4NDDU-Q	2020-01-26 20:00:52.888832+03	f	\N	\N	0
459	\N	David	Romanov	https://sun9-69.userapi.com/c846018/v846018547/1e8c4a/fl__DxGSgq4.jpg?ava=1	393948453	2020-01-26 20:00:59.329404+03	f	\N	\N	0
463	\N	Denis	Tiunchik	https://sun9-70.userapi.com/c846417/v846417772/1ba0cb/xdzXZof4p9w.jpg?ava=1	336282831	2020-01-26 20:02:43.660941+03	f	\N	\N	1
462	\N	Andrey	Likhoradov	https://sun9-28.userapi.com/c858532/v858532035/70fad/JRIcNzDWX7I.jpg?ava=1	244167112	2020-01-26 20:01:39.224275+03	f	\N	\N	0
461	kolyaMIX	Kolya	Nikolin	https://sun9-34.userapi.com/c205520/v205520508/4a322/Qy1tSmNgGRE.jpg?ava=1	532123293	2020-01-26 20:01:22.284014+03	f	\N	\N	4
438	\N	Ve	Rong	https://sun6-13.userapi.com/c852224/v852224930/1e519e/RILFBdGKuO4.jpg?ava=1	564808556	2020-01-26 19:49:08.811547+03	f	\N	\N	3
464	\N	Magomed	Ullaev	https://sun9-16.userapi.com/c846221/v846221393/17833f/Zwj-kaYplRU.jpg?ava=1	526415871	2020-01-26 20:02:45.072142+03	f	\N	\N	0
420	\N	Gil Ail	\N	https://yt3.ggpht.com/a/AGF-l78PZeaHKX_hE-ZJy85oQ3-LAWUYL_UUnTmFEQ=s800-c-k-c0xffffffff-no-rj-mo	UCJsY9alt4hARF2_nIjdZ10w	2020-01-26 19:46:18.777866+03	f	\N	\N	3
471	\N	Andrey	Selyuzhenkov	https://sun9-23.userapi.com/c858532/v858532010/44c64/I0CVfQEfjs8.jpg?ava=1	477857239	2020-01-26 20:07:03.614971+03	f	\N	\N	0
444	4eLoBeK_He_Opeх	Cristy	Cris	https://sun9-45.userapi.com/c849424/v849424888/19f8cc/cOjRYQBsNS0.jpg?ava=1	497554396	2020-01-26 19:53:12.910527+03	f	\N	\N	1
446	Odinochka	Sasha	Andreev	https://sun6-19.userapi.com/c853528/v853528239/1c907a/2yZrVQ9As2A.jpg?ava=1	371609652	2020-01-26 19:53:22.164093+03	f	\N	\N	1
433	\N	Roman	Abdulin	https://sun9-11.userapi.com/c837127/v837127566/57d46/ct7ya63mA_0.jpg?ava=1	279613566	2020-01-26 19:48:19.006583+03	f	\N	\N	3
448	\N	MrLuko Channel	\N	https://yt3.ggpht.com/a/AGF-l7_cx_4hi_exoeBbjnZ7LAj486JNsBKkErDxdA=s800-c-k-c0xffffffff-no-rj-mo	UCikqQj8H63sSs556yM1R6fQ	2020-01-26 19:53:53.063998+03	f	\N	\N	1
419	mastep_pob_TO	Vitya	Korkin	https://sun9-18.userapi.com/c841631/v841631316/abb7/rku2lV3jnZY.jpg?ava=1	388384996	2020-01-26 19:45:55.361312+03	f	\N	\N	1
454	\N	Nikita	Avdeykin	https://vk.com/images/camera_200.png?ava=1	309093590	2020-01-26 19:56:49.895687+03	f	\N	\N	1
443	\N	Pavel	Matsuk	https://sun9-17.userapi.com/c844616/v844616059/1ddd8d/6mvnmCVKkkg.jpg?ava=1	338413691	2020-01-26 19:53:12.553039+03	f	\N	\N	1
467	\N	Саша Черноморец	\N	https://yt3.ggpht.com/a/AGF-l7-Useq_UxB7M-mZTmRfO95FdLVl2Ll94oboIg=s800-c-k-c0xffffffff-no-rj-mo	UCiGixjgfq_MI3gOqdeRj5_A	2020-01-26 20:04:40.993738+03	f	\N	\N	0
449	tofik	K Kk	\N	https://yt3.ggpht.com/a/AGF-l78V5whjx4kvj14hYqQRHel7MG7Zcew3Z4puPw=s800-c-k-c0xffffffff-no-rj-mo	UCZjNIHPU3H3gk5X-oMCtBRw	2020-01-26 19:53:56.177581+03	f	\N	\N	4
472	HappytMaster	Andrey	Belyakov	https://sun9-53.userapi.com/c854424/v854424887/1c0a75/YqsA94Fk4ak.jpg?ava=1	461775567	2020-01-26 20:07:58.730089+03	f	\N	\N	0
470	\N	Антон Карпов	\N	https://yt3.ggpht.com/a/AGF-l78vwGbAJvAkXB2FcBMH1CQkqECu0B8Dm9YXVQ=s800-c-k-c0xffffffff-no-rj-mo	UCCC_dRONp3ZqOfdnXahubVw	2020-01-26 20:06:28.605956+03	f	\N	\N	3
485	\N	V V K	\N	https://yt3.ggpht.com/a/AGF-l7_DXL4tpO69huYlK0B4XQxfmFTIvITdo-YXaQ=s800-c-k-c0xffffffff-no-rj-mo	UCNZ2b8Vm7E_MvM3UwpnQQ-w	2020-01-26 20:22:50.567969+03	f	\N	\N	0
490	\N	Артём Шамин	\N	https://yt3.ggpht.com/a/AGF-l7-0DGoNsJ4EykbgIEMu0zjPROovgyUmhQjWYQ=s800-c-k-c0xffffffff-no-rj-mo	UCeLrwtsqqb8i8Uaa1RprDpQ	2020-01-26 20:23:37.824904+03	f	\N	\N	0
498	Slava) 	Slava	Tikhonov	https://sun9-65.userapi.com/c854016/v854016571/1b71cc/1MSOZ2z8VWk.jpg?ava=1	530801033	2020-01-26 20:28:36.007039+03	f	\N	\N	0
484	\N	Artem	Alexandrovich	https://sun9-51.userapi.com/c856124/v856124573/199218/DhhBJXZ-v0c.jpg?ava=1	383662975	2020-01-26 20:22:47.212407+03	f	\N	\N	0
469	APGRADE	Valik	Prokhorenko	https://sun9-16.userapi.com/c850728/v850728143/83608/dx2iYj71KyM.jpg?ava=1	233295003	2020-01-26 20:05:08.337692+03	f	\N	\N	1
483	\N	Vlad	Korobkov	https://sun6-13.userapi.com/c629406/v629406106/2fe10/I2xoqmOSAfs.jpg?ava=1	222632106	2020-01-26 20:22:20.907959+03	f	\N	\N	1
468	\N	Igor	Goncharenko	https://sun9-28.userapi.com/c854528/v854528511/19cd0d/WQIdFwedGF4.jpg?ava=1	573687747	2020-01-26 20:05:04.968622+03	f	\N	\N	1
493	Daniel_RUSIA	Daniel	Grigorovich	https://sun9-36.userapi.com/c626722/v626722358/11c69/kYmZP6Y2I78.jpg?ava=1	343962358	2020-01-26 20:25:26.12727+03	f	\N	\N	0
466	\N	Sasha Restart	\N	https://yt3.ggpht.com/a/AGF-l7_5YcChyNjvYMia2bAXu6gv4U8kp_iGpAElgA=s800-c-k-c0xffffffff-no-rj-mo	UCwAZuP91vF0QxU5qd4tPTCw	2020-01-26 20:04:34.460202+03	f	\N	\N	3
478	\N	Pasha	Kozich	https://sun9-27.userapi.com/c844520/v844520562/758c9/QCU-hPLDOwE.jpg?ava=1	301705498	2020-01-26 20:14:08.286803+03	f	\N	\N	1
523	\N	Don	Marin	https://sun9-44.userapi.com/c858428/v858428198/d219b/Wdiuc94rO1c.jpg?ava=1	567212738	2020-01-26 21:06:03.776996+03	f	\N	\N	2
475	\N	Krastu _	\N	https://yt3.ggpht.com/a/AGF-l7-2KUEtUho0RyYwTtQLIB0r70mSVdz4z6gYww=s800-c-k-c0xffffffff-no-rj-mo	UC8ejH5Pwfyn3ro2jERCmfRg	2020-01-26 20:10:58.001747+03	f	\N	\N	2
477	\N	Andrey	Ognev	https://vk.com/images/camera_200.png?ava=1	234659713	2020-01-26 20:11:46.890207+03	f	\N	\N	1
480	\N	Дмитро Ващук	\N	https://yt3.ggpht.com/a/AGF-l79itsbeRTnCqMQwUjC3fjMZe-Eh95SlBtgq8A=s800-c-k-c0xffffffff-no-rj-mo	UCeNZlUQfxcPHsK64pDhsi1A	2020-01-26 20:19:00.481378+03	f	\N	\N	0
502	\N	Maxim	Kochetkov	https://sun9-35.userapi.com/c845218/v845218578/7c2d2/l5fbfs7yp1U.jpg?ava=1	333078705	2020-01-26 20:30:50.67208+03	f	\N	\N	0
474	\N	Ivan	Ivanov	https://vk.com/images/camera_200.png?ava=1	361597673	2020-01-26 20:10:19.302955+03	f	\N	\N	0
481	\N	Dmitry	Chechikov	https://vk.com/images/camera_200.png?ava=1	398880041	2020-01-26 20:20:56.753318+03	f	\N	\N	0
503	\N	Vahe Davtyan	\N	https://yt3.ggpht.com/a/AGF-l7_kKwkjpVqVJJ2TlOO2H7gJ3nmNtn12-zfKzQ=s800-c-k-c0xffffffff-no-rj-mo	UCEGbGr3sZBRTL66ea6s6hGg	2020-01-26 20:31:03.149452+03	f	\N	\N	0
482	\N	Georgy	Chernobrovin	https://sun6-16.userapi.com/c848532/v848532315/71ed7/QvWFq_DNYho.jpg?ava=1	197420801	2020-01-26 20:20:58.050022+03	f	\N	\N	0
473	\N	Ilyas	Bik-Mak	https://sun9-37.userapi.com/c206628/v206628266/18ac6/Fs1SyoJuhbc.jpg?ava=1	460300237	2020-01-26 20:10:16.655357+03	f	\N	\N	1
504	\N	Zhenya	Lysukhin	https://sun9-62.userapi.com/c856024/v856024822/1d3ebf/aeDTNVDKYEg.jpg?ava=1	531108468	2020-01-26 20:32:45.237531+03	f	\N	\N	0
488	\N	про фан	\N	https://yt3.ggpht.com/a/AGF-l7_q00ytjSrLhUMoyvMEs4ch1jmDfi2GLuuyjQ=s800-c-k-c0xffffffff-no-rj-mo	UCPdxXVcAQ0h8xT8CXBaIVeg	2020-01-26 20:23:25.685134+03	f	\N	\N	0
489	\N	Max	Sergeev	https://sun9-52.userapi.com/c850424/v850424559/11068c/Y_eni6-dqEI.jpg?ava=1	270633616	2020-01-26 20:23:26.942198+03	f	\N	\N	0
505	\N	Mrjake	Freez	https://sun6-13.userapi.com/c854328/v854328755/b5895/MVvo19mrikA.jpg?ava=1	538362439	2020-01-26 20:33:07.182844+03	f	\N	\N	0
487	YuraMIXX	Yury	Pidanov	https://sun9-30.userapi.com/c858420/v858420927/14c720/uhuyqcNVh6k.jpg?ava=1	411247038	2020-01-26 20:23:17.721949+03	f	\N	\N	2
486	NomakKG	Anton	Khodchenko	https://sun9-48.userapi.com/c200728/v200728983/3912c/c1fq-Wr566E.jpg?ava=1	188320258	2020-01-26 20:23:11.924418+03	f	\N	\N	3
491	\N	Kamil	Ramazanov	https://sun9-45.userapi.com/c852036/v852036884/11a796/XCEx23w6tIk.jpg?ava=1	214273098	2020-01-26 20:24:23.394181+03	f	\N	\N	0
492	\N	Igor	Minchenkov	https://sun6-13.userapi.com/c858020/v858020200/f5969/QJyz3_KpTd4.jpg?ava=1	256620259	2020-01-26 20:24:52.248368+03	f	\N	\N	0
495	\N	Artem	Novitsky	https://sun9-14.userapi.com/c855416/v855416831/1afda1/MtvumLVcUTo.jpg?ava=1	316821713	2020-01-26 20:27:29.546809+03	f	\N	\N	0
494	\N	Maxim	Kostenko	https://sun9-12.userapi.com/c856028/v856028239/1558b6/6gjhdn1esz4.jpg?ava=1	258040584	2020-01-26 20:26:02.173609+03	f	\N	\N	0
496	\N	Андрей Пашков	\N	https://yt3.ggpht.com/a/AGF-l79nXZnuXCKLOdMuFrPu8lvMasDH0HsX8DqjpA=s800-c-k-c0xffffffff-no-rj-mo	UCvV7rAixFZwFD8k67sUHsSg	2020-01-26 20:27:50.084411+03	f	\N	\N	0
499	OTcTyTTHuk	Эфан Решётков	\N	https://yt3.ggpht.com/a/AGF-l7-LsK9dpRFa9V1U8iz1WtLsz8TnBH6Q3IPTQA=s800-c-k-c0xffffffff-no-rj-mo	UChGm5KyX-F5bO5Z-45c6HLg	2020-01-26 20:29:08.315258+03	f	\N	\N	0
516	WellFlex	Alexander	Ban	https://sun9-28.userapi.com/c845218/v845218062/1b3c93/x0hXg-18FBc.jpg?ava=1	511742596	2020-01-26 20:45:02.512606+03	f	\N	\N	2
513	\N	Chernook	\N	https://yt3.ggpht.com/a/AGF-l78zSxoMHexV38yHdAP2JTo6rOzDJ2FU9kOkIQ=s800-c-k-c0xffffffff-no-rj-mo	UCaViySaoUCSZK75Dq6LHtKw	2020-01-26 20:41:00.160399+03	f	\N	\N	0
514	\N	Vladislav	Vasilyev	https://sun9-71.userapi.com/c856128/v856128621/133fb8/A26Sd2TBM94.jpg?ava=1	146699597	2020-01-26 20:42:40.150571+03	f	\N	\N	0
507	\N	vladosik3 1	\N	https://yt3.ggpht.com/a/AGF-l79UPVoXmjYB8e7Y486yFkk2UFU-GuLWejtF-w=s800-c-k-c0xffffffff-no-rj-mo	UCwS-T770rmKxWebll5YBOQA	2020-01-26 20:35:51.47582+03	f	\N	\N	0
510	\N	Shakhboz	Normurodov	https://sun9-46.userapi.com/c206628/v206628242/29205/M2VKO6QDw4k.jpg?ava=1	550632104	2020-01-26 20:37:52.613756+03	f	\N	\N	0
515	\N	Alexey	Chudorin	https://sun9-62.userapi.com/c858328/v858328289/7c4e6/RTR8uAOJgvk.jpg?ava=1	345780821	2020-01-26 20:43:02.970814+03	f	\N	\N	0
512	\N	Kirill	Bobkov	https://sun9-50.userapi.com/c854416/v854416012/1cf0c8/iI96z-7TJyg.jpg?ava=1	323084480	2020-01-26 20:39:52.211008+03	f	\N	\N	0
511	XxXMeMXxX	Artur	Shumsky	https://sun9-66.userapi.com/c854216/v854216254/1cbaa6/_S3EzfgdSyw.jpg?ava=1	498301660	2020-01-26 20:39:42.842958+03	f	\N	\N	0
509	\N	Egor Pavlov	\N	https://yt3.ggpht.com/a/AGF-l79sjlPuDnYVpIoQgKQiya2HdUGQneG6RHGKxw=s800-c-k-c0xffffffff-no-rj-mo	UCLaPXuhYYjVoH_lsdJO3bzA	2020-01-26 20:36:11.34246+03	f	\N	\N	0
518	\N	Prosto	Arman	https://sun9-51.userapi.com/c846122/v846122039/1283fa/vxtZOLzNYfY.jpg?ava=1	463789231	2020-01-26 20:48:50.116555+03	f	\N	\N	1
497	\N	Alexander	Gordeev	https://sun9-68.userapi.com/c631624/v631624919/1dc74/lj9ycoTF3Fs.jpg?ava=1	166609919	2020-01-26 20:28:16.164979+03	f	\N	\N	1
520	\N	Daniar	Usmanov	https://sun9-4.userapi.com/c849528/v849528976/a0f5/fygi3DT2kts.jpg?ava=1	267108900	2020-01-26 20:59:48.010031+03	f	\N	\N	0
521	\N	Konstantin	Konovalenko	https://vk.com/images/camera_200.png?ava=1	268679623	2020-01-26 21:00:58.934195+03	f	\N	\N	0
441	\N	Maxim	Shvarts	https://sun6-13.userapi.com/c852220/v852220068/1e079a/xeWM2y5LE74.jpg?ava=1	524947087	2020-01-26 19:52:04.567338+03	f	\N	\N	5
519	\N	Maria	Maximovna	https://sun9-40.userapi.com/c847124/v847124803/191d32/pKL1G2ud1n0.jpg?ava=1	530224759	2020-01-26 20:52:25.928255+03	f	\N	\N	5
506	\N	Nikita	Karpukhin	https://sun9-15.userapi.com/c857428/v857428859/d93e7/5pQmc9D7alM.jpg?ava=1	343294036	2020-01-26 20:33:28.858583+03	f	\N	\N	1
524	\N	Oleg	Safonov	https://sun9-60.userapi.com/c854020/v854020541/11d9b6/GdMT8v-K0Gk.jpg?ava=1	272494922	2020-01-26 21:07:44.147232+03	f	\N	\N	0
456	Tank	Владеслав Мороз	\N	https://yt3.ggpht.com/a/AGF-l7-oSr-UZ-fhyQXWYLcy80m4QhYVeUItreMnKQ=s800-c-k-c0xffffffff-no-rj-mo	UCUP0WGxC44DhjNFYh19jioQ	2020-01-26 19:59:33.620262+03	f	\N	\N	2
508	\N	Ермак Бо	\N	https://lh4.googleusercontent.com/-IcP7r62Wcf8/AAAAAAAAAAI/AAAAAAAAAAA/ACHi3rdv4G5pe09g6stl0TBblP1PnOWnJQ/photo.jpg	UCjkf4U0EO-1J_cmp6FdB3DQ	2020-01-26 20:36:03.260313+03	f	\N	\N	1
501	♡кексы	Игровой канал Neyron	\N	https://yt3.ggpht.com/a/AGF-l7__-W5IHH-YV7FRcoCF3sPwiDcUtfOyDyRHhw=s800-c-k-c0xffffffff-no-rj-mo	UCFB0y2ORr7pnC6zVH5udgyQ	2020-01-26 20:30:39.629029+03	f	\N	\N	3
476	\N	Kolya	Galkin	https://vk.com/images/camera_200.png?ava=1	492176252	2020-01-26 20:11:18.175151+03	f	\N	\N	1
500	12jjjjgj	Denis	Krasnoborov	https://sun9-11.userapi.com/c858216/v858216067/1503cb/dm6aTucfhgw.jpg?ava=1	333526734	2020-01-26 20:29:26.690331+03	f	\N	\N	3
479	\N	Philip	Marvin	https://sun6-13.userapi.com/c857236/v857236112/9b4c2/_o34NdNqxNk.jpg?ava=1	446615056	2020-01-26 20:15:29.741838+03	f	\N	\N	1
517	\N	Ivan	Novikov	https://sun6-13.userapi.com/c855120/v855120263/1d1fa1/h6je8HxApZg.jpg?ava=1	334689377	2020-01-26 20:48:32.286253+03	f	\N	\N	0
553	\N	Vanek	Kalashnikov	https://sun9-24.userapi.com/c855320/v855320468/11fcf3/9RI8x4e9eS8.jpg?ava=1	561457921	2020-01-27 03:33:18.498367+03	f	\N	\N	0
544	\N	Nevedimka _Brawl stars_	\N	https://yt3.ggpht.com/a/AGF-l79bPFv4EfpCOy1MeLnwry9WXUApftbJX6mxzw=s800-c-k-c0xffffffff-no-rj-mo	UC4NC9itRrBCiShHJHrF2tNA	2020-01-26 23:41:02.319024+03	f	\N	\N	1
556	\N	Maxim	Solova	https://sun6-14.userapi.com/c204828/v204828242/2c534/k0n6z4zoZ1A.jpg?ava=1	365399119	2020-01-27 07:44:49.342518+03	f	\N	\N	1
522	Flint	Valentin	Dyadka	https://sun9-58.userapi.com/c621701/v621701895/8e101/WQ30Sv-wNX8.jpg?ava=1	482874272	2020-01-26 21:03:57.472103+03	f	\N	\N	2
525	\N	Denis	Platonov	https://sun9-51.userapi.com/c849524/v849524695/1dabe9/74ubslUmmt0.jpg?ava=1	420719376	2020-01-26 21:11:52.347426+03	f	\N	\N	3
542	Muxalych	Ivan	Nogovitsin	https://sun6-13.userapi.com/c846521/v846521181/158d6f/GfMtMfy77cY.jpg?ava=1	487790700	2020-01-26 23:33:53.867482+03	f	\N	\N	2
528	\N	Bronz Channel	\N	https://yt3.ggpht.com/a/AGF-l7-3SUwLxzfHD_M7XXV093k3Hg-Q7FkVN15Ugw=s800-c-k-c0xffffffff-no-rj-mo	UCLVqXDgD4ewTk-e2LwKvl0A	2020-01-26 21:32:57.818603+03	f	\N	\N	0
526	\N	Kirill	Semibratov	https://sun9-16.userapi.com/c845219/v845219096/1e8a42/p7-8IdOfZHw.jpg?ava=1	338124774	2020-01-26 21:20:36.654525+03	f	\N	\N	1
531	\N	John Wilson	\N	https://yt3.ggpht.com/a/AGF-l7-pf-25aJ3EJ5WpZboxrwmP_gD0B-doB_XWKw=s800-c-k-c0xffffffff-no-rj-mo	UCdO2-iFcV0nJnMFdwvY2eIA	2020-01-26 21:48:39.781436+03	f	\N	\N	0
532	\N	Vanya	Tkachyov	https://sun6-19.userapi.com/c852120/v852120279/1c30ad/P61WhkNWWbg.jpg?ava=1	401422622	2020-01-26 21:50:53.048751+03	f	\N	\N	0
527	\N	Антон Сорока	\N	https://yt3.ggpht.com/a/AGF-l78XQG35mTosBXL2ZkEThfaFscjd8G10RwVqYg=s800-c-k-c0xffffffff-no-rj-mo	UCPRB8wi4uTAw8IgYQzxJu3g	2020-01-26 21:22:00.543295+03	f	\N	\N	0
529	\N	Vladislav	Danilov	https://sun9-59.userapi.com/c206528/v206528812/3608e/xkOQjJlSlGw.jpg?ava=1	423167807	2020-01-26 21:42:22.764813+03	f	\N	\N	2
533	\N	Maxim	Zelinsky	https://sun9-56.userapi.com/c844417/v844417150/8cf6a/qacLuSgZJWg.jpg?ava=1	359326650	2020-01-26 22:04:24.448022+03	f	\N	\N	0
534	\N	Denis	Dyagilev	https://sun9-36.userapi.com/c858328/v858328681/134977/YK3m4-tKAi4.jpg?ava=1	223179835	2020-01-26 22:06:12.2042+03	f	\N	\N	0
536	\N	Kirill	Iovlev	https://sun9-18.userapi.com/c857216/v857216658/11274/3UP6y59PgdI.jpg?ava=1	154617205	2020-01-26 22:34:35.707175+03	f	\N	\N	0
537	\N	Akim	Sevastopolev	https://sun9-4.userapi.com/c855636/v855636407/b36d6/AEZ1ZhYa0f0.jpg?ava=1	471783525	2020-01-26 22:35:22.116552+03	f	\N	\N	0
547	\N	anon anon	\N	https://yt3.ggpht.com/a/AGF-l78R-bJkEhWSaRHxTFQq7XYLJ2mGW8n4FqoRKg=s800-c-k-c0xffffffff-no-rj-mo	UCzjqFwpBJ18pmh2d93W4DFQ	2020-01-27 00:04:43.348166+03	f	\N	\N	1
538	 	Bogdan	Buchma	https://sun9-21.userapi.com/c638819/v638819754/1c4fd/osHsbvLMV38.jpg?ava=1	216060754	2020-01-26 22:57:27.807711+03	f	\N	\N	1
540	\N	Ivan Ievlev	\N	https://yt3.ggpht.com/a/AGF-l79joeh-gvkvJ3wO3EqB2OX-VRUzjOvWpAXv_w=s800-c-k-c0xffffffff-no-rj-mo	UCb4pQSz9B5HbutKcGme2WoA	2020-01-26 23:15:58.350035+03	f	\N	\N	0
539	\N	amigos s	\N	https://yt3.ggpht.com/a/AGF-l7-LyDlOiR58eL2mxSEFK3r-c4S34VkbIjqJcQ=s800-c-k-c0xffffffff-no-rj-mo	UC13FOYjWTRJMDL66aq0hh4w	2020-01-26 23:12:39.593752+03	f	\N	\N	1
543	KRUTOY_RELSOVOD	Oleg	Danilov	https://sun6-14.userapi.com/c857528/v857528903/137152/q0IELBZwGzc.jpg?ava=1	365007407	2020-01-26 23:34:06.676073+03	f	\N	\N	4
548	\N	dinwayt	\N	https://yt3.ggpht.com/a/AGF-l782XYh_BnuvyEUMjHwVgoNPeyI4ubf3fpfttw=s800-c-k-c0xffffffff-no-rj-mo	UCnm9ipecqFzLmwUWgz_Va8Q	2020-01-27 00:41:44.425995+03	f	\N	\N	0
557	\N	Dima	Essaulov	https://sun9-40.userapi.com/c850416/v850416224/7f734/KvavPoFLLgM.jpg?ava=1	251675225	2020-01-27 08:59:55.344519+03	f	\N	\N	5
545	Eksayron	Dima	Eksay	https://sun9-12.userapi.com/c858332/v858332391/153071/ZfiZHn-4k_E.jpg?ava=1	573865891	2020-01-26 23:42:42.109271+03	f	\N	\N	0
549	\N	Kirill	Zinovyev	https://sun9-22.userapi.com/c848732/v848732657/188ef1/O73Lzx3NHGw.jpg?ava=1	207051507	2020-01-27 01:11:16.243583+03	f	\N	\N	0
558	\N	Konstantin	Suslov	https://sun9-15.userapi.com/c204716/v204716202/197db/lf06035wn98.jpg?ava=1	200957641	2020-01-27 09:08:46.473633+03	f	\N	\N	0
550	МАК	Vagan	Makhalov	https://sun9-9.userapi.com/c854528/v854528509/1921a5/JsCa1zw_zVs.jpg?ava=1	406274281	2020-01-27 01:37:22.104068+03	f	\N	\N	1
559	\N	Yaroslav	Milkoto	https://sun9-27.userapi.com/c834301/v834301874/19e6c0/hN28zAjjcHU.jpg?ava=1	433496348	2020-01-27 09:11:51.401475+03	f	\N	\N	0
530	\N	Sanokovan ПТ	\N	https://yt3.ggpht.com/a/AGF-l7_n4eEsUPjHlkgHfIPdWmxeLsoAT8GcPb6mPQ=s800-c-k-c0xffffffff-no-rj-mo	UC8ll8wVUfVT3wkOsE4wbGaw	2020-01-26 21:46:07.393081+03	f	\N	\N	1
552	\N	Erik Bubeev	\N	https://yt3.ggpht.com/a/AGF-l7-8eSgCViVnqZXdf-J2CQv785xkuwwQLVpPbA=s800-c-k-c0xffffffff-no-rj-mo	UCQ5bX-zZW__yyz9uEyhDLIg	2020-01-27 02:43:02.152688+03	f	\N	\N	0
560	\N	Radif	Farrakhov	https://sun9-46.userapi.com/c206720/v206720301/364e3/FmCyEYIjy9A.jpg?ava=1	443185285	2020-01-27 09:25:06.43044+03	f	\N	\N	1
554	\N	Matvey	Svakhin	https://sun9-27.userapi.com/c851532/v851532185/118909/Nd9BbqsUKGk.jpg?ava=1	340588380	2020-01-27 05:44:22.341871+03	f	\N	\N	0
566	\N	Alexander	Bond	https://sun9-34.userapi.com/c844618/v844618236/1e2fc6/H2iRRQKIq4Y.jpg?ava=1	217087363	2020-01-27 11:27:39.634087+03	f	\N	\N	2
561	Didzio_PRO	Bogdan	Lavrenyuk	https://sun9-22.userapi.com/c853524/v853524299/179337/bk6YxGbTgpo.jpg?ava=1	571325958	2020-01-27 10:05:52.462942+03	f	\N	\N	0
563	\N	Artur	Perov	https://sun9-29.userapi.com/c852216/v852216626/87f00/Xx1n4UvTmyU.jpg?ava=1	281815987	2020-01-27 10:20:06.714734+03	f	\N	\N	0
656	\N	Dima	\N	https://yt3.ggpht.com/a/AGF-l7-XTCKfk603e06_R7qoGYVqR4ZAvGRu3ykOOg=s800-c-k-c0xffffffff-no-rj-mo	UCK_kI9mVEBRMCrHrUa9JY9A	2020-02-01 17:16:21.280849+03	f	\N	\N	0
564	\N	Rostik Rurak	\N	https://yt3.ggpht.com/a/AGF-l7-HClcCtPkVxgS0NqDb3zHQTiEX1nO2MWt6RA=s800-c-k-c0xffffffff-no-rj-mo	UCltGUiPeMrzYmlLYFbpLovQ	2020-01-27 10:51:14.711701+03	f	\N	\N	1
565	\N	Даня Прийма	\N	https://yt3.ggpht.com/a/AGF-l78KqVgMSoOld1uLEOgysZaBye2Sn0xxhdZWmA=s800-c-k-c0xffffffff-no-rj-mo	UCapkbACCez3qiUEtVmwPj7A	2020-01-27 11:14:36.920055+03	f	\N	\N	0
568	\N	Danil	Loginov	https://sun9-68.userapi.com/c206828/v206828613/11d9f/Ostvg05OcLU.jpg?ava=1	459577364	2020-01-27 12:41:45.691613+03	f	\N	\N	0
567	\N	Bulat	Akhmetshin	https://sun9-53.userapi.com/c856136/v856136405/1bd6b4/VubRdYfVRXQ.jpg?ava=1	193973881	2020-01-27 11:42:39.108262+03	f	\N	\N	0
562	Sunday	Bogdan	Smirnov	https://vk.com/images/camera_200.png?ava=1	486038130	2020-01-27 10:06:04.287668+03	f	\N	\N	0
551	Твой ДЕД	Evgeny	Danilenkov	https://sun9-47.userapi.com/c206816/v206816744/2a860/G3s4TLlhuyM.jpg?ava=1	365129662	2020-01-27 01:59:28.039053+03	f	\N	\N	1
535	\N	Эмир Харабулаев	\N	https://yt3.ggpht.com/a/AGF-l79Yg6qQa0GCp8j0u8YbfyWL8E-IvZyJj5a7GQ=s800-c-k-c0xffffffff-no-rj-mo	UCv9UJrH8VTuJm6FKVJ_zLEw	2020-01-26 22:28:41.518628+03	f	\N	\N	1
657	\N	Vitali	Bogusevschi	https://sun9-69.userapi.com/c855616/v855616929/1ceef3/nsLivHANOic.jpg?ava=1	538732892	2020-02-01 17:16:23.541139+03	f	\N	\N	0
594	\N	Roman	Kuzmenko	https://sun9-5.userapi.com/c205424/v205424800/4c493/K0JG1ISYxdo.jpg?ava=1	476137928	2020-01-28 09:38:07.584552+03	f	\N	\N	0
585	KimastorGamer	Kimastor	\N	https://yt3.ggpht.com/a/AGF-l7-lt7px2j8fiUVO5MEpsL9C8XROGRvfNjow3g=s800-c-k-c0xffffffff-no-rj-mo	UCK-iDd90wiii51q2t4L5pzA	2020-01-27 22:12:00.356013+03	f	\N	\N	1
555	Ego_bogen	Чоткий паца	\N	https://yt3.ggpht.com/a/AGF-l7_dsSnIgpp1OSHY31L0zxVqqfuTow7vBLhgOQ=s800-c-k-c0xffffffff-no-rj-mo	UC_em2ya9IvzV5ZuIg-Yy1tA	2020-01-27 07:22:23.432531+03	f	\N	\N	2
569	\N	Sakhil	Ragimov	https://sun9-28.userapi.com/c848636/v848636543/98b0a/4zznZZXbv3Q.jpg?ava=1	226964739	2020-01-27 15:26:50.072451+03	f	\N	\N	1
586	\N	Тимур Острохов	\N	https://yt3.ggpht.com/a/AGF-l79te-EhNFjB3G05T6jSP4QCT9xz5UV4LFlIKA=s800-c-k-c0xffffffff-no-rj-mo	UCcYTqHINXUb4Ab_ZFrixn0Q	2020-01-27 22:43:16.423358+03	f	\N	\N	0
587	\N	Dima	Dimitrov	https://sun6-13.userapi.com/c857120/v857120261/9c570/PYJELF-mxTQ.jpg?ava=1	443366708	2020-01-27 23:07:52.499807+03	f	\N	\N	0
571	\N	Віталік Герасим	\N	https://yt3.ggpht.com/a/AGF-l7-fLPt4bbITteApSGVVGWGeuozMclGD52UaTw=s800-c-k-c0xffffffff-no-rj-mo	UCKz9luW4mDFK5KlvYzqrepw	2020-01-27 16:41:11.132298+03	f	\N	\N	0
588	\N	MarderGreatTanks	\N	https://yt3.ggpht.com/a/AGF-l79gZP-eq0xYByXlis3duKHq7GuobQL24r7l2Q=s800-c-k-c0xffffffff-no-rj-mo	UCb99gxPSSCBcjFE7S_OnvHw	2020-01-27 23:08:53.200569+03	f	\N	\N	1
572	ALBIGame	КТО - ТО	\N	https://yt3.ggpht.com/a/AGF-l7_5ntHG6vUgfZ5j44YlfvkUGnvd1SjRlgBatA=s800-c-k-c0xffffffff-no-rj-mo	UC3xIn4MQUR0gLyJ5BLl-wzg	2020-01-27 17:02:04.00415+03	f	\N	\N	0
576	\N	Vladimir	Safronov	https://sun9-32.userapi.com/c206620/v206620229/3ca20/BM7X5NZZGNM.jpg?ava=1	523119747	2020-01-27 18:16:19.600228+03	f	\N	\N	1
577	\N	Yaroslav	Ivakhin	https://sun9-36.userapi.com/c639318/v639318869/62d8d/JGseJGHMJe4.jpg?ava=1	364856704	2020-01-27 18:26:24.717875+03	f	\N	\N	0
589	\N	Firebird	\N	https://yt3.ggpht.com/a/AGF-l7-WtTdsGVCOK2fIvW46QE-GnqLisMraDaObzg=s800-c-k-c0xffffffff-no-rj-mo	UCI5KIW2bL12BuwwhL5xkcMw	2020-01-27 23:23:32.824588+03	f	\N	\N	0
590	vTv_BRO_Vektora	Eduard	Alexandrov	https://sun9-56.userapi.com/c858136/v858136229/13b0de/tT-o-kh7EK0.jpg?ava=1	495207503	2020-01-28 01:08:29.411468+03	f	\N	\N	0
579	Gold_x_10	Dima	Kurgansky	https://sun9-70.userapi.com/c855420/v855420721/17a9b1/k83CDAhSQNo.jpg?ava=1	530445515	2020-01-27 19:25:17.252675+03	f	\N	\N	4
580	\N	Daniil	Noskov	https://sun9-21.userapi.com/c855428/v855428073/1b4ea1/339oAKlDYVk.jpg?ava=1	239373674	2020-01-27 19:46:35.240098+03	f	\N	\N	0
581	\N	Artem	Bobchenko	https://vk.com/images/camera_200.png?ava=1	370966821	2020-01-27 19:48:04.709941+03	f	\N	\N	1
600	Your.Happiness	Ледя \\ TO	\N	https://yt3.ggpht.com/a/AGF-l7-9Cd8LueH1OySXQh1gcNHYKrevCNp8HEOOog=s800-c-k-c0xffffffff-no-rj-mo	UCPfHSvHUTQgNIxVrRnsKuTA	2020-01-28 17:46:21.390646+03	f	\N	\N	0
583	\N	Dr. Garden	\N	https://yt3.ggpht.com/a/AGF-l7_087Py8Hu1O0o846OI6IZSp7Kt6_InHczceA=s800-c-k-c0xffffffff-no-rj-mo	UCdzI9AzWmgDR4b0bY4XSp8w	2020-01-27 21:16:50.564254+03	f	\N	\N	0
584	\N	тигр TV	\N	https://yt3.ggpht.com/a/AGF-l79jGyimxYHspHDORiKSKlczgHg_7snbKAIguQ=s800-c-k-c0xffffffff-no-rj-mo	UCF_gTkbUVoDMysEnLZLfbYQ	2020-01-27 21:21:17.993674+03	f	\N	\N	0
570	Rusik123	Ruslan	Gerakl	https://sun9-4.userapi.com/c858020/v858020670/3dac9/mg6XNtSE14I.jpg?ava=1	338049518	2020-01-27 15:35:14.711975+03	f	\N	\N	1
592	\N	SH Football Videos	\N	https://yt3.ggpht.com/a/AGF-l78z0fhVHNqyDnZmKJRVzYpd55NnjY-3DX4xjg=s800-c-k-c0xffffffff-no-rj-mo	UCEs-Ao2IlHpHLR36pTejufA	2020-01-28 01:26:22.084018+03	f	\N	\N	0
595	fox	Fox_pirate	\N	https://yt3.ggpht.com/a/AGF-l7_cDNXZwL_LrO0D1CmN0XMVrn9L5Q0GuJK3Nw=s800-c-k-c0xffffffff-no-rj-mo	UChIyly3zDBfo7pUZlTa3V2g	2020-01-28 09:48:58.767545+03	f	\N	\N	0
601	\N	HeCoBePIIIeHHoJIeTH9 to	\N	https://yt3.ggpht.com/a/AGF-l78cW3aywgpuZqFbWlWhTJZm2kFFsyZOB_Q8VA=s800-c-k-c0xffffffff-no-rj-mo	UCNblvhl8B5VjNzlBEVpLJSw	2020-01-28 18:56:04.903438+03	f	\N	\N	0
578	kenni	Kristina Olhovaya	\N	https://lh6.googleusercontent.com/-uod3vLActso/AAAAAAAAAAI/AAAAAAAAAAA/ACHi3rf3TlzMjVFsYQx1Q8YpAq0lPk3XLQ/photo.jpg	UClcqljrwRVequeBH-wA4bqg	2020-01-27 18:26:31.172572+03	f	\N	\N	1
596	\N	Oksana	Chuprova	https://sun9-61.userapi.com/c850620/v850620591/19fb13/kuCp9qLr2g0.jpg?ava=1	479258296	2020-01-28 11:32:47.162044+03	f	\N	\N	1
602	\N	Go schot	\N	https://yt3.ggpht.com/a/AGF-l78yBONfCsyr3kLzD-f-te2WHzBJBWbhb8VNew=s800-c-k-c0xffffffff-no-rj-mo	UC805D25H-frAGKvcUdb7ACQ	2020-01-28 18:57:12.32579+03	f	\N	\N	0
582	EA7_Maloy	Kirill	Lyuty	https://sun6-19.userapi.com/c855028/v855028418/1d9dc5/0fpZm4hUWZA.jpg?ava=1	216662720	2020-01-27 20:11:02.86153+03	f	\N	\N	1
591	 OLD_JUGGERNAUT	Mr Freeze	\N	https://yt3.ggpht.com/a/AGF-l7_kZqcuxBWdGRt-DCSSJqRAwNx6cm_Y3om1EQ=s800-c-k-c0xffffffff-no-rj-mo	UCWVdw7XNp4y4sLG7Adl0USA	2020-01-28 01:26:11.699918+03	f	\N	\N	3
597	\N	Mikha	Filatov	https://sun9-12.userapi.com/c205728/v205728319/46805/N2LJ-TEKLr0.jpg?ava=1	377595013	2020-01-28 14:14:50.320351+03	f	\N	\N	0
598	\N	Seryozha	Ovcharenko	https://sun9-32.userapi.com/c849128/v849128898/18fbd1/knEpyoYxMqc.jpg?ava=1	224081502	2020-01-28 15:16:22.646835+03	f	\N	\N	1
603	\N	Narek	Saakyan	https://sun6-14.userapi.com/c849420/v849420493/be81b/o5ujMFZ5-p0.jpg?ava=1	331552801	2020-01-28 19:01:49.341979+03	f	\N	\N	0
599	\N	Vanya	Grib	https://sun9-24.userapi.com/c850224/v850224645/1be389/cHqhNgsYPRs.jpg?ava=1	235496196	2020-01-28 15:26:35.045664+03	f	\N	\N	1
604	\N	Максим Федоруца	\N	https://yt3.ggpht.com/a/AGF-l79t1_z_fspdTLtpRWbqMWwmxTclYG7bwvZtxQ=s800-c-k-c0xffffffff-no-rj-mo	UCQkkfJdd0sz96X_KR1m433g	2020-01-28 19:35:52.108794+03	f	\N	\N	4
606	skyl1s	Sergey	Baykov	https://sun9-63.userapi.com/c856032/v856032153/191b5e/dyAo2Vvabkg.jpg?ava=1	395419978	2020-01-28 20:25:51.826957+03	f	\N	\N	1
605	\N	коляныч коля	\N	https://yt3.ggpht.com/a/AGF-l79Rn4HBNlydZyNeG2RVBEB78nKQiBDymRpoYA=s800-c-k-c0xffffffff-no-rj-mo	UCUBLeGFpV-s3JmGS6YdWD1w	2020-01-28 20:10:36.538097+03	f	\N	\N	0
608	\N	ZigZag error	\N	https://yt3.ggpht.com/a/AGF-l79lJjqiuGfL05WnB39u9L9V7C1AkZmv1kXTzg=s800-c-k-c0xffffffff-no-rj-mo	UChpA94WzMJaHUJAiydXvHeA	2020-01-29 05:37:21.089534+03	f	\N	\N	0
607	\N	Востич	\N	https://yt3.ggpht.com/a/AGF-l7879NSdfVIfrWyGUSYXSZZXuV4p4tzkLkKwvg=s800-c-k-c0xffffffff-no-rj-mo	UCYpDYx_indQNjuvG4ZubhFw	2020-01-28 20:56:24.670427+03	f	\N	\N	0
609	\N	Max	Lis	https://sun9-49.userapi.com/c858420/v858420198/8dcb4/CWYjMGgW0kk.jpg?ava=1	242926029	2020-01-29 14:59:10.229164+03	f	\N	\N	0
610	\N	[MF] MaHDaPlH228	\N	https://yt3.ggpht.com/a/AGF-l7_0BSuvfUbPaOWXyY-pObD52qXq13nCYdqELw=s800-c-k-c0xffffffff-no-rj-mo	UCm-RUM71KAm7qL2e5PqI4dw	2020-01-29 18:41:23.695336+03	f	\N	\N	0
573	\N	Seva	Moskoglo	https://sun9-16.userapi.com/c857224/v857224413/9deb6/NuWDmrkkEn8.jpg?ava=1	439802402	2020-01-27 17:02:20.622632+03	f	\N	\N	1
574	Mr_OTTACHOCT6	Rushan	Kuryaev	https://sun9-19.userapi.com/c857632/v857632782/db712/tNpFgU99JL4.jpg?ava=1	510134748	2020-01-27 17:06:09.012131+03	f	\N	\N	0
593	\N	Dima	Mandzyak	https://sun9-50.userapi.com/c830709/v830709907/1519eb/H9Thmh1Dtww.jpg?ava=1	214358267	2020-01-28 08:55:55.863056+03	f	\N	\N	1
575	\N	Дмитрий Козаков	\N	https://yt3.ggpht.com/a/AGF-l7_LuW_XnOVtpK2LeQMiPIy9WG6esuZPBKjf8g=s800-c-k-c0xffffffff-no-rj-mo	UCfAuUZgv0DVxKy84BY5HwlA	2020-01-27 17:18:12.196123+03	f	\N	\N	0
612	8upTy0Z 	CarBoneAT NatReyA	\N	https://yt3.ggpht.com/a/AGF-l78gvlPDs25VMVkHEEIN817ksAIlBP5ZjplXDA=s800-c-k-c0xffffffff-no-rj-mo	UCnCXzHVgaMwMBjM7YV8l05w	2020-01-29 18:48:08.439652+03	f	\N	\N	0
632	\N	Felix	Bromn	https://sun9-2.userapi.com/c200824/v200824873/24ae4/v2XUoTnc8eI.jpg?ava=1	511677712	2020-02-01 12:29:02.777322+03	f	\N	\N	0
613	Zloixaker	Богдан Царюк	\N	https://yt3.ggpht.com/a/AGF-l7-T_JQ4vZqpnlElyJ-mF0cSSBh0f92EDX5Lwg=s800-c-k-c0xffffffff-no-rj-mo	UClxxzSaFW-bUYYgtUIYcX8w	2020-01-29 19:46:50.101031+03	f	\N	\N	0
615	\N	Denya YT Denya YT	\N	https://yt3.ggpht.com/a/AGF-l79i4wnAUU_HYVqQQ__L87SWn-lT6e2yJz1Uig=s800-c-k-c0xffffffff-no-rj-mo	UCONUUPRL7cYmngvK8QZ1Psg	2020-01-29 20:46:09.072092+03	f	\N	\N	0
627	alsi	Alexey	Zimenkov	https://sun6-16.userapi.com/c206820/v206820238/1372a/a6LECe9uiao.jpg?ava=1	269354444	2020-01-31 21:25:27.224969+03	f	\N	\N	4
616	Den_gold_master	Color Team	\N	https://yt3.ggpht.com/a/AGF-l7_qCPMewvgAlmDZYWd5-zw083J-28TE40JwEA=s800-c-k-c0xffffffff-no-rj-mo	UCpBwZ5KrZO7gXnZV80uLo_A	2020-01-29 21:30:02.285367+03	f	\N	\N	0
626	\N	Denis	Maratov	https://sun9-20.userapi.com/c856128/v856128244/1c637f/BITmQKoI1rg.jpg?ava=1	373198440	2020-01-31 21:10:03.429603+03	f	\N	\N	0
618	\N	IlI_BigShadow_IlI	\N	https://yt3.ggpht.com/a/AGF-l78GapBD2SZXcvDTOQPzEbQn8WqmhDEBH_r3ig=s800-c-k-c0xffffffff-no-rj-mo	UC_TAXl2tcx6ZvJMLNV9DgMw	2020-01-30 01:11:54.846363+03	f	\N	\N	0
640	ORHIDEAI	Mr_vad im	\N	https://yt3.ggpht.com/a/AGF-l7_qMcOuanyg3crHD8vRFNm2TFIUsKhT7-afDw=s800-c-k-c0xffffffff-no-rj-mo	UC3soO3eGEnqNCr71okG2zew	2020-02-01 14:24:08.476098+03	f	\N	\N	0
611	0VD1	Rowdy's Studio	\N	https://yt3.ggpht.com/a/AGF-l7-5qTr1JPunYBcbQeXPHaA7BuiWFLu39ElEmg=s800-c-k-c0xffffffff-no-rj-mo	UCgTsSycIk7EfsVsNyaexZig	2020-01-29 18:45:57.507462+03	f	\N	\N	0
641	\N	Yarik_Amazing	\N	https://yt3.ggpht.com/a/AGF-l79PO1KGOrJwIQ8tzuDg8d8RO_vzwJpTR05BmA=s800-c-k-c0xffffffff-no-rj-mo	UCDRMbHi6X0Bgu698jpiQPwQ	2020-02-01 14:28:28.94329+03	f	\N	\N	0
619	\N	Vanya	Bermes	https://sun9-59.userapi.com/c848524/v848524498/b68e8/VDfakF6XwEE.jpg?ava=1	166493623	2020-01-30 12:39:16.424677+03	f	\N	\N	1
620	\N	Slava	Kuzmin	https://vk.com/images/camera_200.png?ava=1	357114430	2020-01-30 17:13:09.797786+03	f	\N	\N	0
631	\N	Kostya	Petrov	https://sun9-43.userapi.com/c850524/v850524480/1970e7/hN828nqmwTY.jpg?ava=1	186624503	2020-02-01 12:26:00.837617+03	f	\N	\N	2
621	\N	Anton	Alyoshikov	https://sun9-3.userapi.com/c850720/v850720651/726c1/Tvqedv6haOY.jpg?ava=1	324154825	2020-01-30 20:18:44.598511+03	f	\N	\N	1
622	\N	Danil	Sakharchuk	https://sun9-9.userapi.com/c844721/v844721514/f7532/RsrgXIf7Ipk.jpg?ava=1	467903351	2020-01-31 11:10:33.494467+03	f	\N	\N	0
623	\N	Steel Brothers	\N	https://yt3.ggpht.com/a/AGF-l7_GsWcKwKhIWi6EtuaJi6p2Ah4YQcxkRVh9dg=s800-c-k-c0xffffffff-no-rj-mo	UC3otI_7DjY9KIf3h0sbdjMA	2020-01-31 11:53:08.23876+03	f	\N	\N	0
625	\N	Artyom	Ankuda	https://sun9-1.userapi.com/c855028/v855028959/14a9be/3Ci2STldAko.jpg?ava=1	274881052	2020-01-31 18:24:44.220577+03	f	\N	\N	0
642	\N	Лёша Трэшер	\N	https://lh6.googleusercontent.com/-JlMEZPxJ2U8/AAAAAAAAAAI/AAAAAAAAAAA/ACHi3retquwtOsJij2pFwyzVyeo384nneg/photo.jpg	UCpZ4iukNaT6YG9FSvY_kk4Q	2020-02-01 14:55:09.841449+03	f	\N	\N	0
628	\N	Dima	Ryzhanov	https://sun6-16.userapi.com/c857436/v857436047/fe7db/CIJbJUnrfQk.jpg?ava=1	311281827	2020-01-31 21:41:15.571872+03	f	\N	\N	0
617	яростный опариш	Семён Дейнега	\N	https://yt3.ggpht.com/a/AGF-l7_Ob0RmQ_rCHLmN1EoxZmgOOu6IUWx5IfEB2A=s800-c-k-c0xffffffff-no-rj-mo	UCJI6R0OxXlZDtbENICKt5WA	2020-01-29 23:02:15.636374+03	f	\N	\N	2
629	\N	Gavrilovich	Vladislav	https://vk.com/images/camera_200.png?ava=1	524482695	2020-02-01 12:11:56.59367+03	f	\N	\N	0
630	\N	TTOKJIOHUK	\N	https://yt3.ggpht.com/a/AGF-l78iW2i8UoAEcdDJCfdU31uyiwegzOc0b4rLKg=s800-c-k-c0xffffffff-no-rj-mo	UCl00TBSWEkac3d2VZbyWXSw	2020-02-01 12:13:59.599751+03	f	\N	\N	0
648	\N	Snex	\N	https://yt3.ggpht.com/a/AGF-l79v-Di48Bp3oTTlETljH1rSuGEZtR71a2E2=s800-c-k-c0xffffffff-no-rj-mo	UC1g6je8AFJ0abyVHYjTG6Og	2020-02-01 17:15:44.7441+03	f	\N	\N	0
633	\N	Opex353	\N	https://yt3.ggpht.com/a/AGF-l7_plmE9I9krIqKNggcleB87jHqqSqqZAwQ6nw=s800-c-k-c0xffffffff-no-rj-mo	UCfPP1FzE5ccqYtmeI8IMQ2w	2020-02-01 12:49:32.772515+03	f	\N	\N	2
635	\N	Вячеслав Просветов	\N	https://yt3.ggpht.com/a/AGF-l792q8NrkP2LWkpRa36XTre6-h8MK-KYpf2yIA=s800-c-k-c0xffffffff-no-rj-mo	UCdfUREc6_IasMzIWaDwDnvw	2020-02-01 13:29:19.102553+03	f	\N	\N	0
637	\N	Maxim	Ocheretenko	https://sun9-61.userapi.com/c852228/v852228377/1e6fe1/wFynwvH_zRc.jpg?ava=1	269858264	2020-02-01 13:42:45.874201+03	f	\N	\N	0
636	\N	Marri	Kot	https://sun6-19.userapi.com/c855236/v855236652/1c6ce9/1Hjvy-ButR0.jpg?ava=1	499893557	2020-02-01 13:37:47.017029+03	f	\N	\N	1
650	\N	MNXA PUBG	\N	https://yt3.ggpht.com/a/AGF-l7__ultrDdGoabE5CDb7FBw8wvc-lOG0EO_0oQ=s800-c-k-c0xffffffff-no-rj-mo	UCPHB8haEHuF7qPsBEXp3Wig	2020-02-01 17:15:47.938244+03	f	\N	\N	0
643	\N	Maxim	Belov	https://sun9-20.userapi.com/c857336/v857336274/19d75/SAxUkUjrzfA.jpg?ava=1	414836687	2020-02-01 17:14:34.157136+03	f	\N	\N	0
639	\N	Pavel	Karavaytsev	https://sun9-5.userapi.com/c851020/v851020803/1ab661/LpQaakp1dtQ.jpg?ava=1	537927601	2020-02-01 14:03:43.633178+03	f	\N	\N	0
644	\N	Андрій Головкевич	\N	https://yt3.ggpht.com/a/AGF-l79Iknbd8bCS_bqSCcTJR_DD2RE2Y0X72ukhdQ=s800-c-k-c0xffffffff-no-rj-mo	UCjMTKfX8EHkeONE93cnHuLw	2020-02-01 17:14:46.72581+03	f	\N	\N	0
638	\N	Максим Регула	\N	https://yt3.ggpht.com/a/AGF-l79ksS-NpT-Xih5E5SQa-yQPcZHMX2qPLMobmA=s800-c-k-c0xffffffff-no-rj-mo	UCRWW-FTKp8njMeqFFIU1BdQ	2020-02-01 13:51:34.629852+03	f	\N	\N	1
651	\N	HUNK	\N	https://yt3.ggpht.com/a/AGF-l78hH3KF3LzE8KF_h1D4yYHsVyPpn6QFrirC6g=s800-c-k-c0xffffffff-no-rj-mo	UCHOUXno27gRYlInqoSWvd9g	2020-02-01 17:15:53.102083+03	f	\N	\N	0
652	\N	Kirill	Malikov	https://sun9-1.userapi.com/c849228/v849228872/1afac5/OsBGfNz1U4c.jpg?ava=1	260611169	2020-02-01 17:15:59.133223+03	f	\N	\N	0
654	\N	Xalden Xalk	\N	https://yt3.ggpht.com/a/AGF-l7-g_wylfUpPfQQAPpWhVfUgcXte7fAghXxBbQ=s800-c-k-c0xffffffff-no-rj-mo	UCodQ-HcbVhjgUgksjnqDafw	2020-02-01 17:16:13.977112+03	f	\N	\N	0
655	\N	Ruslan	Guseynov	https://sun9-48.userapi.com/c852120/v852120700/7bdda/ZWwXfu7KdxU.jpg?ava=1	460297690	2020-02-01 17:16:19.558247+03	f	\N	\N	0
649	\N	Daniil	Khokhlov	https://sun6-19.userapi.com/c858320/v858320991/7315b/WwHY5bv-X_Q.jpg?ava=1	335309225	2020-02-01 17:15:46.047881+03	f	\N	\N	1
645	\N	Starfall	\N	https://yt3.ggpht.com/a/AGF-l795sEM6qXlzZK822FR304TGzM-Y-C0fo7g6fA=s800-c-k-c0xffffffff-no-rj-mo	UCtQhPeI6nLHKibH4scuuHrA	2020-02-01 17:15:16.058873+03	f	\N	\N	1
653	\N	Artyom	Sidelnikov	https://sun9-48.userapi.com/c854428/v854428909/1809f3/Hcmzu1Gh5OU.jpg?ava=1	539839432	2020-02-01 17:16:06.424001+03	f	\N	\N	1
647	tomas-xmen	Tomas	Baryshnikov	https://sun9-45.userapi.com/c850620/v850620055/f64ba/7UTJS6wo4zM.jpg?ava=1	242908870	2020-02-01 17:15:20.433638+03	f	\N	\N	1
614	mimimn	Lays	\N	https://yt3.ggpht.com/a/AGF-l7-rB2MBjuweG8orWcIsm3GniSWzvdxf5a3FhA=s800-c-k-c0xffffffff-no-rj-mo	UCV0yrmyzAUTeAdJep8ajocA	2020-01-29 20:38:17.979142+03	f	\N	\N	2
634	\N	Ķįŕĩĺļ Ŧęŕėşĥçĥĕñķø	\N	https://yt3.ggpht.com/a/AGF-l7-IvhbaOxmtit8DRqUb7zJo4jb2nulxjLx2Jw=s800-c-k-c0xffffffff-no-rj-mo	UCUKBCpy_9HkmM_SB0FPGJqA	2020-02-01 13:10:44.487392+03	f	\N	\N	1
658	\N	Nikita	Savelyev	https://sun6-16.userapi.com/c857520/v857520836/120e32/M0Pr5BC_ou4.jpg?ava=1	328990304	2020-02-01 17:16:27.102815+03	f	\N	\N	0
659	\N	Art Rad	\N	https://yt3.ggpht.com/a/AGF-l7_GI4Fz7uHseXuPHjPNWpPIH5SzJ7BEYYeoLg=s800-c-k-c0xffffffff-no-rj-mo	UC5wl2KT-aG68X_l9DWpYmhQ	2020-02-01 17:16:31.639198+03	f	\N	\N	0
660	\N	Богдан Про	\N	https://yt3.ggpht.com/a/AGF-l78N1GZ-zM-fITOLrF4ueIyDXu_ucGOs6SPm=s800-c-k-c0xffffffff-no-rj-mo	UCfiSlusJ51kF2pEZN6l8y7w	2020-02-01 17:16:38.135849+03	f	\N	\N	0
646	\N	Vanya	Voskoboynikov	https://sun9-43.userapi.com/c847019/v847019931/1ad6fa/v8bHaPzCEe0.jpg?ava=1	511828026	2020-02-01 17:15:17.848278+03	f	\N	\N	1
661	\N	Igor	Otsabrik	https://sun9-8.userapi.com/c853516/v853516368/1e2d42/QTcqSrUG6r0.jpg?ava=1	312461501	2020-02-01 17:16:43.853299+03	f	\N	\N	1
662	\N	XyJIugaH XyJIugaHoBu4	\N	https://lh3.googleusercontent.com/-O7XZ5q_qtTk/AAAAAAAAAAI/AAAAAAAAAAA/ACHi3rcDkKqjjN47xUN1U4aeE9N1LVahuA/photo.jpg	UCj5nXlF0SSdzwTr_OCAHIEg	2020-02-01 17:16:50.843794+03	f	\N	\N	1
663	\N	Artem	Shapovalov	https://sun9-72.userapi.com/c858324/v858324852/111126/TH1x9lGPreI.jpg?ava=1	335277723	2020-02-01 17:16:51.492475+03	f	\N	\N	2
672	\N	Jeka Mihalchuk	\N	https://yt3.ggpht.com/a/AGF-l7--P-5MFUlvYmYEBn3iWTXCoBh01fAqt_9lAQ=s800-c-k-c0xffffffff-no-rj-mo	UC4IXrzuIDB5L2HxTvo1tVqg	2020-02-01 17:21:43.694003+03	f	\N	\N	1
669	borman163	Ivan	Yakovlev	https://sun6-13.userapi.com/c857432/v857432390/efd4f/OcZ5CBbtAik.jpg?ava=1	273086036	2020-02-01 17:18:45.17288+03	f	\N	\N	2
664	\N	Daniar	Bekenov	https://sun9-58.userapi.com/c855720/v855720262/1eb005/TOHihi_j5t8.jpg?ava=1	277093096	2020-02-01 17:16:56.919911+03	f	\N	\N	0
668	\N	Andrey	Mitin	https://sun6-16.userapi.com/c852232/v852232192/187462/vcR9BxHQ5Po.jpg?ava=1	157744277	2020-02-01 17:18:08.35702+03	f	\N	\N	0
670	\N	_Pro%Ent_	\N	https://yt3.ggpht.com/a/AGF-l7_CCNGP9sTABolH3USyHkgceG4jyg-hatAsEg=s800-c-k-c0xffffffff-no-rj-mo	UCyqm4KobkqTozUkPMT1Frzg	2020-02-01 17:20:27.376457+03	f	\N	\N	0
671	\N	Evgeny	Mosin	https://sun9-20.userapi.com/c852228/v852228704/1c5ab4/ct5BMNrOcqI.jpg?ava=1	303941085	2020-02-01 17:21:06.272482+03	f	\N	\N	0
666	\N	Rostislav	Solonevich	https://vk.com/images/camera_200.png?ava=1	269858393	2020-02-01 17:17:35.870353+03	f	\N	\N	1
541	\N	Daniel	Grigoryev	https://sun9-31.userapi.com/c857416/v857416402/12b822/SBY24hZYqGE.jpg?ava=1	134509098	2020-01-26 23:23:59.766838+03	f	\N	\N	3
665	\N	Eduard	Moskal	https://sun9-29.userapi.com/c857128/v857128660/98fe4/27c8QOXzyKY.jpg?ava=1	219453360	2020-02-01 17:17:16.277693+03	f	\N	\N	0
667	\N	_.vanko.__	\N	https://yt3.ggpht.com/a/AGF-l7_to1AAfbIhiDW7TxGZryWinJDVYUesoZDGhw=s800-c-k-c0xffffffff-no-rj-mo	UCf4QLteVsNnMbw27Aam-Ddg	2020-02-01 17:17:47.137391+03	f	\N	\N	0
675	\N	Тегза	\N	https://yt3.ggpht.com/a/AGF-l7_ygpajc3gttxOPKytpDLKj0f8n7ELioLjlTA=s800-c-k-c0xffffffff-no-rj-mo	UCEhN2vqsZnBQJ6aqnl4_Rfg	2020-02-01 17:23:04.842968+03	f	\N	\N	0
676	\N	Эдвардас Франк	\N	https://yt3.ggpht.com/a/AGF-l7_spVX9Z8-H8xtmQyD5fjJDaWDO2dH0vi45Sw=s800-c-k-c0xffffffff-no-rj-mo	UCaQhloWs1i1J4VVj1AjOcZQ	2020-02-01 17:25:46.189441+03	f	\N	\N	0
677	\N	Sasha Bondaruk	\N	https://yt3.ggpht.com/a/AGF-l7-WCz4fhhZV7mWiV5Rx3Q9_r6x0OTQp37FI_Q=s800-c-k-c0xffffffff-no-rj-mo	UCBT1MZSSoSyYRL5rEJrsxWQ	2020-02-01 17:26:47.366633+03	f	\N	\N	0
692	\N	Иван Якшамин	\N	https://yt3.ggpht.com/a/AGF-l78jiE4zjKoEPND16THDdJTUOrDG4d57HlepAQ=s800-c-k-c0xffffffff-no-rj-mo	UCFe_1BRnj8jb6KWRdYpovmQ	2020-02-03 12:00:21.959099+03	f	\N	\N	0
678	\N	Vladislav	Sidyakin	https://sun9-8.userapi.com/c857732/v857732519/1283d0/JIENXQ6uh1k.jpg?ava=1	343240386	2020-02-01 17:33:40.322201+03	f	\N	\N	1
674	\N	Georgy	Fyodorov	https://sun9-37.userapi.com/c855424/v855424145/5fe2d/23PXEnqwdyk.jpg?ava=1	389438074	2020-02-01 17:22:34.921745+03	f	\N	\N	1
679	\N	Rim Play	\N	https://yt3.ggpht.com/a/AGF-l79WWlw7TMkmEFMsUeZePGwosbSBguML3Hxq9g=s800-c-k-c0xffffffff-no-rj-mo	UCYPuKHEp7UZKPdaWvc5Frpg	2020-02-01 17:43:15.453306+03	f	\N	\N	1
680	\N	MrVIKTOR PubgMobile	\N	https://yt3.ggpht.com/a/AGF-l7_2aFxltmWIL_EpAUyHi8nkkrvhliZj6n5sDw=s800-c-k-c0xffffffff-no-rj-mo	UCrEw25flA7KAwO9q1yZ5P4w	2020-02-01 18:00:53.432477+03	f	\N	\N	0
699	\N	Alexander	Muravyov	https://sun9-9.userapi.com/c855416/v855416901/e850f/BdRRShsZam0.jpg?ava=1	205602350	2020-02-05 12:18:58.6122+03	f	\N	\N	0
681	\N	Максим Русских	\N	https://yt3.ggpht.com/a/AGF-l78NqbKxeWS46_eO_I2bJPdCFcvjpTDYFPJ5Xw=s800-c-k-c0xffffffff-no-rj-mo	UC4ZFa_XaYssC3drISQ9MTGg	2020-02-01 18:03:42.680755+03	f	\N	\N	0
700	\N	Никита Карачун	\N	https://yt3.ggpht.com/a/AGF-l79oXNoSasvEmmLm5xFwsFMOPwjnYFOXUcQhOQ=s800-c-k-c0xffffffff-no-rj-mo	UCTo3QRLge-MGqIUB5OR4nHA	2020-02-05 12:33:14.126401+03	f	\N	\N	0
673	\N	Nikita	Barsukov	https://sun9-65.userapi.com/c857216/v857216169/84798/N4BztMBGZMk.jpg?ava=1	450832163	2020-02-01 17:22:18.238597+03	f	\N	\N	2
693	DIN	DINKERIOND	\N	https://yt3.ggpht.com/a/AGF-l78N9qbRsaYGXUGk1cWeuOM_ck1cl9Rm24i3mw=s800-c-k-c0xffffffff-no-rj-mo	UCsu5UWFq2rdN50FpAtvCkSQ	2020-02-04 11:10:36.015297+03	f	\N	\N	0
546	Fizik_N	Nikita Voznichenko	\N	https://yt3.ggpht.com/a/AGF-l79hmIGT1JK0IT0ODmgUi9rRQDZI44U8LT6PSw=s800-c-k-c0xffffffff-no-rj-mo	UC-2bJXMUyVUw56zF_jCyMdw	2020-01-26 23:59:05.638804+03	f	\N	\N	0
682	\N	Козяк Віталій	\N	https://yt3.ggpht.com/a/AGF-l79gv317Sqnw56TtuRVsz3aPlY3gT8mDPQVF=s800-c-k-c0xffffffff-no-rj-mo	UC-rYOG1MSE5-5Vruzr4fX5Q	2020-02-01 22:52:04.990695+03	f	\N	\N	0
684	\N	DENCHIK !!!	\N	https://yt3.ggpht.com/a/AGF-l78w5YYuvbBWMLBapiImdWXQDhc7Px-hb7MK5Q=s800-c-k-c0xffffffff-no-rj-mo	UC7ee6GpHywVejknrXSZ2Q5g	2020-02-01 23:03:43.578252+03	f	\N	\N	0
683	CkaT	Danil	Sheremet	https://sun9-44.userapi.com/c206720/v206720293/420c1/3rVVY94w8Bo.jpg?ava=1	220765756	2020-02-01 22:59:09.898289+03	f	\N	\N	1
685	\N	Alexey	Romadov	https://sun9-13.userapi.com/c847124/v847124378/896b1/RgUS5VGX6qE.jpg?ava=1	261416651	2020-02-01 23:25:23.711182+03	f	\N	\N	0
686	\N	Alyokha	Alexandrovich	https://sun9-43.userapi.com/c855324/v855324566/1a5308/WQtclh6TEWU.jpg?ava=1	546138225	2020-02-02 09:25:39.693647+03	f	\N	\N	3
687	\N	Катя Денищук	\N	https://yt3.ggpht.com/a/AGF-l7_6mmaAPlCfrgccUZp5YCZSBS2iJp4cFOoIVQ=s800-c-k-c0xffffffff-no-rj-mo	UCTlbP0kKiUH7NBuhF-h4MHw	2020-02-02 13:01:51.211423+03	f	\N	\N	1
688	\N	Myroslav7911	\N	https://yt3.ggpht.com/a/AGF-l7_AQgCFbRws0hY7GJeqc_9_17Y-2q0uvXdT-Q=s800-c-k-c0xffffffff-no-rj-mo	UCYTm0J9P_kpgt3uqrMCc_Mg	2020-02-02 16:17:32.2127+03	f	\N	\N	0
689	\N	Max	Vorobyev	https://sun9-36.userapi.com/c855328/v855328942/55c18/9jG8YNVoyTU.jpg?ava=1	546414871	2020-02-02 20:10:24.620249+03	f	\N	\N	1
701	\N	Павел Л.	\N	https://yt3.ggpht.com/a/AGF-l7_ubPwjkCnZk5mFxvYU2fOqRdBTkj771cskEw=s800-c-k-c0xffffffff-no-rj-mo	UCaa_q5amcJDP9-qEqJHSBhA	2020-02-05 12:34:37.960329+03	f	\N	\N	0
691	\N	Игровой канал Tanc289	\N	https://yt3.ggpht.com/a/AGF-l78Z4Zh9HCJtA_AUGHdcQy9_6RGU6W5SfoP2iQ=s800-c-k-c0xffffffff-no-rj-mo	UCrtNvaOcyupJmh7fdvhZUgg	2020-02-03 07:18:24.793717+03	f	\N	\N	0
702	COBECTb_YT	Ilnaz	Abbyazov	https://sun6-14.userapi.com/c849036/v849036594/1b4d96/rGkYFdz-Hdw.jpg?ava=1	186059286	2020-02-05 12:52:10.973618+03	f	\N	\N	0
694	\N	Cfif	Miner	https://sun6-13.userapi.com/c857720/v857720804/155196/4aw7wo7yeyI.jpg?ava=1	266879883	2020-02-04 16:09:22.8297+03	f	\N	\N	1
695	\N	cfif miner	\N	https://lh6.googleusercontent.com/-NDxfO67zh6A/AAAAAAAAAAI/AAAAAAAAAAA/ACHi3rcU4bIIpAxBOQYI2L51ZwYu711Iiw/photo.jpg	UC0zYs0ZJ1ptZTwGWL2r0MUg	2020-02-04 16:23:57.512134+03	f	\N	\N	1
703	\N	Artem Panasiuk	\N	https://yt3.ggpht.com/a/AGF-l7_CQ6otFYtpCL84g0qwIU0t1truyVVsGzb0sQ=s800-c-k-c0xffffffff-no-rj-mo	UCjJ-8gZXtstNcTyzh7lwDOQ	2020-02-05 13:05:26.458054+03	f	\N	\N	0
690	Davyd	Volt Azius games	\N	https://yt3.ggpht.com/a/AGF-l79ShYAlX6tdL-aaZ4fb0FDWQUhqY4Lggxn_Bw=s800-c-k-c0xffffffff-no-rj-mo	UC1ZbId5RpzAIaNPCQ8QMV7w	2020-02-03 01:22:55.337405+03	f	\N	\N	3
696	MAHNATKA	Black and White	\N	https://yt3.ggpht.com/a/AGF-l78mr6ishfuXVD81Q3uODqH5sGfQZphFD3UlGg=s800-c-k-c0xffffffff-no-rj-mo	UCVbJkJMcyrLQceKxs-MtrlA	2020-02-04 19:08:31.723437+03	f	\N	\N	0
697	\N	Marek Mazulis	\N	https://yt3.ggpht.com/a/AGF-l79i1WITQWkLn0J4aeALGCDM5VsB30AV2ohCbg=s800-c-k-c0xffffffff-no-rj-mo	UCqJv2i4n4a2rDuZTuRk0Zcw	2020-02-04 23:01:23.266752+03	f	\N	\N	0
705	\N	Marvel-studios	\N	https://yt3.ggpht.com/a/AGF-l78j7_cUhjkFsYE1YJJa4aAe1nS3I2pvNeR4=s800-c-k-c0xffffffff-no-rj-mo	UCOYvqek-UqgMsQA80t6owjA	2020-02-05 14:02:53.150958+03	f	\N	\N	0
707	\N	Vladimirovich	\N	https://yt3.ggpht.com/a/AGF-l7-kiB266RKK2AycMf0s9hKDtGw2U5M3DM612A=s800-c-k-c0xffffffff-no-rj-mo	UCkCRquWaefVvCA7Ly1tgZUg	2020-02-05 19:12:30.306992+03	f	\N	\N	0
708	\N	Danya	Spartak	https://sun9-41.userapi.com/c204720/v204720197/5cc8c/7Xt47Xopv30.jpg?ava=1	576141143	2020-02-05 20:05:37.664971+03	f	\N	\N	0
706	\N	Mr Liker	\N	https://yt3.ggpht.com/a/AGF-l7-Lp9uVcdosHDObRZFqqu-jlV2Z1K_JYmg54w=s800-c-k-c0xffffffff-no-rj-mo	UCYZjjmvhAgwUHDgkH8LwGIA	2020-02-05 14:29:49.890774+03	f	\N	\N	0
711	\N	Valakas youtube	\N	https://yt3.ggpht.com/a/AGF-l7-esqoRsu8zevHZueDb3-lfYq99tu0uXdS5ow=s800-c-k-c0xffffffff-no-rj-mo	UC_mqCaMQ95y7cLHrNJjPL9w	2020-02-05 20:22:56.176555+03	f	\N	\N	0
712	\N	OLBIN	\N	https://yt3.ggpht.com/a/AGF-l7-WRaZIWMYa9ltggj7udfsvRMwOCKXYo1iAvw=s800-c-k-c0xffffffff-no-rj-mo	UCGbpTLv58wzpM-OHgeon3Tw	2020-02-05 20:23:41.830645+03	f	\N	\N	0
698	\N	Devid	Bankovskij	https://sun9-17.userapi.com/c855720/v855720348/73c54/-GVrp2sBd1c.jpg?ava=1	306892660	2020-02-05 00:57:44.969805+03	f	\N	\N	0
709	\N	Pasha	Snezhkin	https://sun6-14.userapi.com/c847121/v847121806/13ec55/e1GFGdISILQ.jpg?ava=1	197031497	2020-02-05 20:21:20.349248+03	f	\N	\N	1
723	Uland	Nikita	Sidikov	https://sun9-48.userapi.com/c858320/v858320005/15dc8a/dNpYsQnTPA8.jpg?ava=1	519325542	2020-02-05 20:39:45.446806+03	f	\N	\N	1
710	\N	Крик Уотсона	\N	https://yt3.ggpht.com/a/AGF-l7__CxzU2KGZPNBzY5B_vrTSSDPthCzrDw9tRw=s800-c-k-c0xffffffff-no-rj-mo	UCgUwND3Hs7SYXx4wncn_iGQ	2020-02-05 20:22:23.445867+03	f	\N	\N	1
713	\N	писюн ореха	\N	https://yt3.ggpht.com/a/AGF-l7_JNmp8UTg3AkpRaC_gz387I59GateAgvwz9w=s800-c-k-c0xffffffff-no-rj-mo	UCIOgqOGMX3z61gZyVmqtlwQ	2020-02-05 20:24:03.208435+03	f	\N	\N	1
718	\N	Artyom	Andreev	https://sun9-31.userapi.com/c855036/v855036519/1d79c6/V3ea3UPFfVI.jpg?ava=1	423343488	2020-02-05 20:38:41.780896+03	f	\N	\N	0
724	\N	Varnikov	Garnik	https://vk.com/images/camera_200.png?ava=1	347806286	2020-02-05 20:39:51.991114+03	f	\N	\N	0
726	\N	Douse Game	\N	https://yt3.ggpht.com/a/AGF-l78VZk2UUuIaHZ6HVVCdCIPWivwVx5rIFES7CQ=s800-c-k-c0xffffffff-no-rj-mo	UCW-hC8UDLgWs_V8F8_GW_yw	2020-02-05 20:39:53.977631+03	f	\N	\N	0
727	\N	Nikita	Fraynov	https://sun9-11.userapi.com/c852216/v852216318/64938/p7aQy2eWSwU.jpg?ava=1	456604726	2020-02-05 20:40:04.721872+03	f	\N	\N	0
728	\N	Oleg	Zorin	https://sun9-14.userapi.com/c841420/v841420498/3e913/0L8DFM83LC4.jpg?ava=1	390761191	2020-02-05 20:40:08.121519+03	f	\N	\N	0
731	\N	Kostya Mix	\N	https://yt3.ggpht.com/a/AGF-l78DavBQ6eGqMCgQJbWjLdgbXbuQshkXw2IFFA=s800-c-k-c0xffffffff-no-rj-mo	UCqE_BC7_pM4PF_9NnlbsCpg	2020-02-05 20:40:24.911454+03	f	\N	\N	0
732	\N	:Viron:	\N	https://yt3.ggpht.com/a/AGF-l79aQWfdh5JlpqZuKdvkwg1KhUheC2tf0fPX=s800-c-k-c0xffffffff-no-rj-mo	UC78nWlowPVAw0IyeXmQV37A	2020-02-05 20:40:27.130089+03	f	\N	\N	0
734	\N	Andrey	Kulinich	https://sun9-56.userapi.com/c840731/v840731230/6d296/GjpZg_6O0P0.jpg?ava=1	275079328	2020-02-05 20:40:51.339839+03	f	\N	\N	0
737	\N	Orbit	\N	https://yt3.ggpht.com/a/AGF-l78nrwa2Ob2nDrHHEesXh70g_GXgzBTV38fDUA=s800-c-k-c0xffffffff-no-rj-mo	UCxewI8b-AsS7oWxZKPcYqWg	2020-02-05 20:41:26.55098+03	f	\N	\N	0
716	\N	YTT Ninja	\N	https://yt3.ggpht.com/a/AGF-l79oFrBR5o-Y_R7J8NBGRCjaicmssiJvMVeXGw=s800-c-k-c0xffffffff-no-rj-mo	UC6V3hnEdGCMNBZvH31U7Zrg	2020-02-05 20:33:50.953173+03	f	\N	\N	1
740	\N	skinny-dead-to	\N	https://yt3.ggpht.com/a/AGF-l78UnN41fzOSSTAICyVikgU5x-LndSmdQnil9A=s800-c-k-c0xffffffff-no-rj-mo	UCxW6yUBNM4NCFIj_ZO4Sf9g	2020-02-05 20:42:09.289789+03	f	\N	\N	0
717	\N	PloHoY_ PaRniSh	\N	https://yt3.ggpht.com/a/AGF-l7_lxpIe28EmeO_M2si2Q4rKZTUgm6aApt8zwA=s800-c-k-c0xffffffff-no-rj-mo	UCNhGG3jQJUgjlzFuW4WJX0g	2020-02-05 20:35:55.662456+03	f	\N	\N	1
744	\N	Maxim	Landsberg	https://sun6-13.userapi.com/c850324/v850324450/1f616f/-ui31y7iCNg.jpg?ava=1	303507502	2020-02-05 20:42:56.942901+03	f	\N	\N	0
745	\N	F R A E R O K	\N	https://yt3.ggpht.com/a/AGF-l7_eawv_jF9s6vVUwatYYoO99t4a2F4OY_mbZw=s800-c-k-c0xffffffff-no-rj-mo	UC8vYaKgSojVR3BW9NpCFVRA	2020-02-05 20:43:47.003407+03	f	\N	\N	0
746	\N	Max	Filatov	https://sun9-10.userapi.com/c855016/v855016437/1dc7ea/NASDTlcj5xE.jpg?ava=1	298879357	2020-02-05 20:43:50.796246+03	f	\N	\N	0
747	\N	Slava	Belov	https://sun6-14.userapi.com/c857424/v857424246/ea5a9/3WvT-DN86QU.jpg?ava=1	229105644	2020-02-05 20:44:14.314306+03	f	\N	\N	0
748	\N	Vahag Abovyan	\N	https://yt3.ggpht.com/a/AGF-l7_tcY7onupYRzvrl1fMSpAhvucMPPYVZsURPg=s800-c-k-c0xffffffff-no-rj-mo	UCdbgZMvQRLKOMLvL38gOb6A	2020-02-05 20:44:32.924159+03	f	\N	\N	0
750	\N	борян 057	\N	https://yt3.ggpht.com/a/AGF-l7_Jr8ue48yAgv7LDTf9QNcSxccfoBr8ex3S6Q=s800-c-k-c0xffffffff-no-rj-mo	UCdQ63WCFPkS-_4g8zc8nVsg	2020-02-05 20:45:25.832097+03	f	\N	\N	0
719	\N	Foton4iK	\N	https://yt3.ggpht.com/a/AGF-l79LGyuqpR_zQ8zIOLki8e3mUyC4xF86mH3SIw=s800-c-k-c0xffffffff-no-rj-mo	UCB9qLb8wAFNp03sYFZxBKWw	2020-02-05 20:38:46.929634+03	f	\N	\N	1
725	\N	Vlad	Pundalov	https://sun9-11.userapi.com/c852232/v852232097/1e8a0e/21mql-sTRdo.jpg?ava=1	540181388	2020-02-05 20:39:53.699274+03	f	\N	\N	1
715	\N	Evgeny	Velikotsky	https://sun9-34.userapi.com/c857624/v857624736/16e747/hTmEoseyGwM.jpg?ava=1	306084312	2020-02-05 20:31:17.203226+03	f	\N	\N	0
714	\N	Felphophim	\N	https://yt3.ggpht.com/a/AGF-l79R4aJZGwWBfWy-2BnpJbDfVBe-hysQ6d92cQ=s800-c-k-c0xffffffff-no-rj-mo	UCEjtqDp31ShxoHHhM5uLB8w	2020-02-05 20:24:18.849999+03	f	\N	\N	1
751	\N	Дмитрий Петренко	\N	https://yt3.ggpht.com/a/AGF-l7-mN1pL3W9BpF6X7NMKfUJxuDKjHJxeFjvEmw=s800-c-k-c0xffffffff-no-rj-mo	UCDEFAsL3cm1l1zTG1iRsRtQ	2020-02-05 20:47:23.248206+03	f	\N	\N	0
720	\N	CakeDee	\N	https://yt3.ggpht.com/a/AGF-l79buhAeDFSlPR3GfXLDh5_tGLetSPklJnz0AA=s800-c-k-c0xffffffff-no-rj-mo	UCFCQqVYA7PCA-iSsQU9hslw	2020-02-05 20:39:01.866586+03	f	\N	\N	1
752	\N	Evgeny	Eroshkin	https://sun9-17.userapi.com/c856024/v856024921/14ffa8/G4vqy-p4XSI.jpg?ava=1	516735649	2020-02-05 20:47:24.622654+03	f	\N	\N	1
721	\N	Nikita BS	\N	https://yt3.ggpht.com/a/AGF-l7-xAQWa9Kq64G9NFOvEIEiFkq0ktJcAyyNp7g=s800-c-k-c0xffffffff-no-rj-mo	UCG5iqFoYyV6SbPjhjPNu_aQ	2020-02-05 20:39:31.993222+03	f	\N	\N	0
729	\N	IvanNamberOne	\N	https://yt3.ggpht.com/a/AGF-l79zEAz6_fYN0mVexAfsHSQmNsa5rY-Gb8GkVg=s800-c-k-c0xffffffff-no-rj-mo	UCt_zEqR9Ppd8qRIriE82K9Q	2020-02-05 20:40:11.390278+03	f	\N	\N	0
730	\N	Bodya Z	\N	https://yt3.ggpht.com/a/AGF-l7-j6dFGpsmUzl9FT_U1IJ6o-ThwDX7XqLfy4w=s800-c-k-c0xffffffff-no-rj-mo	UCzd9GrPZSfGisjo-rx4y26Q	2020-02-05 20:40:22.94263+03	f	\N	\N	0
733	\N	Sasha	Ruzavin	https://sun9-36.userapi.com/c204820/v204820252/16fe3/9QMAogEYWAE.jpg?ava=1	277122221	2020-02-05 20:40:33.116367+03	f	\N	\N	0
739	\N	Maxim	Gritsay	https://sun9-18.userapi.com/c849036/v849036363/195819/PyIB3A5CV2o.jpg?ava=1	247139429	2020-02-05 20:41:42.759779+03	f	\N	\N	0
741	\N	Влад Панько	\N	https://yt3.ggpht.com/a/AGF-l7-F5iLiwot0SVKZ9M2pjrABPUa-6L_yjKsHlg=s800-c-k-c0xffffffff-no-rj-mo	UCd9YXqSBBIJHfMBftF7-qXw	2020-02-05 20:42:09.327823+03	f	\N	\N	0
742	\N	Music Channel	\N	https://yt3.ggpht.com/a/AGF-l79217CPzpkB385sNYSpvX26mO-rfOTgIE8bmA=s800-c-k-c0xffffffff-no-rj-mo	UCSMvM0eWlDgIsLeq1eMBhQA	2020-02-05 20:42:12.005456+03	f	\N	\N	0
749	\N	Dima	Kasapov	https://sun9-32.userapi.com/c852236/v852236400/ca163/5OtZeVtwZFM.jpg?ava=1	533510111	2020-02-05 20:45:16.807593+03	f	\N	\N	0
735	\N	Islam	Khamidullin	https://sun9-44.userapi.com/c857420/v857420763/5b478/wHcQQl3_Wfc.jpg?ava=1	505979479	2020-02-05 20:40:57.726836+03	f	\N	\N	1
103	mishavovkogon	Галкин Класный	\N	https://yt3.ggpht.com/a/AGF-l78Le1zOi1Tao5XZhSthqWIllWoWdDxepOg9lA=s800-c-k-c0xffffffff-no-rj-mo	UC2RLV3mRvSWpKVuvQGxQ9CA	2020-01-26 13:36:02.948934+03	f	\N	\N	4
736	\N	Igor	Tokarev	https://sun6-16.userapi.com/c850620/v850620194/14dfe6/Tklsbyw6P6U.jpg?ava=1	487312246	2020-02-05 20:40:58.218711+03	f	\N	\N	1
738	\N	Endr	Tosya	https://vk.com/images/camera_200.png?ava=1	396276307	2020-02-05 20:41:36.899929+03	f	\N	\N	1
753	\N	Anton	Epik	https://sun9-4.userapi.com/c851320/v851320695/72303/vFrpiRsQ2GY.jpg?ava=1	221655521	2020-02-05 20:48:00.492194+03	f	\N	\N	0
722	\N	Semyon	Ragrin	https://sun9-16.userapi.com/c205324/v205324956/6722/xhmM2DfZgQI.jpg?ava=1	293365313	2020-02-05 20:39:37.295209+03	f	\N	\N	1
743	\N	Alexander	Rozhok	https://sun9-29.userapi.com/c851228/v851228091/144dfb/PyiZs4h3gJc.jpg?ava=1	312831892	2020-02-05 20:42:32.47687+03	f	\N	\N	1
772	\N	Vitalik	Maly	https://sun9-29.userapi.com/c622422/v622422701/207d9/P-0R1nK9i2k.jpg?ava=1	207671701	2020-02-06 19:02:17.950772+03	f	\N	\N	1
773	\N	Vladimir	Yurkov	https://sun6-16.userapi.com/c850132/v850132941/d8aa5/R-GnqkJOzoU.jpg?ava=1	223750819	2020-02-06 19:16:25.803517+03	f	\N	\N	0
774	\N	Movavi Clips	\N	https://yt3.ggpht.com/a/AGF-l7-dFBDetMVOTuBlHe14mKaOzlwmCpPV8TVuhQ=s800-c-k-c0xffffffff-no-rj-mo	UCE2rIcTKHIbI2Q1qP25DxTA	2020-02-06 23:37:04.32487+03	f	\N	\N	0
775	\N	Vanya	Goroshko	https://sun9-68.userapi.com/c854024/v854024729/1d698d/RQmDmVqAKxE.jpg?ava=1	319056165	2020-02-07 07:56:02.94102+03	f	\N	\N	0
761	0T_0_go_mk2	music for games	\N	https://yt3.ggpht.com/a/AGF-l78DWDw4AUZm6RYkEAjIFQ9hGZ6YXW1sYFAGMQ=s800-c-k-c0xffffffff-no-rj-mo	UCJ3V1q9NlUbGEn4Hr_YBMZQ	2020-02-06 04:01:15.9157+03	f	\N	\N	3
769	\N	6_E_R_M_I_X	\N	https://yt3.ggpht.com/a/AGF-l7_aLqFYyU_QFDJgoH97eX3R5r1wu9_jEp9_Tw=s800-c-k-c0xffffffff-no-rj-mo	UCU65oHji96XmFRrbFZ4TZ3g	2020-02-06 12:16:48.349142+03	f	\N	\N	0
755	ismail 	ismail	\N	https://yt3.ggpht.com/a/AGF-l7_0jTzLA_0rOO9momAmRtYJptYFMA_d90KM1g=s800-c-k-c0xffffffff-no-rj-mo	UCFQSeoJCb1cHh-aBJW1EKFA	2020-02-05 20:54:34.454781+03	f	\N	\N	0
756	\N	Aygiz	Zamanov	https://sun9-18.userapi.com/c857432/v857432434/15fb6c/_5fyMNuGCsA.jpg?ava=1	420911853	2020-02-05 20:58:25.552093+03	f	\N	\N	0
754	\N	Danil	Seleznyov	https://sun9-55.userapi.com/c852136/v852136741/1b755e/k1MajYi-5-s.jpg?ava=1	242085637	2020-02-05 20:48:15.518747+03	f	\N	\N	1
757	\N	Rooblic	\N	https://yt3.ggpht.com/a/AGF-l7858btRPNLPUA9TJ7Cj31drLHY-dRvF1ZVwNA=s800-c-k-c0xffffffff-no-rj-mo	UCv18bgcCBrKMj41WAEkaLOg	2020-02-05 21:09:07.596541+03	f	\N	\N	0
762	\N	Nikit	Abramov	https://sun9-7.userapi.com/c853520/v853520643/17a514/O53gZTsoh1U.jpg?ava=1	518382734	2020-02-06 06:21:07.853093+03	f	\N	\N	2
704	xX.ROR.Xx 	женя шилин	\N	https://yt3.ggpht.com/a/AGF-l79ypNhWHjVMOhBJ9UkaZTZQTZU66zOXkFpAcw=s800-c-k-c0xffffffff-no-rj-mo	UCU49LxZCIif8mJ0gWrYLSrQ	2020-02-05 13:38:39.039753+03	f	\N	\N	3
759	\N	Romi	Aysky	https://sun6-13.userapi.com/-GwqFmrD7siBgQD7SHeTC8E4m257HkCWHxVtkg/E3Ii2cD3vzk.jpg?ava=1	533072453	2020-02-05 22:26:07.982964+03	f	\N	\N	0
760	\N	Ruslan	Pireev	https://sun9-26.userapi.com/c854320/v854320624/98692/ICh8R4XxI8w.jpg?ava=1	497928020	2020-02-06 02:38:58.643787+03	f	\N	\N	0
763	\N	Saint	Fox	https://sun9-21.userapi.com/c850720/v850720345/c5f84/4CCmM_T0G4E.jpg?ava=1	367525803	2020-02-06 08:11:36.289706+03	f	\N	\N	1
764	\N	Vadim	Zhernakov	https://sun6-14.userapi.com/c857624/v857624899/fd21d/Zrw3Cgc2SG4.jpg?ava=1	213849237	2020-02-06 08:49:25.693806+03	f	\N	\N	0
766	\N	SOKOL - PRO_55	\N	https://yt3.ggpht.com/a/AGF-l79dov-wkd4UN71yl0elr5WYY8NFzv_g_aeUsA=s800-c-k-c0xffffffff-no-rj-mo	UC4-P1Id3k6D-SAE7f2c9Wxg	2020-02-06 10:02:55.274412+03	f	\N	\N	0
765	\N	Artyom	Nagaytsev	https://sun9-46.userapi.com/c851220/v851220361/19cc19/1aqmRYAc7zU.jpg?ava=1	466763855	2020-02-06 08:56:55.912143+03	f	\N	\N	0
767	\N	Bural	Meyv	https://sun9-34.userapi.com/c857020/v857020133/c1072/gubGmItGAk4.jpg?ava=1	579977961	2020-02-06 10:27:27.391708+03	f	\N	\N	0
768	\N	Max	Krivetsky	https://sun9-69.userapi.com/c855320/v855320056/283f2/SzvGrlCmPYY.jpg?ava=1	207201264	2020-02-06 10:53:52.30875+03	f	\N	\N	0
770	\N	Ivan	Karmyshov	https://sun9-68.userapi.com/c636819/v636819696/29f5/6o0KqLigHbU.jpg?ava=1	340423696	2020-02-06 12:40:11.874363+03	f	\N	\N	1
771	\N	Artem	Golyushov	https://sun9-11.userapi.com/c854328/v854328460/1760c2/ghLU36U5uTI.jpg?ava=1	530386420	2020-02-06 16:41:37.831444+03	f	\N	\N	1
776	\N	Vadim	Scherbakov	https://sun6-16.userapi.com/c855328/v855328527/18813c/M4lGTyDmH6Q.jpg?ava=1	388231969	2020-02-08 10:01:02.939297+03	f	\N	\N	0
777	\N	Bag9l	\N	https://yt3.ggpht.com/a/AGF-l7_OBKQOEdpvx3elzXpmTVfEMDrh54dB24DdZQ=s800-c-k-c0xffffffff-no-rj-mo	UCTjJ7-jotvLJF4lIaFUOkTQ	2020-02-08 14:17:10.112442+03	f	\N	\N	0
758	\N	Brawl Boy	\N	https://yt3.ggpht.com/a/AGF-l7-187WU_RsLkaeWmSrbIzCF3qNC95nRvjPb7Q=s800-c-k-c0xffffffff-no-rj-mo	UCR8f6p7xiWMY5Goh5VsmVDg	2020-02-05 21:30:30.505413+03	f	\N	\N	0
\.


--
-- TOC entry 3079 (class 0 OID 17385)
-- Dependencies: 240
-- Data for Name: VideoTimelines; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."VideoTimelines" ("Id", "UserId", "VideoId", "Timeline", "RealTime", "Counter", "Duration") FROM stdin;
392	418	q-1ZOrPRTTY	4000	1580057167000	0	617000
3	0	\N	0	1578746875000	0	0
33	56	XVS7v5D_nfk	48000	1579946097000	40000	625000
53	80	XVS7v5D_nfk	320000	1579990405000	315000	625000
42	63	XVS7v5D_nfk	280000	1579950611000	317000	625000
65	96	XVS7v5D_nfk	301000	1580035425000	314000	625000
61	87	XVS7v5D_nfk	399000	1580034534000	316000	625000
2	1	123	440000	1578749188000	350000	700000
6	14	0I647GU3Jsc	101000	1579715609000	95000	189000
23	50	XVS7v5D_nfk	363000	1579943559000	79000	625000
8	16	0I647GU3Jsc	105000	1579754730000	99000	189000
4	14	7wtfhZwyrcc	120000	1579092330000	118000	216000
12	19	pR2zNdhCTUk	395000	1579800504000	635000	1408000
40	61	XVS7v5D_nfk	85000	1579947503000	80000	625000
69	101	XVS7v5D_nfk	40000	1580035207000	314000	625000
13	24	pR2zNdhCTUk	35000	1579882111000	30000	1408000
9	16	uAcALH67-2A	50000	1579754812000	45000	323000
14	45	pR2zNdhCTUk	419000	1579898839000	0	1408000
52	78	XVS7v5D_nfk	319000	1579986844000	315000	625000
24	48	XVS7v5D_nfk	344000	1579944028000	313000	625000
11	34	pR2zNdhCTUk	731000	1579756790000	705000	1408000
25	51	XVS7v5D_nfk	205000	1579946385000	314000	625000
27	52	XVS7v5D_nfk	424000	1579944162000	23000	625000
45	69	XVS7v5D_nfk	321000	1579956815000	315000	625000
38	59	XVS7v5D_nfk	310000	1580059418000	315000	625000
37	68	XVS7v5D_nfk	323000	1579948694000	316000	625000
5	14	kJQP7kiw5Fk	109000	1579695327000	143000	281000
7	14	uAcALH67-2A	75000	1579725979000	163000	323000
32	55	XVS7v5D_nfk	120000	1579946501000	313000	625000
15	19	XVS7v5D_nfk	10000	1580222852000	314000	625000
19	47	XVS7v5D_nfk	277000	1579943609000	317000	625000
49	75	XVS7v5D_nfk	175000	1579979692000	314000	625000
10	16	pR2zNdhCTUk	233000	1579755875000	707000	1408000
77	152	XVS7v5D_nfk	20000	1580296462000	79000	625000
47	72	XVS7v5D_nfk	319000	1579961585000	315000	625000
20	123	XVS7v5D_nfk	439000	1579943647000	315000	625000
29	53	XVS7v5D_nfk	295000	1579944910000	314000	625000
51	77	XVS7v5D_nfk	264000	1580047871000	313000	625000
28	82	XVS7v5D_nfk	296000	1579944624000	316000	625000
30	44	XVS7v5D_nfk	245000	1579944918000	317000	625000
89	125	XVS7v5D_nfk	5000	1580049189000	291000	625000
48	74	XVS7v5D_nfk	30000	1579974677000	25000	625000
36	58	XVS7v5D_nfk	20000	1579946576000	15000	625000
85	118	XVS7v5D_nfk	478000	1580035856000	317000	625000
41	62	XVS7v5D_nfk	328000	1579949326000	315000	625000
17	46	XVS7v5D_nfk	295000	1579943529000	313000	625000
31	54	XVS7v5D_nfk	212000	1579945328000	314000	625000
67	99	XVS7v5D_nfk	320000	1580035155000	315000	625000
44	67	XVS7v5D_nfk	20000	1579956228000	15000	625000
34	57	XVS7v5D_nfk	314000	1579946655000	316000	625000
56	83	XVS7v5D_nfk	311000	1580019148000	317000	625000
16	34	XVS7v5D_nfk	496000	1580113063000	540000	625000
76	112	XVS7v5D_nfk	322000	1580035600000	315000	625000
59	86	XVS7v5D_nfk	455000	1580032247000	315000	625000
46	70	XVS7v5D_nfk	473000	1579958216000	317000	625000
39	60	XVS7v5D_nfk	140000	1580030896000	316000	625000
21	49	XVS7v5D_nfk	295000	1580057541000	315000	625000
57	130	XVS7v5D_nfk	326000	1580029726000	317000	625000
63	91	XVS7v5D_nfk	140000	1580034777000	184000	625000
60	95	XVS7v5D_nfk	320000	1580034510000	314000	625000
70	97	XVS7v5D_nfk	60000	1580034934000	55000	625000
50	76	XVS7v5D_nfk	325000	1579981884000	317000	625000
64	90	XVS7v5D_nfk	271000	1580034952000	317000	625000
54	81	XVS7v5D_nfk	326000	1579991769000	315000	625000
55	71	XVS7v5D_nfk	279000	1580036037000	316000	625000
62	88	XVS7v5D_nfk	251000	1580034672000	315000	625000
71	102	XVS7v5D_nfk	324000	1580035282000	316000	625000
73	104	XVS7v5D_nfk	320000	1580035468000	315000	625000
74	106	XVS7v5D_nfk	323000	1580035398000	317000	625000
75	110	XVS7v5D_nfk	5000	1580035240000	40000	625000
68	100	XVS7v5D_nfk	35000	1580034890000	30000	625000
79	116	XVS7v5D_nfk	93000	1580035404000	78000	625000
35	12	XVS7v5D_nfk	104000	1580056850000	317000	625000
84	119	XVS7v5D_nfk	273000	1580060011000	316000	625000
66	98	XVS7v5D_nfk	319000	1580035151000	314000	625000
82	114	XVS7v5D_nfk	109000	1580037613000	313000	625000
72	105	XVS7v5D_nfk	353000	1580035349000	315000	625000
18	25	XVS7v5D_nfk	313000	1580035302000	320000	625000
81	117	XVS7v5D_nfk	5000	1580035359000	0	625000
43	93	XVS7v5D_nfk	223000	1580035762000	316000	625000
26	24	XVS7v5D_nfk	295000	1580035633000	316000	625000
86	111	XVS7v5D_nfk	327000	1580035876000	317000	625000
106	142	XVS7v5D_nfk	73000	1580036657000	68000	625000
80	113	XVS7v5D_nfk	289000	1580035678000	317000	625000
87	121	XVS7v5D_nfk	487000	1580035965000	315000	625000
90	126	XVS7v5D_nfk	256000	1580036317000	314000	625000
88	122	XVS7v5D_nfk	322000	1580035988000	316000	625000
94	131	XVS7v5D_nfk	260000	1580036548000	315000	625000
93	127	XVS7v5D_nfk	606000	1580036040000	0	625000
83	120	XVS7v5D_nfk	25000	1580056397000	193000	625000
22	159	XVS7v5D_nfk	269000	1580044937000	314000	625000
78	115	XVS7v5D_nfk	67000	1580036396000	316000	625000
99	133	XVS7v5D_nfk	305000	1580036632000	317000	625000
97	134	XVS7v5D_nfk	331000	1580036558000	317000	625000
133	174	XVS7v5D_nfk	250000	1580038793000	316000	625000
120	161	XVS7v5D_nfk	319000	1580037983000	315000	625000
98	135	XVS7v5D_nfk	35000	1580521906000	38000	625000
112	149	XVS7v5D_nfk	322000	1580037349000	316000	625000
146	188	XVS7v5D_nfk	294000	1580040014000	313000	625000
123	162	XVS7v5D_nfk	319000	1580038097000	313000	625000
141	182	XVS7v5D_nfk	333000	1580039735000	316000	625000
111	145	XVS7v5D_nfk	265000	1580037153000	313000	625000
147	187	XVS7v5D_nfk	320000	1580040016000	314000	625000
114	148	XVS7v5D_nfk	320000	1580037443000	313000	625000
127	167	XVS7v5D_nfk	335000	1580038312000	313000	625000
158	199	XVS7v5D_nfk	319000	1580040917000	313000	625000
109	146	XVS7v5D_nfk	20000	1580036795000	15000	625000
151	193	XVS7v5D_nfk	311000	1580040387000	315000	625000
130	170	XVS7v5D_nfk	350000	1580038394000	314000	625000
101	138	XVS7v5D_nfk	319000	1580036676000	314000	625000
110	147	XVS7v5D_nfk	134000	1580037175000	317000	625000
136	177	XVS7v5D_nfk	10000	1580038578000	5000	625000
95	94	XVS7v5D_nfk	366000	1580036588000	313000	625000
170	211	XVS7v5D_nfk	320000	1580041764000	315000	625000
118	155	XVS7v5D_nfk	15000	1580037778000	316000	625000
105	141	XVS7v5D_nfk	326000	1580036806000	315000	625000
108	144	XVS7v5D_nfk	10000	1580037094000	313000	625000
124	164	XVS7v5D_nfk	165000	1580038583000	315000	625000
140	181	XVS7v5D_nfk	118000	1580039140000	140000	625000
91	129	XVS7v5D_nfk	320000	1580036303000	315000	625000
135	176	XVS7v5D_nfk	322000	1580038829000	314000	625000
107	143	XVS7v5D_nfk	254000	1580037013000	315000	625000
128	168	XVS7v5D_nfk	321000	1580038334000	316000	625000
129	169	XVS7v5D_nfk	200000	1580038746000	313000	625000
137	178	XVS7v5D_nfk	300000	1580038940000	316000	625000
102	139	XVS7v5D_nfk	320000	1580036720000	313000	625000
122	163	XVS7v5D_nfk	277000	1580038115000	316000	625000
100	136	XVS7v5D_nfk	322000	1580036612000	315000	625000
96	132	XVS7v5D_nfk	328000	1580036547000	317000	625000
156	195	XVS7v5D_nfk	320000	1580040846000	316000	625000
165	203	XVS7v5D_nfk	75000	1580041071000	69000	625000
92	128	XVS7v5D_nfk	325000	1580036320000	313000	625000
113	151	XVS7v5D_nfk	30000	1580037207000	73000	625000
126	166	XVS7v5D_nfk	320000	1580038155000	315000	625000
115	39	XVS7v5D_nfk	616000	1580037505000	318000	625000
134	175	XVS7v5D_nfk	152000	1580038495000	18000	625000
125	165	XVS7v5D_nfk	309000	1580038162000	317000	625000
117	156	XVS7v5D_nfk	300000	1580037645000	317000	625000
121	160	XVS7v5D_nfk	308000	1580037737000	57000	625000
143	183	XVS7v5D_nfk	244000	1580040268000	317000	625000
131	172	XVS7v5D_nfk	322000	1580038499000	317000	625000
132	124	XVS7v5D_nfk	410000	1580038607000	253000	625000
119	158	XVS7v5D_nfk	241000	1580037877000	315000	625000
144	185	XVS7v5D_nfk	260000	1580039890000	314000	625000
161	201	XVS7v5D_nfk	10000	1580092504000	119000	625000
103	103	XVS7v5D_nfk	344000	1580056903000	316000	625000
166	205	XVS7v5D_nfk	322000	1580041474000	316000	625000
149	191	XVS7v5D_nfk	321000	1580040367000	316000	625000
139	180	XVS7v5D_nfk	321000	1580039257000	315000	625000
116	150	XVS7v5D_nfk	26000	1580038912000	20000	625000
159	197	XVS7v5D_nfk	15000	1580040606000	10000	625000
163	202	XVS7v5D_nfk	326000	1580041292000	314000	625000
138	179	XVS7v5D_nfk	319000	1580039184000	313000	625000
155	189	XVS7v5D_nfk	285000	1580040609000	317000	625000
157	198	XVS7v5D_nfk	318000	1580040910000	313000	625000
145	186	XVS7v5D_nfk	335000	1580039814000	313000	625000
153	65	XVS7v5D_nfk	320000	1580040535000	314000	625000
148	184	XVS7v5D_nfk	322000	1580040894000	317000	625000
162	92	XVS7v5D_nfk	152000	1580647440000	315000	625000
150	192	XVS7v5D_nfk	320000	1580040377000	313000	625000
154	194	XVS7v5D_nfk	292000	1580040937000	316000	625000
160	200	XVS7v5D_nfk	80000	1580040957000	317000	625000
168	207	XVS7v5D_nfk	576000	1580041353000	34000	625000
172	213	XVS7v5D_nfk	28000	1580041818000	0	625000
164	204	XVS7v5D_nfk	328000	1580041314000	317000	625000
171	210	XVS7v5D_nfk	431000	1580041851000	313000	625000
167	206	XVS7v5D_nfk	321000	1580041591000	316000	625000
169	209	XVS7v5D_nfk	228000	1580041727000	314000	625000
175	215	XVS7v5D_nfk	10000	1580042106000	5000	625000
173	214	XVS7v5D_nfk	19000	1580042001000	75000	625000
174	212	XVS7v5D_nfk	321000	1580042249000	313000	625000
176	216	XVS7v5D_nfk	5000	1580042212000	103000	625000
177	218	XVS7v5D_nfk	169000	1580042459000	165000	625000
179	221	XVS7v5D_nfk	25000	1580042645000	20000	625000
178	219	XVS7v5D_nfk	315000	1580042744000	315000	625000
180	220	XVS7v5D_nfk	327000	1580042985000	315000	625000
152	190	XVS7v5D_nfk	286000	1580052911000	313000	625000
181	222	XVS7v5D_nfk	330000	1580043027000	315000	625000
184	225	XVS7v5D_nfk	25000	1580047411000	97000	625000
183	224	XVS7v5D_nfk	321000	1580043364000	332000	625000
401	370	q-1ZOrPRTTY	278000	1580057570000	311000	617000
182	223	XVS7v5D_nfk	46000	1580057532000	315000	625000
142	16	XVS7v5D_nfk	35000	1580821511000	194000	625000
219	261	XVS7v5D_nfk	582000	1580048781000	320000	625000
187	228	XVS7v5D_nfk	10000	1580044339000	314000	625000
186	227	XVS7v5D_nfk	320000	1580043746000	315000	625000
217	258	XVS7v5D_nfk	295000	1580048070000	317000	625000
208	248	XVS7v5D_nfk	264000	1580047087000	313000	625000
242	289	XVS7v5D_nfk	25000	1580055262000	313000	625000
227	273	XVS7v5D_nfk	150000	1580051465000	145000	625000
199	239	XVS7v5D_nfk	287000	1580045493000	317000	625000
237	283	XVS7v5D_nfk	321000	1580054446000	314000	625000
192	43	XVS7v5D_nfk	249000	1580044791000	314000	625000
248	296	XVS7v5D_nfk	5000	1580055544000	0	625000
215	255	XVS7v5D_nfk	335000	1580047987000	315000	625000
260	318	XVS7v5D_nfk	290000	1580056105000	315000	625000
246	293	XVS7v5D_nfk	624000	1580055488000	63000	625000
204	245	XVS7v5D_nfk	320000	1580046409000	315000	625000
200	240	XVS7v5D_nfk	285000	1580155915000	315000	625000
189	230	XVS7v5D_nfk	5000	1580044003000	10000	625000
226	270	XVS7v5D_nfk	322000	1580051499000	317000	625000
245	291	XVS7v5D_nfk	230000	1580055785000	317000	625000
231	277	XVS7v5D_nfk	320000	1580052635000	317000	625000
234	280	XVS7v5D_nfk	335000	1580053524000	315000	625000
213	253	XVS7v5D_nfk	255000	1580047631000	314000	625000
207	247	XVS7v5D_nfk	235000	1580046643000	316000	625000
194	235	XVS7v5D_nfk	620000	1580044828000	315000	625000
228	274	XVS7v5D_nfk	15000	1580051525000	78000	625000
203	243	XVS7v5D_nfk	269000	1580045884000	316000	625000
235	281	XVS7v5D_nfk	26000	1580053615000	21000	625000
196	234	XVS7v5D_nfk	321000	1580044853000	314000	625000
197	237	XVS7v5D_nfk	182000	1580044854000	141000	625000
202	242	XVS7v5D_nfk	625000	1580046095000	696000	625000
222	265	XVS7v5D_nfk	294000	1580050474000	314000	625000
185	226	XVS7v5D_nfk	301000	1580043680000	313000	625000
210	250	XVS7v5D_nfk	302000	1580047233000	316000	625000
191	233	XVS7v5D_nfk	324000	1580044671000	316000	625000
273	329	XVS7v5D_nfk	13000	1580208630000	315000	625000
209	249	XVS7v5D_nfk	374000	1580046807000	18000	625000
195	236	XVS7v5D_nfk	15000	1580098162000	10000	625000
193	232	XVS7v5D_nfk	322000	1580044763000	317000	625000
201	241	XVS7v5D_nfk	321000	1580045641000	314000	625000
188	229	XVS7v5D_nfk	319000	1580044255000	314000	625000
243	290	XVS7v5D_nfk	337000	1580055418000	36000	625000
205	244	XVS7v5D_nfk	319000	1580046456000	317000	625000
230	276	XVS7v5D_nfk	293000	1580051986000	313000	625000
216	259	XVS7v5D_nfk	322000	1580048032000	316000	625000
212	252	XVS7v5D_nfk	329000	1580080205000	316000	625000
198	238	XVS7v5D_nfk	319000	1580045328000	314000	625000
238	285	XVS7v5D_nfk	69000	1580054377000	63000	625000
211	251	XVS7v5D_nfk	325000	1580047544000	313000	625000
206	246	XVS7v5D_nfk	326000	1580046476000	316000	625000
190	231	XVS7v5D_nfk	297000	1580048871000	317000	625000
218	260	XVS7v5D_nfk	322000	1580048285000	314000	625000
214	254	XVS7v5D_nfk	275000	1580047789000	315000	625000
220	263	XVS7v5D_nfk	295000	1580049113000	313000	625000
221	262	XVS7v5D_nfk	325000	1580049118000	315000	625000
236	284	XVS7v5D_nfk	287000	1580117762000	315000	625000
223	266	XVS7v5D_nfk	65000	1580097888000	116000	625000
225	268	XVS7v5D_nfk	320000	1580050946000	315000	625000
257	304	XVS7v5D_nfk	320000	1580055991000	315000	625000
233	279	XVS7v5D_nfk	284000	1580052722000	317000	625000
229	275	XVS7v5D_nfk	368000	1580051862000	315000	625000
232	278	XVS7v5D_nfk	172000	1580052467000	165000	625000
247	297	XVS7v5D_nfk	270000	1580118214000	314000	625000
241	286	XVS7v5D_nfk	323000	1580054951000	317000	625000
240	288	XVS7v5D_nfk	90000	1580054695000	84000	625000
255	302	XVS7v5D_nfk	115000	1580055715000	104000	625000
244	292	XVS7v5D_nfk	319000	1580055710000	315000	625000
272	327	XVS7v5D_nfk	313000	1580056195000	315000	625000
267	326	XVS7v5D_nfk	220000	1580055917000	72000	625000
239	287	XVS7v5D_nfk	205000	1580055972000	315000	625000
250	303	XVS7v5D_nfk	481000	1580055693000	70000	625000
251	299	XVS7v5D_nfk	220000	1580056247000	315000	625000
249	301	XVS7v5D_nfk	330000	1580055880000	316000	625000
104	140	XVS7v5D_nfk	322000	1580057760000	316000	625000
265	324	XVS7v5D_nfk	294000	1580056139000	313000	625000
261	317	XVS7v5D_nfk	335000	1580055816000	81000	625000
274	315	XVS7v5D_nfk	0	1580056775000	84000	625000
268	312	XVS7v5D_nfk	328000	1580056170000	322000	625000
259	314	XVS7v5D_nfk	64000	1580056276000	314000	625000
271	319	XVS7v5D_nfk	320000	1580056148000	314000	625000
224	264	XVS7v5D_nfk	304000	1580056954000	315000	625000
254	307	XVS7v5D_nfk	306000	1580055924000	315000	625000
393	292	q-1ZOrPRTTY	315000	1580057490000	310000	617000
252	300	XVS7v5D_nfk	320000	1580055891000	315000	625000
266	295	XVS7v5D_nfk	290000	1580056125000	316000	625000
264	325	XVS7v5D_nfk	321000	1580056100000	316000	625000
275	331	XVS7v5D_nfk	145000	1580056282000	314000	625000
269	153	XVS7v5D_nfk	340000	1580056163000	313000	625000
262	323	XVS7v5D_nfk	320000	1580056078000	315000	625000
256	308	XVS7v5D_nfk	250000	1580055958000	313000	625000
395	414	XVS7v5D_nfk	262000	1580057230000	24000	625000
276	330	XVS7v5D_nfk	35000	1580102647000	221000	625000
325	385	XVS7v5D_nfk	25000	1580056903000	40000	625000
340	351	q-1ZOrPRTTY	310000	1580057332000	310000	617000
278	334	XVS7v5D_nfk	319000	1580056249000	313000	625000
330	392	XVS7v5D_nfk	15000	1580056976000	10000	625000
297	321	XVS7v5D_nfk	321000	1580056604000	315000	625000
344	332	q-1ZOrPRTTY	145000	1580057341000	312000	617000
313	369	XVS7v5D_nfk	305000	1580056970000	313000	625000
290	346	XVS7v5D_nfk	321000	1580056323000	191000	625000
347	330	q-1ZOrPRTTY	321000	1580057364000	312000	617000
294	351	XVS7v5D_nfk	320000	1580056498000	315000	625000
263	305	XVS7v5D_nfk	320000	1580056154000	315000	625000
279	332	XVS7v5D_nfk	320000	1580056252000	315000	625000
296	352	XVS7v5D_nfk	320000	1580056529000	315000	625000
324	384	XVS7v5D_nfk	88000	1580056970000	74000	625000
311	368	XVS7v5D_nfk	323000	1580056927000	317000	625000
280	339	XVS7v5D_nfk	290000	1580056301000	314000	625000
302	358	XVS7v5D_nfk	312000	1580056762000	315000	625000
333	387	XVS7v5D_nfk	388000	1580057178000	191000	625000
304	361	XVS7v5D_nfk	36000	1580056502000	32000	625000
285	322	XVS7v5D_nfk	10000	1580056102000	40000	625000
258	313	XVS7v5D_nfk	227000	1580056030000	319000	625000
291	348	XVS7v5D_nfk	100000	1580056454000	315000	625000
299	355	XVS7v5D_nfk	319000	1580056693000	314000	625000
283	338	XVS7v5D_nfk	326000	1580056330000	316000	625000
292	349	XVS7v5D_nfk	250000	1580056479000	317000	625000
270	311	XVS7v5D_nfk	298000	1580056162000	313000	625000
309	366	XVS7v5D_nfk	325000	1580056864000	314000	625000
281	340	XVS7v5D_nfk	5000	1580068790000	292000	625000
293	350	XVS7v5D_nfk	35000	1580056262000	44000	625000
314	372	XVS7v5D_nfk	319000	1580056996000	315000	625000
300	354	XVS7v5D_nfk	337000	1580056724000	313000	625000
351	189	q-1ZOrPRTTY	227000	1580057262000	220000	617000
284	310	XVS7v5D_nfk	320000	1580056338000	315000	625000
301	357	XVS7v5D_nfk	318000	1580056672000	313000	625000
306	364	XVS7v5D_nfk	320000	1580056839000	315000	625000
318	377	XVS7v5D_nfk	320000	1580057065000	315000	625000
319	380	XVS7v5D_nfk	305000	1580057161000	313000	625000
286	345	XVS7v5D_nfk	320000	1580056366000	315000	625000
298	356	XVS7v5D_nfk	29000	1580056367000	24000	625000
342	42	q-1ZOrPRTTY	597000	1580057178000	151000	617000
282	341	XVS7v5D_nfk	321000	1580056316000	316000	625000
303	359	XVS7v5D_nfk	105000	1580057016000	315000	625000
365	399	q-1ZOrPRTTY	5000	1580057168000	88000	617000
308	363	XVS7v5D_nfk	267000	1580056997000	256000	625000
317	376	XVS7v5D_nfk	5000	1580056732000	0	625000
287	343	XVS7v5D_nfk	339000	1580056418000	315000	625000
329	390	XVS7v5D_nfk	492000	1580057030000	131000	625000
338	388	q-1ZOrPRTTY	10000	1580057018000	5000	617000
295	353	XVS7v5D_nfk	320000	1580056520000	315000	625000
305	360	XVS7v5D_nfk	70000	1580056522000	65000	625000
288	347	XVS7v5D_nfk	294000	1580063158000	313000	625000
331	393	XVS7v5D_nfk	624000	1580056974000	5000	625000
323	382	XVS7v5D_nfk	300000	1580217963000	315000	625000
312	370	XVS7v5D_nfk	155000	1580056974000	316000	625000
327	388	XVS7v5D_nfk	20000	1580056890000	15000	625000
328	386	XVS7v5D_nfk	25000	1580056917000	20000	625000
320	381	XVS7v5D_nfk	259000	1580057301000	315000	625000
316	373	XVS7v5D_nfk	320000	1580057035000	315000	625000
334	394	XVS7v5D_nfk	295000	1580057496000	315000	625000
310	367	XVS7v5D_nfk	221000	1580057038000	316000	625000
336	363	q-1ZOrPRTTY	312000	1580057323000	311000	617000
348	137	XVS7v5D_nfk	324000	1580087356000	97000	625000
356	396	XVS7v5D_nfk	190000	1580057299000	194000	625000
343	73	XVS7v5D_nfk	371000	1580057346000	317000	625000
366	313	q-1ZOrPRTTY	315000	1580057393000	309000	617000
339	334	q-1ZOrPRTTY	265000	1580057337000	311000	617000
332	391	XVS7v5D_nfk	70000	1580057039000	65000	625000
364	397	XVS7v5D_nfk	319000	1580057393000	315000	625000
363	398	XVS7v5D_nfk	318000	1580057389000	313000	625000
337	349	q-1ZOrPRTTY	315000	1580057321000	310000	617000
394	421	q-1ZOrPRTTY	316000	1580057516000	311000	617000
321	378	XVS7v5D_nfk	320000	1580057110000	314000	625000
359	153	q-1ZOrPRTTY	325000	1580057383000	311000	617000
277	333	XVS7v5D_nfk	253000	1580057528000	313000	625000
358	310	q-1ZOrPRTTY	315000	1580057370000	310000	617000
357	318	q-1ZOrPRTTY	269000	1580057426000	312000	617000
361	311	q-1ZOrPRTTY	10000	1580057069000	5000	617000
289	344	XVS7v5D_nfk	10000	1580057308000	314000	625000
360	357	q-1ZOrPRTTY	180000	1580060044000	309000	617000
397	411	q-1ZOrPRTTY	323000	1580057546000	311000	617000
315	374	XVS7v5D_nfk	270000	1580057073000	315000	625000
326	383	XVS7v5D_nfk	283000	1580057278000	316000	625000
346	394	q-1ZOrPRTTY	5000	1580057122000	93000	617000
58	84	XVS7v5D_nfk	293000	1580057354000	316000	625000
354	338	q-1ZOrPRTTY	314000	1580057374000	309000	617000
352	395	q-1ZOrPRTTY	44000	1580066718000	88000	617000
345	364	q-1ZOrPRTTY	311000	1580057350000	311000	617000
353	75	q-1ZOrPRTTY	15000	1580057414000	312000	617000
350	168	q-1ZOrPRTTY	320000	1580057369000	312000	617000
355	327	q-1ZOrPRTTY	30000	1580057215000	80000	617000
468	415	q-1ZOrPRTTY	8000	1580057837000	5000	625000
488	458	q-1ZOrPRTTY	25000	1580058223000	20000	617000
396	417	XVS7v5D_nfk	41000	1580057275000	36000	625000
490	425	q-1ZOrPRTTY	305000	1580060732000	310000	617000
459	84	q-1ZOrPRTTY	317000	1580058064000	312000	617000
417	362	q-1ZOrPRTTY	318000	1580057661000	313000	617000
420	420	XVS7v5D_nfk	170000	1580057692000	313000	625000
531	342	q-1ZOrPRTTY	75000	1580059267000	70000	617000
548	493	XVS7v5D_nfk	24000	1580469946000	25000	625000
486	462	XVS7v5D_nfk	298000	1580058467000	313000	625000
437	136	q-1ZOrPRTTY	395000	1580057981000	309000	617000
536	483	q-1ZOrPRTTY	592000	1580066736000	275000	617000
509	467	XVS7v5D_nfk	20000	1580058549000	15000	625000
450	449	q-1ZOrPRTTY	304000	1580058005000	313000	617000
411	341	q-1ZOrPRTTY	467000	1580057636000	310000	617000
513	92	q-1ZOrPRTTY	20000	1580058649000	15000	617000
410	431	XVS7v5D_nfk	503000	1580057700000	319000	625000
473	62	q-1ZOrPRTTY	33000	1580057952000	28000	617000
444	380	q-1ZOrPRTTY	322000	1580058050000	317000	617000
406	427	q-1ZOrPRTTY	590000	1580057579000	313000	617000
449	446	XVS7v5D_nfk	320000	1580057969000	313000	625000
470	455	XVS7v5D_nfk	328000	1580058191000	317000	625000
503	467	q-1ZOrPRTTY	614000	1580058507000	96000	617000
416	228	q-1ZOrPRTTY	315000	1580057645000	310000	617000
407	419	XVS7v5D_nfk	329000	1580057583000	317000	625000
367	340	q-1ZOrPRTTY	315000	1580057398000	311000	617000
479	159	q-1ZOrPRTTY	265000	1580058346000	310000	617000
446	419	q-1ZOrPRTTY	420000	1580057711000	62000	617000
349	345	q-1ZOrPRTTY	315000	1580057346000	310000	617000
413	368	q-1ZOrPRTTY	2000	1580057331000	5000	625000
440	440	XVS7v5D_nfk	29000	1580057647000	24000	625000
322	379	XVS7v5D_nfk	320000	1580057160000	313000	625000
402	418	XVS7v5D_nfk	590000	1580057554000	316000	625000
529	477	XVS7v5D_nfk	605000	1580059138000	4000	625000
341	305	q-1ZOrPRTTY	130000	1580057488000	310000	617000
515	365	XVS7v5D_nfk	319000	1580058961000	314000	625000
518	476	q-1ZOrPRTTY	30000	1580058737000	25000	617000
362	359	q-1ZOrPRTTY	321000	1580057429000	312000	617000
475	57	q-1ZOrPRTTY	315000	1580058232000	310000	617000
415	435	XVS7v5D_nfk	323000	1580057654000	316000	625000
458	312	q-1ZOrPRTTY	317000	1580058082000	312000	617000
465	299	q-1ZOrPRTTY	10000	1580057808000	5000	617000
430	439	XVS7v5D_nfk	320000	1580057832000	315000	625000
408	430	XVS7v5D_nfk	195000	1580058274000	182000	625000
496	466	XVS7v5D_nfk	320000	1580058606000	315000	625000
432	367	q-1ZOrPRTTY	4000	1580057528000	0	617000
457	358	q-1ZOrPRTTY	350000	1580058083000	310000	617000
495	465	q-1ZOrPRTTY	128000	1580058295000	48000	617000
522	342	XVS7v5D_nfk	321000	1580059113000	316000	625000
472	389	q-1ZOrPRTTY	315000	1580058218000	310000	617000
547	119	q-1ZOrPRTTY	226000	1580060467000	312000	617000
403	425	XVS7v5D_nfk	235000	1580058060000	315000	625000
521	476	XVS7v5D_nfk	5000	1580058820000	37000	625000
477	47	q-1ZOrPRTTY	330000	1580058322000	312000	617000
424	424	XVS7v5D_nfk	559000	1580057725000	315000	625000
476	88	q-1ZOrPRTTY	316000	1580058257000	312000	617000
493	464	XVS7v5D_nfk	503000	1580058324000	112000	625000
520	456	q-1ZOrPRTTY	315000	1580059074000	311000	617000
428	354	q-1ZOrPRTTY	5000	1580057504000	10000	617000
492	325	q-1ZOrPRTTY	319000	1580058525000	309000	617000
501	411	XVS7v5D_nfk	68000	1580058619000	63000	625000
469	435	q-1ZOrPRTTY	515000	1580057961000	105000	625000
516	466	q-1ZOrPRTTY	320000	1580058964000	311000	617000
530	480	q-1ZOrPRTTY	60000	1580059220000	54000	617000
512	472	q-1ZOrPRTTY	5000	1580058628000	0	617000
506	424	q-1ZOrPRTTY	59000	1580058700000	54000	617000
455	328	XVS7v5D_nfk	400000	1580058304000	379000	625000
510	463	XVS7v5D_nfk	425000	1580058906000	315000	625000
491	463	q-1ZOrPRTTY	5000	1580058298000	95000	617000
527	235	q-1ZOrPRTTY	617000	1580059028000	5000	617000
523	284	q-1ZOrPRTTY	306000	1580059148000	309000	617000
524	478	XVS7v5D_nfk	30000	1580058896000	24000	625000
525	470	q-1ZOrPRTTY	310000	1580059246000	311000	617000
532	481	XVS7v5D_nfk	377000	1580059341000	64000	625000
535	481	q-1ZOrPRTTY	445000	1580059379000	21000	617000
534	473	q-1ZOrPRTTY	6000	1580059356000	0	617000
517	475	q-1ZOrPRTTY	504000	1580058999000	310000	617000
545	321	q-1ZOrPRTTY	25000	1580059499000	20000	617000
487	461	XVS7v5D_nfk	265000	1580127233000	315000	625000
538	490	q-1ZOrPRTTY	5000	1580059428000	0	617000
541	486	q-1ZOrPRTTY	190000	1580060260000	312000	617000
540	489	q-1ZOrPRTTY	14000	1580059461000	9000	617000
539	488	q-1ZOrPRTTY	173000	1580059516000	86000	617000
419	433	XVS7v5D_nfk	266000	1580060537000	317000	625000
542	59	q-1ZOrPRTTY	315000	1580059775000	310000	617000
546	491	q-1ZOrPRTTY	15000	1580059495000	11000	617000
537	482	XVS7v5D_nfk	231000	1580059534000	81000	625000
549	217	q-1ZOrPRTTY	320000	1580059908000	313000	617000
505	132	q-1ZOrPRTTY	321000	1580061909000	313000	617000
543	486	XVS7v5D_nfk	265000	1580059823000	317000	625000
544	487	q-1ZOrPRTTY	355000	1580060504000	313000	617000
442	444	q-1ZOrPRTTY	315000	1580057922000	310000	617000
494	454	q-1ZOrPRTTY	5000	1580058238000	5000	617000
429	432	XVS7v5D_nfk	83000	1580398589000	83000	625000
391	408	XVS7v5D_nfk	494000	1580057181000	21000	625000
427	398	q-1ZOrPRTTY	314000	1580057796000	309000	617000
372	402	q-1ZOrPRTTY	613000	1580057132000	39000	617000
454	448	XVS7v5D_nfk	51000	1580059053000	317000	625000
445	445	q-1ZOrPRTTY	55000	1580057688000	50000	617000
443	410	q-1ZOrPRTTY	265000	1580640624000	310000	617000
377	404	XVS7v5D_nfk	320000	1580057442000	315000	625000
384	415	XVS7v5D_nfk	322000	1580057458000	317000	625000
422	438	XVS7v5D_nfk	319000	1580057689000	315000	625000
380	409	XVS7v5D_nfk	320000	1580057443000	315000	625000
447	443	XVS7v5D_nfk	5000	1580057644000	0	625000
405	387	q-1ZOrPRTTY	4000	1580057261000	0	617000
370	83	q-1ZOrPRTTY	313000	1580057481000	314000	617000
478	439	q-1ZOrPRTTY	20000	1580058025000	15000	617000
435	115	q-1ZOrPRTTY	211000	1580058078000	313000	617000
374	251	q-1ZOrPRTTY	315000	1580057417000	310000	617000
373	301	q-1ZOrPRTTY	318000	1580057445000	312000	617000
369	373	q-1ZOrPRTTY	312000	1580057404000	310000	617000
307	362	XVS7v5D_nfk	307000	1580057171000	316000	625000
425	148	q-1ZOrPRTTY	315000	1580057737000	309000	617000
383	407	q-1ZOrPRTTY	616000	1580057158000	18000	617000
385	417	q-1ZOrPRTTY	51000	1580057188000	46000	617000
375	408	q-1ZOrPRTTY	205000	1580057142000	31000	617000
400	422	q-1ZOrPRTTY	328000	1580057561000	311000	617000
390	103	q-1ZOrPRTTY	466000	1580057462000	310000	617000
382	414	q-1ZOrPRTTY	4000	1580057160000	25000	617000
335	300	q-1ZOrPRTTY	315000	1580057316000	309000	617000
371	401	q-1ZOrPRTTY	282000	1580057118000	28000	617000
433	34	q-1ZOrPRTTY	0	1580057552000	10000	687000
471	46	q-1ZOrPRTTY	29000	1580057919000	24000	617000
386	413	XVS7v5D_nfk	320000	1580057464000	315000	625000
404	420	q-1ZOrPRTTY	230000	1580058414000	309000	617000
389	412	q-1ZOrPRTTY	318000	1580057466000	313000	617000
379	400	q-1ZOrPRTTY	314000	1580057435000	310000	617000
418	374	q-1ZOrPRTTY	322000	1580057668000	310000	617000
378	406	XVS7v5D_nfk	622000	1580057193000	74000	625000
388	105	q-1ZOrPRTTY	325000	1580057466000	312000	617000
368	405	q-1ZOrPRTTY	269000	1580057358000	262000	617000
423	383	q-1ZOrPRTTY	355000	1580057715000	310000	617000
376	320	XVS7v5D_nfk	40000	1580057147000	35000	625000
387	416	q-1ZOrPRTTY	19000	1580057408000	255000	617000
409	429	q-1ZOrPRTTY	6000	1580057421000	20000	617000
421	306	q-1ZOrPRTTY	5000	1580057373000	0	617000
412	428	XVS7v5D_nfk	155000	1580057470000	127000	625000
431	432	q-1ZOrPRTTY	613000	1580057546000	21000	617000
253	306	XVS7v5D_nfk	282000	1580057307000	317000	625000
452	379	q-1ZOrPRTTY	315000	1580058006000	310000	617000
426	73	q-1ZOrPRTTY	315000	1580057751000	310000	617000
398	389	XVS7v5D_nfk	293000	1580057548000	316000	625000
464	452	q-1ZOrPRTTY	10000	1580057806000	5000	617000
438	404	q-1ZOrPRTTY	330000	1580057916000	312000	617000
500	468	q-1ZOrPRTTY	4000	1580058345000	0	617000
482	459	XVS7v5D_nfk	5000	1580058088000	0	625000
448	333	q-1ZOrPRTTY	15000	1580057654000	5000	617000
484	49	q-1ZOrPRTTY	318000	1580058419000	312000	617000
399	111	q-1ZOrPRTTY	80000	1580057986000	309000	617000
461	431	q-1ZOrPRTTY	423000	1580058186000	313000	617000
414	429	XVS7v5D_nfk	622000	1580057615000	182000	625000
441	443	q-1ZOrPRTTY	22000	1580057628000	16000	617000
439	442	XVS7v5D_nfk	180000	1580110700000	317000	625000
453	427	XVS7v5D_nfk	320000	1580058012000	315000	625000
451	381	q-1ZOrPRTTY	182000	1580057776000	83000	617000
460	438	q-1ZOrPRTTY	327000	1580058109000	309000	617000
456	450	XVS7v5D_nfk	305000	1580058076000	315000	625000
474	397	q-1ZOrPRTTY	315000	1580058215000	309000	617000
462	453	q-1ZOrPRTTY	60000	1580057855000	55000	617000
434	344	q-1ZOrPRTTY	362000	1580057866000	313000	617000
499	276	q-1ZOrPRTTY	30000	1580058379000	25000	617000
436	441	XVS7v5D_nfk	304000	1580057965000	315000	625000
480	457	XVS7v5D_nfk	10000	1580058024000	5000	625000
466	295	q-1ZOrPRTTY	377000	1580058207000	309000	617000
463	442	q-1ZOrPRTTY	315000	1580058110000	310000	617000
467	454	XVS7v5D_nfk	321000	1580058146000	316000	625000
483	456	XVS7v5D_nfk	320000	1580058419000	315000	625000
504	471	q-1ZOrPRTTY	35000	1580058472000	30000	617000
481	441	q-1ZOrPRTTY	372000	1580058418000	311000	617000
502	444	XVS7v5D_nfk	100000	1580058488000	98000	625000
498	469	q-1ZOrPRTTY	361000	1580058592000	268000	617000
508	471	XVS7v5D_nfk	587000	1580058543000	40000	625000
489	101	q-1ZOrPRTTY	312000	1580058511000	311000	617000
514	473	XVS7v5D_nfk	317000	1580059038000	317000	625000
526	478	q-1ZOrPRTTY	15000	1580058922000	10000	617000
497	465	XVS7v5D_nfk	45000	1580058649000	40000	625000
511	365	q-1ZOrPRTTY	305000	1580059334000	313000	617000
507	470	XVS7v5D_nfk	318000	1580058855000	313000	625000
381	401	XVS7v5D_nfk	15000	1580223386000	49000	625000
519	477	q-1ZOrPRTTY	514000	1580059069000	312000	617000
485	460	XVS7v5D_nfk	30000	1580066459000	25000	625000
562	503	q-1ZOrPRTTY	326000	1580060235000	311000	617000
563	501	q-1ZOrPRTTY	318000	1580060237000	312000	617000
582	513	XVS7v5D_nfk	5000	1580060531000	0	625000
612	283	q-1ZOrPRTTY	315000	1580063066000	310000	617000
559	499	q-1ZOrPRTTY	10000	1580059776000	4000	617000
590	450	q-1ZOrPRTTY	315000	1580061036000	310000	617000
580	513	q-1ZOrPRTTY	33000	1580060586000	49000	617000
585	500	XVS7v5D_nfk	29000	1580060668000	24000	625000
569	509	q-1ZOrPRTTY	45000	1580060264000	40000	617000
605	522	XVS7v5D_nfk	322000	1580062400000	317000	625000
577	206	q-1ZOrPRTTY	315000	1580060778000	310000	617000
596	519	q-1ZOrPRTTY	277000	1580062157000	310000	617000
556	242	q-1ZOrPRTTY	70000	1580060148000	313000	617000
533	261	q-1ZOrPRTTY	355000	1580059673000	313000	617000
558	223	q-1ZOrPRTTY	315000	1580060052000	310000	617000
570	510	q-1ZOrPRTTY	9000	1580060295000	4000	617000
555	497	XVS7v5D_nfk	308000	1580060054000	315000	625000
599	422	XVS7v5D_nfk	0	1580061637000	75000	687000
561	502	XVS7v5D_nfk	30000	1580096910000	31000	625000
560	498	q-1ZOrPRTTY	589000	1580059805000	5000	617000
584	515	q-1ZOrPRTTY	85000	1580060705000	76000	617000
551	169	q-1ZOrPRTTY	9000	1580059691000	36000	687000
597	516	q-1ZOrPRTTY	405000	1580061581000	311000	617000
604	523	q-1ZOrPRTTY	314000	1580062450000	309000	617000
553	496	q-1ZOrPRTTY	25000	1580059707000	20000	617000
609	520	q-1ZOrPRTTY	320000	1580062563000	311000	617000
598	519	XVS7v5D_nfk	300000	1580061686000	313000	625000
567	507	q-1ZOrPRTTY	10000	1580060172000	5000	617000
552	494	q-1ZOrPRTTY	593000	1580059722000	38000	617000
588	35	XVS7v5D_nfk	50000	1580060748000	45000	625000
579	511	q-1ZOrPRTTY	486000	1580060827000	310000	617000
554	495	XVS7v5D_nfk	318000	1580060069000	314000	625000
594	518	XVS7v5D_nfk	320000	1580061258000	315000	625000
575	512	q-1ZOrPRTTY	45000	1580060454000	39000	617000
573	501	XVS7v5D_nfk	331000	1580060715000	320000	625000
557	496	XVS7v5D_nfk	10000	1580059746000	5000	625000
591	500	q-1ZOrPRTTY	320000	1580061046000	312000	617000
564	504	q-1ZOrPRTTY	15000	1580060356000	101000	617000
576	253	q-1ZOrPRTTY	319000	1580060753000	313000	617000
592	516	XVS7v5D_nfk	344000	1580061100000	314000	625000
550	487	XVS7v5D_nfk	327000	1580059969000	315000	625000
566	504	XVS7v5D_nfk	127000	1580103016000	127000	625000
583	514	XVS7v5D_nfk	30000	1580060609000	25000	625000
595	517	XVS7v5D_nfk	4000	1580061000000	15000	625000
586	503	XVS7v5D_nfk	323000	1580061176000	317000	625000
593	515	XVS7v5D_nfk	154000	1580061053000	145000	625000
572	200	q-1ZOrPRTTY	315000	1580060689000	310000	617000
587	35	q-1ZOrPRTTY	325000	1580060689000	10000	617000
607	129	q-1ZOrPRTTY	91000	1580062226000	86000	617000
615	526	q-1ZOrPRTTY	4000	1580062863000	0	617000
574	98	q-1ZOrPRTTY	5000	1580060401000	0	617000
600	521	q-1ZOrPRTTY	20000	1580061722000	15000	617000
578	512	XVS7v5D_nfk	60000	1580060528000	55000	625000
589	433	q-1ZOrPRTTY	353000	1580061066000	309000	617000
603	522	q-1ZOrPRTTY	318000	1580062880000	313000	617000
621	70	q-1ZOrPRTTY	320000	1580064263000	309000	617000
608	347	q-1ZOrPRTTY	316000	1580062535000	312000	617000
565	497	q-1ZOrPRTTY	353000	1580061125000	111000	625000
638	483	XVS7v5D_nfk	256000	1580147709000	316000	625000
618	526	XVS7v5D_nfk	295000	1580063477000	314000	625000
602	506	q-1ZOrPRTTY	315000	1580062116000	310000	617000
613	524	XVS7v5D_nfk	325000	1580063097000	317000	625000
625	530	XVS7v5D_nfk	260000	1580109539000	316000	625000
606	524	q-1ZOrPRTTY	315000	1580062441000	310000	617000
601	520	XVS7v5D_nfk	10000	1580062940000	217000	625000
622	529	q-1ZOrPRTTY	319000	1580064604000	313000	617000
610	525	q-1ZOrPRTTY	347000	1580062716000	310000	617000
620	308	q-1ZOrPRTTY	325000	1580064189000	311000	617000
619	250	q-1ZOrPRTTY	280000	1580063785000	280000	617000
617	527	XVS7v5D_nfk	374000	1580063899000	313000	625000
611	523	XVS7v5D_nfk	320000	1580063044000	315000	625000
614	525	XVS7v5D_nfk	316000	1580063156000	312000	617000
624	248	q-1ZOrPRTTY	318000	1580064680000	313000	617000
630	51	q-1ZOrPRTTY	54000	1580065297000	49000	617000
616	527	q-1ZOrPRTTY	610000	1580064829000	402000	617000
629	529	XVS7v5D_nfk	323000	1580065060000	315000	625000
628	531	XVS7v5D_nfk	25000	1580064653000	20000	625000
627	72	q-1ZOrPRTTY	329000	1580064881000	312000	617000
623	69	q-1ZOrPRTTY	320000	1580064651000	313000	617000
626	531	q-1ZOrPRTTY	60000	1580064590000	54000	617000
581	449	XVS7v5D_nfk	321000	1580065207000	315000	625000
632	534	XVS7v5D_nfk	51000	1580065662000	46000	625000
634	534	q-1ZOrPRTTY	51000	1580065759000	46000	617000
633	532	XVS7v5D_nfk	110000	1580065783000	99000	625000
631	178	q-1ZOrPRTTY	70000	1580065921000	312000	617000
635	532	q-1ZOrPRTTY	81000	1580066157000	74000	617000
571	506	XVS7v5D_nfk	125000	1580066323000	304000	625000
637	460	q-1ZOrPRTTY	15000	1580066483000	10000	617000
636	288	q-1ZOrPRTTY	586000	1580066634000	321000	617000
568	508	XVS7v5D_nfk	127000	1580116980000	310000	617000
639	275	q-1ZOrPRTTY	315000	1580067219000	310000	617000
652	541	q-1ZOrPRTTY	315000	1580070609000	311000	617000
666	549	XVS7v5D_nfk	24000	1580076806000	29000	625000
667	82	q-1ZOrPRTTY	5000	1580076807000	0	617000
691	560	q-1ZOrPRTTY	161000	1580106487000	148000	617000
528	475	XVS7v5D_nfk	327000	1580071481000	317000	625000
662	94	q-1ZOrPRTTY	10000	1580077861000	17000	617000
653	542	XVS7v5D_nfk	320000	1580071183000	315000	625000
640	244	q-1ZOrPRTTY	479000	1580067285000	313000	617000
689	559	XVS7v5D_nfk	291000	1580105664000	97000	625000
642	536	q-1ZOrPRTTY	341000	1580067314000	17000	617000
648	539	XVS7v5D_nfk	315000	1580069920000	316000	625000
651	539	q-1ZOrPRTTY	10000	1580070171000	5000	617000
643	536	XVS7v5D_nfk	30000	1580067397000	23000	625000
690	559	q-1ZOrPRTTY	10000	1580105718000	5000	617000
647	538	XVS7v5D_nfk	310000	1580069041000	313000	625000
654	543	XVS7v5D_nfk	228000	1580071310000	317000	625000
644	537	XVS7v5D_nfk	567000	1580069311000	635000	625000
658	543	q-1ZOrPRTTY	5000	1580071751000	0	617000
700	563	q-1ZOrPRTTY	5000	1580109653000	0	617000
692	560	XVS7v5D_nfk	279000	1580106855000	317000	625000
694	205	q-1ZOrPRTTY	5000	1580108809000	0	617000
645	537	q-1ZOrPRTTY	5000	1580068098000	13000	617000
714	565	XVS7v5D_nfk	10000	1580114089000	5000	625000
668	550	q-1ZOrPRTTY	70000	1580078329000	65000	617000
686	557	XVS7v5D_nfk	330000	1580105163000	314000	625000
680	555	XVS7v5D_nfk	497000	1580111824000	568000	625000
657	542	q-1ZOrPRTTY	318000	1580071826000	312000	617000
659	155	q-1ZOrPRTTY	10000	1580072350000	4000	617000
728	238	q-1ZOrPRTTY	5000	1580355632000	258000	617000
660	546	q-1ZOrPRTTY	20000	1580072375000	15000	617000
683	280	q-1ZOrPRTTY	359000	1580101084000	312000	617000
684	210	q-1ZOrPRTTY	5000	1580101311000	0	617000
669	550	XVS7v5D_nfk	320000	1580078672000	314000	625000
687	558	q-1ZOrPRTTY	25000	1580105426000	20000	617000
688	279	q-1ZOrPRTTY	19000	1580105550000	0	617000
661	546	XVS7v5D_nfk	625000	1580072441000	50000	625000
709	379	hTNnb_tXUEQ	350000	1580113858000	344000	687000
713	557	hTNnb_tXUEQ	348000	1580114394000	347000	687000
685	263	q-1ZOrPRTTY	35000	1580104576000	30000	617000
670	551	XVS7v5D_nfk	320000	1580079906000	315000	625000
671	552	q-1ZOrPRTTY	5000	1580082211000	0	617000
672	552	XVS7v5D_nfk	8000	1580082216000	0	617000
656	544	XVS7v5D_nfk	115000	1580071639000	313000	625000
649	540	XVS7v5D_nfk	21000	1580069829000	15000	625000
663	547	XVS7v5D_nfk	331000	1580073254000	318000	625000
641	535	q-1ZOrPRTTY	200000	1580067232000	195000	617000
708	329	hTNnb_tXUEQ	468000	1580113520000	35000	687000
655	541	XVS7v5D_nfk	561000	1580071277000	316000	625000
717	132	hTNnb_tXUEQ	280000	1580115306000	346000	687000
681	555	q-1ZOrPRTTY	51000	1580226042000	46000	617000
715	422	hTNnb_tXUEQ	214000	1580127419000	212000	687000
673	78	q-1ZOrPRTTY	40000	1580086262000	34000	617000
664	547	q-1ZOrPRTTY	5000	1580119633000	31000	687000
674	204	q-1ZOrPRTTY	10000	1580090531000	4000	617000
665	549	q-1ZOrPRTTY	20000	1580076714000	15000	617000
702	564	XVS7v5D_nfk	321000	1580111873000	316000	625000
703	492	XVS7v5D_nfk	5000	1580112626000	0	625000
679	147	q-1ZOrPRTTY	210000	1580099130000	309000	617000
693	239	q-1ZOrPRTTY	4000	1580106783000	0	617000
675	225	q-1ZOrPRTTY	30000	1580134102000	49000	617000
676	247	q-1ZOrPRTTY	5000	1580093932000	0	617000
677	131	q-1ZOrPRTTY	5000	1580096894000	0	617000
682	556	q-1ZOrPRTTY	5000	1580100309000	0	617000
699	558	XVS7v5D_nfk	217000	1580111288000	209000	625000
678	39	q-1ZOrPRTTY	249000	1580097733000	243000	617000
701	564	q-1ZOrPRTTY	10000	1580111519000	4000	617000
696	562	q-1ZOrPRTTY	5000	1580108979000	20000	617000
695	561	XVS7v5D_nfk	322000	1580109131000	316000	625000
698	530	q-1ZOrPRTTY	4000	1580109261000	0	617000
707	486	hTNnb_tXUEQ	342000	1580113716000	345000	687000
704	565	q-1ZOrPRTTY	15000	1580112905000	10000	617000
725	98	hTNnb_tXUEQ	5000	1580116628000	0	687000
706	70	hTNnb_tXUEQ	314000	1580113629000	348000	687000
712	565	hTNnb_tXUEQ	461000	1580114057000	31000	687000
730	284	hTNnb_tXUEQ	354000	1580117354000	0	687000
710	566	hTNnb_tXUEQ	260000	1580114603000	347000	687000
705	34	hTNnb_tXUEQ	5000	1580114376000	318000	687000
711	566	XVS7v5D_nfk	320000	1580114215000	315000	625000
719	84	hTNnb_tXUEQ	199000	1580115319000	347000	687000
718	200	hTNnb_tXUEQ	244000	1580114783000	348000	687000
646	412	XVS7v5D_nfk	25000	1580708603000	25000	625000
722	168	hTNnb_tXUEQ	358000	1580115895000	344000	687000
723	141	hTNnb_tXUEQ	374000	1580115545000	5000	687000
721	427	hTNnb_tXUEQ	673000	1580115851000	348000	687000
724	141	q-1ZOrPRTTY	5000	1580115564000	0	617000
720	380	hTNnb_tXUEQ	359000	1580115790000	346000	687000
727	76	hTNnb_tXUEQ	5000	1580116735000	0	687000
726	76	q-1ZOrPRTTY	15000	1580116718000	10000	617000
650	134	q-1ZOrPRTTY	309000	1580125687000	312000	617000
697	165	q-1ZOrPRTTY	235000	1580117038000	311000	617000
731	145	q-1ZOrPRTTY	5000	1580117443000	0	617000
729	238	hTNnb_tXUEQ	444000	1580317141000	345000	687000
761	299	hTNnb_tXUEQ	157000	1580132009000	151000	687000
796	579	hTNnb_tXUEQ	75000	1580143260000	70000	687000
773	72	hTNnb_tXUEQ	350000	1580134555000	344000	687000
789	351	hTNnb_tXUEQ	350000	1580139147000	345000	687000
777	281	q-1ZOrPRTTY	312000	1580135564000	13000	617000
778	312	hTNnb_tXUEQ	145000	1580135811000	173000	687000
774	165	hTNnb_tXUEQ	55000	1580134580000	60000	687000
769	572	XVS7v5D_nfk	625000	1580133907000	63000	687000
758	570	XVS7v5D_nfk	170000	1580129767000	313000	625000
757	569	hTNnb_tXUEQ	355000	1580129263000	348000	687000
744	134	hTNnb_tXUEQ	4000	1580125349000	306000	687000
746	62	hTNnb_tXUEQ	459000	1580125760000	9000	687000
747	19	hTNnb_tXUEQ	10000	1580125854000	0	687000
743	491	XVS7v5D_nfk	149000	1580123940000	150000	625000
748	251	hTNnb_tXUEQ	395000	1580127492000	5000	687000
749	461	q-1ZOrPRTTY	5000	1580127614000	0	617000
750	461	hTNnb_tXUEQ	4000	1580127627000	0	625000
751	212	hTNnb_tXUEQ	75000	1580127659000	0	687000
762	571	hTNnb_tXUEQ	332000	1580132875000	327000	687000
763	571	q-1ZOrPRTTY	5000	1580132889000	0	617000
764	114	hTNnb_tXUEQ	4000	1580132954000	0	687000
755	570	hTNnb_tXUEQ	356000	1580129009000	351000	687000
752	244	hTNnb_tXUEQ	41000	1580127951000	35000	687000
735	547	hTNnb_tXUEQ	352000	1580120067000	345000	687000
775	575	hTNnb_tXUEQ	10000	1580134745000	5000	687000
759	88	hTNnb_tXUEQ	35000	1580131352000	40000	687000
736	129	hTNnb_tXUEQ	47000	1580120548000	41000	687000
770	442	hTNnb_tXUEQ	5000	1580134064000	15000	687000
733	469	XVS7v5D_nfk	320000	1580118394000	315000	625000
734	169	hTNnb_tXUEQ	5000	1580119239000	0	687000
716	555	hTNnb_tXUEQ	5000	1580117573000	218000	687000
781	178	hTNnb_tXUEQ	5000	1580136496000	0	687000
771	574	hTNnb_tXUEQ	20000	1580205130000	20000	687000
772	525	hTNnb_tXUEQ	5000	1580134205000	0	687000
765	450	hTNnb_tXUEQ	34000	1580133186000	25000	687000
766	543	hTNnb_tXUEQ	10000	1580133429000	5000	687000
745	398	hTNnb_tXUEQ	30000	1580125172000	25000	687000
782	519	hTNnb_tXUEQ	4000	1580136629000	0	687000
756	569	q-1ZOrPRTTY	6000	1580128893000	0	617000
798	581	hTNnb_tXUEQ	5000	1580143719000	0	687000
806	542	hTNnb_tXUEQ	350000	1580149769000	345000	687000
737	292	hTNnb_tXUEQ	108000	1580122141000	104000	687000
738	54	hTNnb_tXUEQ	5000	1580122162000	0	687000
732	469	hTNnb_tXUEQ	350000	1580118048000	345000	687000
739	557	q-1ZOrPRTTY	6000	1580122428000	0	617000
779	202	q-1ZOrPRTTY	5000	1580135661000	0	617000
741	399	hTNnb_tXUEQ	4000	1580123116000	0	687000
742	242	hTNnb_tXUEQ	5000	1580123471000	0	687000
784	451	hTNnb_tXUEQ	105000	1580137333000	100000	687000
785	325	hTNnb_tXUEQ	14000	1580137513000	0	687000
767	573	q-1ZOrPRTTY	31000	1580133803000	19000	617000
754	441	hTNnb_tXUEQ	144000	1580128495000	145000	687000
768	572	hTNnb_tXUEQ	15000	1580133829000	10000	687000
753	569	XVS7v5D_nfk	323000	1580128513000	315000	625000
797	580	XVS7v5D_nfk	15000	1580143726000	10000	625000
780	202	hTNnb_tXUEQ	5000	1580135691000	0	687000
760	509	XVS7v5D_nfk	545000	1580131958000	314000	625000
794	105	hTNnb_tXUEQ	12000	1580141234000	43000	687000
786	576	XVS7v5D_nfk	327000	1580138597000	316000	625000
787	224	q-1ZOrPRTTY	5000	1580138636000	0	617000
783	421	hTNnb_tXUEQ	80000	1580137175000	75000	687000
795	579	XVS7v5D_nfk	320000	1580142762000	315000	625000
793	250	hTNnb_tXUEQ	205000	1580140280000	200000	687000
788	576	hTNnb_tXUEQ	36000	1580138765000	25000	687000
790	577	XVS7v5D_nfk	227000	1580138809000	0	625000
791	578	XVS7v5D_nfk	326000	1580139652000	317000	625000
792	78	hTNnb_tXUEQ	406000	1580139669000	320000	687000
776	283	hTNnb_tXUEQ	353000	1580135316000	348000	687000
811	199	q-1ZOrPRTTY	318000	1580151486000	313000	617000
812	199	hTNnb_tXUEQ	5000	1580151727000	0	687000
809	263	hTNnb_tXUEQ	20000	1580150171000	15000	687000
805	583	XVS7v5D_nfk	45000	1580149085000	40000	625000
800	582	hTNnb_tXUEQ	250000	1580145129000	46000	687000
801	106	hTNnb_tXUEQ	10000	1580145223000	5000	687000
802	102	q-1ZOrPRTTY	5000	1580145557000	0	617000
803	39	hTNnb_tXUEQ	432000	1580147118000	5000	687000
804	483	hTNnb_tXUEQ	616000	1580148136000	0	625000
799	581	XVS7v5D_nfk	322000	1580144063000	316000	625000
807	55	hTNnb_tXUEQ	147000	1580149576000	138000	687000
810	261	hTNnb_tXUEQ	4000	1580150303000	0	625000
808	501	hTNnb_tXUEQ	59000	1580674613000	82000	687000
814	585	hTNnb_tXUEQ	6000	1580152399000	0	687000
813	348	hTNnb_tXUEQ	20000	1580152352000	15000	687000
815	585	XVS7v5D_nfk	305000	1580152754000	315000	625000
816	340	hTNnb_tXUEQ	15000	1580153052000	10000	687000
817	585	q-1ZOrPRTTY	10000	1580153228000	5000	617000
819	176	hTNnb_tXUEQ	5000	1580154002000	0	687000
818	187	hTNnb_tXUEQ	25000	1580153365000	19000	687000
820	46	hTNnb_tXUEQ	99000	1580154160000	93000	687000
822	240	hTNnb_tXUEQ	4000	1580155450000	0	625000
821	586	hTNnb_tXUEQ	7000	1580154414000	5000	687000
740	449	hTNnb_tXUEQ	29000	1580499915000	24000	687000
824	14	XVS7v5D_nfk	5000	1580156079000	0	625000
839	530	hTNnb_tXUEQ	470000	1580360479000	470000	687000
823	588	XVS7v5D_nfk	320000	1580156085000	313000	625000
852	382	q-1ZOrPRTTY	292000	1580217324000	310000	617000
853	382	hTNnb_tXUEQ	5000	1580217651000	0	687000
877	210	hTNnb_tXUEQ	635000	1580261886000	15000	687000
854	179	q-1ZOrPRTTY	5000	1580220123000	0	617000
825	14	hTNnb_tXUEQ	5000	1580298025000	83000	687000
826	589	XVS7v5D_nfk	333000	1580156685000	30000	625000
878	608	hTNnb_tXUEQ	20000	1580265531000	15000	687000
901	126	q-1ZOrPRTTY	15000	1580326392000	10000	617000
879	562	hTNnb_tXUEQ	575000	1580279077000	0	687000
844	162	q-1ZOrPRTTY	316000	1580285463000	309000	617000
866	150	hTNnb_tXUEQ	277000	1580236540000	240000	687000
827	326	hTNnb_tXUEQ	70000	1580156964000	32000	687000
828	172	q-1ZOrPRTTY	5000	1580158610000	0	617000
829	172	hTNnb_tXUEQ	10000	1580158630000	5000	687000
830	241	q-1ZOrPRTTY	10000	1580160884000	5000	617000
886	81	q-1ZOrPRTTY	15000	1580302098000	10000	617000
832	591	XVS7v5D_nfk	271000	1580165140000	380000	625000
833	591	q-1ZOrPRTTY	5000	1580165194000	0	617000
834	431	hTNnb_tXUEQ	7000	1580177440000	0	687000
887	182	q-1ZOrPRTTY	10000	1580303425000	5000	617000
867	353	hTNnb_tXUEQ	18000	1580237602000	12000	687000
837	574	XVS7v5D_nfk	328000	1580190975000	315000	625000
902	617	hTNnb_tXUEQ	5000	1580328194000	0	687000
840	594	XVS7v5D_nfk	26000	1580193559000	19000	625000
855	600	hTNnb_tXUEQ	459000	1580223205000	345000	687000
856	516	hTNnb_tXUEQ	5000	1580223304000	0	687000
864	136	hTNnb_tXUEQ	9000	1580231657000	5000	687000
841	390	hTNnb_tXUEQ	30000	1580193690000	25000	687000
835	295	hTNnb_tXUEQ	85000	1580186177000	78000	687000
836	13	q-1ZOrPRTTY	490000	1580188023000	14000	617000
842	595	hTNnb_tXUEQ	5000	1580194206000	0	687000
831	472	XVS7v5D_nfk	151000	1580161043000	144000	625000
861	306	hTNnb_tXUEQ	65000	1580228412000	134000	687000
896	613	XVS7v5D_nfk	30000	1580317256000	25000	625000
863	605	XVS7v5D_nfk	4000	1580231679000	199000	625000
843	596	hTNnb_tXUEQ	5000	1580200424000	30000	687000
888	573	XVS7v5D_nfk	325000	1580307513000	315000	625000
838	94	hTNnb_tXUEQ	11000	1580190757000	0	687000
892	612	q-1ZOrPRTTY	70000	1580312927000	10000	687000
845	596	XVS7v5D_nfk	320000	1580200821000	315000	625000
857	600	XVS7v5D_nfk	320000	1580223752000	314000	625000
846	147	hTNnb_tXUEQ	361000	1580201686000	15000	687000
847	582	XVS7v5D_nfk	322000	1580208352000	313000	625000
848	598	XVS7v5D_nfk	320000	1580214177000	315000	625000
898	615	hTNnb_tXUEQ	22000	1580320035000	15000	687000
873	11	XVS7v5D_nfk	403000	1580244395000	316000	625000
874	11	hTNnb_tXUEQ	1000	1580244694000	0	687000
849	599	XVS7v5D_nfk	59000	1580215110000	317000	625000
893	63	hTNnb_tXUEQ	86000	1580315520000	81000	687000
868	353	q-1ZOrPRTTY	32000	1580237642000	26000	687000
869	75	hTNnb_tXUEQ	7000	1580239045000	3000	687000
858	508	hTNnb_tXUEQ	455000	1580226565000	346000	687000
850	599	hTNnb_tXUEQ	3000	1580215023000	0	687000
870	345	hTNnb_tXUEQ	5000	1580239666000	0	687000
862	604	XVS7v5D_nfk	326000	1580229715000	313000	625000
851	599	q-1ZOrPRTTY	3000	1580215686000	32000	687000
859	602	XVS7v5D_nfk	7000	1580227103000	15000	625000
860	603	hTNnb_tXUEQ	5000	1580227327000	0	687000
871	155	hTNnb_tXUEQ	5000	1580242860000	0	687000
872	55	q-1ZOrPRTTY	31000	1580243559000	0	625000
894	439	hTNnb_tXUEQ	5000	1580316133000	0	687000
880	358	hTNnb_tXUEQ	90000	1580286316000	85000	687000
881	49	hTNnb_tXUEQ	3000	1580289166000	0	617000
875	597	XVS7v5D_nfk	41000	1580247356000	36000	625000
865	606	XVS7v5D_nfk	317000	1580232921000	314000	625000
882	556	hTNnb_tXUEQ	520000	1580289459000	14000	687000
876	470	hTNnb_tXUEQ	15000	1580249976000	10000	687000
883	352	hTNnb_tXUEQ	10000	1580297946000	4000	687000
899	186	q-1ZOrPRTTY	10000	1580321634000	5000	617000
884	342	hTNnb_tXUEQ	5000	1580298496000	0	687000
895	613	hTNnb_tXUEQ	24000	1580317213000	19000	687000
891	611	hTNnb_tXUEQ	55000	1580312907000	75000	687000
885	609	hTNnb_tXUEQ	368000	1580299727000	347000	687000
889	468	XVS7v5D_nfk	360000	1580308673000	315000	625000
900	186	hTNnb_tXUEQ	10000	1580321649000	5000	687000
897	614	XVS7v5D_nfk	321000	1580319844000	316000	625000
903	617	XVS7v5D_nfk	42000	1580328696000	309000	617000
890	610	XVS7v5D_nfk	9000	1580331535000	5000	625000
904	588	q-1ZOrPRTTY	14000	1580329231000	9000	617000
905	618	XVS7v5D_nfk	5000	1580335941000	0	625000
906	551	hTNnb_tXUEQ	25000	1580341573000	24000	687000
907	595	XVS7v5D_nfk	360000	1580366704000	25000	625000
908	259	hTNnb_tXUEQ	353000	1580370785000	345000	687000
909	619	hTNnb_tXUEQ	360000	1580377553000	345000	687000
911	103	hTNnb_tXUEQ	5000	1580378452000	0	687000
910	619	XVS7v5D_nfk	327000	1580377951000	316000	625000
912	204	hTNnb_tXUEQ	5000	1580388484000	0	687000
913	43	q-1ZOrPRTTY	15000	1580389300000	10000	617000
914	556	XVS7v5D_nfk	320000	1580393443000	314000	625000
915	620	q-1ZOrPRTTY	10000	1580393611000	5000	617000
916	620	XVS7v5D_nfk	625000	1580393665000	39000	625000
917	87	hTNnb_tXUEQ	230000	1580395455000	25000	687000
918	245	hTNnb_tXUEQ	2000	1580399780000	0	617000
956	55	YvUzvPnCJ9Y	295000	1580550770000	290000	579000
922	493	hTNnb_tXUEQ	5000	1580469896000	12000	687000
923	257	XVS7v5D_nfk	14000	1580475001000	5000	687000
934	535	XVS7v5D_nfk	220000	1580501895000	317000	625000
924	533	q-1ZOrPRTTY	40000	1580480416000	35000	617000
920	621	hTNnb_tXUEQ	351000	1580415153000	345000	687000
925	533	XVS7v5D_nfk	50000	1580480429000	3000	625000
919	621	XVS7v5D_nfk	594000	1580415651000	732000	625000
932	628	XVS7v5D_nfk	179000	1580496417000	185000	625000
957	633	YvUzvPnCJ9Y	300000	1580550946000	290000	579000
979	54	YvUzvPnCJ9Y	5000	1580556187000	0	579000
939	63	YvUzvPnCJ9Y	159000	1580548431000	154000	579000
941	439	YvUzvPnCJ9Y	299000	1580548579000	294000	579000
944	58	YvUzvPnCJ9Y	5000	1580548333000	0	579000
926	419	hTNnb_tXUEQ	69000	1580483007000	65000	687000
991	325	YvUzvPnCJ9Y	303000	1580561770000	292000	579000
927	625	hTNnb_tXUEQ	296000	1580484316000	14000	687000
968	635	XVS7v5D_nfk	602000	1580553019000	37000	625000
943	435	YvUzvPnCJ9Y	14000	1580548340000	9000	579000
963	486	YvUzvPnCJ9Y	320000	1580551967000	293000	579000
935	617	q-1ZOrPRTTY	69000	1580512102000	40000	617000
928	625	XVS7v5D_nfk	623000	1580484385000	51000	625000
929	579	q-1ZOrPRTTY	5000	1580492482000	0	617000
950	450	YvUzvPnCJ9Y	310000	1580549791000	292000	579000
952	238	YvUzvPnCJ9Y	300000	1580549904000	292000	579000
936	124	hTNnb_tXUEQ	453000	1580515949000	345000	687000
930	626	hTNnb_tXUEQ	35000	1580494257000	29000	687000
931	627	XVS7v5D_nfk	305000	1580495528000	314000	625000
974	638	XVS7v5D_nfk	321000	1580554646000	315000	625000
942	49	YvUzvPnCJ9Y	60000	1580566445000	294000	579000
992	262	YvUzvPnCJ9Y	299000	1580561886000	293000	579000
946	370	YvUzvPnCJ9Y	300000	1580549258000	292000	579000
933	628	hTNnb_tXUEQ	220000	1580496220000	40000	687000
948	123	YvUzvPnCJ9Y	40000	1580549129000	35000	579000
987	129	YvUzvPnCJ9Y	290000	1580559063000	290000	579000
955	24	YvUzvPnCJ9Y	301000	1580550208000	19000	579000
977	638	q-1ZOrPRTTY	316000	1580555618000	310000	617000
947	627	YvUzvPnCJ9Y	300000	1580549284000	291000	579000
945	34	YvUzvPnCJ9Y	5000	1580548371000	0	579000
953	631	XVS7v5D_nfk	319000	1580549957000	315000	625000
937	593	hTNnb_tXUEQ	554000	1580543225000	125000	687000
938	628	YvUzvPnCJ9Y	5000	1580547834000	0	579000
921	623	XVS7v5D_nfk	325000	1580461132000	315000	625000
980	640	hTNnb_tXUEQ	665000	1580556683000	274000	687000
951	340	YvUzvPnCJ9Y	10000	1580549499000	5000	579000
975	165	YvUzvPnCJ9Y	301000	1580554681000	290000	579000
940	246	YvUzvPnCJ9Y	579000	1580548301000	22000	579000
958	441	YvUzvPnCJ9Y	300000	1580551009000	292000	579000
966	634	hTNnb_tXUEQ	20000	1580552025000	15000	687000
967	73	YvUzvPnCJ9Y	300000	1580553271000	292000	579000
964	358	YvUzvPnCJ9Y	289000	1580552217000	294000	579000
959	312	YvUzvPnCJ9Y	285000	1580551170000	294000	579000
954	631	YvUzvPnCJ9Y	300000	1580550298000	292000	579000
986	642	YvUzvPnCJ9Y	25000	1580558223000	19000	579000
982	225	YvUzvPnCJ9Y	10000	1580556716000	5000	579000
961	633	XVS7v5D_nfk	265000	1580551700000	315000	625000
960	13	YvUzvPnCJ9Y	220000	1580555238000	290000	579000
973	253	YvUzvPnCJ9Y	297000	1580554344000	290000	579000
981	641	XVS7v5D_nfk	4000	1580556587000	48000	625000
970	635	YvUzvPnCJ9Y	20000	1580553061000	15000	579000
962	604	YvUzvPnCJ9Y	290000	1580554447000	294000	579000
983	640	XVS7v5D_nfk	15000	1580556732000	10000	625000
969	579	YvUzvPnCJ9Y	300000	1580553310000	293000	579000
972	636	YvUzvPnCJ9Y	294000	1580553800000	290000	579000
988	461	YvUzvPnCJ9Y	309000	1580559744000	292000	579000
984	132	YvUzvPnCJ9Y	304000	1580557614000	291000	579000
976	466	YvUzvPnCJ9Y	150000	1580555163000	292000	579000
978	412	YvUzvPnCJ9Y	79000	1580556003000	74000	579000
949	555	YvUzvPnCJ9Y	126000	1580586086000	292000	579000
985	642	XVS7v5D_nfk	160000	1580558398000	190000	625000
989	386	YvUzvPnCJ9Y	579000	1580561019000	60000	579000
994	84	YvUzvPnCJ9Y	304000	1580562582000	291000	579000
990	193	YvUzvPnCJ9Y	299000	1580561605000	292000	579000
993	275	YvUzvPnCJ9Y	295000	1580562540000	290000	579000
997	72	YvUzvPnCJ9Y	297000	1580563300000	292000	579000
996	101	YvUzvPnCJ9Y	331000	1580562568000	30000	579000
995	348	YvUzvPnCJ9Y	300000	1580562586000	294000	579000
998	250	YvUzvPnCJ9Y	292000	1580563949000	291000	579000
1000	371	hTNnb_tXUEQ	5000	1580566460000	0	687000
965	634	YvUzvPnCJ9Y	165000	1580640883000	290000	579000
1006	476	YvUzvPnCJ9Y	295000	1580566795000	290000	579000
999	70	YvUzvPnCJ9Y	285000	1580566756000	291000	579000
971	217	YvUzvPnCJ9Y	240000	1580624917000	235000	579000
1008	256	YvUzvPnCJ9Y	299000	1580566838000	294000	579000
1007	39	YvUzvPnCJ9Y	280000	1580566811000	290000	579000
1002	399	YvUzvPnCJ9Y	299000	1580566777000	291000	579000
1003	142	YvUzvPnCJ9Y	60000	1580566549000	48000	579000
1001	371	YvUzvPnCJ9Y	5000	1580566480000	10000	579000
1014	651	YvUzvPnCJ9Y	297000	1580566872000	291000	579000
1015	174	YvUzvPnCJ9Y	299000	1580566926000	294000	579000
1004	223	YvUzvPnCJ9Y	296000	1580566772000	290000	579000
1013	647	YvUzvPnCJ9Y	10000	1580567866000	291000	579000
1012	650	YvUzvPnCJ9Y	295000	1580566859000	290000	579000
1010	649	YvUzvPnCJ9Y	298000	1580566862000	293000	579000
1011	646	YvUzvPnCJ9Y	300000	1580566863000	294000	579000
1009	645	XVS7v5D_nfk	320000	1580566867000	315000	625000
1021	661	YvUzvPnCJ9Y	297000	1580566921000	291000	579000
1035	543	YvUzvPnCJ9Y	299000	1580567000000	293000	579000
1091	295	YvUzvPnCJ9Y	391000	1580640363000	78000	579000
1057	65	YvUzvPnCJ9Y	63000	1580569304000	66000	579000
1024	660	YvUzvPnCJ9Y	19000	1580566654000	15000	579000
1083	379	YvUzvPnCJ9Y	300000	1580629020000	292000	579000
1075	591	YvUzvPnCJ9Y	181000	1580629195000	290000	579000
1077	427	YvUzvPnCJ9Y	288000	1580657158000	292000	579000
1043	671	YvUzvPnCJ9Y	295000	1580567217000	290000	579000
1072	684	YvUzvPnCJ9Y	20000	1580587507000	20000	579000
1016	163	q-1ZOrPRTTY	68000	1580566657000	60000	617000
1038	652	YvUzvPnCJ9Y	298000	1580567061000	293000	579000
1039	163	YvUzvPnCJ9Y	292000	1580567061000	287000	579000
1040	188	YvUzvPnCJ9Y	116000	1580566888000	110000	579000
1023	659	YvUzvPnCJ9Y	296000	1580566928000	292000	579000
1034	667	YvUzvPnCJ9Y	229000	1580566954000	224000	579000
1056	647	XVS7v5D_nfk	587000	1580568396000	37000	625000
1025	115	YvUzvPnCJ9Y	295000	1580566930000	290000	579000
1050	663	YvUzvPnCJ9Y	300000	1580567566000	290000	579000
1053	180	YvUzvPnCJ9Y	297000	1580568250000	292000	579000
1049	677	YvUzvPnCJ9Y	10000	1580567225000	5000	579000
1028	643	YvUzvPnCJ9Y	504000	1580566891000	208000	579000
1020	105	YvUzvPnCJ9Y	295000	1580566911000	290000	579000
1031	665	YvUzvPnCJ9Y	110000	1580566773000	105000	579000
1030	653	XVS7v5D_nfk	320000	1580566982000	315000	625000
1073	685	YvUzvPnCJ9Y	25000	1580588771000	19000	579000
1046	256	hTNnb_tXUEQ	270000	1580567228000	265000	687000
1029	658	YvUzvPnCJ9Y	109000	1580566775000	105000	579000
1044	672	YvUzvPnCJ9Y	298000	1580567234000	290000	579000
1018	654	YvUzvPnCJ9Y	75000	1580566672000	70000	579000
1036	668	YvUzvPnCJ9Y	249000	1580566829000	112000	579000
1048	675	YvUzvPnCJ9Y	550000	1580567236000	236000	579000
1017	657	YvUzvPnCJ9Y	373000	1580566674000	74000	579000
1082	102	YvUzvPnCJ9Y	265000	1580627484000	291000	579000
1061	134	YvUzvPnCJ9Y	294000	1580570043000	290000	579000
1058	680	XVS7v5D_nfk	622000	1580569397000	87000	625000
1027	138	YvUzvPnCJ9Y	280000	1580566962000	294000	579000
1059	680	YvUzvPnCJ9Y	5000	1580569453000	0	579000
1042	373	YvUzvPnCJ9Y	300000	1580567351000	294000	579000
1045	673	YvUzvPnCJ9Y	295000	1580567252000	290000	579000
1033	655	YvUzvPnCJ9Y	576000	1580566778000	101000	579000
1051	256	XVS7v5D_nfk	320000	1580567638000	314000	625000
1026	663	XVS7v5D_nfk	293000	1580567046000	317000	625000
1022	662	YvUzvPnCJ9Y	295000	1580566919000	290000	579000
1019	656	YvUzvPnCJ9Y	295000	1580566897000	290000	579000
1047	674	YvUzvPnCJ9Y	261000	1580568285000	292000	579000
1078	308	YvUzvPnCJ9Y	38000	1580621349000	31000	579000
1095	433	YvUzvPnCJ9Y	296000	1580644154000	291000	579000
1079	513	YvUzvPnCJ9Y	90000	1580624752000	16000	579000
1032	666	YvUzvPnCJ9Y	297000	1580566970000	290000	579000
1060	106	YvUzvPnCJ9Y	299000	1580569883000	294000	579000
1063	245	YvUzvPnCJ9Y	305000	1580574868000	294000	579000
1005	541	YvUzvPnCJ9Y	302000	1580566780000	294000	579000
1065	83	YvUzvPnCJ9Y	306000	1580577122000	290000	579000
1055	679	YvUzvPnCJ9Y	295000	1580568512000	290000	579000
1037	664	YvUzvPnCJ9Y	335000	1580567091000	270000	579000
1089	687	YvUzvPnCJ9Y	564000	1580638097000	331000	579000
1041	669	YvUzvPnCJ9Y	484000	1580567208000	290000	579000
1054	678	YvUzvPnCJ9Y	81000	1580568107000	13000	579000
1068	617	YvUzvPnCJ9Y	295000	1580580482000	290000	579000
1052	678	XVS7v5D_nfk	524000	1580567987000	317000	625000
1069	202	YvUzvPnCJ9Y	12000	1580584260000	7000	579000
1067	673	XVS7v5D_nfk	320000	1580577754000	315000	625000
1066	259	YvUzvPnCJ9Y	45000	1580577426000	40000	579000
1062	425	YvUzvPnCJ9Y	302000	1580570769000	293000	579000
1071	318	YvUzvPnCJ9Y	570000	1580587291000	31000	579000
1074	501	YvUzvPnCJ9Y	300000	1580590262000	294000	579000
1085	247	YvUzvPnCJ9Y	34000	1580630662000	29000	579000
1088	168	YvUzvPnCJ9Y	295000	1580636071000	290000	579000
1070	683	YvUzvPnCJ9Y	295000	1580587460000	290000	579000
1076	442	YvUzvPnCJ9Y	30000	1580594989000	25000	579000
1080	686	YvUzvPnCJ9Y	304000	1580625102000	291000	579000
1081	686	q-1ZOrPRTTY	5000	1580625712000	0	617000
1087	525	YvUzvPnCJ9Y	300000	1580635780000	291000	579000
1084	349	YvUzvPnCJ9Y	353000	1580630499000	293000	579000
1086	155	YvUzvPnCJ9Y	245000	1580631900000	292000	579000
1090	687	XVS7v5D_nfk	15000	1580639641000	260000	625000
1092	410	YvUzvPnCJ9Y	298000	1580641410000	293000	579000
1096	92	YvUzvPnCJ9Y	297000	1580646241000	290000	579000
1094	162	YvUzvPnCJ9Y	297000	1580643629000	292000	579000
1093	519	YvUzvPnCJ9Y	295000	1580643531000	290000	579000
1097	92	hTNnb_tXUEQ	350000	1580646918000	345000	687000
1098	46	YvUzvPnCJ9Y	35000	1580647154000	30000	579000
1100	19	YvUzvPnCJ9Y	100000	1580648898000	43000	579000
1101	688	YvUzvPnCJ9Y	351000	1580649626000	104000	579000
1102	283	YvUzvPnCJ9Y	299000	1580650382000	294000	579000
1103	279	YvUzvPnCJ9Y	52000	1580653899000	45000	579000
1064	59	YvUzvPnCJ9Y	235000	1580658546000	290000	579000
1104	186	YvUzvPnCJ9Y	311000	1580661724000	294000	579000
1105	148	YvUzvPnCJ9Y	9000	1580661830000	5000	579000
1099	12	YvUzvPnCJ9Y	49000	1580673962000	292000	579000
1122	90	YvUzvPnCJ9Y	315000	1580723792000	291000	579000
1154	696	XVS7v5D_nfk	378000	1580833167000	271000	625000
1113	690	YvUzvPnCJ9Y	230000	1580758798000	292000	579000
1116	691	YvUzvPnCJ9Y	56000	1580703738000	49000	579000
1109	75	YvUzvPnCJ9Y	296000	1580674898000	291000	579000
1110	652	hTNnb_tXUEQ	133000	1580675269000	24000	687000
1121	593	YvUzvPnCJ9Y	296000	1580721460000	290000	579000
1137	16	8UwQHnff1TI	10000	1580823318000	443000	962000
1155	609	YvUzvPnCJ9Y	201000	1580833447000	5000	579000
1118	206	YvUzvPnCJ9Y	55000	1580744154000	294000	579000
1166	305	8UwQHnff1TI	50000	1580847235000	45000	962000
1164	697	YvUzvPnCJ9Y	578000	1580846652000	15000	579000
1119	239	YvUzvPnCJ9Y	300000	1580712695000	292000	579000
1130	693	YvUzvPnCJ9Y	60000	1580803950000	55000	579000
1120	692	XVS7v5D_nfk	15000	1580720463000	10000	625000
1136	18	YvUzvPnCJ9Y	443000	1580821577000	129000	579000
1114	690	XVS7v5D_nfk	290000	1580757987000	313000	625000
1108	557	YvUzvPnCJ9Y	297000	1580673105000	292000	579000
1127	497	YvUzvPnCJ9Y	30000	1580746951000	35000	579000
1149	78	YvUzvPnCJ9Y	313000	1580829968000	291000	579000
1145	148	8UwQHnff1TI	55000	1580824808000	50000	962000
1128	539	YvUzvPnCJ9Y	25000	1580750573000	20000	579000
1161	312	8UwQHnff1TI	490000	1580844985000	484000	962000
1138	18	8UwQHnff1TI	489000	1580822476000	484000	962000
1144	155	8UwQHnff1TI	493000	1580825047000	488000	962000
1139	26	8UwQHnff1TI	491000	1580822488000	485000	962000
1180	200	8UwQHnff1TI	145000	1580895080000	140000	962000
1169	543	8UwQHnff1TI	500000	1580852724000	481000	962000
1173	327	YvUzvPnCJ9Y	20000	1580882031000	14000	579000
1131	693	XVS7v5D_nfk	104000	1580804069000	95000	625000
1106	689	XVS7v5D_nfk	617000	1580663825000	315000	625000
1107	689	YvUzvPnCJ9Y	578000	1580663887000	15000	579000
1167	186	8UwQHnff1TI	490000	1580849100000	482000	962000
1112	652	XVS7v5D_nfk	306000	1580676212000	315000	625000
1140	695	8UwQHnff1TI	489000	1580823140000	484000	962000
1158	542	YvUzvPnCJ9Y	307000	1580842033000	293000	579000
1146	604	8UwQHnff1TI	490000	1580825639000	484000	962000
1152	168	8UwQHnff1TI	486000	1580832536000	481000	962000
1117	614	YvUzvPnCJ9Y	298000	1580705826000	293000	579000
1132	51	YvUzvPnCJ9Y	85000	1580805355000	71000	579000
1111	652	q-1ZOrPRTTY	316000	1580675592000	310000	617000
1133	139	YvUzvPnCJ9Y	6000	1580818194000	1000	579000
1115	472	YvUzvPnCJ9Y	16000	1580684533000	11000	579000
1150	78	8UwQHnff1TI	565000	1580830622000	485000	962000
1134	546	YvUzvPnCJ9Y	579000	1580820771000	79000	579000
1123	292	YvUzvPnCJ9Y	225000	1580725239000	293000	579000
1124	676	hTNnb_tXUEQ	25000	1580726825000	20000	687000
1125	321	YvUzvPnCJ9Y	5000	1580733165000	0	579000
1168	119	8UwQHnff1TI	479000	1580851817000	13000	962000
1126	401	YvUzvPnCJ9Y	181000	1580742215000	8000	579000
1153	696	8UwQHnff1TI	20000	1580832635000	15000	962000
1151	358	8UwQHnff1TI	498000	1580832368000	482000	962000
1135	16	YvUzvPnCJ9Y	43000	1580821412000	35000	579000
1129	94	YvUzvPnCJ9Y	300000	1580788454000	292000	579000
1147	114	8UwQHnff1TI	505000	1580828987000	481000	962000
1148	114	YvUzvPnCJ9Y	4000	1580829115000	0	579000
1141	694	8UwQHnff1TI	505000	1580823197000	483000	962000
1174	245	8UwQHnff1TI	492000	1580885723000	482000	962000
1159	542	8UwQHnff1TI	35000	1580842401000	30000	962000
1142	690	8UwQHnff1TI	490000	1580823777000	485000	962000
1143	132	8UwQHnff1TI	490000	1580824892000	485000	962000
1157	461	8UwQHnff1TI	498000	1580840566000	483000	962000
1165	697	XVS7v5D_nfk	265000	1580847128000	317000	625000
1156	275	8UwQHnff1TI	490000	1580836854000	485000	962000
1175	57	8UwQHnff1TI	9000	1580886594000	5000	962000
1181	700	8UwQHnff1TI	5000	1580895220000	0	962000
1179	637	8UwQHnff1TI	564000	1580894946000	28000	962000
1195	706	8UwQHnff1TI	5000	1580902220000	0	962000
1162	102	8UwQHnff1TI	492000	1580845112000	487000	962000
1160	557	8UwQHnff1TI	490000	1580844834000	484000	962000
1170	379	8UwQHnff1TI	490000	1580853069000	485000	962000
1163	697	8UwQHnff1TI	8000	1580846601000	0	962000
1177	112	YvUzvPnCJ9Y	64000	1580894875000	59000	579000
1171	81	8UwQHnff1TI	20000	1580861020000	15000	962000
1172	327	8UwQHnff1TI	10000	1580882001000	5000	962000
1182	700	q-1ZOrPRTTY	5000	1580895251000	0	617000
1178	88	8UwQHnff1TI	22000	1580894896000	12000	962000
1184	62	YvUzvPnCJ9Y	309000	1580896325000	294000	579000
1183	701	8UwQHnff1TI	15000	1580895318000	10000	962000
1185	62	8UwQHnff1TI	501000	1580896873000	485000	962000
1186	77	YvUzvPnCJ9Y	354000	1580898213000	52000	579000
1187	77	8UwQHnff1TI	65000	1580898291000	59000	962000
1189	415	8UwQHnff1TI	489000	1580899047000	484000	962000
1188	49	8UwQHnff1TI	490000	1580898928000	483000	962000
1193	704	XVS7v5D_nfk	323000	1580899785000	315000	625000
1190	105	8UwQHnff1TI	490000	1580899695000	485000	962000
1192	39	8UwQHnff1TI	467000	1580899805000	443000	962000
1176	223	8UwQHnff1TI	368000	1580901125000	378000	962000
1194	704	YvUzvPnCJ9Y	296000	1580900463000	290000	579000
1197	588	YvUzvPnCJ9Y	51000	1580902531000	34000	579000
1191	704	8UwQHnff1TI	419000	1580909058000	483000	962000
1196	162	8UwQHnff1TI	210000	1580903741000	198000	962000
1198	390	8UwQHnff1TI	292000	1580903086000	5000	962000
1204	704	hTNnb_tXUEQ	352000	1580911593000	346000	687000
1205	58	8UwQHnff1TI	5000	1580911661000	0	962000
1236	105	CGrWxSuB0MU	320000	1580924094000	314000	626000
1206	208	YvUzvPnCJ9Y	499000	1580913285000	10000	579000
1210	427	8UwQHnff1TI	215000	1580919223000	209000	962000
1211	707	q-1ZOrPRTTY	457000	1580919225000	51000	617000
1203	206	8UwQHnff1TI	491000	1580908663000	484000	962000
1238	478	CGrWxSuB0MU	305000	1580924328000	316000	626000
1288	745	CGrWxSuB0MU	405000	1580924918000	104000	626000
1230	711	XVS7v5D_nfk	40000	1580923653000	35000	625000
1255	718	CGrWxSuB0MU	324000	1580924746000	317000	626000
1207	262	8UwQHnff1TI	630000	1580915607000	481000	962000
1226	83	8UwQHnff1TI	626000	1580924009000	485000	962000
1244	84	CGrWxSuB0MU	322000	1580924618000	317000	626000
1224	713	8UwQHnff1TI	958000	1580923586000	111000	962000
1228	714	XVS7v5D_nfk	10000	1580923555000	5000	625000
1218	132	CGrWxSuB0MU	320000	1580923690000	313000	626000
1209	73	8UwQHnff1TI	10000	1580917760000	24000	962000
1208	55	8UwQHnff1TI	560000	1580918992000	484000	962000
1200	69	8UwQHnff1TI	490000	1580904887000	485000	962000
1202	69	YvUzvPnCJ9Y	295000	1580905265000	290000	579000
1257	722	CGrWxSuB0MU	10000	1580924616000	108000	626000
1201	257	8UwQHnff1TI	10000	1580904500000	5000	962000
1231	714	YvUzvPnCJ9Y	15000	1580923629000	10000	579000
1241	716	CGrWxSuB0MU	288000	1580924448000	316000	626000
1221	686	CGrWxSuB0MU	322000	1580923735000	317000	626000
1234	49	CGrWxSuB0MU	285000	1580924116000	315000	626000
1233	669	CGrWxSuB0MU	135000	1580924028000	314000	626000
1225	714	8UwQHnff1TI	5000	1580923490000	0	962000
1251	103	CGrWxSuB0MU	326000	1580924722000	316000	626000
1216	345	CGrWxSuB0MU	320000	1580923601000	315000	626000
1237	258	CGrWxSuB0MU	318000	1580924122000	313000	626000
1213	84	8UwQHnff1TI	490000	1580920605000	485000	962000
1214	708	8UwQHnff1TI	10000	1580922390000	5000	962000
1246	682	CGrWxSuB0MU	192000	1580924547000	187000	626000
1217	709	CGrWxSuB0MU	391000	1580923672000	314000	626000
1264	713	CGrWxSuB0MU	55000	1580924500000	50000	626000
1285	67	CGrWxSuB0MU	501000	1580924670000	73000	626000
1235	34	CGrWxSuB0MU	83000	1580923867000	75000	626000
1199	70	8UwQHnff1TI	472000	1580905457000	464000	962000
1232	345	8UwQHnff1TI	75000	1580923708000	70000	962000
1215	62	CGrWxSuB0MU	320000	1580923539000	315000	626000
1223	712	CGrWxSuB0MU	316000	1580923792000	311000	626000
1256	724	CGrWxSuB0MU	100000	1580924433000	17000	626000
1283	575	CGrWxSuB0MU	219000	1580924855000	212000	626000
1229	713	YvUzvPnCJ9Y	302000	1580923912000	291000	579000
1259	439	8UwQHnff1TI	15000	1580924433000	10000	962000
1222	710	CGrWxSuB0MU	320000	1580923759000	315000	626000
1258	336	CGrWxSuB0MU	170000	1580924790000	317000	626000
1254	720	CGrWxSuB0MU	305000	1580924746000	314000	626000
1265	730	CGrWxSuB0MU	42000	1580924530000	59000	626000
1239	12	CGrWxSuB0MU	317000	1580924696000	317000	626000
1274	736	CGrWxSuB0MU	321000	1580924796000	315000	626000
1242	717	XVS7v5D_nfk	319000	1580924516000	314000	625000
1220	83	CGrWxSuB0MU	425000	1580924486000	314000	626000
1240	579	8UwQHnff1TI	490000	1580924527000	485000	962000
1284	744	CGrWxSuB0MU	596000	1580924810000	210000	626000
1272	728	CGrWxSuB0MU	123000	1580924592000	118000	626000
1253	48	CGrWxSuB0MU	320000	1580924762000	314000	626000
1275	735	CGrWxSuB0MU	325000	1580924803000	313000	626000
1271	734	CGrWxSuB0MU	424000	1580924544000	73000	626000
1261	726	CGrWxSuB0MU	322000	1580924749000	317000	626000
1278	439	CGrWxSuB0MU	320000	1580924828000	314000	626000
1273	731	CGrWxSuB0MU	83000	1580924574000	92000	626000
1280	737	CGrWxSuB0MU	323000	1580924847000	317000	626000
1270	727	CGrWxSuB0MU	25000	1580924490000	20000	626000
1277	312	CGrWxSuB0MU	285000	1580924851000	314000	626000
1279	738	CGrWxSuB0MU	320000	1580924838000	314000	626000
1262	723	CGrWxSuB0MU	320000	1580924830000	315000	626000
1267	733	CGrWxSuB0MU	325000	1580924773000	305000	626000
1247	715	CGrWxSuB0MU	320000	1580924661000	315000	626000
1243	686	8UwQHnff1TI	491000	1580924703000	486000	962000
1245	541	CGrWxSuB0MU	315000	1580924665000	317000	626000
1281	741	CGrWxSuB0MU	310000	1580924615000	70000	626000
1282	740	q-1ZOrPRTTY	315000	1580924870000	310000	617000
1260	449	CGrWxSuB0MU	320000	1580924740000	315000	626000
1289	746	CGrWxSuB0MU	320000	1580924965000	315000	626000
1290	102	CGrWxSuB0MU	327000	1580925004000	317000	626000
1263	355	CGrWxSuB0MU	321000	1580924756000	315000	626000
1248	719	CGrWxSuB0MU	461000	1580924710000	315000	626000
1249	177	CGrWxSuB0MU	320000	1580924675000	315000	626000
1266	721	CGrWxSuB0MU	334000	1580924794000	16000	626000
1212	75	8UwQHnff1TI	10000	1580928541000	483000	962000
1269	714	CGrWxSuB0MU	320000	1580924777000	315000	626000
1227	479	CGrWxSuB0MU	292000	1580924654000	313000	626000
1219	710	XVS7v5D_nfk	40000	1580924778000	35000	625000
1287	722	YvUzvPnCJ9Y	476000	1580924939000	292000	579000
1250	68	CGrWxSuB0MU	320000	1580924680000	314000	626000
1315	760	CGrWxSuB0MU	37000	1580946005000	32000	626000
1304	757	CGrWxSuB0MU	105000	1580926264000	100000	626000
1355	772	CGrWxSuB0MU	320000	1581005328000	315000	626000
1316	761	CGrWxSuB0MU	579000	1580951576000	574000	626000
1276	644	CGrWxSuB0MU	335000	1580924836000	310000	626000
1317	761	8UwQHnff1TI	901000	1580951694000	5000	962000
1299	579	CGrWxSuB0MU	322000	1580925413000	314000	626000
1335	78	CGrWxSuB0MU	333000	1580977736000	314000	626000
1324	762	YvUzvPnCJ9Y	290000	1580960279000	291000	579000
1308	758	CGrWxSuB0MU	234000	1580928000000	314000	626000
1252	443	CGrWxSuB0MU	321000	1580924719000	314000	626000
1323	334	YvUzvPnCJ9Y	295000	1580960053000	290000	579000
1320	283	8UwQHnff1TI	487000	1580957489000	481000	962000
1313	759	XVS7v5D_nfk	95000	1580931049000	90000	625000
1297	754	YvUzvPnCJ9Y	306000	1580925458000	292000	579000
1295	751	CGrWxSuB0MU	537000	1580924871000	0	626000
1353	312	3spJkLU-qX4	350000	1581105525000	365000	724000
1343	519	8UwQHnff1TI	182000	1580988835000	485000	962000
1318	761	XVS7v5D_nfk	321000	1580952102000	315000	625000
1298	358	CGrWxSuB0MU	324000	1580925299000	317000	626000
1349	210	CGrWxSuB0MU	116000	1580991946000	13000	627000
1354	772	3spJkLU-qX4	5000	1581004994000	0	724000
1306	72	CGrWxSuB0MU	319000	1580927437000	315000	626000
1307	758	q-1ZOrPRTTY	5000	1580927484000	0	617000
1292	719	YvUzvPnCJ9Y	115000	1580924894000	110000	579000
1319	761	YvUzvPnCJ9Y	295000	1580952621000	290000	579000
1305	72	8UwQHnff1TI	489000	1580927074000	483000	962000
1327	334	CGrWxSuB0MU	320000	1580962045000	315000	626000
1268	725	CGrWxSuB0MU	345000	1580924777000	314000	626000
1326	762	8UwQHnff1TI	85000	1580977374000	230000	962000
1321	283	CGrWxSuB0MU	324000	1580958126000	317000	626000
1367	775	CGrWxSuB0MU	608000	1581051541000	153000	626000
1296	732	CGrWxSuB0MU	305000	1580925215000	299000	626000
1348	193	3spJkLU-qX4	371000	1580992182000	366000	724000
1309	449	YvUzvPnCJ9Y	295000	1580928958000	290000	579000
1300	500	CGrWxSuB0MU	319000	1580925644000	313000	626000
1294	752	CGrWxSuB0MU	280000	1580925223000	315000	626000
1345	193	CGrWxSuB0MU	340000	1580991149000	317000	626000
1344	519	CGrWxSuB0MU	354000	1580989269000	313000	626000
1286	743	CGrWxSuB0MU	325000	1580924942000	315000	626000
1301	755	CGrWxSuB0MU	46000	1580925350000	41000	626000
1330	765	CGrWxSuB0MU	396000	1580968971000	313000	626000
1291	750	hTNnb_tXUEQ	35000	1580924806000	30000	687000
1331	715	XVS7v5D_nfk	10000	1580970814000	5000	625000
1332	508	CGrWxSuB0MU	572000	1580972391000	0	626000
1322	762	CGrWxSuB0MU	320000	1580959648000	315000	626000
1302	500	8UwQHnff1TI	70000	1580925774000	65000	962000
1310	75	CGrWxSuB0MU	285000	1580929138000	313000	626000
1303	500	YvUzvPnCJ9Y	300000	1580926224000	291000	579000
1293	449	8UwQHnff1TI	481000	1580928219000	481000	962000
1342	574	CGrWxSuB0MU	114000	1580987405000	115000	626000
1350	177	3spJkLU-qX4	342000	1580995412000	15000	724000
1312	759	CGrWxSuB0MU	608000	1580930917000	22000	626000
1314	165	8UwQHnff1TI	486000	1580935549000	485000	962000
1311	292	CGrWxSuB0MU	320000	1580930929000	313000	626000
1328	763	CGrWxSuB0MU	320000	1580966255000	315000	626000
1361	129	3spJkLU-qX4	5000	1581016893000	0	724000
1339	627	8UwQHnff1TI	490000	1580983220000	485000	962000
1325	334	8UwQHnff1TI	490000	1580960837000	485000	962000
1336	769	hTNnb_tXUEQ	350000	1580981088000	345000	687000
1333	379	CGrWxSuB0MU	320000	1580974961000	315000	626000
1338	770	CGrWxSuB0MU	320000	1580982407000	315000	626000
1329	764	CGrWxSuB0MU	50000	1580968241000	45000	626000
1334	12	8UwQHnff1TI	145000	1580974973000	140000	962000
1340	627	CGrWxSuB0MU	325000	1580983587000	315000	626000
1341	15	CGrWxSuB0MU	10000	1580984826000	5000	626000
1337	557	CGrWxSuB0MU	325000	1580981287000	314000	626000
1346	34	3spJkLU-qX4	377000	1580991262000	153000	724000
1351	771	CGrWxSuB0MU	155000	1580996949000	317000	626000
1362	129	CGrWxSuB0MU	322000	1581017244000	317000	626000
1347	193	8UwQHnff1TI	488000	1580991716000	482000	962000
1356	461	CGrWxSuB0MU	325000	1581009552000	317000	626000
1365	134	3spJkLU-qX4	15000	1581021873000	9000	724000
1352	262	CGrWxSuB0MU	324000	1581001693000	317000	626000
1363	105	3spJkLU-qX4	130000	1581020850000	125000	724000
1358	242	CGrWxSuB0MU	70000	1581010412000	79000	626000
1359	441	CGrWxSuB0MU	329000	1581010593000	314000	626000
1357	325	CGrWxSuB0MU	320000	1581009786000	315000	626000
1364	774	CGrWxSuB0MU	15000	1581021480000	10000	626000
1360	591	CGrWxSuB0MU	257000	1581026349000	316000	626000
1366	134	CGrWxSuB0MU	70000	1581021959000	65000	626000
1369	271	CGrWxSuB0MU	536000	1581061830000	291000	626000
1368	704	CGrWxSuB0MU	320000	1581054148000	315000	626000
1370	84	3spJkLU-qX4	118000	1581069874000	107000	724000
1371	626	3spJkLU-qX4	723000	1581075229000	33000	724000
1372	626	CGrWxSuB0MU	15000	1581075275000	10000	626000
1373	449	3spJkLU-qX4	351000	1581084947000	33000	724000
1374	132	3spJkLU-qX4	25000	1581088413000	19000	724000
1375	599	CGrWxSuB0MU	626000	1581088708000	72000	626000
1376	299	3spJkLU-qX4	49000	1581090874000	44000	724000
1378	292	3spJkLU-qX4	47000	1581092217000	42000	724000
1377	275	CGrWxSuB0MU	320000	1581092337000	313000	626000
1379	517	3spJkLU-qX4	17000	1581097302000	12000	724000
1380	517	CGrWxSuB0MU	23000	1581097405000	18000	626000
1385	470	3spJkLU-qX4	370000	1581111769000	365000	724000
1386	698	3spJkLU-qX4	5000	1581117791000	0	724000
1390	543	3spJkLU-qX4	369000	1581144427000	364000	724000
1391	519	3spJkLU-qX4	5000	1581144812000	0	724000
1389	579	3spJkLU-qX4	370000	1581142180000	363000	724000
1384	470	CGrWxSuB0MU	325000	1581111360000	316000	626000
1388	73	3spJkLU-qX4	373000	1581141700000	365000	724000
1387	698	CGrWxSuB0MU	619000	1581117976000	146000	626000
1383	13	CGrWxSuB0MU	300000	1581106111000	317000	626000
1394	262	3spJkLU-qX4	567000	1581147411000	376000	724000
1393	761	3spJkLU-qX4	594000	1581146360000	317000	724000
1392	543	CGrWxSuB0MU	359000	1581145308000	353000	626000
1382	13	3spJkLU-qX4	370000	1581105547000	364000	724000
1404	704	3spJkLU-qX4	205000	1581167394000	200000	724000
1405	318	CGrWxSuB0MU	5000	1581170648000	0	626000
1381	73	CGrWxSuB0MU	320000	1581100380000	315000	626000
1399	180	CGrWxSuB0MU	326000	1581156561000	316000	626000
1395	238	3spJkLU-qX4	115000	1581148283000	107000	724000
1398	92	CGrWxSuB0MU	320000	1581153229000	315000	626000
1400	106	3spJkLU-qX4	17000	1581157261000	10000	724000
1397	604	CGrWxSuB0MU	327000	1581150988000	314000	626000
1396	238	CGrWxSuB0MU	46000	1581148378000	40000	626000
1406	522	CGrWxSuB0MU	24000	1581170768000	20000	626000
1401	777	3spJkLU-qX4	35000	1581160686000	30000	724000
1402	777	CGrWxSuB0MU	184000	1581160754000	51000	626000
1403	758	3spJkLU-qX4	5000	1581161073000	0	724000
\.


--
-- TOC entry 3041 (class 0 OID 17075)
-- Dependencies: 202
-- Data for Name: __EFMigrationsHistory; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."__EFMigrationsHistory" ("MigrationId", "ProductVersion") FROM stdin;
20190402210313_add_real_cost_column	2.2.4-servicing-10062
20190527133024_add_field_to_order	2.2.4-servicing-10062
20190616210755_add_field_to_user_transaction	2.2.4-servicing-10062
20190625143122_change_pwd	2.2.4-servicing-10062
\.


--
-- TOC entry 3104 (class 0 OID 0)
-- Dependencies: 203
-- Name: AdditionalInfos_Id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."AdditionalInfos_Id_seq"', 20, true);


--
-- TOC entry 3105 (class 0 OID 0)
-- Dependencies: 205
-- Name: Admins_Id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Admins_Id_seq"', 1, false);


--
-- TOC entry 3106 (class 0 OID 0)
-- Dependencies: 217
-- Name: AuthToken_Id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."AuthToken_Id_seq"', 941, true);


--
-- TOC entry 3107 (class 0 OID 0)
-- Dependencies: 207
-- Name: Categories_Id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Categories_Id_seq"', 1, true);


--
-- TOC entry 3108 (class 0 OID 0)
-- Dependencies: 209
-- Name: Devices_Id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Devices_Id_seq"', 1902, true);


--
-- TOC entry 3109 (class 0 OID 0)
-- Dependencies: 215
-- Name: Goods_Id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Goods_Id_seq"', 3, true);


--
-- TOC entry 3110 (class 0 OID 0)
-- Dependencies: 223
-- Name: Likes_Id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Likes_Id_seq"', 382, true);


--
-- TOC entry 3111 (class 0 OID 0)
-- Dependencies: 219
-- Name: NetworkProfile_Id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."NetworkProfile_Id_seq"', 775, true);


--
-- TOC entry 3112 (class 0 OID 0)
-- Dependencies: 235
-- Name: Orders_Id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Orders_Id_seq"', 4, true);


--
-- TOC entry 3113 (class 0 OID 0)
-- Dependencies: 221
-- Name: PhoneIdentificators_Id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."PhoneIdentificators_Id_seq"', 1, false);


--
-- TOC entry 3114 (class 0 OID 0)
-- Dependencies: 225
-- Name: Pushs_Id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Pushs_Id_seq"', 1, false);


--
-- TOC entry 3115 (class 0 OID 0)
-- Dependencies: 227
-- Name: Questionaries_Id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Questionaries_Id_seq"', 23, true);


--
-- TOC entry 3116 (class 0 OID 0)
-- Dependencies: 229
-- Name: SurveyComments_Id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."SurveyComments_Id_seq"', 1, false);


--
-- TOC entry 3117 (class 0 OID 0)
-- Dependencies: 231
-- Name: SurveysUsers_Id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."SurveysUsers_Id_seq"', 769, true);


--
-- TOC entry 3118 (class 0 OID 0)
-- Dependencies: 213
-- Name: Surveys_Id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Surveys_Id_seq"', 14, true);


--
-- TOC entry 3119 (class 0 OID 0)
-- Dependencies: 237
-- Name: UserQuestionAnswers_Id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."UserQuestionAnswers_Id_seq"', 1660, true);


--
-- TOC entry 3120 (class 0 OID 0)
-- Dependencies: 233
-- Name: UserTransactions_Id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."UserTransactions_Id_seq"', 745, true);


--
-- TOC entry 3121 (class 0 OID 0)
-- Dependencies: 211
-- Name: Users_Id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Users_Id_seq"', 777, true);


--
-- TOC entry 3122 (class 0 OID 0)
-- Dependencies: 239
-- Name: VideoTimelines_Id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."VideoTimelines_Id_seq"', 1406, true);


--
-- TOC entry 2846 (class 2606 OID 17136)
-- Name: Users AlternateKey_Email; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "AlternateKey_Email" UNIQUE ("Email");


--
-- TOC entry 2838 (class 2606 OID 17090)
-- Name: AdditionalInfos PK_AdditionalInfos; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."AdditionalInfos"
    ADD CONSTRAINT "PK_AdditionalInfos" PRIMARY KEY ("Id");


--
-- TOC entry 2840 (class 2606 OID 17101)
-- Name: Admins PK_Admins; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Admins"
    ADD CONSTRAINT "PK_Admins" PRIMARY KEY ("Id");


--
-- TOC entry 2857 (class 2606 OID 17179)
-- Name: AuthToken PK_AuthToken; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."AuthToken"
    ADD CONSTRAINT "PK_AuthToken" PRIMARY KEY ("Id");


--
-- TOC entry 2842 (class 2606 OID 17112)
-- Name: Categories PK_Categories; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Categories"
    ADD CONSTRAINT "PK_Categories" PRIMARY KEY ("Id");


--
-- TOC entry 2844 (class 2606 OID 17123)
-- Name: Devices PK_Devices; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Devices"
    ADD CONSTRAINT "PK_Devices" PRIMARY KEY ("Id");


--
-- TOC entry 2854 (class 2606 OID 17163)
-- Name: Goods PK_Goods; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Goods"
    ADD CONSTRAINT "PK_Goods" PRIMARY KEY ("Id");


--
-- TOC entry 2867 (class 2606 OID 17224)
-- Name: Likes PK_Likes; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Likes"
    ADD CONSTRAINT "PK_Likes" PRIMARY KEY ("Id");


--
-- TOC entry 2860 (class 2606 OID 17195)
-- Name: NetworkProfile PK_NetworkProfile; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."NetworkProfile"
    ADD CONSTRAINT "PK_NetworkProfile" PRIMARY KEY ("Id");


--
-- TOC entry 2890 (class 2606 OID 17336)
-- Name: Orders PK_Orders; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Orders"
    ADD CONSTRAINT "PK_Orders" PRIMARY KEY ("Id");


--
-- TOC entry 2863 (class 2606 OID 17211)
-- Name: PhoneIdentificators PK_PhoneIdentificators; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."PhoneIdentificators"
    ADD CONSTRAINT "PK_PhoneIdentificators" PRIMARY KEY ("Id");


--
-- TOC entry 2871 (class 2606 OID 17245)
-- Name: Pushs PK_Pushs; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Pushs"
    ADD CONSTRAINT "PK_Pushs" PRIMARY KEY ("Id");


--
-- TOC entry 2874 (class 2606 OID 17266)
-- Name: Questionaries PK_Questionaries; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Questionaries"
    ADD CONSTRAINT "PK_Questionaries" PRIMARY KEY ("Id");


--
-- TOC entry 2878 (class 2606 OID 17282)
-- Name: SurveyComments PK_SurveyComments; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."SurveyComments"
    ADD CONSTRAINT "PK_SurveyComments" PRIMARY KEY ("Id");


--
-- TOC entry 2851 (class 2606 OID 17147)
-- Name: Surveys PK_Surveys; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Surveys"
    ADD CONSTRAINT "PK_Surveys" PRIMARY KEY ("Id");


--
-- TOC entry 2882 (class 2606 OID 17300)
-- Name: SurveysUsers PK_SurveysUsers; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."SurveysUsers"
    ADD CONSTRAINT "PK_SurveysUsers" PRIMARY KEY ("Id");


--
-- TOC entry 2893 (class 2606 OID 17357)
-- Name: UserQuestionAnswers PK_UserQuestionAnswers; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."UserQuestionAnswers"
    ADD CONSTRAINT "PK_UserQuestionAnswers" PRIMARY KEY ("Id");


--
-- TOC entry 2886 (class 2606 OID 17318)
-- Name: UserTransactions PK_UserTransactions; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."UserTransactions"
    ADD CONSTRAINT "PK_UserTransactions" PRIMARY KEY ("Id");


--
-- TOC entry 2848 (class 2606 OID 17134)
-- Name: Users PK_Users; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "PK_Users" PRIMARY KEY ("Id");


--
-- TOC entry 2895 (class 2606 OID 17393)
-- Name: VideoTimelines PK_VideoTimelines; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."VideoTimelines"
    ADD CONSTRAINT "PK_VideoTimelines" PRIMARY KEY ("Id");


--
-- TOC entry 2836 (class 2606 OID 17079)
-- Name: __EFMigrationsHistory PK___EFMigrationsHistory; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."__EFMigrationsHistory"
    ADD CONSTRAINT "PK___EFMigrationsHistory" PRIMARY KEY ("MigrationId");


--
-- TOC entry 2855 (class 1259 OID 17363)
-- Name: IX_AuthToken_UserId; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX "IX_AuthToken_UserId" ON public."AuthToken" USING btree ("UserId");


--
-- TOC entry 2852 (class 1259 OID 17364)
-- Name: IX_Goods_CategoryId; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "IX_Goods_CategoryId" ON public."Goods" USING btree ("CategoryId");


--
-- TOC entry 2864 (class 1259 OID 17365)
-- Name: IX_Likes_SurveyId; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "IX_Likes_SurveyId" ON public."Likes" USING btree ("SurveyId");


--
-- TOC entry 2865 (class 1259 OID 17366)
-- Name: IX_Likes_UserId; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "IX_Likes_UserId" ON public."Likes" USING btree ("UserId");


--
-- TOC entry 2858 (class 1259 OID 17367)
-- Name: IX_NetworkProfile_UserId; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "IX_NetworkProfile_UserId" ON public."NetworkProfile" USING btree ("UserId");


--
-- TOC entry 2887 (class 1259 OID 17368)
-- Name: IX_Orders_GoodId; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "IX_Orders_GoodId" ON public."Orders" USING btree ("GoodId");


--
-- TOC entry 2888 (class 1259 OID 17369)
-- Name: IX_Orders_UserId; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "IX_Orders_UserId" ON public."Orders" USING btree ("UserId");


--
-- TOC entry 2861 (class 1259 OID 17370)
-- Name: IX_PhoneIdentificators_UserId; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "IX_PhoneIdentificators_UserId" ON public."PhoneIdentificators" USING btree ("UserId");


--
-- TOC entry 2868 (class 1259 OID 17371)
-- Name: IX_Pushs_AdminId; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "IX_Pushs_AdminId" ON public."Pushs" USING btree ("AdminId");


--
-- TOC entry 2869 (class 1259 OID 17372)
-- Name: IX_Pushs_SurveyId; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "IX_Pushs_SurveyId" ON public."Pushs" USING btree ("SurveyId");


--
-- TOC entry 2872 (class 1259 OID 17373)
-- Name: IX_Questionaries_SurveyId; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "IX_Questionaries_SurveyId" ON public."Questionaries" USING btree ("SurveyId");


--
-- TOC entry 2875 (class 1259 OID 17374)
-- Name: IX_SurveyComments_SurveyId; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "IX_SurveyComments_SurveyId" ON public."SurveyComments" USING btree ("SurveyId");


--
-- TOC entry 2876 (class 1259 OID 17375)
-- Name: IX_SurveyComments_UserId; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "IX_SurveyComments_UserId" ON public."SurveyComments" USING btree ("UserId");


--
-- TOC entry 2879 (class 1259 OID 17377)
-- Name: IX_SurveysUsers_SurveyId; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "IX_SurveysUsers_SurveyId" ON public."SurveysUsers" USING btree ("SurveyId");


--
-- TOC entry 2880 (class 1259 OID 17378)
-- Name: IX_SurveysUsers_UserId; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "IX_SurveysUsers_UserId" ON public."SurveysUsers" USING btree ("UserId");


--
-- TOC entry 2849 (class 1259 OID 17376)
-- Name: IX_Surveys_AdditionalInfoId; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "IX_Surveys_AdditionalInfoId" ON public."Surveys" USING btree ("AdditionalInfoId");


--
-- TOC entry 2891 (class 1259 OID 17379)
-- Name: IX_UserQuestionAnswers_SurveyUserId; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "IX_UserQuestionAnswers_SurveyUserId" ON public."UserQuestionAnswers" USING btree ("SurveyUserId");


--
-- TOC entry 2883 (class 1259 OID 17380)
-- Name: IX_UserTransactions_SurveyId; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "IX_UserTransactions_SurveyId" ON public."UserTransactions" USING btree ("SurveyId");


--
-- TOC entry 2884 (class 1259 OID 17381)
-- Name: IX_UserTransactions_UserId; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "IX_UserTransactions_UserId" ON public."UserTransactions" USING btree ("UserId");


--
-- TOC entry 2898 (class 2606 OID 17180)
-- Name: AuthToken FK_AuthToken_Users_UserId; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."AuthToken"
    ADD CONSTRAINT "FK_AuthToken_Users_UserId" FOREIGN KEY ("UserId") REFERENCES public."Users"("Id") ON DELETE CASCADE;


--
-- TOC entry 2897 (class 2606 OID 17164)
-- Name: Goods FK_Goods_Categories_CategoryId; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Goods"
    ADD CONSTRAINT "FK_Goods_Categories_CategoryId" FOREIGN KEY ("CategoryId") REFERENCES public."Categories"("Id") ON DELETE CASCADE;


--
-- TOC entry 2901 (class 2606 OID 17225)
-- Name: Likes FK_Likes_Surveys_SurveyId; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Likes"
    ADD CONSTRAINT "FK_Likes_Surveys_SurveyId" FOREIGN KEY ("SurveyId") REFERENCES public."Surveys"("Id") ON DELETE CASCADE;


--
-- TOC entry 2902 (class 2606 OID 17230)
-- Name: Likes FK_Likes_Users_UserId; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Likes"
    ADD CONSTRAINT "FK_Likes_Users_UserId" FOREIGN KEY ("UserId") REFERENCES public."Users"("Id") ON DELETE CASCADE;


--
-- TOC entry 2899 (class 2606 OID 17196)
-- Name: NetworkProfile FK_NetworkProfile_Users_UserId; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."NetworkProfile"
    ADD CONSTRAINT "FK_NetworkProfile_Users_UserId" FOREIGN KEY ("UserId") REFERENCES public."Users"("Id") ON DELETE CASCADE;


--
-- TOC entry 2912 (class 2606 OID 17337)
-- Name: Orders FK_Orders_Goods_GoodId; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Orders"
    ADD CONSTRAINT "FK_Orders_Goods_GoodId" FOREIGN KEY ("GoodId") REFERENCES public."Goods"("Id") ON DELETE CASCADE;


--
-- TOC entry 2913 (class 2606 OID 17342)
-- Name: Orders FK_Orders_Users_UserId; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Orders"
    ADD CONSTRAINT "FK_Orders_Users_UserId" FOREIGN KEY ("UserId") REFERENCES public."Users"("Id") ON DELETE CASCADE;


--
-- TOC entry 2900 (class 2606 OID 17212)
-- Name: PhoneIdentificators FK_PhoneIdentificators_Users_UserId; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."PhoneIdentificators"
    ADD CONSTRAINT "FK_PhoneIdentificators_Users_UserId" FOREIGN KEY ("UserId") REFERENCES public."Users"("Id") ON DELETE CASCADE;


--
-- TOC entry 2903 (class 2606 OID 17246)
-- Name: Pushs FK_Pushs_Admins_AdminId; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Pushs"
    ADD CONSTRAINT "FK_Pushs_Admins_AdminId" FOREIGN KEY ("AdminId") REFERENCES public."Admins"("Id") ON DELETE CASCADE;


--
-- TOC entry 2904 (class 2606 OID 17251)
-- Name: Pushs FK_Pushs_Surveys_SurveyId; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Pushs"
    ADD CONSTRAINT "FK_Pushs_Surveys_SurveyId" FOREIGN KEY ("SurveyId") REFERENCES public."Surveys"("Id") ON DELETE CASCADE;


--
-- TOC entry 2905 (class 2606 OID 17267)
-- Name: Questionaries FK_Questionaries_Surveys_SurveyId; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Questionaries"
    ADD CONSTRAINT "FK_Questionaries_Surveys_SurveyId" FOREIGN KEY ("SurveyId") REFERENCES public."Surveys"("Id") ON DELETE CASCADE;


--
-- TOC entry 2906 (class 2606 OID 17283)
-- Name: SurveyComments FK_SurveyComments_Surveys_SurveyId; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."SurveyComments"
    ADD CONSTRAINT "FK_SurveyComments_Surveys_SurveyId" FOREIGN KEY ("SurveyId") REFERENCES public."Surveys"("Id") ON DELETE CASCADE;


--
-- TOC entry 2907 (class 2606 OID 17288)
-- Name: SurveyComments FK_SurveyComments_Users_UserId; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."SurveyComments"
    ADD CONSTRAINT "FK_SurveyComments_Users_UserId" FOREIGN KEY ("UserId") REFERENCES public."Users"("Id") ON DELETE CASCADE;


--
-- TOC entry 2908 (class 2606 OID 17301)
-- Name: SurveysUsers FK_SurveysUsers_Surveys_SurveyId; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."SurveysUsers"
    ADD CONSTRAINT "FK_SurveysUsers_Surveys_SurveyId" FOREIGN KEY ("SurveyId") REFERENCES public."Surveys"("Id") ON DELETE CASCADE;


--
-- TOC entry 2909 (class 2606 OID 17306)
-- Name: SurveysUsers FK_SurveysUsers_Users_UserId; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."SurveysUsers"
    ADD CONSTRAINT "FK_SurveysUsers_Users_UserId" FOREIGN KEY ("UserId") REFERENCES public."Users"("Id") ON DELETE CASCADE;


--
-- TOC entry 2896 (class 2606 OID 17148)
-- Name: Surveys FK_Surveys_AdditionalInfos_AdditionalInfoId; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Surveys"
    ADD CONSTRAINT "FK_Surveys_AdditionalInfos_AdditionalInfoId" FOREIGN KEY ("AdditionalInfoId") REFERENCES public."AdditionalInfos"("Id") ON DELETE RESTRICT;


--
-- TOC entry 2914 (class 2606 OID 17358)
-- Name: UserQuestionAnswers FK_UserQuestionAnswers_SurveysUsers_SurveyUserId; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."UserQuestionAnswers"
    ADD CONSTRAINT "FK_UserQuestionAnswers_SurveysUsers_SurveyUserId" FOREIGN KEY ("SurveyUserId") REFERENCES public."SurveysUsers"("Id") ON DELETE CASCADE;


--
-- TOC entry 2910 (class 2606 OID 17319)
-- Name: UserTransactions FK_UserTransactions_Surveys_SurveyId; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."UserTransactions"
    ADD CONSTRAINT "FK_UserTransactions_Surveys_SurveyId" FOREIGN KEY ("SurveyId") REFERENCES public."Surveys"("Id") ON DELETE RESTRICT;


--
-- TOC entry 2911 (class 2606 OID 17324)
-- Name: UserTransactions FK_UserTransactions_Users_UserId; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."UserTransactions"
    ADD CONSTRAINT "FK_UserTransactions_Users_UserId" FOREIGN KEY ("UserId") REFERENCES public."Users"("Id") ON DELETE CASCADE;


-- Completed on 2020-02-10 13:42:25

--
-- PostgreSQL database dump complete
--

