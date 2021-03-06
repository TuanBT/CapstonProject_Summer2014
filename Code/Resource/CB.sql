USE [master]
GO
/****** Object:  Database [CocBook]    Script Date: 06/13/2013 21:56:33 ******/
CREATE DATABASE [CocBook] ON  PRIMARY 
( NAME = N'CocBook', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10.MSSQLSERVER\MSSQL\DATA\CocBook.mdf' , SIZE = 2304KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'CocBook_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10.MSSQLSERVER\MSSQL\DATA\CocBook_log.LDF' , SIZE = 832KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
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
/****** Object:  Table [dbo].[SearchHistory]    Script Date: 06/13/2013 21:56:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
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
/****** Object:  Table [dbo].[Roles]    Script Date: 06/13/2013 21:56:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Roles](
	[RoleID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
	[Info] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[RoleID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Roles] ON
INSERT [dbo].[Roles] ([RoleID], [Name], [Info]) VALUES (1, N'Customer', N'Khách hàng')
INSERT [dbo].[Roles] ([RoleID], [Name], [Info]) VALUES (2, N'Admin', N'Quản trị Website')
INSERT [dbo].[Roles] ([RoleID], [Name], [Info]) VALUES (3, N'Manager', N'Quản lý Website')
SET IDENTITY_INSERT [dbo].[Roles] OFF
/****** Object:  Table [dbo].[ContraintValue]    Script Date: 06/13/2013 21:56:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
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
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Category]    Script Date: 06/13/2013 21:56:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
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
GO
SET IDENTITY_INSERT [dbo].[Category] ON
INSERT [dbo].[Category] ([CateID], [Name], [Info], [Position], [Active]) VALUES (1, N'Tiểu Thuyết', N'là 1 thể loại mới', 1, 1)
INSERT [dbo].[Category] ([CateID], [Name], [Info], [Position], [Active]) VALUES (2, N'Truyện Ngắn', N'là truyện không dài', 2, 1)
SET IDENTITY_INSERT [dbo].[Category] OFF
/****** Object:  Table [dbo].[GiftCode]    Script Date: 06/13/2013 21:56:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
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
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Author]    Script Date: 06/13/2013 21:56:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
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
GO
SET IDENTITY_INSERT [dbo].[Author] ON
INSERT [dbo].[Author] ([AuthorID], [Name], [NickName], [Avatar], [BioHistory], [Active]) VALUES (1, NULL, NULL, NULL, NULL, 1)
SET IDENTITY_INSERT [dbo].[Author] OFF
/****** Object:  Table [dbo].[Book]    Script Date: 06/13/2013 21:56:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
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
/****** Object:  Table [dbo].[Account]    Script Date: 06/13/2013 21:56:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
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
/****** Object:  Table [dbo].[Order]    Script Date: 06/13/2013 21:56:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
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
/****** Object:  Table [dbo].[Customer]    Script Date: 06/13/2013 21:56:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
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
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Customer] ([Username], [Fullname], [Phone], [Email], [District], [Street], [City], [Point]) VALUES (N'a', N'abc', N'0126', N'a', N'1', N'a', N'HCM', 0)
INSERT [dbo].[Customer] ([Username], [Fullname], [Phone], [Email], [District], [Street], [City], [Point]) VALUES (N'c', N'khoatnd,khoatnd', N'01222704288', N'khoatndse60680@fpt.edu.vn', N'3', N'149/17 Lê Thị Riêng', N'HCM', NULL)
INSERT [dbo].[Customer] ([Username], [Fullname], [Phone], [Email], [District], [Street], [City], [Point]) VALUES (N'guest', N'guest', N'guest', N'guest@guest.guest', N'guest', N'guest', N'guest', 0)
INSERT [dbo].[Customer] ([Username], [Fullname], [Phone], [Email], [District], [Street], [City], [Point]) VALUES (N'khoatnd', N'anh khoa', N'01222704288', N'khoatnd@fpt.com.vn', N'2', N'189 NTMK 1', N'HCM', 0)
/****** Object:  Table [dbo].[BookPrice]    Script Date: 06/13/2013 21:56:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
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
/****** Object:  Table [dbo].[BookInCategory]    Script Date: 06/13/2013 21:56:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BookInCategory](
	[BookCateID] [int] IDENTITY(1,1) NOT NULL,
	[BookID] [int] NULL,
	[CateID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[BookCateID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[BookInCategory] ON
INSERT [dbo].[BookInCategory] ([BookCateID], [BookID], [CateID]) VALUES (1, 1, 1)
INSERT [dbo].[BookInCategory] ([BookCateID], [BookID], [CateID]) VALUES (2, 2, 1)
SET IDENTITY_INSERT [dbo].[BookInCategory] OFF
/****** Object:  Table [dbo].[Rating]    Script Date: 06/13/2013 21:56:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Rating](
	[RateID] [int] IDENTITY(1,1) NOT NULL,
	[Username] [varchar](30) NULL,
	[BookID] [int] NULL,
	[Score] [float] NULL,
	[RateDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[RateID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Rating] ON
INSERT [dbo].[Rating] ([RateID], [Username], [BookID], [Score], [RateDate]) VALUES (1, N'c', 1, 5, CAST(0x0000A1DA00000000 AS DateTime))
INSERT [dbo].[Rating] ([RateID], [Username], [BookID], [Score], [RateDate]) VALUES (2, N'a', 1, 3.6, CAST(0x0000A1DC0005C2DC AS DateTime))
SET IDENTITY_INSERT [dbo].[Rating] OFF
/****** Object:  Table [dbo].[PointTransaction]    Script Date: 06/13/2013 21:56:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
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
GO
SET ANSI_PADDING OFF
GO
/****** Object:  View [dbo].[V_Book]    Script Date: 06/13/2013 21:56:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE View [dbo].[V_Book]
AS
	SELECT b.*,p.Price,Round(((b.ShowPrice- p.Price)/b.ShowPrice) * 100,0) as DealPercentage, 'AveScore' = CASE myTable.NumOfRate WHEN 0 THEN 0 ELSE myTable.TotalScore /myTable.NumOfRate END
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
GO
/****** Object:  Table [dbo].[OrderDetail]    Script Date: 06/13/2013 21:56:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetail](
	[DetailID] [int] IDENTITY(1,1) NOT NULL,
	[OrderID] [int] NULL,
	[BookID] [int] NULL,
	[Quantity] [int] NULL,
	[Price] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[DetailID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[OrderDetail] ON
INSERT [dbo].[OrderDetail] ([DetailID], [OrderID], [BookID], [Quantity], [Price]) VALUES (1, NULL, 3, 3, 3)
INSERT [dbo].[OrderDetail] ([DetailID], [OrderID], [BookID], [Quantity], [Price]) VALUES (2, NULL, 2, 1, 140)
INSERT [dbo].[OrderDetail] ([DetailID], [OrderID], [BookID], [Quantity], [Price]) VALUES (3, NULL, 2, 5, 140)
INSERT [dbo].[OrderDetail] ([DetailID], [OrderID], [BookID], [Quantity], [Price]) VALUES (4, NULL, 1, 2, 90.5)
INSERT [dbo].[OrderDetail] ([DetailID], [OrderID], [BookID], [Quantity], [Price]) VALUES (5, NULL, 1, 1, 90.5)
INSERT [dbo].[OrderDetail] ([DetailID], [OrderID], [BookID], [Quantity], [Price]) VALUES (6, NULL, 2, 1, 140)
INSERT [dbo].[OrderDetail] ([DetailID], [OrderID], [BookID], [Quantity], [Price]) VALUES (7, NULL, 1, 1, 90.5)
INSERT [dbo].[OrderDetail] ([DetailID], [OrderID], [BookID], [Quantity], [Price]) VALUES (8, NULL, 17, 1, 17)
INSERT [dbo].[OrderDetail] ([DetailID], [OrderID], [BookID], [Quantity], [Price]) VALUES (9, NULL, 1, 1, 90.5)
INSERT [dbo].[OrderDetail] ([DetailID], [OrderID], [BookID], [Quantity], [Price]) VALUES (10, NULL, 1, 5, 90.5)
INSERT [dbo].[OrderDetail] ([DetailID], [OrderID], [BookID], [Quantity], [Price]) VALUES (11, NULL, 2, 1, 140)
INSERT [dbo].[OrderDetail] ([DetailID], [OrderID], [BookID], [Quantity], [Price]) VALUES (12, 11, 1, 1, 90.5)
INSERT [dbo].[OrderDetail] ([DetailID], [OrderID], [BookID], [Quantity], [Price]) VALUES (13, 12, 1, 1, 90.5)
INSERT [dbo].[OrderDetail] ([DetailID], [OrderID], [BookID], [Quantity], [Price]) VALUES (14, 13, 1, 1, 90.5)
INSERT [dbo].[OrderDetail] ([DetailID], [OrderID], [BookID], [Quantity], [Price]) VALUES (15, 14, 1, 1, 90.5)
INSERT [dbo].[OrderDetail] ([DetailID], [OrderID], [BookID], [Quantity], [Price]) VALUES (16, 15, 1, 1, 90.5)
INSERT [dbo].[OrderDetail] ([DetailID], [OrderID], [BookID], [Quantity], [Price]) VALUES (17, 16, 3, 1, 3)
INSERT [dbo].[OrderDetail] ([DetailID], [OrderID], [BookID], [Quantity], [Price]) VALUES (18, 17, 2, 1, 140)
INSERT [dbo].[OrderDetail] ([DetailID], [OrderID], [BookID], [Quantity], [Price]) VALUES (19, 18, 17, 1, 17)
INSERT [dbo].[OrderDetail] ([DetailID], [OrderID], [BookID], [Quantity], [Price]) VALUES (20, 19, 1, 1, 90.5)
INSERT [dbo].[OrderDetail] ([DetailID], [OrderID], [BookID], [Quantity], [Price]) VALUES (21, 20, 1, 1, 90.5)
INSERT [dbo].[OrderDetail] ([DetailID], [OrderID], [BookID], [Quantity], [Price]) VALUES (22, 21, 1, 1, 90.5)
INSERT [dbo].[OrderDetail] ([DetailID], [OrderID], [BookID], [Quantity], [Price]) VALUES (23, 22, 2, 1, 140)
INSERT [dbo].[OrderDetail] ([DetailID], [OrderID], [BookID], [Quantity], [Price]) VALUES (24, 23, 1, 1, 90.5)
INSERT [dbo].[OrderDetail] ([DetailID], [OrderID], [BookID], [Quantity], [Price]) VALUES (25, 23, 2, 1, 140)
INSERT [dbo].[OrderDetail] ([DetailID], [OrderID], [BookID], [Quantity], [Price]) VALUES (26, 24, 1, 1, 90.5)
INSERT [dbo].[OrderDetail] ([DetailID], [OrderID], [BookID], [Quantity], [Price]) VALUES (27, 24, 2, 1, 140)
SET IDENTITY_INSERT [dbo].[OrderDetail] OFF
/****** Object:  ForeignKey [FK__Book__AuthorID__08EA5793]    Script Date: 06/13/2013 21:56:34 ******/
ALTER TABLE [dbo].[Book]  WITH CHECK ADD FOREIGN KEY([AuthorID])
REFERENCES [dbo].[Author] ([AuthorID])
GO
/****** Object:  ForeignKey [FK__Account__RoleID__1BFD2C07]    Script Date: 06/13/2013 21:56:34 ******/
ALTER TABLE [dbo].[Account]  WITH CHECK ADD FOREIGN KEY([RoleID])
REFERENCES [dbo].[Roles] ([RoleID])
GO
/****** Object:  ForeignKey [FK__Order__Username__300424B4]    Script Date: 06/13/2013 21:56:34 ******/
ALTER TABLE [dbo].[Order]  WITH CHECK ADD FOREIGN KEY([Username])
REFERENCES [dbo].[Account] ([Username])
GO
/****** Object:  ForeignKey [FK__Customer__Userna__20C1E124]    Script Date: 06/13/2013 21:56:34 ******/
ALTER TABLE [dbo].[Customer]  WITH CHECK ADD FOREIGN KEY([Username])
REFERENCES [dbo].[Account] ([Username])
GO
/****** Object:  ForeignKey [FK__BookPrice__BookI__1367E606]    Script Date: 06/13/2013 21:56:34 ******/
ALTER TABLE [dbo].[BookPrice]  WITH CHECK ADD FOREIGN KEY([BookID])
REFERENCES [dbo].[Book] ([BookID])
GO
/****** Object:  ForeignKey [FK__BookInCat__BookI__0DAF0CB0]    Script Date: 06/13/2013 21:56:34 ******/
ALTER TABLE [dbo].[BookInCategory]  WITH CHECK ADD FOREIGN KEY([BookID])
REFERENCES [dbo].[Book] ([BookID])
GO
/****** Object:  ForeignKey [FK__BookInCat__CateI__0EA330E9]    Script Date: 06/13/2013 21:56:34 ******/
ALTER TABLE [dbo].[BookInCategory]  WITH CHECK ADD FOREIGN KEY([CateID])
REFERENCES [dbo].[Category] ([CateID])
GO
/****** Object:  ForeignKey [FK__Rating__BookID__267ABA7A]    Script Date: 06/13/2013 21:56:34 ******/
ALTER TABLE [dbo].[Rating]  WITH CHECK ADD FOREIGN KEY([BookID])
REFERENCES [dbo].[Book] ([BookID])
GO
/****** Object:  ForeignKey [FK__Rating__Username__25869641]    Script Date: 06/13/2013 21:56:34 ******/
ALTER TABLE [dbo].[Rating]  WITH CHECK ADD FOREIGN KEY([Username])
REFERENCES [dbo].[Account] ([Username])
GO
/****** Object:  ForeignKey [FK__PointTran__Usern__2B3F6F97]    Script Date: 06/13/2013 21:56:34 ******/
ALTER TABLE [dbo].[PointTransaction]  WITH CHECK ADD FOREIGN KEY([Username])
REFERENCES [dbo].[Account] ([Username])
GO
/****** Object:  ForeignKey [FK__OrderDeta__BookI__35BCFE0A]    Script Date: 06/13/2013 21:56:35 ******/
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD FOREIGN KEY([BookID])
REFERENCES [dbo].[Book] ([BookID])
GO
/****** Object:  ForeignKey [FK__OrderDeta__Order__34C8D9D1]    Script Date: 06/13/2013 21:56:35 ******/
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD FOREIGN KEY([OrderID])
REFERENCES [dbo].[Order] ([OrderID])
GO
