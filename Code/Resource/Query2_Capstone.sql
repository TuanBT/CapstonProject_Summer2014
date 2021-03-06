USE [master]
GO
/****** Object:  Database [CocBook]    Script Date: 06/18/2014 17:22:09 ******/
IF NOT EXISTS (SELECT name FROM sys.databases WHERE name = N'CocBook')
BEGIN
CREATE DATABASE [CocBook] ON  PRIMARY 
( NAME = N'CocBook', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10.MSSQLSERVER\MSSQL\DATA\CocBook.mdf' , SIZE = 2304KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'CocBook_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10.MSSQLSERVER\MSSQL\DATA\CocBook_log.LDF' , SIZE = 832KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
END
GO
ALTER DATABASE [CocBook] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [CocBook].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [CocBook] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [CocBook] SET ANSI_NULLS OFF
GO
ALTER DATABASE [CocBook] SET ANSI_PADDING OFF
GO
ALTER DATABASE [CocBook] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [CocBook] SET ARITHABORT OFF
GO
ALTER DATABASE [CocBook] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [CocBook] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [CocBook] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [CocBook] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [CocBook] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [CocBook] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [CocBook] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [CocBook] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [CocBook] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [CocBook] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [CocBook] SET  ENABLE_BROKER
GO
ALTER DATABASE [CocBook] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [CocBook] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [CocBook] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [CocBook] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [CocBook] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [CocBook] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [CocBook] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [CocBook] SET  READ_WRITE
GO
ALTER DATABASE [CocBook] SET RECOVERY FULL
GO
ALTER DATABASE [CocBook] SET  MULTI_USER
GO
ALTER DATABASE [CocBook] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [CocBook] SET DB_CHAINING OFF
GO
EXEC sys.sp_db_vardecimal_storage_format N'CocBook', N'ON'
GO
USE [CocBook]
GO
/****** Object:  Table [dbo].[ContraintValue]    Script Date: 06/18/2014 17:22:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ContraintValue]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ContraintValue](
	[ContraintID] [int] IDENTITY(1,1) NOT NULL,
	[ContrainName] [varchar](30) NULL,
	[ContrainDescription] [varchar](100) NULL,
	[ContrainValue] [varchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[ContraintID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[GiftCode]    Script Date: 06/18/2014 17:22:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GiftCode]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[GiftCode](
	[GiftID] [int] IDENTITY(1,1) NOT NULL,
	[GiftCode] [varchar](10) NULL,
	[Discount] [float] NULL,
	[FromDate] [datetime] NULL,
	[ToDate] [datetime] NULL,
	[Active] [bit] NULL,
	[OrderID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[GiftID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Singer]    Script Date: 06/18/2014 17:22:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Singer]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Singer](
	[SingerId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Age] [int] NOT NULL,
	[Country] [nvarchar](50) NULL,
	[Company] [nvarchar](50) NULL,
	[Description] [nvarchar](50) NULL,
	[Active] [bit] NULL,
 CONSTRAINT [PK_Singer] PRIMARY KEY CLUSTERED 
(
	[SingerId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET IDENTITY_INSERT [dbo].[Singer] ON
INSERT [dbo].[Singer] ([SingerId], [Name], [Age], [Country], [Company], [Description], [Active]) VALUES (1, N'BangKieu', 40, N'campuchia', N'anh sao', N'ca si noi tieng', 1)
SET IDENTITY_INSERT [dbo].[Singer] OFF
/****** Object:  Table [dbo].[SearchHistory]    Script Date: 06/18/2014 17:22:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SearchHistory]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[SearchHistory](
	[AutoID] [int] IDENTITY(1,1) NOT NULL,
	[SearchValue] [nvarchar](80) NULL,
	[Username] [varchar](30) NULL,
	[HitCount] [int] NULL,
	[CreatedDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[AutoID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[SearchHistory] ON
INSERT [dbo].[SearchHistory] ([AutoID], [SearchValue], [Username], [HitCount], [CreatedDate]) VALUES (7, N'3;1', N'guest', 2, CAST(0x0000A1DC00B28CB9 AS DateTime))
INSERT [dbo].[SearchHistory] ([AutoID], [SearchValue], [Username], [HitCount], [CreatedDate]) VALUES (8, N'3;2', N'guest', 3, CAST(0x0000A1DC00B294EC AS DateTime))
INSERT [dbo].[SearchHistory] ([AutoID], [SearchValue], [Username], [HitCount], [CreatedDate]) VALUES (9, N'3;1', N'guest', 2, CAST(0x0000A1DC00B29FA2 AS DateTime))
INSERT [dbo].[SearchHistory] ([AutoID], [SearchValue], [Username], [HitCount], [CreatedDate]) VALUES (10, N'3;1', N'guest', 2, CAST(0x0000A1DC00B2B2EE AS DateTime))
INSERT [dbo].[SearchHistory] ([AutoID], [SearchValue], [Username], [HitCount], [CreatedDate]) VALUES (11, N'nghề;1', N'guest', 1, CAST(0x0000A1DC00B396F1 AS DateTime))
INSERT [dbo].[SearchHistory] ([AutoID], [SearchValue], [Username], [HitCount], [CreatedDate]) VALUES (12, N'nghề;1', N'guest', 1, CAST(0x0000A1DC00B3C7A6 AS DateTime))
INSERT [dbo].[SearchHistory] ([AutoID], [SearchValue], [Username], [HitCount], [CreatedDate]) VALUES (13, N'nghề;1', N'guest', 3, CAST(0x0000A1DC00B3F139 AS DateTime))
INSERT [dbo].[SearchHistory] ([AutoID], [SearchValue], [Username], [HitCount], [CreatedDate]) VALUES (14, N'mmm;1', N'guest', 0, CAST(0x0000A1DC00B41F8B AS DateTime))
INSERT [dbo].[SearchHistory] ([AutoID], [SearchValue], [Username], [HitCount], [CreatedDate]) VALUES (15, N'nghề giáo;1', N'guest', 1, CAST(0x0000A1DC00B42C10 AS DateTime))
INSERT [dbo].[SearchHistory] ([AutoID], [SearchValue], [Username], [HitCount], [CreatedDate]) VALUES (16, N'nghề;1', N'guest', 3, CAST(0x0000A1DC00B44026 AS DateTime))
INSERT [dbo].[SearchHistory] ([AutoID], [SearchValue], [Username], [HitCount], [CreatedDate]) VALUES (17, N'nghề;1', N'guest', 3, CAST(0x0000A1DC00B4632B AS DateTime))
INSERT [dbo].[SearchHistory] ([AutoID], [SearchValue], [Username], [HitCount], [CreatedDate]) VALUES (18, N'nghề;1', N'guest', 3, CAST(0x0000A1DC00B494B5 AS DateTime))
INSERT [dbo].[SearchHistory] ([AutoID], [SearchValue], [Username], [HitCount], [CreatedDate]) VALUES (19, N'nghề;1', N'guest', 3, CAST(0x0000A1DC00B4CCBE AS DateTime))
INSERT [dbo].[SearchHistory] ([AutoID], [SearchValue], [Username], [HitCount], [CreatedDate]) VALUES (20, N'nghề;1', N'guest', 3, CAST(0x0000A1DC00B5F45E AS DateTime))
INSERT [dbo].[SearchHistory] ([AutoID], [SearchValue], [Username], [HitCount], [CreatedDate]) VALUES (21, N'nghề;1', N'guest', 3, CAST(0x0000A1DC00B6132D AS DateTime))
INSERT [dbo].[SearchHistory] ([AutoID], [SearchValue], [Username], [HitCount], [CreatedDate]) VALUES (22, N'nghề;1', N'guest', 3, CAST(0x0000A1DC00B667DF AS DateTime))
INSERT [dbo].[SearchHistory] ([AutoID], [SearchValue], [Username], [HitCount], [CreatedDate]) VALUES (23, N'nghề;1', N'guest', 3, CAST(0x0000A1DC00B7C73D AS DateTime))
INSERT [dbo].[SearchHistory] ([AutoID], [SearchValue], [Username], [HitCount], [CreatedDate]) VALUES (24, N'nghề giáo;1', N'guest', 1, CAST(0x0000A1DC00B80531 AS DateTime))
INSERT [dbo].[SearchHistory] ([AutoID], [SearchValue], [Username], [HitCount], [CreatedDate]) VALUES (25, N'nghề;1', N'guest', 3, CAST(0x0000A1DC00B81F6A AS DateTime))
INSERT [dbo].[SearchHistory] ([AutoID], [SearchValue], [Username], [HitCount], [CreatedDate]) VALUES (26, N'3;1', N'guest', 1, CAST(0x0000A1DC00B84EE7 AS DateTime))
INSERT [dbo].[SearchHistory] ([AutoID], [SearchValue], [Username], [HitCount], [CreatedDate]) VALUES (27, N';1', N'guest', 22, CAST(0x0000A1DC00B85617 AS DateTime))
INSERT [dbo].[SearchHistory] ([AutoID], [SearchValue], [Username], [HitCount], [CreatedDate]) VALUES (28, N';1', N'guest', 22, CAST(0x0000A1DC00B85C5A AS DateTime))
INSERT [dbo].[SearchHistory] ([AutoID], [SearchValue], [Username], [HitCount], [CreatedDate]) VALUES (29, N';1', N'guest', 22, CAST(0x0000A1DC00B8A448 AS DateTime))
INSERT [dbo].[SearchHistory] ([AutoID], [SearchValue], [Username], [HitCount], [CreatedDate]) VALUES (30, N' ;1', N'guest', 4, CAST(0x0000A1DC00B904CF AS DateTime))
INSERT [dbo].[SearchHistory] ([AutoID], [SearchValue], [Username], [HitCount], [CreatedDate]) VALUES (31, N'  ;1', N'guest', 0, CAST(0x0000A1DC00B92702 AS DateTime))
INSERT [dbo].[SearchHistory] ([AutoID], [SearchValue], [Username], [HitCount], [CreatedDate]) VALUES (32, N'nghề;1', N'guest', 3, CAST(0x0000A1DC00B94B5F AS DateTime))
INSERT [dbo].[SearchHistory] ([AutoID], [SearchValue], [Username], [HitCount], [CreatedDate]) VALUES (33, N'nghề;1', N'guest', 3, CAST(0x0000A1DC00C13216 AS DateTime))
INSERT [dbo].[SearchHistory] ([AutoID], [SearchValue], [Username], [HitCount], [CreatedDate]) VALUES (34, N'nghề giáo;1', N'guest', 1, CAST(0x0000A1DC00C1613D AS DateTime))
INSERT [dbo].[SearchHistory] ([AutoID], [SearchValue], [Username], [HitCount], [CreatedDate]) VALUES (35, N'khoa;1', N'c', 0, CAST(0x0000A1DC016711D8 AS DateTime))
INSERT [dbo].[SearchHistory] ([AutoID], [SearchValue], [Username], [HitCount], [CreatedDate]) VALUES (36, N'khoa;2', N'c', 1, CAST(0x0000A1DC0167152F AS DateTime))
INSERT [dbo].[SearchHistory] ([AutoID], [SearchValue], [Username], [HitCount], [CreatedDate]) VALUES (37, N'khoa;1', N'c', 0, CAST(0x0000A1DC016717BC AS DateTime))
INSERT [dbo].[SearchHistory] ([AutoID], [SearchValue], [Username], [HitCount], [CreatedDate]) VALUES (38, N'khoa;2', N'c', 1, CAST(0x0000A1DC01671989 AS DateTime))
INSERT [dbo].[SearchHistory] ([AutoID], [SearchValue], [Username], [HitCount], [CreatedDate]) VALUES (39, N'nghề;2', N'c', 0, CAST(0x0000A1DC01674E03 AS DateTime))
INSERT [dbo].[SearchHistory] ([AutoID], [SearchValue], [Username], [HitCount], [CreatedDate]) VALUES (40, N'nghề;1', N'c', 3, CAST(0x0000A1DC01675129 AS DateTime))
SET IDENTITY_INSERT [dbo].[SearchHistory] OFF
/****** Object:  Table [dbo].[Roles]    Script Date: 06/18/2014 17:22:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Roles]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Roles](
	[RoleID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
	[Info] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[RoleID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Roles] ON
INSERT [dbo].[Roles] ([RoleID], [Name], [Info]) VALUES (1, N'Customer', N'Khách hàng')
INSERT [dbo].[Roles] ([RoleID], [Name], [Info]) VALUES (2, N'Admin', N'Quản trị Website')
INSERT [dbo].[Roles] ([RoleID], [Name], [Info]) VALUES (3, N'Manager', N'Quản lý Website')
SET IDENTITY_INSERT [dbo].[Roles] OFF
/****** Object:  Table [dbo].[MusicCategory]    Script Date: 06/18/2014 17:22:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[MusicCategory]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[MusicCategory](
	[CategoryId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Active] [bit] NOT NULL,
 CONSTRAINT [PK_MusicCategory] PRIMARY KEY CLUSTERED 
(
	[CategoryId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET IDENTITY_INSERT [dbo].[MusicCategory] ON
INSERT [dbo].[MusicCategory] ([CategoryId], [Name], [Active]) VALUES (1, N'nhac sen', 1)
SET IDENTITY_INSERT [dbo].[MusicCategory] OFF
/****** Object:  Table [dbo].[MusicAuthors]    Script Date: 06/18/2014 17:22:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[MusicAuthors]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[MusicAuthors](
	[AuthorID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Description] [nvarchar](50) NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_MusicAuthors] PRIMARY KEY CLUSTERED 
(
	[AuthorID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET IDENTITY_INSERT [dbo].[MusicAuthors] ON
INSERT [dbo].[MusicAuthors] ([AuthorID], [Name], [Description], [IsActive]) VALUES (1, N'trinh cong son', N'aa', 1)
SET IDENTITY_INSERT [dbo].[MusicAuthors] OFF
/****** Object:  Table [dbo].[Category]    Script Date: 06/18/2014 17:22:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Category]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Category](
	[CateID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Info] [nvarchar](500) NULL,
	[Position] [int] NULL,
	[Active] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[CateID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET IDENTITY_INSERT [dbo].[Category] ON
INSERT [dbo].[Category] ([CateID], [Name], [Info], [Position], [Active]) VALUES (1, N'Tiểu Thuyết', N'là 1 thể loại mới', 1, 1)
INSERT [dbo].[Category] ([CateID], [Name], [Info], [Position], [Active]) VALUES (2, N'Truyện Ngắn', N'là truyện không dài', 2, 1)
SET IDENTITY_INSERT [dbo].[Category] OFF
/****** Object:  Table [dbo].[Author]    Script Date: 06/18/2014 17:22:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Author]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Author](
	[AuthorID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[NickName] [nvarchar](50) NULL,
	[Avatar] [nvarchar](200) NULL,
	[BioHistory] [nvarchar](1000) NULL,
	[Active] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[AuthorID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET IDENTITY_INSERT [dbo].[Author] ON
INSERT [dbo].[Author] ([AuthorID], [Name], [NickName], [Avatar], [BioHistory], [Active]) VALUES (1, NULL, NULL, NULL, NULL, 1)
SET IDENTITY_INSERT [dbo].[Author] OFF
/****** Object:  Table [dbo].[Album]    Script Date: 06/18/2014 17:22:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Album]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Album](
	[AlbumId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Image] [nvarchar](50) NOT NULL,
	[Description] [nvarchar](50) NULL,
	[PublishTime] [datetime] NULL,
	[SingerId] [int] NOT NULL,
	[Active] [bit] NULL,
 CONSTRAINT [PK_Album] PRIMARY KEY CLUSTERED 
(
	[AlbumId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET IDENTITY_INSERT [dbo].[Album] ON
INSERT [dbo].[Album] ([AlbumId], [Name], [Image], [Description], [PublishTime], [SingerId], [Active]) VALUES (1, N'trai tim ben le duong', N'abc', N'acb', CAST(0x0000A23300000000 AS DateTime), 1, 1)
SET IDENTITY_INSERT [dbo].[Album] OFF
/****** Object:  Table [dbo].[Account]    Script Date: 06/18/2014 17:22:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Account]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Account](
	[Username] [varchar](30) NOT NULL,
	[Password] [varchar](12) NULL,
	[RoleID] [int] NULL,
	[Active] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[Username] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Account] ([Username], [Password], [RoleID], [Active]) VALUES (N'a', N'a', 1, 1)
INSERT [dbo].[Account] ([Username], [Password], [RoleID], [Active]) VALUES (N'b', N'b', 1, 1)
INSERT [dbo].[Account] ([Username], [Password], [RoleID], [Active]) VALUES (N'c', N'123', 1, 1)
INSERT [dbo].[Account] ([Username], [Password], [RoleID], [Active]) VALUES (N'guest', N'123', 1, 1)
INSERT [dbo].[Account] ([Username], [Password], [RoleID], [Active]) VALUES (N'khoatnd', N'P@ssword', 1, 1)
INSERT [dbo].[Account] ([Username], [Password], [RoleID], [Active]) VALUES (N'm', N'123', 3, 1)
INSERT [dbo].[Account] ([Username], [Password], [RoleID], [Active]) VALUES (N'sa', N'123', 2, 1)
INSERT [dbo].[Account] ([Username], [Password], [RoleID], [Active]) VALUES (N'user1', N'12345', 1, 1)
/****** Object:  Table [dbo].[Book]    Script Date: 06/18/2014 17:22:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Book]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Book](
	[BookID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[AuthorID] [int] NULL,
	[AuthorName] [nvarchar](50) NULL,
	[Info] [nvarchar](1000) NULL,
	[Avatar] [nvarchar](100) NULL,
	[Publisher] [nvarchar](50) NULL,
	[NoOfPublish] [int] NULL,
	[PublishTime] [varchar](10) NULL,
	[BuyPrice] [float] NULL,
	[ShowPrice] [float] NULL,
	[Tags] [nvarchar](200) NULL,
	[ExtendInfo] [nvarchar](500) NULL,
	[CreatedDate] [datetime] NULL,
	[Active] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[BookID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Book] ON
INSERT [dbo].[Book] ([BookID], [Name], [AuthorID], [AuthorName], [Info], [Avatar], [Publisher], [NoOfPublish], [PublishTime], [BuyPrice], [ShowPrice], [Tags], [ExtendInfo], [CreatedDate], [Active]) VALUES (1, N'Đội quân nhí nhố và bạn', NULL, N'SonNX', N'Thời thơ ấu của Trác Ưu luôn phảng phất bóng dáng của Lục Tây Dương, là cậu bé thường xuyên bắt nạt cô ở trường mẫu giáo, cũng là cậu bé đem lại cho cô nhiều niềm vui nhất. Những trò nghịch ngợm ấy khiến cả hai trở nên thân thiết với nhau hơn. Từ lúc Tây Dương rời trường mẫu giáo trước để đi học, Trác Ưu không gặp lại anh nữa và cũng quên bẵng đi cậu bạn nhỏ này. Lớn lên, họ tình cờ gặp lại nhau, nhưng lúc này Lục Tây Dương đã là bạn trai của Sử Vân, cô bạn thân nhất của Trác Ưu. Vì vậy, dù trong lòng Lục Tây Dương vẫn đeo bám thứ tình cảm thuần khiết từ thuở nhỏ với Trác Ưu, và dù Trác Ưu cũng rất thích anh nhưng họ đành phải chôn chặt thứ tình cảm ấy ở tận đáy tim, bằng lòng với tình bạn của mình và cùng nhau trải qua những năm tháng tươi đẹp của quãng đời học sinh ấy.', N'img-book/detail.jpg', NULL, NULL, NULL, NULL, 100, NULL, N'A;B;C;D;E;F', NULL, 1)
INSERT [dbo].[Book] ([BookID], [Name], [AuthorID], [AuthorName], [Info], [Avatar], [Publisher], [NoOfPublish], [PublishTime], [BuyPrice], [ShowPrice], [Tags], [ExtendInfo], [CreatedDate], [Active]) VALUES (2, N'Nghề chia sẻ', NULL, N'KhoaTND', NULL, N'img-book/detail.jpg', NULL, NULL, NULL, NULL, 200, NULL, NULL, NULL, 1)
INSERT [dbo].[Book] ([BookID], [Name], [AuthorID], [AuthorName], [Info], [Avatar], [Publisher], [NoOfPublish], [PublishTime], [BuyPrice], [ShowPrice], [Tags], [ExtendInfo], [CreatedDate], [Active]) VALUES (3, N'Nghề giáo', NULL, N'3', NULL, N'img-book/detail.jpg', NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL, 1)
INSERT [dbo].[Book] ([BookID], [Name], [AuthorID], [AuthorName], [Info], [Avatar], [Publisher], [NoOfPublish], [PublishTime], [BuyPrice], [ShowPrice], [Tags], [ExtendInfo], [CreatedDate], [Active]) VALUES (4, N'Nghề ăn xin', NULL, N'4', NULL, N'img-book/detail.jpg', NULL, NULL, NULL, NULL, 4, NULL, NULL, NULL, 1)
INSERT [dbo].[Book] ([BookID], [Name], [AuthorID], [AuthorName], [Info], [Avatar], [Publisher], [NoOfPublish], [PublishTime], [BuyPrice], [ShowPrice], [Tags], [ExtendInfo], [CreatedDate], [Active]) VALUES (5, N'5', NULL, N'3', NULL, N'img-book/detail.jpg', NULL, NULL, NULL, NULL, 5, NULL, NULL, NULL, 1)
INSERT [dbo].[Book] ([BookID], [Name], [AuthorID], [AuthorName], [Info], [Avatar], [Publisher], [NoOfPublish], [PublishTime], [BuyPrice], [ShowPrice], [Tags], [ExtendInfo], [CreatedDate], [Active]) VALUES (6, N'6', NULL, N'3', NULL, N'img-book/detail.jpg', NULL, NULL, NULL, NULL, 6, NULL, NULL, NULL, 1)
INSERT [dbo].[Book] ([BookID], [Name], [AuthorID], [AuthorName], [Info], [Avatar], [Publisher], [NoOfPublish], [PublishTime], [BuyPrice], [ShowPrice], [Tags], [ExtendInfo], [CreatedDate], [Active]) VALUES (7, N'7', NULL, N'7', NULL, N'img-book/detail.jpg', NULL, NULL, NULL, NULL, 7, NULL, NULL, NULL, 1)
INSERT [dbo].[Book] ([BookID], [Name], [AuthorID], [AuthorName], [Info], [Avatar], [Publisher], [NoOfPublish], [PublishTime], [BuyPrice], [ShowPrice], [Tags], [ExtendInfo], [CreatedDate], [Active]) VALUES (8, N'8', NULL, N'8', NULL, N'img-book/detail.jpg', NULL, NULL, NULL, NULL, 8, NULL, NULL, NULL, 1)
INSERT [dbo].[Book] ([BookID], [Name], [AuthorID], [AuthorName], [Info], [Avatar], [Publisher], [NoOfPublish], [PublishTime], [BuyPrice], [ShowPrice], [Tags], [ExtendInfo], [CreatedDate], [Active]) VALUES (9, N'9', NULL, N'9', NULL, N'img-book/detail.jpg', NULL, NULL, NULL, NULL, 9, NULL, NULL, NULL, 1)
INSERT [dbo].[Book] ([BookID], [Name], [AuthorID], [AuthorName], [Info], [Avatar], [Publisher], [NoOfPublish], [PublishTime], [BuyPrice], [ShowPrice], [Tags], [ExtendInfo], [CreatedDate], [Active]) VALUES (10, N'10', NULL, N'10', NULL, N'img-book/detail.jpg', NULL, NULL, NULL, NULL, 10, NULL, NULL, NULL, 1)
INSERT [dbo].[Book] ([BookID], [Name], [AuthorID], [AuthorName], [Info], [Avatar], [Publisher], [NoOfPublish], [PublishTime], [BuyPrice], [ShowPrice], [Tags], [ExtendInfo], [CreatedDate], [Active]) VALUES (11, N'11', NULL, N'10', NULL, N'img-book/detail.jpg', NULL, NULL, NULL, NULL, 11, NULL, NULL, NULL, 1)
INSERT [dbo].[Book] ([BookID], [Name], [AuthorID], [AuthorName], [Info], [Avatar], [Publisher], [NoOfPublish], [PublishTime], [BuyPrice], [ShowPrice], [Tags], [ExtendInfo], [CreatedDate], [Active]) VALUES (12, N'12', NULL, N'10', NULL, N'img-book/detail.jpg', NULL, NULL, NULL, NULL, 12, NULL, NULL, NULL, 1)
INSERT [dbo].[Book] ([BookID], [Name], [AuthorID], [AuthorName], [Info], [Avatar], [Publisher], [NoOfPublish], [PublishTime], [BuyPrice], [ShowPrice], [Tags], [ExtendInfo], [CreatedDate], [Active]) VALUES (13, N'13', NULL, N'10', NULL, N'img-book/detail.jpg', NULL, NULL, NULL, NULL, 13, NULL, NULL, NULL, 1)
INSERT [dbo].[Book] ([BookID], [Name], [AuthorID], [AuthorName], [Info], [Avatar], [Publisher], [NoOfPublish], [PublishTime], [BuyPrice], [ShowPrice], [Tags], [ExtendInfo], [CreatedDate], [Active]) VALUES (14, N'14', NULL, N'10', NULL, N'img-book/detail.jpg', NULL, NULL, NULL, NULL, 14, NULL, NULL, NULL, 1)
INSERT [dbo].[Book] ([BookID], [Name], [AuthorID], [AuthorName], [Info], [Avatar], [Publisher], [NoOfPublish], [PublishTime], [BuyPrice], [ShowPrice], [Tags], [ExtendInfo], [CreatedDate], [Active]) VALUES (15, N'15', NULL, N'10', NULL, N'img-book/detail.jpg', NULL, NULL, NULL, NULL, 15, NULL, NULL, NULL, 1)
INSERT [dbo].[Book] ([BookID], [Name], [AuthorID], [AuthorName], [Info], [Avatar], [Publisher], [NoOfPublish], [PublishTime], [BuyPrice], [ShowPrice], [Tags], [ExtendInfo], [CreatedDate], [Active]) VALUES (16, N'16', NULL, N'10', NULL, N'img-book/detail.jpg', NULL, NULL, NULL, NULL, 16, NULL, NULL, NULL, 1)
INSERT [dbo].[Book] ([BookID], [Name], [AuthorID], [AuthorName], [Info], [Avatar], [Publisher], [NoOfPublish], [PublishTime], [BuyPrice], [ShowPrice], [Tags], [ExtendInfo], [CreatedDate], [Active]) VALUES (17, N'17', NULL, N'10', NULL, N'img-book/detail.jpg', NULL, NULL, NULL, NULL, 171, NULL, NULL, NULL, 1)
INSERT [dbo].[Book] ([BookID], [Name], [AuthorID], [AuthorName], [Info], [Avatar], [Publisher], [NoOfPublish], [PublishTime], [BuyPrice], [ShowPrice], [Tags], [ExtendInfo], [CreatedDate], [Active]) VALUES (18, N'18', NULL, N'10', NULL, N'img-book/detail.jpg', NULL, NULL, NULL, NULL, 18, NULL, NULL, NULL, 1)
INSERT [dbo].[Book] ([BookID], [Name], [AuthorID], [AuthorName], [Info], [Avatar], [Publisher], [NoOfPublish], [PublishTime], [BuyPrice], [ShowPrice], [Tags], [ExtendInfo], [CreatedDate], [Active]) VALUES (19, N'19', NULL, N'10', NULL, N'img-book/detail.jpg', NULL, NULL, NULL, NULL, 19, NULL, NULL, NULL, 1)
INSERT [dbo].[Book] ([BookID], [Name], [AuthorID], [AuthorName], [Info], [Avatar], [Publisher], [NoOfPublish], [PublishTime], [BuyPrice], [ShowPrice], [Tags], [ExtendInfo], [CreatedDate], [Active]) VALUES (20, N'20', NULL, N'10', NULL, N'img-book/detail.jpg', NULL, NULL, NULL, NULL, 20, NULL, NULL, NULL, 1)
INSERT [dbo].[Book] ([BookID], [Name], [AuthorID], [AuthorName], [Info], [Avatar], [Publisher], [NoOfPublish], [PublishTime], [BuyPrice], [ShowPrice], [Tags], [ExtendInfo], [CreatedDate], [Active]) VALUES (21, N'21', NULL, N'10', NULL, N'img-book/detail.jpg', NULL, NULL, NULL, NULL, 21, NULL, NULL, NULL, 1)
INSERT [dbo].[Book] ([BookID], [Name], [AuthorID], [AuthorName], [Info], [Avatar], [Publisher], [NoOfPublish], [PublishTime], [BuyPrice], [ShowPrice], [Tags], [ExtendInfo], [CreatedDate], [Active]) VALUES (22, N'22', NULL, N'10', NULL, N'img-book/detail.jpg', NULL, NULL, NULL, NULL, 22, NULL, NULL, NULL, 1)
SET IDENTITY_INSERT [dbo].[Book] OFF
/****** Object:  Table [dbo].[BookPrice]    Script Date: 06/18/2014 17:22:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[BookPrice]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[BookPrice](
	[BookID] [int] NOT NULL,
	[ApplyTime] [datetime] NOT NULL,
	[Price] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[BookID] ASC,
	[ApplyTime] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
INSERT [dbo].[BookPrice] ([BookID], [ApplyTime], [Price]) VALUES (1, CAST(0x0000A1CB00000000 AS DateTime), 60)
INSERT [dbo].[BookPrice] ([BookID], [ApplyTime], [Price]) VALUES (1, CAST(0x0000A1CD00000000 AS DateTime), 80)
INSERT [dbo].[BookPrice] ([BookID], [ApplyTime], [Price]) VALUES (1, CAST(0x0000A1CE00000000 AS DateTime), 90.5)
INSERT [dbo].[BookPrice] ([BookID], [ApplyTime], [Price]) VALUES (2, CAST(0x0000A1C800000000 AS DateTime), 110)
INSERT [dbo].[BookPrice] ([BookID], [ApplyTime], [Price]) VALUES (2, CAST(0x0000A1CA00000000 AS DateTime), 120)
INSERT [dbo].[BookPrice] ([BookID], [ApplyTime], [Price]) VALUES (2, CAST(0x0000A1CE00000000 AS DateTime), 140)
INSERT [dbo].[BookPrice] ([BookID], [ApplyTime], [Price]) VALUES (3, CAST(0x0000A1D000000000 AS DateTime), 3)
INSERT [dbo].[BookPrice] ([BookID], [ApplyTime], [Price]) VALUES (4, CAST(0x0000A1D000000000 AS DateTime), 4)
INSERT [dbo].[BookPrice] ([BookID], [ApplyTime], [Price]) VALUES (5, CAST(0x0000A1D000000000 AS DateTime), 5)
INSERT [dbo].[BookPrice] ([BookID], [ApplyTime], [Price]) VALUES (6, CAST(0x0000A1D000000000 AS DateTime), 6)
INSERT [dbo].[BookPrice] ([BookID], [ApplyTime], [Price]) VALUES (7, CAST(0x0000A1D000000000 AS DateTime), 7)
INSERT [dbo].[BookPrice] ([BookID], [ApplyTime], [Price]) VALUES (8, CAST(0x0000A1D000000000 AS DateTime), 8)
INSERT [dbo].[BookPrice] ([BookID], [ApplyTime], [Price]) VALUES (9, CAST(0x0000A1D000000000 AS DateTime), 9)
INSERT [dbo].[BookPrice] ([BookID], [ApplyTime], [Price]) VALUES (10, CAST(0x0000A1D200000000 AS DateTime), 10)
INSERT [dbo].[BookPrice] ([BookID], [ApplyTime], [Price]) VALUES (11, CAST(0x0000A1D200000000 AS DateTime), 11)
INSERT [dbo].[BookPrice] ([BookID], [ApplyTime], [Price]) VALUES (12, CAST(0x0000A1D200000000 AS DateTime), 12)
INSERT [dbo].[BookPrice] ([BookID], [ApplyTime], [Price]) VALUES (13, CAST(0x0000A1D200000000 AS DateTime), 13)
INSERT [dbo].[BookPrice] ([BookID], [ApplyTime], [Price]) VALUES (14, CAST(0x0000A1D200000000 AS DateTime), 14)
INSERT [dbo].[BookPrice] ([BookID], [ApplyTime], [Price]) VALUES (15, CAST(0x0000A1D200000000 AS DateTime), 15)
INSERT [dbo].[BookPrice] ([BookID], [ApplyTime], [Price]) VALUES (16, CAST(0x0000A1D200000000 AS DateTime), 16)
INSERT [dbo].[BookPrice] ([BookID], [ApplyTime], [Price]) VALUES (17, CAST(0x0000A1D200000000 AS DateTime), 17)
INSERT [dbo].[BookPrice] ([BookID], [ApplyTime], [Price]) VALUES (18, CAST(0x0000A1D200000000 AS DateTime), 18)
INSERT [dbo].[BookPrice] ([BookID], [ApplyTime], [Price]) VALUES (19, CAST(0x0000A1D200000000 AS DateTime), 19)
INSERT [dbo].[BookPrice] ([BookID], [ApplyTime], [Price]) VALUES (20, CAST(0x0000A1D200000000 AS DateTime), 20)
INSERT [dbo].[BookPrice] ([BookID], [ApplyTime], [Price]) VALUES (21, CAST(0x0000A1D200000000 AS DateTime), 21)
INSERT [dbo].[BookPrice] ([BookID], [ApplyTime], [Price]) VALUES (22, CAST(0x0000A1D200000000 AS DateTime), 22)
/****** Object:  Table [dbo].[BookInCategory]    Script Date: 06/18/2014 17:22:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[BookInCategory]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[BookInCategory](
	[BookCateID] [int] IDENTITY(1,1) NOT NULL,
	[BookID] [int] NULL,
	[CateID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[BookCateID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET IDENTITY_INSERT [dbo].[BookInCategory] ON
INSERT [dbo].[BookInCategory] ([BookCateID], [BookID], [CateID]) VALUES (1, 1, 1)
INSERT [dbo].[BookInCategory] ([BookCateID], [BookID], [CateID]) VALUES (2, 2, 1)
SET IDENTITY_INSERT [dbo].[BookInCategory] OFF
/****** Object:  Table [dbo].[Music]    Script Date: 06/18/2014 17:22:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Music]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Music](
	[MusicId] [int] IDENTITY(1,1) NOT NULL,
	[SingerId] [int] NOT NULL,
	[AlbumId] [int] NOT NULL,
	[AuthorId] [int] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Info] [nvarchar](50) NULL,
	[PublishTime] [datetime] NOT NULL,
	[Price] [int] NOT NULL,
	[Tags] [nvarchar](50) NOT NULL,
	[Size] [nvarchar](50) NULL,
	[Duration] [nvarchar](50) NOT NULL,
	[Quality] [nvarchar](50) NOT NULL,
	[ViewNumber] [int] NULL,
	[Link] [nvarchar](50) NOT NULL,
	[CategoryId] [int] NULL,
	[Active] [bit] NULL,
 CONSTRAINT [PK_Music] PRIMARY KEY CLUSTERED 
(
	[MusicId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET IDENTITY_INSERT [dbo].[Music] ON
INSERT [dbo].[Music] ([MusicId], [SingerId], [AlbumId], [AuthorId], [Name], [Info], [PublishTime], [Price], [Tags], [Size], [Duration], [Quality], [ViewNumber], [Link], [CategoryId], [Active]) VALUES (2, 1, 1, 1, N'bai khong ten so 100', N'1', CAST(0x00009E0B00000000 AS DateTime), 5000, N'aa', N'20', N'20', N'20', 200, N'aaa', 1, 1)
SET IDENTITY_INSERT [dbo].[Music] OFF
/****** Object:  Table [dbo].[Rating]    Script Date: 06/18/2014 17:22:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Rating]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Rating](
	[RateID] [int] IDENTITY(1,1) NOT NULL,
	[Username] [varchar](30) NULL,
	[BookID] [int] NULL,
	[Score] [float] NULL,
	[RateDate] [datetime] NULL,
	[Active] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[RateID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Rating] ON
INSERT [dbo].[Rating] ([RateID], [Username], [BookID], [Score], [RateDate], [Active]) VALUES (1, N'c', 1, 5, CAST(0x0000A1DA00000000 AS DateTime), NULL)
INSERT [dbo].[Rating] ([RateID], [Username], [BookID], [Score], [RateDate], [Active]) VALUES (2, N'a', 1, 3.6, CAST(0x0000A1DC0005C2DC AS DateTime), NULL)
INSERT [dbo].[Rating] ([RateID], [Username], [BookID], [Score], [RateDate], [Active]) VALUES (3, N'user1', 1, 3.3, CAST(0x0000A34C00BDD77F AS DateTime), NULL)
SET IDENTITY_INSERT [dbo].[Rating] OFF
/****** Object:  Table [dbo].[PointTransaction]    Script Date: 06/18/2014 17:22:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PointTransaction]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[PointTransaction](
	[TranID] [int] IDENTITY(1,1) NOT NULL,
	[Username] [varchar](30) NULL,
	[Point] [int] NULL,
	[TranTime] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[TranID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Customer]    Script Date: 06/18/2014 17:22:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Customer]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Customer](
	[Username] [varchar](30) NOT NULL,
	[Fullname] [nvarchar](50) NULL,
	[Phone] [varchar](20) NULL,
	[Email] [varchar](50) NULL,
	[District] [nvarchar](30) NULL,
	[Street] [nvarchar](30) NULL,
	[City] [nvarchar](30) NULL,
	[Point] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Username] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Customer] ([Username], [Fullname], [Phone], [Email], [District], [Street], [City], [Point]) VALUES (N'a', N'abc', N'0126', N'a', N'1', N'a', N'HCM', 0)
INSERT [dbo].[Customer] ([Username], [Fullname], [Phone], [Email], [District], [Street], [City], [Point]) VALUES (N'c', N'khoatnd,khoatnd', N'01222704288', N'khoatndse60680@fpt.edu.vn', N'3', N'149/17 Lê Thị Riêng', N'HCM', NULL)
INSERT [dbo].[Customer] ([Username], [Fullname], [Phone], [Email], [District], [Street], [City], [Point]) VALUES (N'guest', N'guest', N'guest', N'guest@guest.guest', N'guest', N'guest', N'guest', 0)
INSERT [dbo].[Customer] ([Username], [Fullname], [Phone], [Email], [District], [Street], [City], [Point]) VALUES (N'khoatnd', N'anh khoa', N'01222704288', N'khoatnd@fpt.com.vn', N'2', N'189 NTMK 1', N'HCM', 0)
INSERT [dbo].[Customer] ([Username], [Fullname], [Phone], [Email], [District], [Street], [City], [Point]) VALUES (N'user1', N'uer', N'0933222111', N'uawr@gmail.com', N'1', N'3hcm', N'HCM', 0)
/****** Object:  Table [dbo].[Order]    Script Date: 06/18/2014 17:22:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Order]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Order](
	[OrderID] [int] IDENTITY(1,1) NOT NULL,
	[Username] [varchar](30) NULL,
	[RequestDate] [datetime] NULL,
	[Notes] [nvarchar](250) NULL,
	[Total] [float] NULL,
	[Status] [varchar](30) NULL,
	[Fullname] [nvarchar](50) NULL,
	[Phone] [varchar](20) NULL,
	[District] [nvarchar](30) NULL,
	[Street] [nvarchar](30) NULL,
	[City] [nvarchar](30) NULL,
	[Elog] [nvarchar](200) NULL,
	[GiftCode] [varchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[OrderID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT [dbo].[Order] ([OrderID], [Username], [RequestDate], [Notes], [Total], [Status], [Fullname], [Phone], [District], [Street], [City], [Elog], [GiftCode]) VALUES (2, N'c', CAST(0x0000A1DA00F10BB6 AS DateTime), N'buổi sáng', 9, NULL, N'khoatnd', N'01222704288', NULL, N'149/17 Lê Thị Riêng', N'HCM', N'', N'')
INSERT [dbo].[Order] ([OrderID], [Username], [RequestDate], [Notes], [Total], [Status], [Fullname], [Phone], [District], [Street], [City], [Elog], [GiftCode]) VALUES (3, N'c', CAST(0x0000A1DA00F2A9B9 AS DateTime), N'', 140, NULL, N'khoatnd', N'01222704288', NULL, N'149/17 Lê Thị Riêng', N'HCM', N'', N'')
INSERT [dbo].[Order] ([OrderID], [Username], [RequestDate], [Notes], [Total], [Status], [Fullname], [Phone], [District], [Street], [City], [Elog], [GiftCode]) VALUES (4, N'c', CAST(0x0000A1DB007FB572 AS DateTime), N'test', 881, NULL, N'khoatnd', N'01222704288', NULL, N'149/17 Lê Thị Riêng', N'HCM', N'', N'')
INSERT [dbo].[Order] ([OrderID], [Username], [RequestDate], [Notes], [Total], [Status], [Fullname], [Phone], [District], [Street], [City], [Elog], [GiftCode]) VALUES (5, NULL, CAST(0x0000A1DC0022E12B AS DateTime), N'abc', 230.5, NULL, N'a', N'a', NULL, N'a', N'HCM', N'', N'')
INSERT [dbo].[Order] ([OrderID], [Username], [RequestDate], [Notes], [Total], [Status], [Fullname], [Phone], [District], [Street], [City], [Elog], [GiftCode]) VALUES (6, NULL, CAST(0x0000A1DC00234E06 AS DateTime), N'bcd', 107.5, NULL, N'a', N'a', NULL, N'a', N'HCM', N'', N'')
INSERT [dbo].[Order] ([OrderID], [Username], [RequestDate], [Notes], [Total], [Status], [Fullname], [Phone], [District], [Street], [City], [Elog], [GiftCode]) VALUES (7, NULL, CAST(0x0000A1DC00236D4A AS DateTime), N'bcd', 0, NULL, N'a', N'a', NULL, N'a', N'HCM', N'', N'')
INSERT [dbo].[Order] ([OrderID], [Username], [RequestDate], [Notes], [Total], [Status], [Fullname], [Phone], [District], [Street], [City], [Elog], [GiftCode]) VALUES (8, N'a', CAST(0x0000A1DC002464E5 AS DateTime), N'', 90.5, NULL, N'a', N'a', NULL, N'a', N'HCM', N'', N'')
INSERT [dbo].[Order] ([OrderID], [Username], [RequestDate], [Notes], [Total], [Status], [Fullname], [Phone], [District], [Street], [City], [Elog], [GiftCode]) VALUES (9, N'a', CAST(0x0000A1DC002801D4 AS DateTime), N'', 452.5, NULL, N'a', N'a', NULL, N'a', N'HCM', N'', N'')
INSERT [dbo].[Order] ([OrderID], [Username], [RequestDate], [Notes], [Total], [Status], [Fullname], [Phone], [District], [Street], [City], [Elog], [GiftCode]) VALUES (10, N'a', CAST(0x0000A1DC00288882 AS DateTime), N'', 140, NULL, N'a', N'a', NULL, N'a', N'HCM', N'', N'')
INSERT [dbo].[Order] ([OrderID], [Username], [RequestDate], [Notes], [Total], [Status], [Fullname], [Phone], [District], [Street], [City], [Elog], [GiftCode]) VALUES (11, N'a', CAST(0x0000A1DC0028B349 AS DateTime), N'', 90.5, NULL, N'a', N'a', NULL, N'a', N'HCM', N'', N'')
INSERT [dbo].[Order] ([OrderID], [Username], [RequestDate], [Notes], [Total], [Status], [Fullname], [Phone], [District], [Street], [City], [Elog], [GiftCode]) VALUES (12, N'a', CAST(0x0000A1DC002931EB AS DateTime), N'', 90.5, NULL, N'a', N'a', NULL, N'a', N'HCM', N'', N'')
INSERT [dbo].[Order] ([OrderID], [Username], [RequestDate], [Notes], [Total], [Status], [Fullname], [Phone], [District], [Street], [City], [Elog], [GiftCode]) VALUES (13, N'guest', CAST(0x0000A1DC0031633E AS DateTime), N'c', 90.5, NULL, N'c', N'c', NULL, N'c', N'HCM', N'', N'')
INSERT [dbo].[Order] ([OrderID], [Username], [RequestDate], [Notes], [Total], [Status], [Fullname], [Phone], [District], [Street], [City], [Elog], [GiftCode]) VALUES (14, N'guest', CAST(0x0000A1DC003309ED AS DateTime), N'd', 90.5, NULL, N'd', N'd', NULL, N'd', N'HCM', N'', N'')
INSERT [dbo].[Order] ([OrderID], [Username], [RequestDate], [Notes], [Total], [Status], [Fullname], [Phone], [District], [Street], [City], [Elog], [GiftCode]) VALUES (15, N'a', CAST(0x0000A1DC00339891 AS DateTime), N'', 90.5, NULL, N'a', N'a', NULL, N'a', N'HCM', N'', N'')
INSERT [dbo].[Order] ([OrderID], [Username], [RequestDate], [Notes], [Total], [Status], [Fullname], [Phone], [District], [Street], [City], [Elog], [GiftCode]) VALUES (16, N'guest', CAST(0x0000A1DC0086D4C0 AS DateTime), N't', 3, NULL, N't', N't', NULL, N't', N'HCM', N'', N'')
INSERT [dbo].[Order] ([OrderID], [Username], [RequestDate], [Notes], [Total], [Status], [Fullname], [Phone], [District], [Street], [City], [Elog], [GiftCode]) VALUES (17, N'guest', CAST(0x0000A1DC0087071A AS DateTime), N'', 140, NULL, N'd', N'd', NULL, N'd', N'HCM', N'', N'')
INSERT [dbo].[Order] ([OrderID], [Username], [RequestDate], [Notes], [Total], [Status], [Fullname], [Phone], [District], [Street], [City], [Elog], [GiftCode]) VALUES (18, N'guest', CAST(0x0000A1DC00874493 AS DateTime), N'', 17, NULL, N'n', N'n', NULL, N'n', N'HCM', N'', N'')
INSERT [dbo].[Order] ([OrderID], [Username], [RequestDate], [Notes], [Total], [Status], [Fullname], [Phone], [District], [Street], [City], [Elog], [GiftCode]) VALUES (19, N'guest', CAST(0x0000A1DC0087EBD8 AS DateTime), N'', 90.5, NULL, N'v', N'v', NULL, N'v', N'HCM', N'', N'')
INSERT [dbo].[Order] ([OrderID], [Username], [RequestDate], [Notes], [Total], [Status], [Fullname], [Phone], [District], [Street], [City], [Elog], [GiftCode]) VALUES (20, N'guest', CAST(0x0000A1DC00880481 AS DateTime), N'', 90.5, NULL, N'v', N'v', NULL, N'v', N'HCM', N'', N'')
INSERT [dbo].[Order] ([OrderID], [Username], [RequestDate], [Notes], [Total], [Status], [Fullname], [Phone], [District], [Street], [City], [Elog], [GiftCode]) VALUES (21, N'guest', CAST(0x0000A1DC00885348 AS DateTime), N'', 90.5, NULL, N'b', N'b', NULL, N'b', N'HCM', N'', N'')
INSERT [dbo].[Order] ([OrderID], [Username], [RequestDate], [Notes], [Total], [Status], [Fullname], [Phone], [District], [Street], [City], [Elog], [GiftCode]) VALUES (22, N'a', CAST(0x0000A1DC00B9E737 AS DateTime), N'giao buoi sang', 140, NULL, N'abc', N'0126', NULL, N'a', N'HCM', N'', N'')
INSERT [dbo].[Order] ([OrderID], [Username], [RequestDate], [Notes], [Total], [Status], [Fullname], [Phone], [District], [Street], [City], [Elog], [GiftCode]) VALUES (23, N'c', CAST(0x0000A1DC01688012 AS DateTime), N'', 230.5, NULL, N'khoatnd,khoatnd', N'01222704288', NULL, N'149/17 Lê Thị Riêng', N'HCM', N'', N'')
INSERT [dbo].[Order] ([OrderID], [Username], [RequestDate], [Notes], [Total], [Status], [Fullname], [Phone], [District], [Street], [City], [Elog], [GiftCode]) VALUES (24, N'c', CAST(0x0000A1DC016916C3 AS DateTime), N'', 230.5, NULL, N'khoatnd', N'01222704288', NULL, N'149/17 Lê Thị Riêng', N'HCM', N'', N'')
SET IDENTITY_INSERT [dbo].[Order] OFF
/****** Object:  View [dbo].[V_Music]    Script Date: 06/18/2014 17:22:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[V_Music]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW [dbo].[V_Music]
AS
SELECT     dbo.Music.MusicId, dbo.Music.Name, dbo.Music.Info, dbo.Music.PublishTime, dbo.Music.Price, dbo.Music.Tags, dbo.Music.Size, dbo.Music.Duration, 
                      dbo.Music.Quality, dbo.Music.ViewNumber, dbo.Music.Link, dbo.Music.Active, dbo.MusicAuthors.Description, dbo.MusicCategory.Name AS MusicCategoryName, 
                      dbo.Singer.Name AS SingerName, dbo.Singer.Age, dbo.Singer.Country, dbo.Singer.Company, dbo.Singer.Description AS SingerDescription, 
                      dbo.Singer.Active AS SingerActive, dbo.MusicCategory.Active AS MusicCategoryActive, dbo.MusicAuthors.IsActive, dbo.Album.Name AS AlbumName, dbo.Album.Image, 
                      dbo.Album.Description AS AlbumDescription, dbo.Album.PublishTime AS AlbumPublishTime, dbo.Album.Active AS AlbumActive, 
                      dbo.MusicAuthors.Name AS MusicAuthorsName
FROM         dbo.Music INNER JOIN
                      dbo.MusicAuthors ON dbo.Music.AuthorId = dbo.MusicAuthors.AuthorID INNER JOIN
                      dbo.MusicCategory ON dbo.Music.CategoryId = dbo.MusicCategory.CategoryId INNER JOIN
                      dbo.Singer ON dbo.Music.SingerId = dbo.Singer.SingerId INNER JOIN
                      dbo.Album ON dbo.Music.AlbumId = dbo.Album.AlbumId AND dbo.Singer.SingerId = dbo.Album.SingerId
'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DiagramPane1' , N'SCHEMA',N'dbo', N'VIEW',N'V_Music', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "Music"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 125
               Right = 198
            End
            DisplayFlags = 280
            TopColumn = 12
         End
         Begin Table = "MusicAuthors"
            Begin Extent = 
               Top = 0
               Left = 308
               Bottom = 119
               Right = 468
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "MusicCategory"
            Begin Extent = 
               Top = 95
               Left = 437
               Bottom = 199
               Right = 597
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Singer"
            Begin Extent = 
               Top = 13
               Left = 641
               Bottom = 132
               Right = 801
            End
            DisplayFlags = 280
            TopColumn = 3
         End
         Begin Table = "Album"
            Begin Extent = 
               Top = 6
               Left = 839
               Bottom = 125
               Right = 999
            End
            DisplayFlags = 280
            TopColumn = 3
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 29
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         W' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'V_Music'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DiagramPane2' , N'SCHEMA',N'dbo', N'VIEW',N'V_Music', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'idth = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'V_Music'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DiagramPaneCount' , N'SCHEMA',N'dbo', N'VIEW',N'V_Music', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'V_Music'
GO
/****** Object:  View [dbo].[V_Book]    Script Date: 06/18/2014 17:22:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[V_Book]'))
EXEC dbo.sp_executesql @statement = N'CREATE View [dbo].[V_Book]
AS
	SELECT b.*,p.Price,Round(((b.ShowPrice- p.Price)/b.ShowPrice) * 100,0) as DealPercentage, ''AveScore'' = CASE myTable.NumOfRate WHEN 0 THEN 0 ELSE myTable.TotalScore /myTable.NumOfRate END
	FROM
		(SELECT b.BookID,MAX(p.ApplyTime) as ApplyTime
		FROM Book b, BookPrice p
		WHERE b.BookID = p.BookID and b.Active =1 and p.ApplyTime <= GetDate()	
		Group BY b.BookID) InPrice,
		Book b,
		BookPrice p,
		(SELECT b.BookID, SUM(ISNULL(r.Score,0)) as TotalScore, Count(r.RateID) as NumOfRate
		FROM Book b left outer join Rating r on b.BookID = r.BookID
		where b.Active =1
		group by b.BookID) myTable
	WHERE b.BookID = p.BookID and p.BookID =InPrice.BookID and p.ApplyTime = InPrice.ApplyTime and  b.BookID = myTable.BookID
'
GO
/****** Object:  Table [dbo].[MusicRating]    Script Date: 06/18/2014 17:22:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[MusicRating]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[MusicRating](
	[RateID] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [nvarchar](50) NOT NULL,
	[MusicId] [int] NOT NULL,
	[Score] [int] NULL,
	[RateDate] [datetime] NULL,
	[Active] [bit] NULL,
 CONSTRAINT [PK_MusicRating] PRIMARY KEY CLUSTERED 
(
	[RateID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Comment]    Script Date: 06/18/2014 17:22:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Comment]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Comment](
	[CommentId] [int] IDENTITY(1,1) NOT NULL,
	[MusicId] [int] NOT NULL,
	[UserId] [int] NOT NULL,
	[CmContent] [nvarchar](50) NULL,
	[CmDate] [datetime] NULL,
	[Active] [bit] NULL,
 CONSTRAINT [PK_Comment] PRIMARY KEY CLUSTERED 
(
	[CommentId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[OrderDetail]    Script Date: 06/18/2014 17:22:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[OrderDetail]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[OrderDetail](
	[DetailID] [int] IDENTITY(1,1) NOT NULL,
	[OrderID] [int] NULL,
	[BookID] [int] NULL,
	[MusicID] [int] NOT NULL,
	[Quantity] [int] NULL,
	[Price] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[DetailID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET IDENTITY_INSERT [dbo].[OrderDetail] ON
INSERT [dbo].[OrderDetail] ([DetailID], [OrderID], [BookID], [MusicID], [Quantity], [Price]) VALUES (1, NULL, 3, 2, 3, 3)
INSERT [dbo].[OrderDetail] ([DetailID], [OrderID], [BookID], [MusicID], [Quantity], [Price]) VALUES (2, NULL, 2, 2, 1, 140)
INSERT [dbo].[OrderDetail] ([DetailID], [OrderID], [BookID], [MusicID], [Quantity], [Price]) VALUES (3, NULL, 2, 2, 5, 140)
INSERT [dbo].[OrderDetail] ([DetailID], [OrderID], [BookID], [MusicID], [Quantity], [Price]) VALUES (4, NULL, 1, 2, 2, 90.5)
INSERT [dbo].[OrderDetail] ([DetailID], [OrderID], [BookID], [MusicID], [Quantity], [Price]) VALUES (5, NULL, 1, 2, 1, 90.5)
INSERT [dbo].[OrderDetail] ([DetailID], [OrderID], [BookID], [MusicID], [Quantity], [Price]) VALUES (6, NULL, 2, 2, 1, 140)
INSERT [dbo].[OrderDetail] ([DetailID], [OrderID], [BookID], [MusicID], [Quantity], [Price]) VALUES (7, NULL, 1, 2, 1, 90.5)
INSERT [dbo].[OrderDetail] ([DetailID], [OrderID], [BookID], [MusicID], [Quantity], [Price]) VALUES (8, NULL, 17, 2, 1, 17)
INSERT [dbo].[OrderDetail] ([DetailID], [OrderID], [BookID], [MusicID], [Quantity], [Price]) VALUES (9, NULL, 1, 2, 1, 90.5)
INSERT [dbo].[OrderDetail] ([DetailID], [OrderID], [BookID], [MusicID], [Quantity], [Price]) VALUES (10, NULL, 1, 2, 5, 90.5)
INSERT [dbo].[OrderDetail] ([DetailID], [OrderID], [BookID], [MusicID], [Quantity], [Price]) VALUES (11, NULL, 2, 2, 1, 140)
INSERT [dbo].[OrderDetail] ([DetailID], [OrderID], [BookID], [MusicID], [Quantity], [Price]) VALUES (12, 11, 1, 2, 1, 90.5)
INSERT [dbo].[OrderDetail] ([DetailID], [OrderID], [BookID], [MusicID], [Quantity], [Price]) VALUES (13, 12, 1, 2, 1, 90.5)
INSERT [dbo].[OrderDetail] ([DetailID], [OrderID], [BookID], [MusicID], [Quantity], [Price]) VALUES (14, 13, 1, 2, 1, 90.5)
INSERT [dbo].[OrderDetail] ([DetailID], [OrderID], [BookID], [MusicID], [Quantity], [Price]) VALUES (15, 14, 1, 2, 1, 90.5)
INSERT [dbo].[OrderDetail] ([DetailID], [OrderID], [BookID], [MusicID], [Quantity], [Price]) VALUES (16, 15, 1, 2, 1, 90.5)
INSERT [dbo].[OrderDetail] ([DetailID], [OrderID], [BookID], [MusicID], [Quantity], [Price]) VALUES (17, 16, 3, 2, 1, 3)
INSERT [dbo].[OrderDetail] ([DetailID], [OrderID], [BookID], [MusicID], [Quantity], [Price]) VALUES (18, 17, 2, 2, 1, 140)
INSERT [dbo].[OrderDetail] ([DetailID], [OrderID], [BookID], [MusicID], [Quantity], [Price]) VALUES (19, 18, 17, 2, 1, 17)
INSERT [dbo].[OrderDetail] ([DetailID], [OrderID], [BookID], [MusicID], [Quantity], [Price]) VALUES (20, 19, 1, 2, 1, 90.5)
INSERT [dbo].[OrderDetail] ([DetailID], [OrderID], [BookID], [MusicID], [Quantity], [Price]) VALUES (21, 20, 1, 2, 1, 90.5)
INSERT [dbo].[OrderDetail] ([DetailID], [OrderID], [BookID], [MusicID], [Quantity], [Price]) VALUES (22, 21, 1, 2, 1, 90.5)
INSERT [dbo].[OrderDetail] ([DetailID], [OrderID], [BookID], [MusicID], [Quantity], [Price]) VALUES (23, 22, 2, 2, 1, 140)
INSERT [dbo].[OrderDetail] ([DetailID], [OrderID], [BookID], [MusicID], [Quantity], [Price]) VALUES (24, 23, 1, 2, 1, 90.5)
INSERT [dbo].[OrderDetail] ([DetailID], [OrderID], [BookID], [MusicID], [Quantity], [Price]) VALUES (25, 23, 2, 2, 1, 140)
INSERT [dbo].[OrderDetail] ([DetailID], [OrderID], [BookID], [MusicID], [Quantity], [Price]) VALUES (26, 24, 1, 2, 1, 90.5)
INSERT [dbo].[OrderDetail] ([DetailID], [OrderID], [BookID], [MusicID], [Quantity], [Price]) VALUES (27, 24, 2, 2, 1, 140)
SET IDENTITY_INSERT [dbo].[OrderDetail] OFF
/****** Object:  ForeignKey [FK_Album_Singer]    Script Date: 06/18/2014 17:22:10 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Album_Singer]') AND parent_object_id = OBJECT_ID(N'[dbo].[Album]'))
ALTER TABLE [dbo].[Album]  WITH CHECK ADD  CONSTRAINT [FK_Album_Singer] FOREIGN KEY([SingerId])
REFERENCES [dbo].[Singer] ([SingerId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Album_Singer]') AND parent_object_id = OBJECT_ID(N'[dbo].[Album]'))
ALTER TABLE [dbo].[Album] CHECK CONSTRAINT [FK_Album_Singer]
GO
/****** Object:  ForeignKey [FK__Account__RoleID__45F365D3]    Script Date: 06/18/2014 17:22:10 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__Account__RoleID__45F365D3]') AND parent_object_id = OBJECT_ID(N'[dbo].[Account]'))
ALTER TABLE [dbo].[Account]  WITH CHECK ADD FOREIGN KEY([RoleID])
REFERENCES [dbo].[Roles] ([RoleID])
GO
/****** Object:  ForeignKey [FK__Book__AuthorID__46E78A0C]    Script Date: 06/18/2014 17:22:10 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__Book__AuthorID__46E78A0C]') AND parent_object_id = OBJECT_ID(N'[dbo].[Book]'))
ALTER TABLE [dbo].[Book]  WITH CHECK ADD FOREIGN KEY([AuthorID])
REFERENCES [dbo].[Author] ([AuthorID])
GO
/****** Object:  ForeignKey [FK__BookPrice__BookI__47DBAE45]    Script Date: 06/18/2014 17:22:10 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__BookPrice__BookI__47DBAE45]') AND parent_object_id = OBJECT_ID(N'[dbo].[BookPrice]'))
ALTER TABLE [dbo].[BookPrice]  WITH CHECK ADD FOREIGN KEY([BookID])
REFERENCES [dbo].[Book] ([BookID])
GO
/****** Object:  ForeignKey [FK__BookInCat__BookI__48CFD27E]    Script Date: 06/18/2014 17:22:10 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__BookInCat__BookI__48CFD27E]') AND parent_object_id = OBJECT_ID(N'[dbo].[BookInCategory]'))
ALTER TABLE [dbo].[BookInCategory]  WITH CHECK ADD FOREIGN KEY([BookID])
REFERENCES [dbo].[Book] ([BookID])
GO
/****** Object:  ForeignKey [FK__BookInCat__CateI__49C3F6B7]    Script Date: 06/18/2014 17:22:10 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__BookInCat__CateI__49C3F6B7]') AND parent_object_id = OBJECT_ID(N'[dbo].[BookInCategory]'))
ALTER TABLE [dbo].[BookInCategory]  WITH CHECK ADD FOREIGN KEY([CateID])
REFERENCES [dbo].[Category] ([CateID])
GO
/****** Object:  ForeignKey [FK_Music_Album]    Script Date: 06/18/2014 17:22:10 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Music_Album]') AND parent_object_id = OBJECT_ID(N'[dbo].[Music]'))
ALTER TABLE [dbo].[Music]  WITH CHECK ADD  CONSTRAINT [FK_Music_Album] FOREIGN KEY([AlbumId])
REFERENCES [dbo].[Album] ([AlbumId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Music_Album]') AND parent_object_id = OBJECT_ID(N'[dbo].[Music]'))
ALTER TABLE [dbo].[Music] CHECK CONSTRAINT [FK_Music_Album]
GO
/****** Object:  ForeignKey [FK_Music_MusicAuthors]    Script Date: 06/18/2014 17:22:10 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Music_MusicAuthors]') AND parent_object_id = OBJECT_ID(N'[dbo].[Music]'))
ALTER TABLE [dbo].[Music]  WITH CHECK ADD  CONSTRAINT [FK_Music_MusicAuthors] FOREIGN KEY([AuthorId])
REFERENCES [dbo].[MusicAuthors] ([AuthorID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Music_MusicAuthors]') AND parent_object_id = OBJECT_ID(N'[dbo].[Music]'))
ALTER TABLE [dbo].[Music] CHECK CONSTRAINT [FK_Music_MusicAuthors]
GO
/****** Object:  ForeignKey [FK_Music_MusicCategory]    Script Date: 06/18/2014 17:22:10 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Music_MusicCategory]') AND parent_object_id = OBJECT_ID(N'[dbo].[Music]'))
ALTER TABLE [dbo].[Music]  WITH CHECK ADD  CONSTRAINT [FK_Music_MusicCategory] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[MusicCategory] ([CategoryId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Music_MusicCategory]') AND parent_object_id = OBJECT_ID(N'[dbo].[Music]'))
ALTER TABLE [dbo].[Music] CHECK CONSTRAINT [FK_Music_MusicCategory]
GO
/****** Object:  ForeignKey [FK_Music_Singer]    Script Date: 06/18/2014 17:22:10 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Music_Singer]') AND parent_object_id = OBJECT_ID(N'[dbo].[Music]'))
ALTER TABLE [dbo].[Music]  WITH CHECK ADD  CONSTRAINT [FK_Music_Singer] FOREIGN KEY([SingerId])
REFERENCES [dbo].[Singer] ([SingerId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Music_Singer]') AND parent_object_id = OBJECT_ID(N'[dbo].[Music]'))
ALTER TABLE [dbo].[Music] CHECK CONSTRAINT [FK_Music_Singer]
GO
/****** Object:  ForeignKey [FK__Rating__BookID__4F7CD00D]    Script Date: 06/18/2014 17:22:10 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__Rating__BookID__4F7CD00D]') AND parent_object_id = OBJECT_ID(N'[dbo].[Rating]'))
ALTER TABLE [dbo].[Rating]  WITH CHECK ADD FOREIGN KEY([BookID])
REFERENCES [dbo].[Book] ([BookID])
GO
/****** Object:  ForeignKey [FK__Rating__Username__5070F446]    Script Date: 06/18/2014 17:22:10 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__Rating__Username__5070F446]') AND parent_object_id = OBJECT_ID(N'[dbo].[Rating]'))
ALTER TABLE [dbo].[Rating]  WITH CHECK ADD FOREIGN KEY([Username])
REFERENCES [dbo].[Account] ([Username])
GO
/****** Object:  ForeignKey [FK__PointTran__Usern__5165187F]    Script Date: 06/18/2014 17:22:10 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__PointTran__Usern__5165187F]') AND parent_object_id = OBJECT_ID(N'[dbo].[PointTransaction]'))
ALTER TABLE [dbo].[PointTransaction]  WITH CHECK ADD FOREIGN KEY([Username])
REFERENCES [dbo].[Account] ([Username])
GO
/****** Object:  ForeignKey [FK__Customer__Userna__4E88ABD4]    Script Date: 06/18/2014 17:22:10 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__Customer__Userna__4E88ABD4]') AND parent_object_id = OBJECT_ID(N'[dbo].[Customer]'))
ALTER TABLE [dbo].[Customer]  WITH CHECK ADD FOREIGN KEY([Username])
REFERENCES [dbo].[Account] ([Username])
GO
/****** Object:  ForeignKey [FK__Order__Username__52593CB8]    Script Date: 06/18/2014 17:22:10 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__Order__Username__52593CB8]') AND parent_object_id = OBJECT_ID(N'[dbo].[Order]'))
ALTER TABLE [dbo].[Order]  WITH CHECK ADD FOREIGN KEY([Username])
REFERENCES [dbo].[Account] ([Username])
GO
/****** Object:  ForeignKey [FK_MusicRating_Music]    Script Date: 06/18/2014 17:22:11 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_MusicRating_Music]') AND parent_object_id = OBJECT_ID(N'[dbo].[MusicRating]'))
ALTER TABLE [dbo].[MusicRating]  WITH CHECK ADD  CONSTRAINT [FK_MusicRating_Music] FOREIGN KEY([MusicId])
REFERENCES [dbo].[Music] ([MusicId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_MusicRating_Music]') AND parent_object_id = OBJECT_ID(N'[dbo].[MusicRating]'))
ALTER TABLE [dbo].[MusicRating] CHECK CONSTRAINT [FK_MusicRating_Music]
GO
/****** Object:  ForeignKey [FK_Comment_Music]    Script Date: 06/18/2014 17:22:11 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Comment_Music]') AND parent_object_id = OBJECT_ID(N'[dbo].[Comment]'))
ALTER TABLE [dbo].[Comment]  WITH CHECK ADD  CONSTRAINT [FK_Comment_Music] FOREIGN KEY([MusicId])
REFERENCES [dbo].[Music] ([MusicId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Comment_Music]') AND parent_object_id = OBJECT_ID(N'[dbo].[Comment]'))
ALTER TABLE [dbo].[Comment] CHECK CONSTRAINT [FK_Comment_Music]
GO
/****** Object:  ForeignKey [FK__OrderDeta__BookI__5441852A]    Script Date: 06/18/2014 17:22:11 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__OrderDeta__BookI__5441852A]') AND parent_object_id = OBJECT_ID(N'[dbo].[OrderDetail]'))
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD FOREIGN KEY([BookID])
REFERENCES [dbo].[Book] ([BookID])
GO
/****** Object:  ForeignKey [FK__OrderDeta__Order__5535A963]    Script Date: 06/18/2014 17:22:11 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__OrderDeta__Order__5535A963]') AND parent_object_id = OBJECT_ID(N'[dbo].[OrderDetail]'))
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD FOREIGN KEY([OrderID])
REFERENCES [dbo].[Order] ([OrderID])
GO
/****** Object:  ForeignKey [FK_OrderDetail_Music]    Script Date: 06/18/2014 17:22:11 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_OrderDetail_Music]') AND parent_object_id = OBJECT_ID(N'[dbo].[OrderDetail]'))
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetail_Music] FOREIGN KEY([MusicID])
REFERENCES [dbo].[Music] ([MusicId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_OrderDetail_Music]') AND parent_object_id = OBJECT_ID(N'[dbo].[OrderDetail]'))
ALTER TABLE [dbo].[OrderDetail] CHECK CONSTRAINT [FK_OrderDetail_Music]
GO
