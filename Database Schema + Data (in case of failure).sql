USE [master]
GO
/****** Object:  Database [SKMSDatabase]    Script Date: 21/01/2022 21:34:43 ******/
CREATE DATABASE [SKMSDatabase]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'SKMS', FILENAME = N'c:\dzsqls\SKMSDatabase.mdf' , SIZE = 4160KB , MAXSIZE = 30720KB , FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'SKMS_log', FILENAME = N'c:\dzsqls\SKMSDatabase.ldf' , SIZE = 1088KB , MAXSIZE = 30720KB , FILEGROWTH = 10%)
GO
ALTER DATABASE [SKMSDatabase] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [SKMSDatabase].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [SKMSDatabase] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [SKMSDatabase] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [SKMSDatabase] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [SKMSDatabase] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [SKMSDatabase] SET ARITHABORT OFF 
GO
ALTER DATABASE [SKMSDatabase] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [SKMSDatabase] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [SKMSDatabase] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [SKMSDatabase] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [SKMSDatabase] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [SKMSDatabase] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [SKMSDatabase] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [SKMSDatabase] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [SKMSDatabase] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [SKMSDatabase] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [SKMSDatabase] SET  DISABLE_BROKER 
GO
ALTER DATABASE [SKMSDatabase] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [SKMSDatabase] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [SKMSDatabase] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [SKMSDatabase] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [SKMSDatabase] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [SKMSDatabase] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [SKMSDatabase] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [SKMSDatabase] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [SKMSDatabase] SET  MULTI_USER 
GO
ALTER DATABASE [SKMSDatabase] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [SKMSDatabase] SET DB_CHAINING OFF 
GO
ALTER DATABASE [SKMSDatabase] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [SKMSDatabase] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [SKMSDatabase]
GO
/****** Object:  User [Lindi]    Script Date: 21/01/2022 21:34:45 ******/
CREATE USER [Lindi] WITHOUT LOGIN WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [BC00001_SQLLogin_1]    Script Date: 21/01/2022 21:34:46 ******/
CREATE USER [BC00001_SQLLogin_1] FOR LOGIN [BC00001_SQLLogin_1] WITH DEFAULT_SCHEMA=[dbo]
GO
ALTER ROLE [db_owner] ADD MEMBER [BC00001_SQLLogin_1]
GO
/****** Object:  Schema [BC00001_SQLLogin_1]    Script Date: 21/01/2022 21:34:47 ******/
CREATE SCHEMA [BC00001_SQLLogin_1]
GO
/****** Object:  Table [dbo].[ABSENCE]    Script Date: 21/01/2022 21:34:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ABSENCE](
	[AbsenceID] [uniqueidentifier] NOT NULL,
	[Student] [uniqueidentifier] NULL,
	[Reasoned] [varchar](10) NULL,
	[Period] [uniqueidentifier] NULL,
	[DateMarked] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[AbsenceID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ADMINISTRATOR]    Script Date: 21/01/2022 21:34:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ADMINISTRATOR](
	[AdministratorID] [uniqueidentifier] NOT NULL,
	[AcademicDegree] [varchar](50) NULL,
	[PhoneNumber] [varchar](20) NULL,
	[EmailAddress] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[AdministratorID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ARTICLE]    Script Date: 21/01/2022 21:34:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ARTICLE](
	[ArticleID] [uniqueidentifier] NOT NULL,
	[Title] [varchar](75) NULL,
	[Contents] [varchar](255) NULL,
	[DatePublished] [date] NULL,
	[PictureUrl] [varchar](255) NULL,
	[School] [uniqueidentifier] NULL,
PRIMARY KEY CLUSTERED 
(
	[ArticleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CITY]    Script Date: 21/01/2022 21:34:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CITY](
	[CityID] [uniqueidentifier] NOT NULL,
	[CityName] [varchar](75) NULL,
	[Municipality] [uniqueidentifier] NULL,
PRIMARY KEY CLUSTERED 
(
	[CityID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CLASSGROUP]    Script Date: 21/01/2022 21:34:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CLASSGROUP](
	[GroupID] [uniqueidentifier] NOT NULL,
	[GroupName] [varchar](20) NULL,
	[Grade] [int] NULL,
	[Classroom] [uniqueidentifier] NULL,
	[HomeroomTeacher] [uniqueidentifier] NULL,
PRIMARY KEY CLUSTERED 
(
	[GroupID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CLASSROOM]    Script Date: 21/01/2022 21:34:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CLASSROOM](
	[ClassroomID] [uniqueidentifier] NOT NULL,
	[ClassroomName] [varchar](30) NULL,
	[Capacity] [int] NULL,
	[School] [uniqueidentifier] NULL,
PRIMARY KEY CLUSTERED 
(
	[ClassroomID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CURRICULUM]    Script Date: 21/01/2022 21:34:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CURRICULUM](
	[CurriculumID] [uniqueidentifier] NOT NULL,
	[Grade] [int] NULL,
	[School] [uniqueidentifier] NULL,
PRIMARY KEY CLUSTERED 
(
	[CurriculumID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EVENTCATEGORY]    Script Date: 21/01/2022 21:34:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[EVENTCATEGORY](
	[CategoryID] [uniqueidentifier] NOT NULL,
	[CategoryName] [varchar](30) NULL,
PRIMARY KEY CLUSTERED 
(
	[CategoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[GRADE]    Script Date: 21/01/2022 21:34:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GRADE](
	[GradeID] [uniqueidentifier] NOT NULL,
	[Student] [uniqueidentifier] NULL,
	[Subject] [uniqueidentifier] NULL,
	[Teacher] [uniqueidentifier] NULL,
	[Value] [int] NULL,
	[AcademicYear] [int] NULL,
	[Semester] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[GradeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PARENT]    Script Date: 21/01/2022 21:34:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PARENT](
	[ParentID] [uniqueidentifier] NOT NULL,
	[PhoneNumber] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[ParentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PARENTS_STUDENTS]    Script Date: 21/01/2022 21:34:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PARENTS_STUDENTS](
	[StudentID] [uniqueidentifier] NOT NULL,
	[ParentID] [uniqueidentifier] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[StudentID] ASC,
	[ParentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PERIOD]    Script Date: 21/01/2022 21:34:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PERIOD](
	[PeriodID] [uniqueidentifier] NOT NULL,
	[Slot] [varchar](3) NULL,
	[DayOfTheWeek] [varchar](15) NULL,
	[Subject] [uniqueidentifier] NULL,
	[Teacher] [uniqueidentifier] NULL,
	[AcademicYear] [int] NULL,
	[Schedule] [uniqueidentifier] NULL,
PRIMARY KEY CLUSTERED 
(
	[PeriodID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[REMARK]    Script Date: 21/01/2022 21:34:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[REMARK](
	[RemarkID] [uniqueidentifier] NOT NULL,
	[Student] [uniqueidentifier] NULL,
	[Teacher] [uniqueidentifier] NULL,
	[DateMarked] [date] NULL,
	[Comment] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[RemarkID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SCHEDULE]    Script Date: 21/01/2022 21:34:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SCHEDULE](
	[ScheduleID] [uniqueidentifier] NOT NULL,
	[Timeslot] [varchar](10) NULL,
	[ClassGroup] [uniqueidentifier] NULL,
	[School] [uniqueidentifier] NULL,
PRIMARY KEY CLUSTERED 
(
	[ScheduleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SCHOOL]    Script Date: 21/01/2022 21:34:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SCHOOL](
	[SchoolID] [uniqueidentifier] NOT NULL,
	[SchoolName] [varchar](100) NULL,
	[SchoolAddress] [uniqueidentifier] NULL,
	[Category] [varchar](30) NULL,
	[Administrator] [uniqueidentifier] NULL,
PRIMARY KEY CLUSTERED 
(
	[SchoolID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SCHOOLEVENT]    Script Date: 21/01/2022 21:34:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SCHOOLEVENT](
	[EventID] [uniqueidentifier] NOT NULL,
	[Title] [varchar](75) NULL,
	[EventDescription] [varchar](255) NULL,
	[DateHeld] [date] NULL,
	[Category] [uniqueidentifier] NULL,
	[School] [uniqueidentifier] NULL,
PRIMARY KEY CLUSTERED 
(
	[EventID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[STREET]    Script Date: 21/01/2022 21:34:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[STREET](
	[StreetID] [uniqueidentifier] NOT NULL,
	[StreetName] [varchar](75) NULL,
	[City] [uniqueidentifier] NULL,
PRIMARY KEY CLUSTERED 
(
	[StreetID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[STUDENT]    Script Date: 21/01/2022 21:34:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[STUDENT](
	[StudentID] [uniqueidentifier] NOT NULL,
	[ClassGroup] [uniqueidentifier] NULL,
	[School] [uniqueidentifier] NULL,
PRIMARY KEY CLUSTERED 
(
	[StudentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SUBJECT]    Script Date: 21/01/2022 21:34:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SUBJECT](
	[SubjectID] [uniqueidentifier] NOT NULL,
	[SubjectName] [varchar](75) NULL,
	[Curriulum] [uniqueidentifier] NULL,
PRIMARY KEY CLUSTERED 
(
	[SubjectID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SUBJECTS_TEACHERS]    Script Date: 21/01/2022 21:34:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SUBJECTS_TEACHERS](
	[SubjectID] [uniqueidentifier] NOT NULL,
	[TeacherID] [uniqueidentifier] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[SubjectID] ASC,
	[TeacherID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TEACHER]    Script Date: 21/01/2022 21:34:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TEACHER](
	[TeacherID] [uniqueidentifier] NOT NULL,
	[AcademicDegree] [varchar](50) NULL,
	[PhoneNumber] [varchar](20) NULL,
	[TeacherCategory] [varchar](20) NULL,
	[School] [uniqueidentifier] NULL,
PRIMARY KEY CLUSTERED 
(
	[TeacherID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[USERS]    Script Date: 21/01/2022 21:34:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[USERS](
	[UserID] [uniqueidentifier] NOT NULL,
	[Name] [varchar](50) NULL,
	[Surname] [varchar](50) NULL,
	[UserAddress] [uniqueidentifier] NULL,
	[Gender] [char](1) NULL,
	[Birthday] [date] NULL,
	[UserPassword] [varchar](255) NULL,
	[ProfilePictureUrl] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[ABSENCE] ([AbsenceID], [Student], [Reasoned], [Period], [DateMarked]) VALUES (N'f50a2a1a-5775-40df-a8d9-266d404124dc', N'38d6f8dc-a858-47ef-b48a-415c5eab4c47', N'1', N'28063138-9212-43fc-897c-5b5b670e83a3', CAST(0x4A430B00 AS Date))
INSERT [dbo].[ABSENCE] ([AbsenceID], [Student], [Reasoned], [Period], [DateMarked]) VALUES (N'1a316e14-767a-4332-99f7-4e6c0ce2c309', N'38d6f8dc-a858-47ef-b48a-415c5eab4c47', N'1', N'9588a68a-1960-48d8-afa4-fb1eda992efe', CAST(0x4A430B00 AS Date))
INSERT [dbo].[ABSENCE] ([AbsenceID], [Student], [Reasoned], [Period], [DateMarked]) VALUES (N'4ea321d1-b430-43d8-bdf8-e3ce26e5dae9', N'38d6f8dc-a858-47ef-b48a-415c5eab4c47', N'0', N'3b1a0603-44dd-4f7f-b49c-ed89e19fe2c3', CAST(0x4B430B00 AS Date))
INSERT [dbo].[ABSENCE] ([AbsenceID], [Student], [Reasoned], [Period], [DateMarked]) VALUES (N'18efd219-ef91-41ae-819c-fe7b5945ddbf', N'38d6f8dc-a858-47ef-b48a-415c5eab4c47', N'1', N'd34bcc8a-3fe6-4638-9708-aa6c6cf9146b', CAST(0x4A430B00 AS Date))
INSERT [dbo].[ADMINISTRATOR] ([AdministratorID], [AcademicDegree], [PhoneNumber], [EmailAddress]) VALUES (N'b8396571-304d-45b7-a21c-46ad9a520704', NULL, NULL, NULL)
INSERT [dbo].[ARTICLE] ([ArticleID], [Title], [Contents], [DatePublished], [PictureUrl], [School]) VALUES (N'eecdc3f8-2e40-45b4-a7a4-362272788ad9', N'Shpallja e notave për semestrin e parë 2021/2022', N'Notat e semestrit janë shpallur dhe janë të qasshme në sistem. Kontaktoni kujdestarët e klasëve për çfarëdo pyetje që mund të keni!', CAST(0x60430B00 AS Date), NULL, N'fa91d3ea-1d5a-4ab7-bbcc-bc3a8bfe634d')
INSERT [dbo].[ARTICLE] ([ArticleID], [Title], [Contents], [DatePublished], [PictureUrl], [School]) VALUES (N'9550dde2-9510-446b-b3b3-c36de81a3704', N'Mbledhja e ardhshme e prindërve', N'Presim nga prindërit të participojnë në këtë evaluim të rregullt. Data e mbajtjes është 12 Janar, 2022!', CAST(0x72430B00 AS Date), NULL, N'fa91d3ea-1d5a-4ab7-bbcc-bc3a8bfe634d')
INSERT [dbo].[ARTICLE] ([ArticleID], [Title], [Contents], [DatePublished], [PictureUrl], [School]) VALUES (N'c12c31ae-4ed8-4478-bdbb-dddcbd53533b', N'Banjot do të rinovohen së shpejti', N'Pas shumë kërkesave, banjot do të rinovohen brenda muajit Shkurt.', CAST(0x78430B00 AS Date), NULL, N'fa91d3ea-1d5a-4ab7-bbcc-bc3a8bfe634d')
INSERT [dbo].[ARTICLE] ([ArticleID], [Title], [Contents], [DatePublished], [PictureUrl], [School]) VALUES (N'ef8a8759-d795-46bc-8c19-fbbc9fd234d2', N'Shkolla me mësues të ri', N'Mësuesi i ri Endrit Jajaga i shtohet stafit të mrekullueshëm të shkollës duke filluar në javët e para të Marsit.', CAST(0x79430B00 AS Date), NULL, N'fa91d3ea-1d5a-4ab7-bbcc-bc3a8bfe634d')
INSERT [dbo].[CITY] ([CityID], [CityName], [Municipality]) VALUES (N'16204c67-b895-47a9-9ea0-32c0e7c5d121', N'Studenicë e Istogut', N'0f5332c0-18cc-41d7-81d7-e5bf7a9deaf0')
INSERT [dbo].[CITY] ([CityID], [CityName], [Municipality]) VALUES (N'89a3de40-e679-4729-ad96-98cc2c112905', N'Pejë', N'89a3de40-e679-4729-ad96-98cc2c112905')
INSERT [dbo].[CITY] ([CityID], [CityName], [Municipality]) VALUES (N'e0e59ede-2165-423a-b542-aff431010fea', N'Vrellë e Istogut', N'0f5332c0-18cc-41d7-81d7-e5bf7a9deaf0')
INSERT [dbo].[CITY] ([CityID], [CityName], [Municipality]) VALUES (N'4ecb48fd-30f4-4c86-9340-cb3dc01d2559', N'Banjë', N'89a3de40-e679-4729-ad96-98cc2c112905')
INSERT [dbo].[CITY] ([CityID], [CityName], [Municipality]) VALUES (N'0f5332c0-18cc-41d7-81d7-e5bf7a9deaf0', N'Istog', N'0f5332c0-18cc-41d7-81d7-e5bf7a9deaf0')
INSERT [dbo].[CLASSGROUP] ([GroupID], [GroupName], [Grade], [Classroom], [HomeroomTeacher]) VALUES (N'0126a0ae-6530-4685-84c1-e74104c26c71', N'I - 1', 1, N'10fd9856-8619-4859-88d4-b76d4e2a6fda', N'573081de-83e9-4cfd-b418-219e96e931c0')
INSERT [dbo].[CLASSGROUP] ([GroupID], [GroupName], [Grade], [Classroom], [HomeroomTeacher]) VALUES (N'963de40b-c5dd-4850-bceb-ee79e99054fa', N'III - 3', 3, N'a0d05154-e856-482a-bd38-7dee1d596887', N'5ceffe44-201f-4b49-a7bd-351eaf9cff6d')
INSERT [dbo].[CLASSROOM] ([ClassroomID], [ClassroomName], [Capacity], [School]) VALUES (N'7a60ef2b-860a-4dcc-b140-06b55ffe5b82', N'III-1/VIII-1', 30, N'fa91d3ea-1d5a-4ab7-bbcc-bc3a8bfe634d')
INSERT [dbo].[CLASSROOM] ([ClassroomID], [ClassroomName], [Capacity], [School]) VALUES (N'5b6b9de0-2c3b-4ce0-beac-397bedf7081c', N'I-3/VI-3', 30, N'fa91d3ea-1d5a-4ab7-bbcc-bc3a8bfe634d')
INSERT [dbo].[CLASSROOM] ([ClassroomID], [ClassroomName], [Capacity], [School]) VALUES (N'ff25b1ab-73c2-4300-b345-3c90b3eea379', N'V-2', 30, N'fa91d3ea-1d5a-4ab7-bbcc-bc3a8bfe634d')
INSERT [dbo].[CLASSROOM] ([ClassroomID], [ClassroomName], [Capacity], [School]) VALUES (N'937674de-a9aa-424d-9c75-455e7b4f43e4', N'V-1', 30, N'fa91d3ea-1d5a-4ab7-bbcc-bc3a8bfe634d')
INSERT [dbo].[CLASSROOM] ([ClassroomID], [ClassroomName], [Capacity], [School]) VALUES (N'055e8a66-9288-4506-8ac0-64b35af6d9dc', N'IV-2/IX-2', 30, N'fa91d3ea-1d5a-4ab7-bbcc-bc3a8bfe634d')
INSERT [dbo].[CLASSROOM] ([ClassroomID], [ClassroomName], [Capacity], [School]) VALUES (N'14eba348-834b-40e8-993b-679d90ae1665', N'II-3/VII-3', 30, N'fa91d3ea-1d5a-4ab7-bbcc-bc3a8bfe634d')
INSERT [dbo].[CLASSROOM] ([ClassroomID], [ClassroomName], [Capacity], [School]) VALUES (N'55900137-ce71-46d6-a1dc-79d579700141', N'II-4/VII-4', 30, N'fa91d3ea-1d5a-4ab7-bbcc-bc3a8bfe634d')
INSERT [dbo].[CLASSROOM] ([ClassroomID], [ClassroomName], [Capacity], [School]) VALUES (N'a0d05154-e856-482a-bd38-7dee1d596887', N'III-3/VIII-3', 30, N'fa91d3ea-1d5a-4ab7-bbcc-bc3a8bfe634d')
INSERT [dbo].[CLASSROOM] ([ClassroomID], [ClassroomName], [Capacity], [School]) VALUES (N'a58581bd-b389-45c5-8e39-81e0d63ae9a6', N'III-4/VIII-4', 30, N'fa91d3ea-1d5a-4ab7-bbcc-bc3a8bfe634d')
INSERT [dbo].[CLASSROOM] ([ClassroomID], [ClassroomName], [Capacity], [School]) VALUES (N'1f03f428-1ff6-44d4-bf8c-823706f2a2bb', N'IV-1/IX-1', 30, N'fa91d3ea-1d5a-4ab7-bbcc-bc3a8bfe634d')
INSERT [dbo].[CLASSROOM] ([ClassroomID], [ClassroomName], [Capacity], [School]) VALUES (N'85633621-2885-41f0-b3bc-827b9eec9ed0', N'V-3', 30, N'fa91d3ea-1d5a-4ab7-bbcc-bc3a8bfe634d')
INSERT [dbo].[CLASSROOM] ([ClassroomID], [ClassroomName], [Capacity], [School]) VALUES (N'cc001d07-e106-462b-8459-88c1d2ec03df', N'IV-4/IX-4', 30, N'fa91d3ea-1d5a-4ab7-bbcc-bc3a8bfe634d')
INSERT [dbo].[CLASSROOM] ([ClassroomID], [ClassroomName], [Capacity], [School]) VALUES (N'5f364f01-97b0-463e-83e6-89b5d2214aae', N'V-4', 30, N'fa91d3ea-1d5a-4ab7-bbcc-bc3a8bfe634d')
INSERT [dbo].[CLASSROOM] ([ClassroomID], [ClassroomName], [Capacity], [School]) VALUES (N'62ab0425-da59-40e5-b779-a23ade759961', N'III-2/VIII-2', 30, N'fa91d3ea-1d5a-4ab7-bbcc-bc3a8bfe634d')
INSERT [dbo].[CLASSROOM] ([ClassroomID], [ClassroomName], [Capacity], [School]) VALUES (N'1f8bfd29-ff26-44a4-a9a1-af292d84a05a', N'I-4/VI-4', 30, N'fa91d3ea-1d5a-4ab7-bbcc-bc3a8bfe634d')
INSERT [dbo].[CLASSROOM] ([ClassroomID], [ClassroomName], [Capacity], [School]) VALUES (N'10fd9856-8619-4859-88d4-b76d4e2a6fda', N'I-1/VI-1', 30, N'fa91d3ea-1d5a-4ab7-bbcc-bc3a8bfe634d')
INSERT [dbo].[CLASSROOM] ([ClassroomID], [ClassroomName], [Capacity], [School]) VALUES (N'8eede250-3e58-42fe-90c1-c34ec83b5cca', N'IV-3/IX-3', 30, N'fa91d3ea-1d5a-4ab7-bbcc-bc3a8bfe634d')
INSERT [dbo].[CLASSROOM] ([ClassroomID], [ClassroomName], [Capacity], [School]) VALUES (N'8c4a4b97-d915-4318-9fe5-e685251b6a09', N'I-2/VI-2', 30, N'fa91d3ea-1d5a-4ab7-bbcc-bc3a8bfe634d')
INSERT [dbo].[CLASSROOM] ([ClassroomID], [ClassroomName], [Capacity], [School]) VALUES (N'1b51a0a2-fe51-4ae9-8cff-e980437cd8f1', N'II-2/VII-2', 30, N'fa91d3ea-1d5a-4ab7-bbcc-bc3a8bfe634d')
INSERT [dbo].[CLASSROOM] ([ClassroomID], [ClassroomName], [Capacity], [School]) VALUES (N'cd32378d-d80d-4b77-aa54-ef77be443902', N'II-1/VII-1', 30, N'fa91d3ea-1d5a-4ab7-bbcc-bc3a8bfe634d')
INSERT [dbo].[CURRICULUM] ([CurriculumID], [Grade], [School]) VALUES (N'66ca4af1-8c93-457d-aa63-1234fc661e78', 7, N'fa91d3ea-1d5a-4ab7-bbcc-bc3a8bfe634d')
INSERT [dbo].[CURRICULUM] ([CurriculumID], [Grade], [School]) VALUES (N'fa2fffe8-11ab-4639-8ef4-1bdd4b8beada', 8, N'fa91d3ea-1d5a-4ab7-bbcc-bc3a8bfe634d')
INSERT [dbo].[CURRICULUM] ([CurriculumID], [Grade], [School]) VALUES (N'46436386-6203-4167-aabe-449f4316caec', 5, N'fa91d3ea-1d5a-4ab7-bbcc-bc3a8bfe634d')
INSERT [dbo].[CURRICULUM] ([CurriculumID], [Grade], [School]) VALUES (N'36afa9b4-90d3-4704-90b0-4df9627995a9', 2, N'fa91d3ea-1d5a-4ab7-bbcc-bc3a8bfe634d')
INSERT [dbo].[CURRICULUM] ([CurriculumID], [Grade], [School]) VALUES (N'37407dc9-86f6-4412-aef0-8d3781599b49', 1, N'fa91d3ea-1d5a-4ab7-bbcc-bc3a8bfe634d')
INSERT [dbo].[CURRICULUM] ([CurriculumID], [Grade], [School]) VALUES (N'0b17cdce-f684-4754-ab90-9af702b1658a', 3, N'fa91d3ea-1d5a-4ab7-bbcc-bc3a8bfe634d')
INSERT [dbo].[CURRICULUM] ([CurriculumID], [Grade], [School]) VALUES (N'f6a147bd-dd49-42b9-be8b-b257a9e1e571', 4, N'fa91d3ea-1d5a-4ab7-bbcc-bc3a8bfe634d')
INSERT [dbo].[CURRICULUM] ([CurriculumID], [Grade], [School]) VALUES (N'74a7fe8c-742b-4a10-83dd-d6aec115c995', 9, N'fa91d3ea-1d5a-4ab7-bbcc-bc3a8bfe634d')
INSERT [dbo].[CURRICULUM] ([CurriculumID], [Grade], [School]) VALUES (N'0659551d-39eb-49e0-bd5c-d922be056a3f', 6, N'fa91d3ea-1d5a-4ab7-bbcc-bc3a8bfe634d')
INSERT [dbo].[GRADE] ([GradeID], [Student], [Subject], [Teacher], [Value], [AcademicYear], [Semester]) VALUES (N'2944d5a2-825f-4625-8723-3018b0daf372', N'38d6f8dc-a858-47ef-b48a-415c5eab4c47', N'5ceffe44-201f-4b49-a7bd-351eaf9cff6d', N'0863d983-8326-49fd-a79d-ea4d8b02101e', 5, 2021, 1)
INSERT [dbo].[GRADE] ([GradeID], [Student], [Subject], [Teacher], [Value], [AcademicYear], [Semester]) VALUES (N'f93c4511-73ff-42af-8142-36a7a7bcf172', N'38d6f8dc-a858-47ef-b48a-415c5eab4c47', N'5ceffe44-201f-4b49-a7bd-351eaf9cff6d', N'6684947d-dd8f-462b-82e6-a722ab4d2149', 5, 2021, 1)
INSERT [dbo].[GRADE] ([GradeID], [Student], [Subject], [Teacher], [Value], [AcademicYear], [Semester]) VALUES (N'283d51ab-7f85-460c-9fb2-3804daac1b87', N'38d6f8dc-a858-47ef-b48a-415c5eab4c47', N'5ceffe44-201f-4b49-a7bd-351eaf9cff6d', N'1c1ea3d1-7560-4e2d-b1f7-151c450424ca', 4, 2021, 1)
INSERT [dbo].[GRADE] ([GradeID], [Student], [Subject], [Teacher], [Value], [AcademicYear], [Semester]) VALUES (N'69e01146-1211-4683-8c57-3aee617722af', N'38d6f8dc-a858-47ef-b48a-415c5eab4c47', N'5ceffe44-201f-4b49-a7bd-351eaf9cff6d', N'b76ffa96-e0ee-4060-be6f-0d1aa745f504', 5, 2021, 1)
INSERT [dbo].[GRADE] ([GradeID], [Student], [Subject], [Teacher], [Value], [AcademicYear], [Semester]) VALUES (N'a47d956c-17cd-41f3-9bf0-4ef6b198f2d8', N'38d6f8dc-a858-47ef-b48a-415c5eab4c47', N'5ceffe44-201f-4b49-a7bd-351eaf9cff6d', N'b76ffa96-e0ee-4060-be6f-0d1aa745f504', 5, 2021, 1)
INSERT [dbo].[GRADE] ([GradeID], [Student], [Subject], [Teacher], [Value], [AcademicYear], [Semester]) VALUES (N'353ef9e6-822b-40fb-b7e6-875e300befe6', N'38d6f8dc-a858-47ef-b48a-415c5eab4c47', N'5ceffe44-201f-4b49-a7bd-351eaf9cff6d', N'6b0bf4ae-731e-4461-afe0-6bac91603e04', 5, 2021, 1)
INSERT [dbo].[GRADE] ([GradeID], [Student], [Subject], [Teacher], [Value], [AcademicYear], [Semester]) VALUES (N'd3ae20dc-7156-4900-839c-b03c25147869', N'38d6f8dc-a858-47ef-b48a-415c5eab4c47', N'5ceffe44-201f-4b49-a7bd-351eaf9cff6d', N'143a85cc-c346-4516-a5fa-86fcce6f91a7', 5, 2021, 1)
INSERT [dbo].[GRADE] ([GradeID], [Student], [Subject], [Teacher], [Value], [AcademicYear], [Semester]) VALUES (N'8120b201-255c-4e54-98ac-d1ae539e89bc', N'38d6f8dc-a858-47ef-b48a-415c5eab4c47', N'5ceffe44-201f-4b49-a7bd-351eaf9cff6d', N'1645ad99-4883-40b9-b56c-75ac6e6ad452', 5, 2021, 1)
INSERT [dbo].[GRADE] ([GradeID], [Student], [Subject], [Teacher], [Value], [AcademicYear], [Semester]) VALUES (N'e105bb2d-728f-4f5e-8416-e7cf9ba0d433', N'38d6f8dc-a858-47ef-b48a-415c5eab4c47', N'5ceffe44-201f-4b49-a7bd-351eaf9cff6d', N'db344e5e-ca83-437a-a579-c2571e74c2cc', 5, 2021, 1)
INSERT [dbo].[PARENT] ([ParentID], [PhoneNumber]) VALUES (N'd94df29f-ba21-410a-96a2-4309fa75e7fe', N'+383 44 102 224')
INSERT [dbo].[PARENT] ([ParentID], [PhoneNumber]) VALUES (N'98a070aa-d9e5-4a68-888d-f783cedc9609', N'+383 45 441 223')
INSERT [dbo].[PARENTS_STUDENTS] ([StudentID], [ParentID]) VALUES (N'a06ee9dc-3c44-4554-9543-0b7bb7876fb9', N'd94df29f-ba21-410a-96a2-4309fa75e7fe')
INSERT [dbo].[PARENTS_STUDENTS] ([StudentID], [ParentID]) VALUES (N'a06ee9dc-3c44-4554-9543-0b7bb7876fb9', N'98a070aa-d9e5-4a68-888d-f783cedc9609')
INSERT [dbo].[PARENTS_STUDENTS] ([StudentID], [ParentID]) VALUES (N'38d6f8dc-a858-47ef-b48a-415c5eab4c47', N'd94df29f-ba21-410a-96a2-4309fa75e7fe')
INSERT [dbo].[PARENTS_STUDENTS] ([StudentID], [ParentID]) VALUES (N'38d6f8dc-a858-47ef-b48a-415c5eab4c47', N'98a070aa-d9e5-4a68-888d-f783cedc9609')
INSERT [dbo].[PERIOD] ([PeriodID], [Slot], [DayOfTheWeek], [Subject], [Teacher], [AcademicYear], [Schedule]) VALUES (N'7bf3aae3-c3dd-4bee-b553-0b2657f0c27c', N'2', N'E Martë', N'6b0bf4ae-731e-4461-afe0-6bac91603e04', N'5ceffe44-201f-4b49-a7bd-351eaf9cff6d', 2021, N'0e316ea3-99f1-41e1-b298-79b01476d8cd')
INSERT [dbo].[PERIOD] ([PeriodID], [Slot], [DayOfTheWeek], [Subject], [Teacher], [AcademicYear], [Schedule]) VALUES (N'661202c0-1cf8-4ab2-9314-0cddaa329246', N'1', N'E Hënë', N'1c1ea3d1-7560-4e2d-b1f7-151c450424ca', N'5ceffe44-201f-4b49-a7bd-351eaf9cff6d', 2021, N'0e316ea3-99f1-41e1-b298-79b01476d8cd')
INSERT [dbo].[PERIOD] ([PeriodID], [Slot], [DayOfTheWeek], [Subject], [Teacher], [AcademicYear], [Schedule]) VALUES (N'f1ffde12-c584-4439-bf99-231d885a955d', N'4', N'E Hënë', N'6684947d-dd8f-462b-82e6-a722ab4d2149', N'5ceffe44-201f-4b49-a7bd-351eaf9cff6d', 2021, N'0e316ea3-99f1-41e1-b298-79b01476d8cd')
INSERT [dbo].[PERIOD] ([PeriodID], [Slot], [DayOfTheWeek], [Subject], [Teacher], [AcademicYear], [Schedule]) VALUES (N'38459cc9-a6c7-48ba-a387-2c5cfb8c3e2e', N'1', N'E Mërkurë', N'6b0bf4ae-731e-4461-afe0-6bac91603e04', N'5ceffe44-201f-4b49-a7bd-351eaf9cff6d', 2021, N'0e316ea3-99f1-41e1-b298-79b01476d8cd')
INSERT [dbo].[PERIOD] ([PeriodID], [Slot], [DayOfTheWeek], [Subject], [Teacher], [AcademicYear], [Schedule]) VALUES (N'28063138-9212-43fc-897c-5b5b670e83a3', N'2', N'E Enjte', N'6b0bf4ae-731e-4461-afe0-6bac91603e04', N'5ceffe44-201f-4b49-a7bd-351eaf9cff6d', 2021, N'0e316ea3-99f1-41e1-b298-79b01476d8cd')
INSERT [dbo].[PERIOD] ([PeriodID], [Slot], [DayOfTheWeek], [Subject], [Teacher], [AcademicYear], [Schedule]) VALUES (N'f2db702f-4d59-46e7-b3e9-764087b26cc8', N'3', N'E Mërkurë', N'1645ad99-4883-40b9-b56c-75ac6e6ad452', N'5ceffe44-201f-4b49-a7bd-351eaf9cff6d', 2021, N'0e316ea3-99f1-41e1-b298-79b01476d8cd')
INSERT [dbo].[PERIOD] ([PeriodID], [Slot], [DayOfTheWeek], [Subject], [Teacher], [AcademicYear], [Schedule]) VALUES (N'e177a21b-19cb-427c-b121-7dd60eb63928', N'3', N'E Premte', N'6b0bf4ae-731e-4461-afe0-6bac91603e04', N'5ceffe44-201f-4b49-a7bd-351eaf9cff6d', 2021, N'0e316ea3-99f1-41e1-b298-79b01476d8cd')
INSERT [dbo].[PERIOD] ([PeriodID], [Slot], [DayOfTheWeek], [Subject], [Teacher], [AcademicYear], [Schedule]) VALUES (N'd34bcc8a-3fe6-4638-9708-aa6c6cf9146b', N'1', N'E Enjte', N'b76ffa96-e0ee-4060-be6f-0d1aa745f504', N'5ceffe44-201f-4b49-a7bd-351eaf9cff6d', 2021, N'0e316ea3-99f1-41e1-b298-79b01476d8cd')
INSERT [dbo].[PERIOD] ([PeriodID], [Slot], [DayOfTheWeek], [Subject], [Teacher], [AcademicYear], [Schedule]) VALUES (N'e94f32e7-0b49-41ec-8129-b1f49e131dd3', N'2', N'E Hënë', N'6b0bf4ae-731e-4461-afe0-6bac91603e04', N'5ceffe44-201f-4b49-a7bd-351eaf9cff6d', 2021, N'0e316ea3-99f1-41e1-b298-79b01476d8cd')
INSERT [dbo].[PERIOD] ([PeriodID], [Slot], [DayOfTheWeek], [Subject], [Teacher], [AcademicYear], [Schedule]) VALUES (N'54601696-0c1e-4fef-b6ea-b6a37764f760', N'5', N'E Mërkurë', N'143a85cc-c346-4516-a5fa-86fcce6f91a7', N'5ceffe44-201f-4b49-a7bd-351eaf9cff6d', 2021, N'0e316ea3-99f1-41e1-b298-79b01476d8cd')
INSERT [dbo].[PERIOD] ([PeriodID], [Slot], [DayOfTheWeek], [Subject], [Teacher], [AcademicYear], [Schedule]) VALUES (N'c2330526-e391-44ed-a910-b7371ff4f32c', N'1', N'E Martë', N'db344e5e-ca83-437a-a579-c2571e74c2cc', N'5ceffe44-201f-4b49-a7bd-351eaf9cff6d', 2021, N'0e316ea3-99f1-41e1-b298-79b01476d8cd')
INSERT [dbo].[PERIOD] ([PeriodID], [Slot], [DayOfTheWeek], [Subject], [Teacher], [AcademicYear], [Schedule]) VALUES (N'35410e6b-3501-4f69-8c97-c2fc0507c4ad', N'2', N'E Premte', N'6684947d-dd8f-462b-82e6-a722ab4d2149', N'5ceffe44-201f-4b49-a7bd-351eaf9cff6d', 2021, N'0e316ea3-99f1-41e1-b298-79b01476d8cd')
INSERT [dbo].[PERIOD] ([PeriodID], [Slot], [DayOfTheWeek], [Subject], [Teacher], [AcademicYear], [Schedule]) VALUES (N'a9124d69-b50a-4522-8eb8-c4014c9fe635', N'4', N'E Enjte', N'0863d983-8326-49fd-a79d-ea4d8b02101e', N'5ceffe44-201f-4b49-a7bd-351eaf9cff6d', 2021, N'0e316ea3-99f1-41e1-b298-79b01476d8cd')
INSERT [dbo].[PERIOD] ([PeriodID], [Slot], [DayOfTheWeek], [Subject], [Teacher], [AcademicYear], [Schedule]) VALUES (N'dd289c32-c94a-4fdd-a78c-c758f29fa8f0', N'4', N'E Premte', N'1c1ea3d1-7560-4e2d-b1f7-151c450424ca', N'5ceffe44-201f-4b49-a7bd-351eaf9cff6d', 2021, N'0e316ea3-99f1-41e1-b298-79b01476d8cd')
INSERT [dbo].[PERIOD] ([PeriodID], [Slot], [DayOfTheWeek], [Subject], [Teacher], [AcademicYear], [Schedule]) VALUES (N'd1285ea7-4249-40e9-aae0-d4000ad39fb7', N'4', N'E Martë', N'0863d983-8326-49fd-a79d-ea4d8b02101e', N'5ceffe44-201f-4b49-a7bd-351eaf9cff6d', 2021, N'0e316ea3-99f1-41e1-b298-79b01476d8cd')
INSERT [dbo].[PERIOD] ([PeriodID], [Slot], [DayOfTheWeek], [Subject], [Teacher], [AcademicYear], [Schedule]) VALUES (N'ac29af8d-aed1-4d1e-b956-d5181d762ac9', N'4', N'E Mërkurë', N'1c1ea3d1-7560-4e2d-b1f7-151c450424ca', N'5ceffe44-201f-4b49-a7bd-351eaf9cff6d', 2021, N'0e316ea3-99f1-41e1-b298-79b01476d8cd')
INSERT [dbo].[PERIOD] ([PeriodID], [Slot], [DayOfTheWeek], [Subject], [Teacher], [AcademicYear], [Schedule]) VALUES (N'1dd6d3dd-6e08-4efa-8ff4-df1934af2169', N'3', N'E Martë', N'143a85cc-c346-4516-a5fa-86fcce6f91a7', N'5ceffe44-201f-4b49-a7bd-351eaf9cff6d', 2021, N'0e316ea3-99f1-41e1-b298-79b01476d8cd')
INSERT [dbo].[PERIOD] ([PeriodID], [Slot], [DayOfTheWeek], [Subject], [Teacher], [AcademicYear], [Schedule]) VALUES (N'0c51a833-624f-4486-ba73-ed374fa045a3', N'2', N'E Mërkurë', N'b76ffa96-e0ee-4060-be6f-0d1aa745f504', N'5ceffe44-201f-4b49-a7bd-351eaf9cff6d', 2021, N'0e316ea3-99f1-41e1-b298-79b01476d8cd')
INSERT [dbo].[PERIOD] ([PeriodID], [Slot], [DayOfTheWeek], [Subject], [Teacher], [AcademicYear], [Schedule]) VALUES (N'3b1a0603-44dd-4f7f-b49c-ed89e19fe2c3', N'1', N'E Premte', N'1645ad99-4883-40b9-b56c-75ac6e6ad452', N'5ceffe44-201f-4b49-a7bd-351eaf9cff6d', 2021, N'0e316ea3-99f1-41e1-b298-79b01476d8cd')
INSERT [dbo].[PERIOD] ([PeriodID], [Slot], [DayOfTheWeek], [Subject], [Teacher], [AcademicYear], [Schedule]) VALUES (N'065d5bdf-8b6d-412f-aebd-f0895e1e0cee', N'3', N'E Hënë', N'b76ffa96-e0ee-4060-be6f-0d1aa745f504', N'5ceffe44-201f-4b49-a7bd-351eaf9cff6d', 2021, N'0e316ea3-99f1-41e1-b298-79b01476d8cd')
INSERT [dbo].[PERIOD] ([PeriodID], [Slot], [DayOfTheWeek], [Subject], [Teacher], [AcademicYear], [Schedule]) VALUES (N'9588a68a-1960-48d8-afa4-fb1eda992efe', N'3', N'E Enjte', N'db344e5e-ca83-437a-a579-c2571e74c2cc', N'5ceffe44-201f-4b49-a7bd-351eaf9cff6d', 2021, N'0e316ea3-99f1-41e1-b298-79b01476d8cd')
INSERT [dbo].[REMARK] ([RemarkID], [Student], [Teacher], [DateMarked], [Comment]) VALUES (N'6713910b-38c1-409d-86b0-0934474cd233', N'38d6f8dc-a858-47ef-b48a-415c5eab4c47', N'5ceffe44-201f-4b49-a7bd-351eaf9cff6d', CAST(0x5A430B00 AS Date), N'Negrita dhe Kosova vazhdimisht flisnin gjatë orës.')
INSERT [dbo].[REMARK] ([RemarkID], [Student], [Teacher], [DateMarked], [Comment]) VALUES (N'2c1a1358-85bc-4d81-9c9e-a46c1e91b74c', N'a06ee9dc-3c44-4554-9543-0b7bb7876fb9', N'5ceffe44-201f-4b49-a7bd-351eaf9cff6d', CAST(0x5A430B00 AS Date), N'Negrita dhe Kosova vazhdimisht flisnin gjatë orës.')
INSERT [dbo].[SCHEDULE] ([ScheduleID], [Timeslot], [ClassGroup], [School]) VALUES (N'0e316ea3-99f1-41e1-b298-79b01476d8cd', N'Pasdite', N'963de40b-c5dd-4850-bceb-ee79e99054fa', N'fa91d3ea-1d5a-4ab7-bbcc-bc3a8bfe634d')
INSERT [dbo].[SCHOOL] ([SchoolID], [SchoolName], [SchoolAddress], [Category], [Administrator]) VALUES (N'fa91d3ea-1d5a-4ab7-bbcc-bc3a8bfe634d', N'Shkolla Fillore "Hysni Zajmi"', N'e16911e3-3671-4a3d-9144-e14bda1375af', N'Fillore', N'b8396571-304d-45b7-a21c-46ad9a520704')
INSERT [dbo].[STREET] ([StreetID], [StreetName], [City]) VALUES (N'18d4e773-08c9-40d2-8bc5-40bc72394d84', N'Rruga e Dëshmorëve', N'16204c67-b895-47a9-9ea0-32c0e7c5d121')
INSERT [dbo].[STREET] ([StreetID], [StreetName], [City]) VALUES (N'ae630bcc-19ea-4bab-a2ee-4f39c723649b', N'Rruga Tedeli', N'e0e59ede-2165-423a-b542-aff431010fea')
INSERT [dbo].[STREET] ([StreetID], [StreetName], [City]) VALUES (N'ded46220-73df-40db-9cce-517dce3e019b', N'Rruga Ademaj', N'16204c67-b895-47a9-9ea0-32c0e7c5d121')
INSERT [dbo].[STREET] ([StreetID], [StreetName], [City]) VALUES (N'c4803676-da47-4bff-93ee-7c794bf261ae', N'Rruga Hajdari', N'16204c67-b895-47a9-9ea0-32c0e7c5d121')
INSERT [dbo].[STREET] ([StreetID], [StreetName], [City]) VALUES (N'80ab9654-64e4-4e58-b631-cc54c2bec4fd', N'Rruga Amerika', N'e0e59ede-2165-423a-b542-aff431010fea')
INSERT [dbo].[STREET] ([StreetID], [StreetName], [City]) VALUES (N'3063dcce-ff3f-453f-b1e0-dc7b2024d34e', N'Rruga Teuta', N'e0e59ede-2165-423a-b542-aff431010fea')
INSERT [dbo].[STREET] ([StreetID], [StreetName], [City]) VALUES (N'e16911e3-3671-4a3d-9144-e14bda1375af', N'Rruga Teuta', N'0f5332c0-18cc-41d7-81d7-e5bf7a9deaf0')
INSERT [dbo].[STUDENT] ([StudentID], [ClassGroup], [School]) VALUES (N'a06ee9dc-3c44-4554-9543-0b7bb7876fb9', N'963de40b-c5dd-4850-bceb-ee79e99054fa', N'fa91d3ea-1d5a-4ab7-bbcc-bc3a8bfe634d')
INSERT [dbo].[STUDENT] ([StudentID], [ClassGroup], [School]) VALUES (N'87eb3ce5-fc11-4844-9c4f-1f52ba19d9e8', N'963de40b-c5dd-4850-bceb-ee79e99054fa', N'fa91d3ea-1d5a-4ab7-bbcc-bc3a8bfe634d')
INSERT [dbo].[STUDENT] ([StudentID], [ClassGroup], [School]) VALUES (N'f1260768-7a96-432f-b397-242aa8a7a3f2', N'963de40b-c5dd-4850-bceb-ee79e99054fa', N'fa91d3ea-1d5a-4ab7-bbcc-bc3a8bfe634d')
INSERT [dbo].[STUDENT] ([StudentID], [ClassGroup], [School]) VALUES (N'4f4c0354-8261-42b2-b409-395d34bdbcda', N'963de40b-c5dd-4850-bceb-ee79e99054fa', N'fa91d3ea-1d5a-4ab7-bbcc-bc3a8bfe634d')
INSERT [dbo].[STUDENT] ([StudentID], [ClassGroup], [School]) VALUES (N'38d6f8dc-a858-47ef-b48a-415c5eab4c47', N'963de40b-c5dd-4850-bceb-ee79e99054fa', N'fa91d3ea-1d5a-4ab7-bbcc-bc3a8bfe634d')
INSERT [dbo].[STUDENT] ([StudentID], [ClassGroup], [School]) VALUES (N'228b05ec-5528-43bc-8046-66ccd3c6bd2b', N'963de40b-c5dd-4850-bceb-ee79e99054fa', N'fa91d3ea-1d5a-4ab7-bbcc-bc3a8bfe634d')
INSERT [dbo].[STUDENT] ([StudentID], [ClassGroup], [School]) VALUES (N'74bf2cee-2ae1-4fd0-b3fb-71559cb2a810', N'963de40b-c5dd-4850-bceb-ee79e99054fa', N'fa91d3ea-1d5a-4ab7-bbcc-bc3a8bfe634d')
INSERT [dbo].[STUDENT] ([StudentID], [ClassGroup], [School]) VALUES (N'399fa400-6e18-456d-b411-786a46a5bead', N'963de40b-c5dd-4850-bceb-ee79e99054fa', N'fa91d3ea-1d5a-4ab7-bbcc-bc3a8bfe634d')
INSERT [dbo].[STUDENT] ([StudentID], [ClassGroup], [School]) VALUES (N'86246de0-6c83-4c7a-93c0-98a8b583e642', N'963de40b-c5dd-4850-bceb-ee79e99054fa', N'fa91d3ea-1d5a-4ab7-bbcc-bc3a8bfe634d')
INSERT [dbo].[STUDENT] ([StudentID], [ClassGroup], [School]) VALUES (N'3592a833-56d4-47f4-b799-9c9fe04aa425', N'963de40b-c5dd-4850-bceb-ee79e99054fa', N'fa91d3ea-1d5a-4ab7-bbcc-bc3a8bfe634d')
INSERT [dbo].[STUDENT] ([StudentID], [ClassGroup], [School]) VALUES (N'2531ce70-c2a3-42ec-88ec-a477d9d0d955', N'963de40b-c5dd-4850-bceb-ee79e99054fa', N'fa91d3ea-1d5a-4ab7-bbcc-bc3a8bfe634d')
INSERT [dbo].[STUDENT] ([StudentID], [ClassGroup], [School]) VALUES (N'725a7e6b-249f-43ac-8929-a6ccba7d4cba', N'963de40b-c5dd-4850-bceb-ee79e99054fa', N'fa91d3ea-1d5a-4ab7-bbcc-bc3a8bfe634d')
INSERT [dbo].[STUDENT] ([StudentID], [ClassGroup], [School]) VALUES (N'd2644189-99be-4845-bff9-a88128c316e5', N'963de40b-c5dd-4850-bceb-ee79e99054fa', N'fa91d3ea-1d5a-4ab7-bbcc-bc3a8bfe634d')
INSERT [dbo].[STUDENT] ([StudentID], [ClassGroup], [School]) VALUES (N'7a65c3d5-3fa0-42dd-9567-dee45fe44b02', N'963de40b-c5dd-4850-bceb-ee79e99054fa', N'fa91d3ea-1d5a-4ab7-bbcc-bc3a8bfe634d')
INSERT [dbo].[STUDENT] ([StudentID], [ClassGroup], [School]) VALUES (N'5bad7cf7-6e01-43fc-a2ce-e2646e69b1a8', N'963de40b-c5dd-4850-bceb-ee79e99054fa', N'fa91d3ea-1d5a-4ab7-bbcc-bc3a8bfe634d')
INSERT [dbo].[SUBJECT] ([SubjectID], [SubjectName], [Curriulum]) VALUES (N'b76ffa96-e0ee-4060-be6f-0d1aa745f504', N'Anglisht III', N'0b17cdce-f684-4754-ab90-9af702b1658a')
INSERT [dbo].[SUBJECT] ([SubjectID], [SubjectName], [Curriulum]) VALUES (N'1c1ea3d1-7560-4e2d-b1f7-151c450424ca', N'Edukatë Fizike III', N'0b17cdce-f684-4754-ab90-9af702b1658a')
INSERT [dbo].[SUBJECT] ([SubjectID], [SubjectName], [Curriulum]) VALUES (N'6b0bf4ae-731e-4461-afe0-6bac91603e04', N'Gjuhë Shqipe III', N'0b17cdce-f684-4754-ab90-9af702b1658a')
INSERT [dbo].[SUBJECT] ([SubjectID], [SubjectName], [Curriulum]) VALUES (N'1645ad99-4883-40b9-b56c-75ac6e6ad452', N'Punë Dore III', N'0b17cdce-f684-4754-ab90-9af702b1658a')
INSERT [dbo].[SUBJECT] ([SubjectID], [SubjectName], [Curriulum]) VALUES (N'143a85cc-c346-4516-a5fa-86fcce6f91a7', N'Njeriu dhe Natyra III', N'0b17cdce-f684-4754-ab90-9af702b1658a')
INSERT [dbo].[SUBJECT] ([SubjectID], [SubjectName], [Curriulum]) VALUES (N'6684947d-dd8f-462b-82e6-a722ab4d2149', N'Muzikë III', N'0b17cdce-f684-4754-ab90-9af702b1658a')
INSERT [dbo].[SUBJECT] ([SubjectID], [SubjectName], [Curriulum]) VALUES (N'db344e5e-ca83-437a-a579-c2571e74c2cc', N'Matematikë III', N'0b17cdce-f684-4754-ab90-9af702b1658a')
INSERT [dbo].[SUBJECT] ([SubjectID], [SubjectName], [Curriulum]) VALUES (N'0863d983-8326-49fd-a79d-ea4d8b02101e', N'TiK III', N'0b17cdce-f684-4754-ab90-9af702b1658a')
INSERT [dbo].[SUBJECTS_TEACHERS] ([SubjectID], [TeacherID]) VALUES (N'b76ffa96-e0ee-4060-be6f-0d1aa745f504', N'5ceffe44-201f-4b49-a7bd-351eaf9cff6d')
INSERT [dbo].[SUBJECTS_TEACHERS] ([SubjectID], [TeacherID]) VALUES (N'1c1ea3d1-7560-4e2d-b1f7-151c450424ca', N'5ceffe44-201f-4b49-a7bd-351eaf9cff6d')
INSERT [dbo].[SUBJECTS_TEACHERS] ([SubjectID], [TeacherID]) VALUES (N'6b0bf4ae-731e-4461-afe0-6bac91603e04', N'5ceffe44-201f-4b49-a7bd-351eaf9cff6d')
INSERT [dbo].[SUBJECTS_TEACHERS] ([SubjectID], [TeacherID]) VALUES (N'1645ad99-4883-40b9-b56c-75ac6e6ad452', N'5ceffe44-201f-4b49-a7bd-351eaf9cff6d')
INSERT [dbo].[SUBJECTS_TEACHERS] ([SubjectID], [TeacherID]) VALUES (N'143a85cc-c346-4516-a5fa-86fcce6f91a7', N'5ceffe44-201f-4b49-a7bd-351eaf9cff6d')
INSERT [dbo].[SUBJECTS_TEACHERS] ([SubjectID], [TeacherID]) VALUES (N'6684947d-dd8f-462b-82e6-a722ab4d2149', N'5ceffe44-201f-4b49-a7bd-351eaf9cff6d')
INSERT [dbo].[SUBJECTS_TEACHERS] ([SubjectID], [TeacherID]) VALUES (N'db344e5e-ca83-437a-a579-c2571e74c2cc', N'5ceffe44-201f-4b49-a7bd-351eaf9cff6d')
INSERT [dbo].[SUBJECTS_TEACHERS] ([SubjectID], [TeacherID]) VALUES (N'0863d983-8326-49fd-a79d-ea4d8b02101e', N'5ceffe44-201f-4b49-a7bd-351eaf9cff6d')
INSERT [dbo].[TEACHER] ([TeacherID], [AcademicDegree], [PhoneNumber], [TeacherCategory], [School]) VALUES (N'91adef81-9241-4dcb-983e-0a72bcef9b5c', N'Master', NULL, N'Arsimtar', N'fa91d3ea-1d5a-4ab7-bbcc-bc3a8bfe634d')
INSERT [dbo].[TEACHER] ([TeacherID], [AcademicDegree], [PhoneNumber], [TeacherCategory], [School]) VALUES (N'573081de-83e9-4cfd-b418-219e96e931c0', N'Bachelor', NULL, N'Mësues', N'fa91d3ea-1d5a-4ab7-bbcc-bc3a8bfe634d')
INSERT [dbo].[TEACHER] ([TeacherID], [AcademicDegree], [PhoneNumber], [TeacherCategory], [School]) VALUES (N'5ceffe44-201f-4b49-a7bd-351eaf9cff6d', N'Bachelor', NULL, N'Mësues', N'fa91d3ea-1d5a-4ab7-bbcc-bc3a8bfe634d')
INSERT [dbo].[TEACHER] ([TeacherID], [AcademicDegree], [PhoneNumber], [TeacherCategory], [School]) VALUES (N'3ee6a6f6-c01e-416e-87ae-6aadbfe4ff24', N'Master', NULL, N'Arsimtar', N'fa91d3ea-1d5a-4ab7-bbcc-bc3a8bfe634d')
INSERT [dbo].[TEACHER] ([TeacherID], [AcademicDegree], [PhoneNumber], [TeacherCategory], [School]) VALUES (N'e3202072-d557-4113-8fcb-782a682476c1', N'Master', NULL, N'Arsimtar', N'fa91d3ea-1d5a-4ab7-bbcc-bc3a8bfe634d')
INSERT [dbo].[TEACHER] ([TeacherID], [AcademicDegree], [PhoneNumber], [TeacherCategory], [School]) VALUES (N'a53134d1-6416-4240-8273-7a0105df3b50', N'Bachelor', NULL, N'Mësues', N'fa91d3ea-1d5a-4ab7-bbcc-bc3a8bfe634d')
INSERT [dbo].[TEACHER] ([TeacherID], [AcademicDegree], [PhoneNumber], [TeacherCategory], [School]) VALUES (N'6d9d80ce-81a2-4b56-96d0-db348068e3ca', N'Master', NULL, N'Arsimtar', N'fa91d3ea-1d5a-4ab7-bbcc-bc3a8bfe634d')
INSERT [dbo].[USERS] ([UserID], [Name], [Surname], [UserAddress], [Gender], [Birthday], [UserPassword], [ProfilePictureUrl]) VALUES (N'91adef81-9241-4dcb-983e-0a72bcef9b5c', N'Miradije', N'Bislimi', N'80ab9654-64e4-4e58-b631-cc54c2bec4fd', N'F', CAST(0x04210B00 AS Date), NULL, NULL)
INSERT [dbo].[USERS] ([UserID], [Name], [Surname], [UserAddress], [Gender], [Birthday], [UserPassword], [ProfilePictureUrl]) VALUES (N'a06ee9dc-3c44-4554-9543-0b7bb7876fb9', N'Kosovë', N'Ramqaj', N'80ab9654-64e4-4e58-b631-cc54c2bec4fd', N'M', CAST(0xFF300B00 AS Date), NULL, NULL)
INSERT [dbo].[USERS] ([UserID], [Name], [Surname], [UserAddress], [Gender], [Birthday], [UserPassword], [ProfilePictureUrl]) VALUES (N'87eb3ce5-fc11-4844-9c4f-1f52ba19d9e8', N'Albin', N'Blakaj', N'3063dcce-ff3f-453f-b1e0-dc7b2024d34e', N'M', CAST(0x1A320B00 AS Date), NULL, NULL)
INSERT [dbo].[USERS] ([UserID], [Name], [Surname], [UserAddress], [Gender], [Birthday], [UserPassword], [ProfilePictureUrl]) VALUES (N'573081de-83e9-4cfd-b418-219e96e931c0', N'Arbenita', N'Musliu', N'e16911e3-3671-4a3d-9144-e14bda1375af', N'F', CAST(0x2D140B00 AS Date), NULL, NULL)
INSERT [dbo].[USERS] ([UserID], [Name], [Surname], [UserAddress], [Gender], [Birthday], [UserPassword], [ProfilePictureUrl]) VALUES (N'f1260768-7a96-432f-b397-242aa8a7a3f2', N'Erblin', N'Zogaj', N'3063dcce-ff3f-453f-b1e0-dc7b2024d34e', N'M', CAST(0xDD310B00 AS Date), NULL, NULL)
INSERT [dbo].[USERS] ([UserID], [Name], [Surname], [UserAddress], [Gender], [Birthday], [UserPassword], [ProfilePictureUrl]) VALUES (N'5ceffe44-201f-4b49-a7bd-351eaf9cff6d', N'Arben', N'Vitia', N'80ab9654-64e4-4e58-b631-cc54c2bec4fd', N'M', CAST(0xE50F0B00 AS Date), NULL, NULL)
INSERT [dbo].[USERS] ([UserID], [Name], [Surname], [UserAddress], [Gender], [Birthday], [UserPassword], [ProfilePictureUrl]) VALUES (N'4f4c0354-8261-42b2-b409-395d34bdbcda', N'Festina', N'Maksutaj', N'3063dcce-ff3f-453f-b1e0-dc7b2024d34e', N'M', CAST(0xA9310B00 AS Date), NULL, NULL)
INSERT [dbo].[USERS] ([UserID], [Name], [Surname], [UserAddress], [Gender], [Birthday], [UserPassword], [ProfilePictureUrl]) VALUES (N'38d6f8dc-a858-47ef-b48a-415c5eab4c47', N'Negrita', N'Ramqaj', N'80ab9654-64e4-4e58-b631-cc54c2bec4fd', N'F', CAST(0xFF300B00 AS Date), NULL, NULL)
INSERT [dbo].[USERS] ([UserID], [Name], [Surname], [UserAddress], [Gender], [Birthday], [UserPassword], [ProfilePictureUrl]) VALUES (N'd94df29f-ba21-410a-96a2-4309fa75e7fe', N'Osman', N'Ramqaj', N'80ab9654-64e4-4e58-b631-cc54c2bec4fd', N'M', CAST(0xBD180B00 AS Date), NULL, NULL)
INSERT [dbo].[USERS] ([UserID], [Name], [Surname], [UserAddress], [Gender], [Birthday], [UserPassword], [ProfilePictureUrl]) VALUES (N'b8396571-304d-45b7-a21c-46ad9a520704', N'Sadik', N'Bicaj', N'e16911e3-3671-4a3d-9144-e14bda1375af', N'M', NULL, NULL, NULL)
INSERT [dbo].[USERS] ([UserID], [Name], [Surname], [UserAddress], [Gender], [Birthday], [UserPassword], [ProfilePictureUrl]) VALUES (N'228b05ec-5528-43bc-8046-66ccd3c6bd2b', N'Lirigzona', N'Dreshaj', N'80ab9654-64e4-4e58-b631-cc54c2bec4fd', N'F', CAST(0xFF300B00 AS Date), NULL, NULL)
INSERT [dbo].[USERS] ([UserID], [Name], [Surname], [UserAddress], [Gender], [Birthday], [UserPassword], [ProfilePictureUrl]) VALUES (N'3ee6a6f6-c01e-416e-87ae-6aadbfe4ff24', N'Anila', N'Ibrahimi', N'e16911e3-3671-4a3d-9144-e14bda1375af', N'F', CAST(0xE8050B00 AS Date), NULL, NULL)
INSERT [dbo].[USERS] ([UserID], [Name], [Surname], [UserAddress], [Gender], [Birthday], [UserPassword], [ProfilePictureUrl]) VALUES (N'74bf2cee-2ae1-4fd0-b3fb-71559cb2a810', N'Altina', N'Ibrahimaj', N'3063dcce-ff3f-453f-b1e0-dc7b2024d34e', N'F', CAST(0x23320B00 AS Date), NULL, NULL)
INSERT [dbo].[USERS] ([UserID], [Name], [Surname], [UserAddress], [Gender], [Birthday], [UserPassword], [ProfilePictureUrl]) VALUES (N'e3202072-d557-4113-8fcb-782a682476c1', N'Egzon', N'Qerimi', N'e16911e3-3671-4a3d-9144-e14bda1375af', N'M', CAST(0x55070B00 AS Date), NULL, NULL)
INSERT [dbo].[USERS] ([UserID], [Name], [Surname], [UserAddress], [Gender], [Birthday], [UserPassword], [ProfilePictureUrl]) VALUES (N'399fa400-6e18-456d-b411-786a46a5bead', N'Endrit', N'Metaj', N'3063dcce-ff3f-453f-b1e0-dc7b2024d34e', N'M', CAST(0x42320B00 AS Date), NULL, NULL)
INSERT [dbo].[USERS] ([UserID], [Name], [Surname], [UserAddress], [Gender], [Birthday], [UserPassword], [ProfilePictureUrl]) VALUES (N'a53134d1-6416-4240-8273-7a0105df3b50', N'Arbenit', N'Bicaj', N'c4803676-da47-4bff-93ee-7c794bf261ae', N'M', CAST(0xDE230B00 AS Date), NULL, NULL)
INSERT [dbo].[USERS] ([UserID], [Name], [Surname], [UserAddress], [Gender], [Birthday], [UserPassword], [ProfilePictureUrl]) VALUES (N'5ecd47e4-5b8c-4a6d-8c21-8f4f764b1196', N'Rilind', N'Bicaj', N'ae630bcc-19ea-4bab-a2ee-4f39c723649b', N'M', CAST(0x6B250B00 AS Date), NULL, NULL)
INSERT [dbo].[USERS] ([UserID], [Name], [Surname], [UserAddress], [Gender], [Birthday], [UserPassword], [ProfilePictureUrl]) VALUES (N'86246de0-6c83-4c7a-93c0-98a8b583e642', N'Ardit', N'Bytyqi', N'3063dcce-ff3f-453f-b1e0-dc7b2024d34e', N'M', CAST(0x98300B00 AS Date), NULL, NULL)
INSERT [dbo].[USERS] ([UserID], [Name], [Surname], [UserAddress], [Gender], [Birthday], [UserPassword], [ProfilePictureUrl]) VALUES (N'3592a833-56d4-47f4-b799-9c9fe04aa425', N'Elira', N'Bicaj', N'3063dcce-ff3f-453f-b1e0-dc7b2024d34e', N'F', CAST(0xC8310B00 AS Date), NULL, NULL)
INSERT [dbo].[USERS] ([UserID], [Name], [Surname], [UserAddress], [Gender], [Birthday], [UserPassword], [ProfilePictureUrl]) VALUES (N'2531ce70-c2a3-42ec-88ec-a477d9d0d955', N'Bardhyl', N'Hoti', N'3063dcce-ff3f-453f-b1e0-dc7b2024d34e', N'M', CAST(0x98300B00 AS Date), NULL, NULL)
INSERT [dbo].[USERS] ([UserID], [Name], [Surname], [UserAddress], [Gender], [Birthday], [UserPassword], [ProfilePictureUrl]) VALUES (N'725a7e6b-249f-43ac-8929-a6ccba7d4cba', N'Gazmend', N'Vakiqi', N'3063dcce-ff3f-453f-b1e0-dc7b2024d34e', N'M', CAST(0xFF300B00 AS Date), NULL, NULL)
INSERT [dbo].[USERS] ([UserID], [Name], [Surname], [UserAddress], [Gender], [Birthday], [UserPassword], [ProfilePictureUrl]) VALUES (N'd2644189-99be-4845-bff9-a88128c316e5', N'Fitim', N'Hasku', N'3063dcce-ff3f-453f-b1e0-dc7b2024d34e', N'M', CAST(0x95310B00 AS Date), NULL, NULL)
INSERT [dbo].[USERS] ([UserID], [Name], [Surname], [UserAddress], [Gender], [Birthday], [UserPassword], [ProfilePictureUrl]) VALUES (N'6d9d80ce-81a2-4b56-96d0-db348068e3ca', N'Leon', N'Shehu', N'80ab9654-64e4-4e58-b631-cc54c2bec4fd', N'M', CAST(0x71220B00 AS Date), NULL, NULL)
INSERT [dbo].[USERS] ([UserID], [Name], [Surname], [UserAddress], [Gender], [Birthday], [UserPassword], [ProfilePictureUrl]) VALUES (N'7a65c3d5-3fa0-42dd-9567-dee45fe44b02', N'Armend', N'Jaha', N'3063dcce-ff3f-453f-b1e0-dc7b2024d34e', N'M', CAST(0x6C310B00 AS Date), NULL, NULL)
INSERT [dbo].[USERS] ([UserID], [Name], [Surname], [UserAddress], [Gender], [Birthday], [UserPassword], [ProfilePictureUrl]) VALUES (N'5bad7cf7-6e01-43fc-a2ce-e2646e69b1a8', N'Besnik', N'Demaj', N'3063dcce-ff3f-453f-b1e0-dc7b2024d34e', N'M', CAST(0x7A300B00 AS Date), NULL, NULL)
INSERT [dbo].[USERS] ([UserID], [Name], [Surname], [UserAddress], [Gender], [Birthday], [UserPassword], [ProfilePictureUrl]) VALUES (N'98a070aa-d9e5-4a68-888d-f783cedc9609', N'Edrina', N'Ramqaj', N'80ab9654-64e4-4e58-b631-cc54c2bec4fd', N'F', CAST(0x981B0B00 AS Date), NULL, NULL)
/****** Object:  Index [UQ__CLASSGRO__78BC72E65F2CB5CF]    Script Date: 21/01/2022 21:34:54 ******/
ALTER TABLE [dbo].[CLASSGROUP] ADD UNIQUE NONCLUSTERED 
(
	[HomeroomTeacher] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [UQ__SCHOOL__55BB7AE5BF660F83]    Script Date: 21/01/2022 21:34:54 ******/
ALTER TABLE [dbo].[SCHOOL] ADD UNIQUE NONCLUSTERED 
(
	[Administrator] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ABSENCE]  WITH CHECK ADD FOREIGN KEY([Period])
REFERENCES [dbo].[PERIOD] ([PeriodID])
GO
ALTER TABLE [dbo].[ABSENCE]  WITH CHECK ADD FOREIGN KEY([Student])
REFERENCES [dbo].[STUDENT] ([StudentID])
GO
ALTER TABLE [dbo].[ADMINISTRATOR]  WITH CHECK ADD FOREIGN KEY([AdministratorID])
REFERENCES [dbo].[USERS] ([UserID])
GO
ALTER TABLE [dbo].[ARTICLE]  WITH CHECK ADD FOREIGN KEY([School])
REFERENCES [dbo].[SCHOOL] ([SchoolID])
GO
ALTER TABLE [dbo].[CITY]  WITH CHECK ADD FOREIGN KEY([Municipality])
REFERENCES [dbo].[CITY] ([CityID])
GO
ALTER TABLE [dbo].[CLASSGROUP]  WITH CHECK ADD FOREIGN KEY([Classroom])
REFERENCES [dbo].[CLASSROOM] ([ClassroomID])
GO
ALTER TABLE [dbo].[CLASSGROUP]  WITH CHECK ADD FOREIGN KEY([HomeroomTeacher])
REFERENCES [dbo].[TEACHER] ([TeacherID])
GO
ALTER TABLE [dbo].[CLASSROOM]  WITH CHECK ADD FOREIGN KEY([School])
REFERENCES [dbo].[SCHOOL] ([SchoolID])
GO
ALTER TABLE [dbo].[CURRICULUM]  WITH CHECK ADD FOREIGN KEY([School])
REFERENCES [dbo].[SCHOOL] ([SchoolID])
GO
ALTER TABLE [dbo].[GRADE]  WITH CHECK ADD FOREIGN KEY([Teacher], [Subject])
REFERENCES [dbo].[SUBJECTS_TEACHERS] ([SubjectID], [TeacherID])
GO
ALTER TABLE [dbo].[GRADE]  WITH CHECK ADD FOREIGN KEY([Student])
REFERENCES [dbo].[STUDENT] ([StudentID])
GO
ALTER TABLE [dbo].[PARENT]  WITH CHECK ADD FOREIGN KEY([ParentID])
REFERENCES [dbo].[USERS] ([UserID])
GO
ALTER TABLE [dbo].[PARENTS_STUDENTS]  WITH CHECK ADD FOREIGN KEY([ParentID])
REFERENCES [dbo].[PARENT] ([ParentID])
GO
ALTER TABLE [dbo].[PARENTS_STUDENTS]  WITH CHECK ADD FOREIGN KEY([StudentID])
REFERENCES [dbo].[STUDENT] ([StudentID])
GO
ALTER TABLE [dbo].[PERIOD]  WITH CHECK ADD FOREIGN KEY([Subject], [Teacher])
REFERENCES [dbo].[SUBJECTS_TEACHERS] ([SubjectID], [TeacherID])
GO
ALTER TABLE [dbo].[PERIOD]  WITH CHECK ADD FOREIGN KEY([Schedule])
REFERENCES [dbo].[SCHEDULE] ([ScheduleID])
GO
ALTER TABLE [dbo].[REMARK]  WITH CHECK ADD FOREIGN KEY([Student])
REFERENCES [dbo].[STUDENT] ([StudentID])
GO
ALTER TABLE [dbo].[REMARK]  WITH CHECK ADD FOREIGN KEY([Teacher])
REFERENCES [dbo].[TEACHER] ([TeacherID])
GO
ALTER TABLE [dbo].[SCHEDULE]  WITH CHECK ADD FOREIGN KEY([ClassGroup])
REFERENCES [dbo].[CLASSGROUP] ([GroupID])
GO
ALTER TABLE [dbo].[SCHEDULE]  WITH CHECK ADD FOREIGN KEY([School])
REFERENCES [dbo].[SCHOOL] ([SchoolID])
GO
ALTER TABLE [dbo].[SCHOOL]  WITH CHECK ADD FOREIGN KEY([Administrator])
REFERENCES [dbo].[ADMINISTRATOR] ([AdministratorID])
GO
ALTER TABLE [dbo].[SCHOOL]  WITH CHECK ADD FOREIGN KEY([SchoolAddress])
REFERENCES [dbo].[STREET] ([StreetID])
GO
ALTER TABLE [dbo].[SCHOOLEVENT]  WITH CHECK ADD FOREIGN KEY([Category])
REFERENCES [dbo].[EVENTCATEGORY] ([CategoryID])
GO
ALTER TABLE [dbo].[SCHOOLEVENT]  WITH CHECK ADD FOREIGN KEY([School])
REFERENCES [dbo].[SCHOOL] ([SchoolID])
GO
ALTER TABLE [dbo].[STREET]  WITH CHECK ADD FOREIGN KEY([City])
REFERENCES [dbo].[CITY] ([CityID])
GO
ALTER TABLE [dbo].[STUDENT]  WITH CHECK ADD FOREIGN KEY([ClassGroup])
REFERENCES [dbo].[CLASSGROUP] ([GroupID])
GO
ALTER TABLE [dbo].[STUDENT]  WITH CHECK ADD FOREIGN KEY([School])
REFERENCES [dbo].[SCHOOL] ([SchoolID])
GO
ALTER TABLE [dbo].[STUDENT]  WITH CHECK ADD FOREIGN KEY([StudentID])
REFERENCES [dbo].[USERS] ([UserID])
GO
ALTER TABLE [dbo].[SUBJECT]  WITH CHECK ADD FOREIGN KEY([Curriulum])
REFERENCES [dbo].[CURRICULUM] ([CurriculumID])
GO
ALTER TABLE [dbo].[SUBJECTS_TEACHERS]  WITH CHECK ADD FOREIGN KEY([SubjectID])
REFERENCES [dbo].[SUBJECT] ([SubjectID])
GO
ALTER TABLE [dbo].[SUBJECTS_TEACHERS]  WITH CHECK ADD FOREIGN KEY([TeacherID])
REFERENCES [dbo].[TEACHER] ([TeacherID])
GO
ALTER TABLE [dbo].[TEACHER]  WITH CHECK ADD FOREIGN KEY([School])
REFERENCES [dbo].[SCHOOL] ([SchoolID])
GO
ALTER TABLE [dbo].[TEACHER]  WITH CHECK ADD FOREIGN KEY([TeacherID])
REFERENCES [dbo].[USERS] ([UserID])
GO
ALTER TABLE [dbo].[USERS]  WITH CHECK ADD FOREIGN KEY([UserAddress])
REFERENCES [dbo].[STREET] ([StreetID])
GO
USE [master]
GO
ALTER DATABASE [SKMSDatabase] SET  READ_WRITE 
GO
