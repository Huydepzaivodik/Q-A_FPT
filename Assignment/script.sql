USE [master]
GO
/****** Object:  Database [Assignment]    Script Date: 7/20/2023 11:34:31 AM ******/
CREATE DATABASE [Assignment]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Assignment', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MAYAO\MSSQL\DATA\Assignment.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Assignment_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MAYAO\MSSQL\DATA\Assignment_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [Assignment] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Assignment].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Assignment] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Assignment] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Assignment] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Assignment] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Assignment] SET ARITHABORT OFF 
GO
ALTER DATABASE [Assignment] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Assignment] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Assignment] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Assignment] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Assignment] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Assignment] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Assignment] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Assignment] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Assignment] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Assignment] SET  ENABLE_BROKER 
GO
ALTER DATABASE [Assignment] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Assignment] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Assignment] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Assignment] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Assignment] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Assignment] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Assignment] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Assignment] SET RECOVERY FULL 
GO
ALTER DATABASE [Assignment] SET  MULTI_USER 
GO
ALTER DATABASE [Assignment] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Assignment] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Assignment] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Assignment] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Assignment] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Assignment] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'Assignment', N'ON'
GO
ALTER DATABASE [Assignment] SET QUERY_STORE = ON
GO
ALTER DATABASE [Assignment] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [Assignment]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 7/20/2023 11:34:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account](
	[account_id] [int] IDENTITY(1,1) NOT NULL,
	[account_name] [varchar](255) NULL,
	[password] [varchar](255) NULL,
	[student_name] [nvarchar](50) NULL,
	[phone] [varchar](10) NULL,
	[email] [varchar](255) NULL,
	[address_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[account_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Address]    Script Date: 7/20/2023 11:34:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Address](
	[address_id] [int] IDENTITY(1,1) NOT NULL,
	[department_name] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[address_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Admin]    Script Date: 7/20/2023 11:34:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Admin](
	[admin_id] [int] IDENTITY(1,1) NOT NULL,
	[admin_name] [nvarchar](50) NULL,
	[phone] [varchar](10) NULL,
	[email] [varchar](255) NULL,
	[password] [varchar](225) NULL,
PRIMARY KEY CLUSTERED 
(
	[admin_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Comment]    Script Date: 7/20/2023 11:34:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Comment](
	[cid] [int] IDENTITY(1,1) NOT NULL,
	[ctitle] [varchar](225) NULL,
	[account_id] [int] NULL,
	[teacher_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[cid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[QNA]    Script Date: 7/20/2023 11:34:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QNA](
	[qna_id] [int] IDENTITY(1,1) NOT NULL,
	[question] [varchar](225) NULL,
	[answer] [varchar](225) NULL,
	[admin_id] [int] NULL,
	[account_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[qna_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Subject]    Script Date: 7/20/2023 11:34:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Subject](
	[subject_id] [int] IDENTITY(1,1) NOT NULL,
	[subject_name] [varchar](225) NULL,
PRIMARY KEY CLUSTERED 
(
	[subject_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Teacher]    Script Date: 7/20/2023 11:34:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Teacher](
	[teacher_id] [int] IDENTITY(1,1) NOT NULL,
	[teacher_name] [varchar](225) NULL,
	[subject_id] [int] NULL,
	[lecturer] [varchar](225) NULL,
	[email] [varchar](225) NULL,
	[password] [varchar](225) NULL,
PRIMARY KEY CLUSTERED 
(
	[teacher_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Account] ON 

INSERT [dbo].[Account] ([account_id], [account_name], [password], [student_name], [phone], [email], [address_id]) VALUES (1, N'HuyNVQHE170822', N'123456', N'Nguyễn Văn Quang Huy', N'0123456789', N'abcxyz1@gmail.com', 1)
INSERT [dbo].[Account] ([account_id], [account_name], [password], [student_name], [phone], [email], [address_id]) VALUES (2, N'HuyNSHE178242', N'123456', N'Nghiêm Sỹ Huy', N'0123456789', N'abcxyz2@gmail.com', 2)
INSERT [dbo].[Account] ([account_id], [account_name], [password], [student_name], [phone], [email], [address_id]) VALUES (3, N'AnhNDhe178245', N'123456', N'Nguyễn Duy Anh', N'0123456789', N'abcxyz3@gmail.com', 3)
INSERT [dbo].[Account] ([account_id], [account_name], [password], [student_name], [phone], [email], [address_id]) VALUES (4, N'HoaTTThe179345', N'123456', N'Trương Thị Thanh Hòa', N'0123456789', N'abcxyz4@gmail.com', 4)
INSERT [dbo].[Account] ([account_id], [account_name], [password], [student_name], [phone], [email], [address_id]) VALUES (5, N'AnhBVhe179834', N'123456', N'Bùi Việt Anh', N'0123456789', N'abcxyz5@gmail.com', 1)
SET IDENTITY_INSERT [dbo].[Account] OFF
GO
SET IDENTITY_INSERT [dbo].[Address] ON 

INSERT [dbo].[Address] ([address_id], [department_name]) VALUES (1, N'FU-Hoa Lac')
INSERT [dbo].[Address] ([address_id], [department_name]) VALUES (2, N'FU-Ho Chi Minh')
INSERT [dbo].[Address] ([address_id], [department_name]) VALUES (3, N'FU-Da Nang')
INSERT [dbo].[Address] ([address_id], [department_name]) VALUES (4, N'FU-Can Tho')
INSERT [dbo].[Address] ([address_id], [department_name]) VALUES (5, N'FU-Quy Nhon')
SET IDENTITY_INSERT [dbo].[Address] OFF
GO
SET IDENTITY_INSERT [dbo].[Admin] ON 

INSERT [dbo].[Admin] ([admin_id], [admin_name], [phone], [email], [password]) VALUES (1, N'Nguyen Van A', N'0987654321', N'admin1@gmail.com', N'123456')
INSERT [dbo].[Admin] ([admin_id], [admin_name], [phone], [email], [password]) VALUES (2, N'Nguyen Van B', N'098342424', N'admin2@gmail.com', N'123456')
SET IDENTITY_INSERT [dbo].[Admin] OFF
GO
SET IDENTITY_INSERT [dbo].[Comment] ON 

INSERT [dbo].[Comment] ([cid], [ctitle], [account_id], [teacher_id]) VALUES (1035, N'Thay dep trai ko bang em', 1, 1)
INSERT [dbo].[Comment] ([cid], [ctitle], [account_id], [teacher_id]) VALUES (1036, N'Teacher is good', 1, 2)
INSERT [dbo].[Comment] ([cid], [ctitle], [account_id], [teacher_id]) VALUES (1037, N'Thay rat dep trai', 4, 1)
SET IDENTITY_INSERT [dbo].[Comment] OFF
GO
SET IDENTITY_INSERT [dbo].[QNA] ON 

INSERT [dbo].[QNA] ([qna_id], [question], [answer], [admin_id], [account_id]) VALUES (9, N'study MAD hard?', N'yes, u have to be hard', NULL, 2)
INSERT [dbo].[QNA] ([qna_id], [question], [answer], [admin_id], [account_id]) VALUES (10, N'fee is expensive', N'ok i know', NULL, 3)
INSERT [dbo].[QNA] ([qna_id], [question], [answer], [admin_id], [account_id]) VALUES (11, N'is teacher Tien handsome?', N'for sure', NULL, 1)
INSERT [dbo].[QNA] ([qna_id], [question], [answer], [admin_id], [account_id]) VALUES (1011, N'Mrs Van is good?', N'yes', NULL, 4)
INSERT [dbo].[QNA] ([qna_id], [question], [answer], [admin_id], [account_id]) VALUES (1012, N'is PRJ302 hard??', N'exactly', NULL, 1)
INSERT [dbo].[QNA] ([qna_id], [question], [answer], [admin_id], [account_id]) VALUES (1013, N'<3fdsfsd', N'exactly', NULL, 2)
INSERT [dbo].[QNA] ([qna_id], [question], [answer], [admin_id], [account_id]) VALUES (1014, N'Teacher Tien is HANDSOME', N'exactlyy for sure, verry handsome', NULL, 4)
INSERT [dbo].[QNA] ([qna_id], [question], [answer], [admin_id], [account_id]) VALUES (1015, N'nnnnnnnnnn', N'huydeptrai', NULL, 1)
SET IDENTITY_INSERT [dbo].[QNA] OFF
GO
SET IDENTITY_INSERT [dbo].[Subject] ON 

INSERT [dbo].[Subject] ([subject_id], [subject_name]) VALUES (1, N'PRJ302')
INSERT [dbo].[Subject] ([subject_id], [subject_name]) VALUES (2, N'MAS291')
INSERT [dbo].[Subject] ([subject_id], [subject_name]) VALUES (3, N'SWE302c')
INSERT [dbo].[Subject] ([subject_id], [subject_name]) VALUES (4, N'PRO192')
INSERT [dbo].[Subject] ([subject_id], [subject_name]) VALUES (5, N'JPD113')
INSERT [dbo].[Subject] ([subject_id], [subject_name]) VALUES (6, N'JPD123')
SET IDENTITY_INSERT [dbo].[Subject] OFF
GO
SET IDENTITY_INSERT [dbo].[Teacher] ON 

INSERT [dbo].[Teacher] ([teacher_id], [teacher_name], [subject_id], [lecturer], [email], [password]) VALUES (1, N'Ta Dinh Tien', 1, N'TienTD', N'tientd@123', N'123456')
INSERT [dbo].[Teacher] ([teacher_id], [teacher_name], [subject_id], [lecturer], [email], [password]) VALUES (2, N'Vi Tien Dung', 2, N'DungVT', N'dungvt@123', N'123456')
INSERT [dbo].[Teacher] ([teacher_id], [teacher_name], [subject_id], [lecturer], [email], [password]) VALUES (3, N'Nguyen Thi Van', 6, N'VanNT', N'tientd@123', NULL)
INSERT [dbo].[Teacher] ([teacher_id], [teacher_name], [subject_id], [lecturer], [email], [password]) VALUES (4, N'Nguyen Trung Kien', 3, N'KienNT', N'tientd@123', NULL)
INSERT [dbo].[Teacher] ([teacher_id], [teacher_name], [subject_id], [lecturer], [email], [password]) VALUES (5, N'Pham Thi Thanh Hoa', 5, N'HoaPTT', N'tientd@123', NULL)
INSERT [dbo].[Teacher] ([teacher_id], [teacher_name], [subject_id], [lecturer], [email], [password]) VALUES (6, N'Bui Ngoc Anh', 4, N'AnhBN', N'tientd@123', NULL)
SET IDENTITY_INSERT [dbo].[Teacher] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Account__AB6E6164C2172EA5]    Script Date: 7/20/2023 11:34:32 AM ******/
ALTER TABLE [dbo].[Account] ADD UNIQUE NONCLUSTERED 
(
	[email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Admin__AB6E6164576F8389]    Script Date: 7/20/2023 11:34:32 AM ******/
ALTER TABLE [dbo].[Admin] ADD UNIQUE NONCLUSTERED 
(
	[email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Account]  WITH CHECK ADD FOREIGN KEY([address_id])
REFERENCES [dbo].[Address] ([address_id])
GO
ALTER TABLE [dbo].[Comment]  WITH CHECK ADD FOREIGN KEY([account_id])
REFERENCES [dbo].[Account] ([account_id])
GO
ALTER TABLE [dbo].[Comment]  WITH CHECK ADD FOREIGN KEY([teacher_id])
REFERENCES [dbo].[Teacher] ([teacher_id])
GO
ALTER TABLE [dbo].[QNA]  WITH CHECK ADD FOREIGN KEY([account_id])
REFERENCES [dbo].[Account] ([account_id])
GO
ALTER TABLE [dbo].[QNA]  WITH CHECK ADD FOREIGN KEY([admin_id])
REFERENCES [dbo].[Admin] ([admin_id])
GO
ALTER TABLE [dbo].[Teacher]  WITH CHECK ADD FOREIGN KEY([subject_id])
REFERENCES [dbo].[Subject] ([subject_id])
GO
USE [master]
GO
ALTER DATABASE [Assignment] SET  READ_WRITE 
GO
