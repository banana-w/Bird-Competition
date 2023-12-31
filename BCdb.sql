USE [BirdCompetitionDB]
GO
/****** Object:  Table [dbo].[Bird]    Script Date: 11/15/2023 1:39:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bird](
	[IdBird] [int] IDENTITY(1,1) NOT NULL,
	[NameOfBird] [nvarchar](50) NOT NULL,
	[Species] [nvarchar](50) NOT NULL,
	[Description] [nvarchar](100) NULL,
	[Point] [int] NOT NULL,
	[Status] [bit] NOT NULL,
	[IdMember] [nchar](10) NOT NULL,
	[Gender] [bit] NULL,
	[Win] [int] NULL,
	[Lose] [int] NULL,
	[Tie] [int] NULL,
	[MatchNumber] [int] NULL,
	[PhotoPath] [nvarchar](max) NULL,
 CONSTRAINT [PK_Bird_1] PRIMARY KEY CLUSTERED 
(
	[IdBird] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BirdContest]    Script Date: 11/15/2023 1:39:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BirdContest](
	[IdBird] [int] NOT NULL,
	[IdContest] [int] NULL,
	[Rank] [int] NULL,
	[BeforePoint] [int] NOT NULL,
	[AfterPoint] [int] NULL,
	[Status] [bit] NOT NULL,
	[CheckIn] [bit] NULL,
	[CheckInCode] [nchar](10) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Contest]    Script Date: 11/15/2023 1:39:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contest](
	[IdContest] [int] IDENTITY(1,1) NOT NULL,
	[NameOfContest] [nvarchar](50) NULL,
	[Date] [date] NULL,
	[LocationId] [int] NULL,
	[Status] [bit] NOT NULL,
	[Factor] [float] NOT NULL,
	[MinPoint] [int] NOT NULL,
	[MaxPoint] [int] NOT NULL,
	[MaxParticipant] [int] NULL,
	[ParticipatingFee] [int] NULL,
	[UserName] [nchar](10) NULL,
	[StatusOfContest] [int] NULL,
	[MaxBirdJoin] [int] NULL,
	[StartTime] [time](7) NULL,
	[EndTime] [time](7) NULL,
 CONSTRAINT [PK_Contest] PRIMARY KEY CLUSTERED 
(
	[IdContest] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FeedBack]    Script Date: 11/15/2023 1:39:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FeedBack](
	[IdMember] [nchar](10) NOT NULL,
	[Description] [nvarchar](200) NULL,
	[IdFeedback] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_FeedBack] PRIMARY KEY CLUSTERED 
(
	[IdFeedback] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Location]    Script Date: 11/15/2023 1:39:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Location](
	[LocationId] [int] IDENTITY(1,1) NOT NULL,
	[Location] [nvarchar](200) NULL,
	[Status] [bit] NULL,
	[PhotoPath] [nvarchar](100) NULL,
	[LinkMap] [nvarchar](max) NULL,
 CONSTRAINT [PK_Location] PRIMARY KEY CLUSTERED 
(
	[LocationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Member]    Script Date: 11/15/2023 1:39:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Member](
	[IdMember] [nchar](10) NOT NULL,
	[FullName] [nvarchar](50) NOT NULL,
	[DateOfBirth] [date] NULL,
	[Country] [nvarchar](100) NULL,
	[Phone] [nvarchar](20) NULL,
	[Status] [bit] NOT NULL,
	[Gender] [bit] NULL,
	[PhotoPath] [nvarchar](100) NULL,
 CONSTRAINT [PK_Member] PRIMARY KEY CLUSTERED 
(
	[IdMember] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MemberShip]    Script Date: 11/15/2023 1:39:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MemberShip](
	[IdMember] [nchar](10) NOT NULL,
	[DateSignUp] [date] NULL,
	[status] [bit] NULL,
	[TypeOfMemberShip] [varchar](10) NULL,
	[DateExpired] [date] NULL,
 CONSTRAINT [PK_VIP_Member] PRIMARY KEY CLUSTERED 
(
	[IdMember] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[News]    Script Date: 11/15/2023 1:39:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[News](
	[IdNews] [int] IDENTITY(1,1) NOT NULL,
	[NameOfNews] [nvarchar](500) NULL,
	[Date] [date] NULL,
	[Description] [nvarchar](1000) NULL,
	[LinkOfNews] [nvarchar](max) NULL,
	[IdUser] [nchar](10) NULL,
	[PhotoPath] [nvarchar](max) NULL,
 CONSTRAINT [PK_News] PRIMARY KEY CLUSTERED 
(
	[IdNews] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderDetail]    Script Date: 11/15/2023 1:39:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetail](
	[IdOrder] [int] IDENTITY(1,1) NOT NULL,
	[IdMember] [nchar](10) NOT NULL,
	[Price] [int] NULL,
	[OrderDate] [date] NULL,
	[Status] [bit] NULL,
	[OrderName] [nvarchar](20) NULL,
 CONSTRAINT [PK_OrderDetail] PRIMARY KEY CLUSTERED 
(
	[IdOrder] ASC,
	[IdMember] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Photo]    Script Date: 11/15/2023 1:39:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Photo](
	[id] [int] NULL,
	[photo] [varchar](100) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 11/15/2023 1:39:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[IdProduct] [int] IDENTITY(1,1) NOT NULL,
	[NameOfProducts] [nchar](10) NULL,
	[IdContest] [int] NULL,
	[Status] [bit] NOT NULL,
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[IdProduct] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Rule]    Script Date: 11/15/2023 1:39:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Rule](
	[IdRule] [int] IDENTITY(1,1) NOT NULL,
	[NameOfRule] [nvarchar](50) NOT NULL,
	[DetailOfRule] [nvarchar](max) NOT NULL,
	[Status] [bit] NOT NULL,
 CONSTRAINT [PK_Rule] PRIMARY KEY CLUSTERED 
(
	[IdRule] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TypeOfUserRole]    Script Date: 11/15/2023 1:39:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TypeOfUserRole](
	[UserRole] [int] NOT NULL,
	[TypeOfUserRole] [nchar](10) NULL,
 CONSTRAINT [PK_TypeOfUserRole] PRIMARY KEY CLUSTERED 
(
	[UserRole] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 11/15/2023 1:39:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[UserName] [nchar](10) NOT NULL,
	[UserPassword] [nchar](20) NOT NULL,
	[UserGmail] [nchar](50) NULL,
	[UserRole] [int] NOT NULL,
	[Status] [bit] NOT NULL,
 CONSTRAINT [PK_User_1] PRIMARY KEY CLUSTERED 
(
	[UserName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Bird] ON 

INSERT [dbo].[Bird] ([IdBird], [NameOfBird], [Species], [Description], [Point], [Status], [IdMember], [Gender], [Win], [Lose], [Tie], [MatchNumber], [PhotoPath]) VALUES (1, N'Chào Mào đuôi ngắn', N'Chào Mào', NULL, 1201, 1, N'DanhTran  ', 1, 20, 8, 2, 30, N'http://res.cloudinary.com/djrmi26ce/image/upload/v1699986622/hflco4b6criv3fcrenqx.jpg')
INSERT [dbo].[Bird] ([IdBird], [NameOfBird], [Species], [Description], [Point], [Status], [IdMember], [Gender], [Win], [Lose], [Tie], [MatchNumber], [PhotoPath]) VALUES (2, N'Chào Mào đuôi hồng', N'Chào Mào', NULL, 1239, 1, N'DanhTran  ', 1, 24, 7, 8, 39, N'http://res.cloudinary.com/djrmi26ce/image/upload/v1699986634/t5ojqs6xdvmozpjtmbog.jpg')
INSERT [dbo].[Bird] ([IdBird], [NameOfBird], [Species], [Description], [Point], [Status], [IdMember], [Gender], [Win], [Lose], [Tie], [MatchNumber], [PhotoPath]) VALUES (3, N'Cháo gà', N'Chào Mào', NULL, 1492, 1, N'HiepThuan ', 1, 35, 12, 9, 56, N'FE/img/defaultforsure.png')
INSERT [dbo].[Bird] ([IdBird], [NameOfBird], [Species], [Description], [Point], [Status], [IdMember], [Gender], [Win], [Lose], [Tie], [MatchNumber], [PhotoPath]) VALUES (4, N'Cháo vịt', N'Chào Mào', NULL, 1747, 1, N'HiepThuan ', 1, 45, 12, 8, 65, N'FE/img/defaultforsure.png')
INSERT [dbo].[Bird] ([IdBird], [NameOfBird], [Species], [Description], [Point], [Status], [IdMember], [Gender], [Win], [Lose], [Tie], [MatchNumber], [PhotoPath]) VALUES (5, N'Chào Mào mỏ vet', N'Chào Mào', NULL, 1201, 0, N'HuyBui    ', 1, 10, 2, 1, 13, N'FE/img/defaultforsure.png')
INSERT [dbo].[Bird] ([IdBird], [NameOfBird], [Species], [Description], [Point], [Status], [IdMember], [Gender], [Win], [Lose], [Tie], [MatchNumber], [PhotoPath]) VALUES (6, N'Chào Mào đuôi hồng', N'Chào Mào', NULL, 2500, 1, N'HuyLe     ', 0, 47, 1, 11, 59, N'http://res.cloudinary.com/djrmi26ce/image/upload/v1699986506/d2xqmes1pfebh7soj88v.jpg')
INSERT [dbo].[Bird] ([IdBird], [NameOfBird], [Species], [Description], [Point], [Status], [IdMember], [Gender], [Win], [Lose], [Tie], [MatchNumber], [PhotoPath]) VALUES (7, N'Tinder', N'Chào Mào', NULL, 1689, 1, N'HuyLe     ', 0, 27, 2, 0, 29, N'FE/img/defaultforsure.png')
INSERT [dbo].[Bird] ([IdBird], [NameOfBird], [Species], [Description], [Point], [Status], [IdMember], [Gender], [Win], [Lose], [Tie], [MatchNumber], [PhotoPath]) VALUES (8, N'Linda', N'Chào Mào', NULL, 1981, 0, N'DanhTran  ', 0, 35, 6, 19, 60, N'FE/img/defaultforsure.png')
INSERT [dbo].[Bird] ([IdBird], [NameOfBird], [Species], [Description], [Point], [Status], [IdMember], [Gender], [Win], [Lose], [Tie], [MatchNumber], [PhotoPath]) VALUES (9, N'Điêu Thuyền', N'Chào Mào', NULL, 1492, 1, N'DanhTran  ', 1, 30, 11, 4, 45, N'http://res.cloudinary.com/djrmi26ce/image/upload/v1699986663/sia1f15qshs9nzdyaoie.jpg')
INSERT [dbo].[Bird] ([IdBird], [NameOfBird], [Species], [Description], [Point], [Status], [IdMember], [Gender], [Win], [Lose], [Tie], [MatchNumber], [PhotoPath]) VALUES (10, N'Chiến Báo', N'Chào Mào', NULL, 1985, 1, N'DanhTran  ', 1, 33, 2, 10, 45, N'http://res.cloudinary.com/djrmi26ce/image/upload/v1699986434/wthji6q04ftrx7qhiztj.jpg')
INSERT [dbo].[Bird] ([IdBird], [NameOfBird], [Species], [Description], [Point], [Status], [IdMember], [Gender], [Win], [Lose], [Tie], [MatchNumber], [PhotoPath]) VALUES (11, N'Thunder', N'Chào Mào', N'', 1452, 1, N'DanhTran  ', 0, 25, 13, 4, 42, N'http://res.cloudinary.com/djrmi26ce/image/upload/v1699986706/z1clvbhlssahjjqab2hv.jpg')
INSERT [dbo].[Bird] ([IdBird], [NameOfBird], [Species], [Description], [Point], [Status], [IdMember], [Gender], [Win], [Lose], [Tie], [MatchNumber], [PhotoPath]) VALUES (12, N'Bạch Quyên', N'Chào Mào', NULL, 1599, 1, N'DanhTran  ', 1, 25, 9, 3, 37, N'http://res.cloudinary.com/djrmi26ce/image/upload/v1699986674/tyytjnbsi9oh5vksnslj.jpg')
INSERT [dbo].[Bird] ([IdBird], [NameOfBird], [Species], [Description], [Point], [Status], [IdMember], [Gender], [Win], [Lose], [Tie], [MatchNumber], [PhotoPath]) VALUES (13, N'Tiểu Long', N'Chào Mào', NULL, 1551, 1, N'HiepThuan ', 0, 29, 10, 12, 51, N'FE/img/defaultforsure.png')
INSERT [dbo].[Bird] ([IdBird], [NameOfBird], [Species], [Description], [Point], [Status], [IdMember], [Gender], [Win], [Lose], [Tie], [MatchNumber], [PhotoPath]) VALUES (14, N'Hạc Tiên', N'Chào Mào', NULL, 1536, 1, N'HiepThuan ', 1, 26, 9, 15, 50, N'FE/img/defaultforsure.png')
INSERT [dbo].[Bird] ([IdBird], [NameOfBird], [Species], [Description], [Point], [Status], [IdMember], [Gender], [Win], [Lose], [Tie], [MatchNumber], [PhotoPath]) VALUES (15, N'Bắp Cải', N'Chào Mào', NULL, 1082, 1, N'HiepThuan ', 0, 10, 4, 2, 16, N'FE/img/defaultforsure.png')
INSERT [dbo].[Bird] ([IdBird], [NameOfBird], [Species], [Description], [Point], [Status], [IdMember], [Gender], [Win], [Lose], [Tie], [MatchNumber], [PhotoPath]) VALUES (16, N'Sói Xám', N'Chào Mào', NULL, 1978, 1, N'HiepThuan ', 0, 37, 4, 19, 60, N'http://res.cloudinary.com/djrmi26ce/image/upload/v1699986409/suzpdvy2ju1d8b2kwvgt.jpg')
INSERT [dbo].[Bird] ([IdBird], [NameOfBird], [Species], [Description], [Point], [Status], [IdMember], [Gender], [Win], [Lose], [Tie], [MatchNumber], [PhotoPath]) VALUES (17, N'Hoàng Hôn', N'Chào Mào', NULL, 1032, 1, N'HiepThuan ', 0, 15, 11, 7, 33, N'FE/img/defaultforsure.png')
INSERT [dbo].[Bird] ([IdBird], [NameOfBird], [Species], [Description], [Point], [Status], [IdMember], [Gender], [Win], [Lose], [Tie], [MatchNumber], [PhotoPath]) VALUES (18, N'Băng Tuyết', N'Chào Mào', NULL, 879, 1, N'HuyBui    ', 1, 10, 14, 2, 26, N'FE/img/defaultforsure.png')
INSERT [dbo].[Bird] ([IdBird], [NameOfBird], [Species], [Description], [Point], [Status], [IdMember], [Gender], [Win], [Lose], [Tie], [MatchNumber], [PhotoPath]) VALUES (19, N'Ngọc Lan', N'Chào Mào', NULL, 1115, 0, N'HuyBui    ', 0, 8, 6, 2, 16, N'FE/img/defaultforsure.png')
INSERT [dbo].[Bird] ([IdBird], [NameOfBird], [Species], [Description], [Point], [Status], [IdMember], [Gender], [Win], [Lose], [Tie], [MatchNumber], [PhotoPath]) VALUES (20, N'Cỏ May', N'Chào Mào', NULL, 1827, 1, N'HuyBui    ', 1, 33, 2, 15, 50, N'FE/img/defaultforsure.png')
INSERT [dbo].[Bird] ([IdBird], [NameOfBird], [Species], [Description], [Point], [Status], [IdMember], [Gender], [Win], [Lose], [Tie], [MatchNumber], [PhotoPath]) VALUES (21, N'Thần Sét', N'Chào Mào', NULL, 1923, 1, N'HuyBui    ', 1, 37, 4, 8, 49, N'FE/img/defaultforsure.png')
INSERT [dbo].[Bird] ([IdBird], [NameOfBird], [Species], [Description], [Point], [Status], [IdMember], [Gender], [Win], [Lose], [Tie], [MatchNumber], [PhotoPath]) VALUES (22, N'Nguyệt Quế', N'Chào Mào', NULL, 1580, 1, N'HuyLe     ', 0, 26, 4, 5, 36, N'FE/img/defaultforsure.png')
INSERT [dbo].[Bird] ([IdBird], [NameOfBird], [Species], [Description], [Point], [Status], [IdMember], [Gender], [Win], [Lose], [Tie], [MatchNumber], [PhotoPath]) VALUES (23, N'Hồng Mộng', N'Chào Mào', NULL, 992, 1, N'HuyLe     ', 0, 7, 9, 2, 18, N'FE/img/defaultforsure.png')
INSERT [dbo].[Bird] ([IdBird], [NameOfBird], [Species], [Description], [Point], [Status], [IdMember], [Gender], [Win], [Lose], [Tie], [MatchNumber], [PhotoPath]) VALUES (24, N'Thanh Long', N'Chào Mào', NULL, 1073, 1, N'HuyLe     ', 1, 4, 2, 2, 8, N'FE/img/defaultforsure.png')
INSERT [dbo].[Bird] ([IdBird], [NameOfBird], [Species], [Description], [Point], [Status], [IdMember], [Gender], [Win], [Lose], [Tie], [MatchNumber], [PhotoPath]) VALUES (25, N'Tinh Tú', N'Chào Mào', NULL, 1165, 1, N'KhangNguye', 0, 10, 4, 6, 20, N'FE/img/defaultforsure.png')
INSERT [dbo].[Bird] ([IdBird], [NameOfBird], [Species], [Description], [Point], [Status], [IdMember], [Gender], [Win], [Lose], [Tie], [MatchNumber], [PhotoPath]) VALUES (26, N'Đại Dương', N'Chào Mào', NULL, 1734, 1, N'KhangNguye', 1, 30, 5, 20, 55, N'FE/img/defaultforsure.png')
INSERT [dbo].[Bird] ([IdBird], [NameOfBird], [Species], [Description], [Point], [Status], [IdMember], [Gender], [Win], [Lose], [Tie], [MatchNumber], [PhotoPath]) VALUES (27, N'Bé Xíu', N'Chào Mào', NULL, 1746, 1, N'KhangNguye', 0, 25, 2, 4, 31, N'FE/img/defaultforsure.png')
INSERT [dbo].[Bird] ([IdBird], [NameOfBird], [Species], [Description], [Point], [Status], [IdMember], [Gender], [Win], [Lose], [Tie], [MatchNumber], [PhotoPath]) VALUES (28, N'Nấm Rơm', N'Chào Mào', NULL, 1439, 1, N'KhangNguye', 0, 15, 7, 8, 30, N'FE/img/defaultforsure.png')
INSERT [dbo].[Bird] ([IdBird], [NameOfBird], [Species], [Description], [Point], [Status], [IdMember], [Gender], [Win], [Lose], [Tie], [MatchNumber], [PhotoPath]) VALUES (29, N'Pop Boy', N'Chào mào', NULL, 1190, 1, N'DangKhoa  ', NULL, 11, 7, 0, 18, N'FE/img/defaultforsure.png')
INSERT [dbo].[Bird] ([IdBird], [NameOfBird], [Species], [Description], [Point], [Status], [IdMember], [Gender], [Win], [Lose], [Tie], [MatchNumber], [PhotoPath]) VALUES (30, N'Nhật Huy', N'Chào mào', NULL, 1566, 0, N'DanhTran  ', NULL, 16, 6, 1, 23, N'FE/img/defaultforsure.png')
INSERT [dbo].[Bird] ([IdBird], [NameOfBird], [Species], [Description], [Point], [Status], [IdMember], [Gender], [Win], [Lose], [Tie], [MatchNumber], [PhotoPath]) VALUES (31, N'Đậu đỏ', N'Chào mào', NULL, 1332, 1, N'DangKhoa  ', NULL, 14, 9, 0, 23, N'FE/img/defaultforsure.png')
INSERT [dbo].[Bird] ([IdBird], [NameOfBird], [Species], [Description], [Point], [Status], [IdMember], [Gender], [Win], [Lose], [Tie], [MatchNumber], [PhotoPath]) VALUES (32, N'Gầm thét', N'Chào mào', NULL, 908, 1, N'DangKhoa  ', NULL, 7, 8, 0, 15, N'FE/img/defaultforsure.png')
INSERT [dbo].[Bird] ([IdBird], [NameOfBird], [Species], [Description], [Point], [Status], [IdMember], [Gender], [Win], [Lose], [Tie], [MatchNumber], [PhotoPath]) VALUES (33, N'DangGom', N'Chào mào', NULL, 1453, 1, N'DangKhoa  ', NULL, 15, 6, 0, 21, N'FE/img/defaultforsure.png')
INSERT [dbo].[Bird] ([IdBird], [NameOfBird], [Species], [Description], [Point], [Status], [IdMember], [Gender], [Win], [Lose], [Tie], [MatchNumber], [PhotoPath]) VALUES (37, N'Explorer', N'Chào mào', NULL, 970, 1, N'HuuThang  ', 1, 10, 8, 0, 18, N'FE/img/defaultforsure.png')
INSERT [dbo].[Bird] ([IdBird], [NameOfBird], [Species], [Description], [Point], [Status], [IdMember], [Gender], [Win], [Lose], [Tie], [MatchNumber], [PhotoPath]) VALUES (39, N'Nuller', N'Chào mào', NULL, 1000, 1, N'HuuThang  ', 1, 0, 0, 0, 0, N'FE/img/defaultforsure.png')
INSERT [dbo].[Bird] ([IdBird], [NameOfBird], [Species], [Description], [Point], [Status], [IdMember], [Gender], [Win], [Lose], [Tie], [MatchNumber], [PhotoPath]) VALUES (40, N'MàoCao', N'Chào mào', N'tôi thích con này vãi', 1065, 1, N'HuuThang  ', 1, 6, 1, 0, 7, N'http://res.cloudinary.com/djrmi26ce/image/upload/v1699376540/g4xbkdvk3tsnmyvczhsu.webp')
INSERT [dbo].[Bird] ([IdBird], [NameOfBird], [Species], [Description], [Point], [Status], [IdMember], [Gender], [Win], [Lose], [Tie], [MatchNumber], [PhotoPath]) VALUES (41, N'Dreamer', N'Chào mào', N'', 1356, 1, N'huuThanh  ', 1, 9, 3, 0, 12, N'FE/img/defaultforsure.png')
INSERT [dbo].[Bird] ([IdBird], [NameOfBird], [Species], [Description], [Point], [Status], [IdMember], [Gender], [Win], [Lose], [Tie], [MatchNumber], [PhotoPath]) VALUES (42, N'UtBau', N'chào mào', NULL, 1190, 1, N'HuuThanh  ', 1, 8, 1, 0, 9, N'FE/img/defaultforsure.png')
INSERT [dbo].[Bird] ([IdBird], [NameOfBird], [Species], [Description], [Point], [Status], [IdMember], [Gender], [Win], [Lose], [Tie], [MatchNumber], [PhotoPath]) VALUES (43, N'maoWild', N'chào mào', NULL, 1598, 1, N'KhanhVy   ', 1, 10, 4, 1, 15, N'FE/img/defaultforsure.png')
INSERT [dbo].[Bird] ([IdBird], [NameOfBird], [Species], [Description], [Point], [Status], [IdMember], [Gender], [Win], [Lose], [Tie], [MatchNumber], [PhotoPath]) VALUES (44, N'PinkEye', N'Chào mào', NULL, 1668, 1, N'KhanhVy   ', 0, 20, 5, 0, 25, N'FE/img/defaultforsure.png')
INSERT [dbo].[Bird] ([IdBird], [NameOfBird], [Species], [Description], [Point], [Status], [IdMember], [Gender], [Win], [Lose], [Tie], [MatchNumber], [PhotoPath]) VALUES (50, N'TyThy', N'Chào mào', NULL, 1298, 1, N'MinhNhu   ', 0, 7, 3, 0, 10, N'FE/img/defaultforsure.png')
INSERT [dbo].[Bird] ([IdBird], [NameOfBird], [Species], [Description], [Point], [Status], [IdMember], [Gender], [Win], [Lose], [Tie], [MatchNumber], [PhotoPath]) VALUES (51, N'HươngĐêm', N'Chào mào', NULL, 1769, 1, N'MinhNhu   ', 1, 27, 8, 0, 35, N'FE/img/defaultforsure.png')
INSERT [dbo].[Bird] ([IdBird], [NameOfBird], [Species], [Description], [Point], [Status], [IdMember], [Gender], [Win], [Lose], [Tie], [MatchNumber], [PhotoPath]) VALUES (52, N'ThiênThầnNhỏ', N'Chào mào', NULL, 1440, 1, N'MinhNgoc  ', 0, 18, 9, 0, 27, N'FE/img/defaultforsure.png')
INSERT [dbo].[Bird] ([IdBird], [NameOfBird], [Species], [Description], [Point], [Status], [IdMember], [Gender], [Win], [Lose], [Tie], [MatchNumber], [PhotoPath]) VALUES (53, N'Starry', N'Chào mào', NULL, 1043, 1, N'MinhNgoc  ', 1, 2, 0, 0, 2, N'FE/img/defaultforsure.png')
INSERT [dbo].[Bird] ([IdBird], [NameOfBird], [Species], [Description], [Point], [Status], [IdMember], [Gender], [Win], [Lose], [Tie], [MatchNumber], [PhotoPath]) VALUES (54, N'ChimCun', N'Chào Mào', N'Con chim giống con cún', 1000, 0, N'DanhTran  ', 0, 0, 0, 0, 0, N'default.png')
INSERT [dbo].[Bird] ([IdBird], [NameOfBird], [Species], [Description], [Point], [Status], [IdMember], [Gender], [Win], [Lose], [Tie], [MatchNumber], [PhotoPath]) VALUES (55, N'FF', N'Chào Mào', N'chim đánh auto thua', 1000, 0, N'DanhTran  ', 1, 0, 0, 0, 0, N'default.png')
INSERT [dbo].[Bird] ([IdBird], [NameOfBird], [Species], [Description], [Point], [Status], [IdMember], [Gender], [Win], [Lose], [Tie], [MatchNumber], [PhotoPath]) VALUES (56, N'demovuive', N'Chào Mào', N'Con chim giống con cún', 1000, 0, N'DanhTran  ', 1, 0, 0, 0, 0, N'FE/img/defaultforsure.png')
SET IDENTITY_INSERT [dbo].[Bird] OFF
GO
INSERT [dbo].[BirdContest] ([IdBird], [IdContest], [Rank], [BeforePoint], [AfterPoint], [Status], [CheckIn], [CheckInCode]) VALUES (1, 1, NULL, 1000, NULL, 1, NULL, N'8sasi882  ')
INSERT [dbo].[BirdContest] ([IdBird], [IdContest], [Rank], [BeforePoint], [AfterPoint], [Status], [CheckIn], [CheckInCode]) VALUES (2, 1, NULL, 600, NULL, 1, NULL, N'sdfa4fdf  ')
INSERT [dbo].[BirdContest] ([IdBird], [IdContest], [Rank], [BeforePoint], [AfterPoint], [Status], [CheckIn], [CheckInCode]) VALUES (3, 1, NULL, 2000, NULL, 1, NULL, N'adw34w    ')
INSERT [dbo].[BirdContest] ([IdBird], [IdContest], [Rank], [BeforePoint], [AfterPoint], [Status], [CheckIn], [CheckInCode]) VALUES (4, 1, NULL, 1289, NULL, 1, NULL, N'ad233dfa  ')
INSERT [dbo].[BirdContest] ([IdBird], [IdContest], [Rank], [BeforePoint], [AfterPoint], [Status], [CheckIn], [CheckInCode]) VALUES (5, 1, NULL, 1200, NULL, 1, NULL, N'asdf5dsff ')
INSERT [dbo].[BirdContest] ([IdBird], [IdContest], [Rank], [BeforePoint], [AfterPoint], [Status], [CheckIn], [CheckInCode]) VALUES (6, 2, 1, 2459, 2500, 1, 1, N'afaf65ed  ')
INSERT [dbo].[BirdContest] ([IdBird], [IdContest], [Rank], [BeforePoint], [AfterPoint], [Status], [CheckIn], [CheckInCode]) VALUES (7, 2, 2, 1660, 1689, 1, 1, N'asrw3f33  ')
INSERT [dbo].[BirdContest] ([IdBird], [IdContest], [Rank], [BeforePoint], [AfterPoint], [Status], [CheckIn], [CheckInCode]) VALUES (8, 2, 3, 1956, 1981, 1, NULL, N'aad4h77   ')
INSERT [dbo].[BirdContest] ([IdBird], [IdContest], [Rank], [BeforePoint], [AfterPoint], [Status], [CheckIn], [CheckInCode]) VALUES (9, 3, NULL, 1200, NULL, 1, 1, N'dsfd5wd   ')
INSERT [dbo].[BirdContest] ([IdBird], [IdContest], [Rank], [BeforePoint], [AfterPoint], [Status], [CheckIn], [CheckInCode]) VALUES (10, 3, NULL, 1320, NULL, 1, 1, N'88932rgf  ')
INSERT [dbo].[BirdContest] ([IdBird], [IdContest], [Rank], [BeforePoint], [AfterPoint], [Status], [CheckIn], [CheckInCode]) VALUES (11, 2, 3, 1452, 1452, 1, 1, N'n83c47n   ')
INSERT [dbo].[BirdContest] ([IdBird], [IdContest], [Rank], [BeforePoint], [AfterPoint], [Status], [CheckIn], [CheckInCode]) VALUES (12, 1, NULL, 1579, NULL, 1, 1, N'dqawdd    ')
INSERT [dbo].[BirdContest] ([IdBird], [IdContest], [Rank], [BeforePoint], [AfterPoint], [Status], [CheckIn], [CheckInCode]) VALUES (13, 3, NULL, 1219, NULL, 1, NULL, N'23fgdfsa  ')
INSERT [dbo].[BirdContest] ([IdBird], [IdContest], [Rank], [BeforePoint], [AfterPoint], [Status], [CheckIn], [CheckInCode]) VALUES (14, 3, NULL, 1436, NULL, 1, NULL, N'328hbsd   ')
INSERT [dbo].[BirdContest] ([IdBird], [IdContest], [Rank], [BeforePoint], [AfterPoint], [Status], [CheckIn], [CheckInCode]) VALUES (15, 2, NULL, 220, NULL, 1, NULL, N'83dhsaa   ')
INSERT [dbo].[BirdContest] ([IdBird], [IdContest], [Rank], [BeforePoint], [AfterPoint], [Status], [CheckIn], [CheckInCode]) VALUES (16, 3, NULL, 120, NULL, 1, NULL, N'3883dsd   ')
INSERT [dbo].[BirdContest] ([IdBird], [IdContest], [Rank], [BeforePoint], [AfterPoint], [Status], [CheckIn], [CheckInCode]) VALUES (17, 2, 4, 1061, 1032, 1, 1, N'j89dsdsa  ')
INSERT [dbo].[BirdContest] ([IdBird], [IdContest], [Rank], [BeforePoint], [AfterPoint], [Status], [CheckIn], [CheckInCode]) VALUES (18, 4, NULL, 462, NULL, 1, NULL, N'asbjas78  ')
INSERT [dbo].[BirdContest] ([IdBird], [IdContest], [Rank], [BeforePoint], [AfterPoint], [Status], [CheckIn], [CheckInCode]) VALUES (19, 2, 5, 1156, 1115, 1, 1, N'kjnsd656  ')
INSERT [dbo].[BirdContest] ([IdBird], [IdContest], [Rank], [BeforePoint], [AfterPoint], [Status], [CheckIn], [CheckInCode]) VALUES (20, 4, NULL, 99, NULL, 1, NULL, N'dsasdjn7  ')
INSERT [dbo].[BirdContest] ([IdBird], [IdContest], [Rank], [BeforePoint], [AfterPoint], [Status], [CheckIn], [CheckInCode]) VALUES (21, 2, NULL, 70, NULL, 1, NULL, N'asdhbj7s  ')
INSERT [dbo].[BirdContest] ([IdBird], [IdContest], [Rank], [BeforePoint], [AfterPoint], [Status], [CheckIn], [CheckInCode]) VALUES (22, 4, NULL, 188, NULL, 1, NULL, N'bjasd8as  ')
INSERT [dbo].[BirdContest] ([IdBird], [IdContest], [Rank], [BeforePoint], [AfterPoint], [Status], [CheckIn], [CheckInCode]) VALUES (23, 4, NULL, 127, NULL, 1, NULL, N'adjab8ss  ')
INSERT [dbo].[BirdContest] ([IdBird], [IdContest], [Rank], [BeforePoint], [AfterPoint], [Status], [CheckIn], [CheckInCode]) VALUES (2, 4, NULL, 1239, NULL, 1, 1, N'757f75a4-e')
INSERT [dbo].[BirdContest] ([IdBird], [IdContest], [Rank], [BeforePoint], [AfterPoint], [Status], [CheckIn], [CheckInCode]) VALUES (24, 1, NULL, 1093, NULL, 1, 1, N'e4bac343-0')
INSERT [dbo].[BirdContest] ([IdBird], [IdContest], [Rank], [BeforePoint], [AfterPoint], [Status], [CheckIn], [CheckInCode]) VALUES (31, 4, NULL, 1000, NULL, 1, 0, N'9afc7215-8')
INSERT [dbo].[BirdContest] ([IdBird], [IdContest], [Rank], [BeforePoint], [AfterPoint], [Status], [CheckIn], [CheckInCode]) VALUES (39, 5, NULL, 1000, NULL, 1, 0, N'90602f89-2')
INSERT [dbo].[BirdContest] ([IdBird], [IdContest], [Rank], [BeforePoint], [AfterPoint], [Status], [CheckIn], [CheckInCode]) VALUES (11, 4, NULL, 1597, NULL, 1, 0, N'5bd751c5-f')
INSERT [dbo].[BirdContest] ([IdBird], [IdContest], [Rank], [BeforePoint], [AfterPoint], [Status], [CheckIn], [CheckInCode]) VALUES (6, 3, 0, 0, 0, 1, 1, N'yuasdag   ')
INSERT [dbo].[BirdContest] ([IdBird], [IdContest], [Rank], [BeforePoint], [AfterPoint], [Status], [CheckIn], [CheckInCode]) VALUES (25, 3, 0, 0, 0, 1, 1, N'ghjadas   ')
INSERT [dbo].[BirdContest] ([IdBird], [IdContest], [Rank], [BeforePoint], [AfterPoint], [Status], [CheckIn], [CheckInCode]) VALUES (31, 3, 0, 0, 0, 1, 1, N'jashdjkas ')
INSERT [dbo].[BirdContest] ([IdBird], [IdContest], [Rank], [BeforePoint], [AfterPoint], [Status], [CheckIn], [CheckInCode]) VALUES (9, 1, 0, 0, 0, 1, 1, N'ydyas7sa  ')
INSERT [dbo].[BirdContest] ([IdBird], [IdContest], [Rank], [BeforePoint], [AfterPoint], [Status], [CheckIn], [CheckInCode]) VALUES (42, 1, 0, 0, 0, 1, 1, N'uiksdh    ')
INSERT [dbo].[BirdContest] ([IdBird], [IdContest], [Rank], [BeforePoint], [AfterPoint], [Status], [CheckIn], [CheckInCode]) VALUES (12, 5, NULL, 1599, NULL, 1, 0, N'ae241023-7')
INSERT [dbo].[BirdContest] ([IdBird], [IdContest], [Rank], [BeforePoint], [AfterPoint], [Status], [CheckIn], [CheckInCode]) VALUES (1, 14, NULL, 0, NULL, 1, NULL, N'dasdsds   ')
INSERT [dbo].[BirdContest] ([IdBird], [IdContest], [Rank], [BeforePoint], [AfterPoint], [Status], [CheckIn], [CheckInCode]) VALUES (13, 14, NULL, 0, NULL, 1, NULL, N'hjsagd    ')
INSERT [dbo].[BirdContest] ([IdBird], [IdContest], [Rank], [BeforePoint], [AfterPoint], [Status], [CheckIn], [CheckInCode]) VALUES (28, 14, NULL, 0, NULL, 1, NULL, N'hjhjfhjs  ')
INSERT [dbo].[BirdContest] ([IdBird], [IdContest], [Rank], [BeforePoint], [AfterPoint], [Status], [CheckIn], [CheckInCode]) VALUES (40, 14, NULL, 0, NULL, 1, NULL, N'trassaa   ')
INSERT [dbo].[BirdContest] ([IdBird], [IdContest], [Rank], [BeforePoint], [AfterPoint], [Status], [CheckIn], [CheckInCode]) VALUES (2, 15, NULL, 0, NULL, 1, NULL, N'ssddjsd   ')
INSERT [dbo].[BirdContest] ([IdBird], [IdContest], [Rank], [BeforePoint], [AfterPoint], [Status], [CheckIn], [CheckInCode]) VALUES (14, 15, NULL, 0, NULL, 1, NULL, N'jghbkjk   ')
INSERT [dbo].[BirdContest] ([IdBird], [IdContest], [Rank], [BeforePoint], [AfterPoint], [Status], [CheckIn], [CheckInCode]) VALUES (33, 15, NULL, 0, NULL, 1, NULL, N'hhgg      ')
INSERT [dbo].[BirdContest] ([IdBird], [IdContest], [Rank], [BeforePoint], [AfterPoint], [Status], [CheckIn], [CheckInCode]) VALUES (29, 15, NULL, 0, NULL, 1, NULL, N'hgjhgjhg  ')
INSERT [dbo].[BirdContest] ([IdBird], [IdContest], [Rank], [BeforePoint], [AfterPoint], [Status], [CheckIn], [CheckInCode]) VALUES (11, 7, 1, 1200, 1250, 1, 1, N'huhasaaa  ')
INSERT [dbo].[BirdContest] ([IdBird], [IdContest], [Rank], [BeforePoint], [AfterPoint], [Status], [CheckIn], [CheckInCode]) VALUES (17, 7, 2, 1527, 1542, 1, 1, N'ioadhjas  ')
INSERT [dbo].[BirdContest] ([IdBird], [IdContest], [Rank], [BeforePoint], [AfterPoint], [Status], [CheckIn], [CheckInCode]) VALUES (53, 7, 3, 1220, 1250, 1, 1, N'jsdaasss  ')
INSERT [dbo].[BirdContest] ([IdBird], [IdContest], [Rank], [BeforePoint], [AfterPoint], [Status], [CheckIn], [CheckInCode]) VALUES (44, 7, 4, 1198, 1174, 1, 1, N'klasdioo  ')
INSERT [dbo].[BirdContest] ([IdBird], [IdContest], [Rank], [BeforePoint], [AfterPoint], [Status], [CheckIn], [CheckInCode]) VALUES (37, 7, 5, 1297, 1263, 1, 1, N'jhksasda  ')
INSERT [dbo].[BirdContest] ([IdBird], [IdContest], [Rank], [BeforePoint], [AfterPoint], [Status], [CheckIn], [CheckInCode]) VALUES (2, 7, 6, 1432, 1386, 1, 1, N'jhsdhjksa ')
INSERT [dbo].[BirdContest] ([IdBird], [IdContest], [Rank], [BeforePoint], [AfterPoint], [Status], [CheckIn], [CheckInCode]) VALUES (14, 13, 1, 1543, 1594, 1, 1, N'ksjdasdas ')
INSERT [dbo].[BirdContest] ([IdBird], [IdContest], [Rank], [BeforePoint], [AfterPoint], [Status], [CheckIn], [CheckInCode]) VALUES (40, 13, 2, 1430, 1472, 1, 1, N'asdndknn  ')
INSERT [dbo].[BirdContest] ([IdBird], [IdContest], [Rank], [BeforePoint], [AfterPoint], [Status], [CheckIn], [CheckInCode]) VALUES (53, 13, 3, 1564, 1564, 1, 1, N'jkdsajsa  ')
INSERT [dbo].[BirdContest] ([IdBird], [IdContest], [Rank], [BeforePoint], [AfterPoint], [Status], [CheckIn], [CheckInCode]) VALUES (6, 13, 4, 1455, 1416, 1, 1, N'qqweasd   ')
INSERT [dbo].[BirdContest] ([IdBird], [IdContest], [Rank], [BeforePoint], [AfterPoint], [Status], [CheckIn], [CheckInCode]) VALUES (23, 13, 5, 1534, 1498, 1, 1, N'qbnisba   ')
GO
SET IDENTITY_INSERT [dbo].[Contest] ON 

INSERT [dbo].[Contest] ([IdContest], [NameOfContest], [Date], [LocationId], [Status], [Factor], [MinPoint], [MaxPoint], [MaxParticipant], [ParticipatingFee], [UserName], [StatusOfContest], [MaxBirdJoin], [StartTime], [EndTime]) VALUES (1, N'Đấu chim chào mào - BC01', CAST(N'2023-11-10' AS Date), 1, 1, 1, 600, 900, 15, 100000, N'Manager   ', 3, 2, CAST(N'10:00:00' AS Time), CAST(N'13:00:00' AS Time))
INSERT [dbo].[Contest] ([IdContest], [NameOfContest], [Date], [LocationId], [Status], [Factor], [MinPoint], [MaxPoint], [MaxParticipant], [ParticipatingFee], [UserName], [StatusOfContest], [MaxBirdJoin], [StartTime], [EndTime]) VALUES (2, N'Đấu chim chào mào - BC02', CAST(N'2023-11-10' AS Date), 5, 1, 2, 800, 1100, 15, 200000, N'Manager   ', 0, 2, CAST(N'05:00:00' AS Time), CAST(N'07:00:00' AS Time))
INSERT [dbo].[Contest] ([IdContest], [NameOfContest], [Date], [LocationId], [Status], [Factor], [MinPoint], [MaxPoint], [MaxParticipant], [ParticipatingFee], [UserName], [StatusOfContest], [MaxBirdJoin], [StartTime], [EndTime]) VALUES (3, N'Đấu chim chào mào - BC03', CAST(N'2023-11-10' AS Date), 2, 1, 2, 750, 1000, 15, 100000, N'Manager   ', 0, 3, CAST(N'08:00:00' AS Time), CAST(N'11:00:00' AS Time))
INSERT [dbo].[Contest] ([IdContest], [NameOfContest], [Date], [LocationId], [Status], [Factor], [MinPoint], [MaxPoint], [MaxParticipant], [ParticipatingFee], [UserName], [StatusOfContest], [MaxBirdJoin], [StartTime], [EndTime]) VALUES (4, N'Đấu chim chào mào - BC04', CAST(N'2023-12-10' AS Date), 6, 1, 2, 900, 1200, 15, 100000, N'Manager   ', 1, 1, CAST(N'16:30:00' AS Time), CAST(N'19:00:00' AS Time))
INSERT [dbo].[Contest] ([IdContest], [NameOfContest], [Date], [LocationId], [Status], [Factor], [MinPoint], [MaxPoint], [MaxParticipant], [ParticipatingFee], [UserName], [StatusOfContest], [MaxBirdJoin], [StartTime], [EndTime]) VALUES (5, N'Con Chim Ấn Tượng - BC05', CAST(N'2023-11-26' AS Date), 3, 1, 1, 700, 1100, 25, 100000, N'Manager   ', 1, 2, CAST(N'16:00:00' AS Time), CAST(N'19:00:00' AS Time))
INSERT [dbo].[Contest] ([IdContest], [NameOfContest], [Date], [LocationId], [Status], [Factor], [MinPoint], [MaxPoint], [MaxParticipant], [ParticipatingFee], [UserName], [StatusOfContest], [MaxBirdJoin], [StartTime], [EndTime]) VALUES (7, N'Tiếng hót chim truyền hình - BC06', CAST(N'2023-11-01' AS Date), 4, 1, 1, 850, 1000, 15, 100000, N'Manager   ', 4, 3, CAST(N'14:00:00' AS Time), CAST(N'17:00:00' AS Time))
INSERT [dbo].[Contest] ([IdContest], [NameOfContest], [Date], [LocationId], [Status], [Factor], [MinPoint], [MaxPoint], [MaxParticipant], [ParticipatingFee], [UserName], [StatusOfContest], [MaxBirdJoin], [StartTime], [EndTime]) VALUES (13, N'Chào Mào Cần Thơ - BC07', CAST(N'2023-10-20' AS Date), 2, 1, 1, 700, 980, 15, 200000, N'Manager   ', 4, 2, CAST(N'14:00:00' AS Time), CAST(N'17:00:00' AS Time))
INSERT [dbo].[Contest] ([IdContest], [NameOfContest], [Date], [LocationId], [Status], [Factor], [MinPoint], [MaxPoint], [MaxParticipant], [ParticipatingFee], [UserName], [StatusOfContest], [MaxBirdJoin], [StartTime], [EndTime]) VALUES (14, N'Chào mào siêu cúp - BC 08', CAST(N'2023-11-10' AS Date), 2, 1, 2, 1500, 1800, 12, 200000, N'manager   ', 0, 2, CAST(N'23:45:00' AS Time), CAST(N'00:00:00' AS Time))
INSERT [dbo].[Contest] ([IdContest], [NameOfContest], [Date], [LocationId], [Status], [Factor], [MinPoint], [MaxPoint], [MaxParticipant], [ParticipatingFee], [UserName], [StatusOfContest], [MaxBirdJoin], [StartTime], [EndTime]) VALUES (15, N'Chào mào siêu cúp - BC 09', CAST(N'2023-11-10' AS Date), 2, 1, 2, 1200, 1500, 12, 75000, N'manager   ', 0, 3, CAST(N'22:00:00' AS Time), CAST(N'23:00:00' AS Time))
INSERT [dbo].[Contest] ([IdContest], [NameOfContest], [Date], [LocationId], [Status], [Factor], [MinPoint], [MaxPoint], [MaxParticipant], [ParticipatingFee], [UserName], [StatusOfContest], [MaxBirdJoin], [StartTime], [EndTime]) VALUES (18, N'Đấu chim chào mào - BC 16', CAST(N'2023-11-10' AS Date), 6, 1, 2, 1500, 1800, 10, 150000, N'Manager   ', 0, 2, CAST(N'16:30:00' AS Time), CAST(N'19:00:00' AS Time))
INSERT [dbo].[Contest] ([IdContest], [NameOfContest], [Date], [LocationId], [Status], [Factor], [MinPoint], [MaxPoint], [MaxParticipant], [ParticipatingFee], [UserName], [StatusOfContest], [MaxBirdJoin], [StartTime], [EndTime]) VALUES (19, N'Đấu chim chào mào - BC 17', CAST(N'2023-12-01' AS Date), 4, 1, 1, 1000, 1300, 10, 75000, N'Manager   ', 1, 3, CAST(N'15:00:00' AS Time), CAST(N'18:00:00' AS Time))
INSERT [dbo].[Contest] ([IdContest], [NameOfContest], [Date], [LocationId], [Status], [Factor], [MinPoint], [MaxPoint], [MaxParticipant], [ParticipatingFee], [UserName], [StatusOfContest], [MaxBirdJoin], [StartTime], [EndTime]) VALUES (20, N'Đấu chim chào mào - BC 18', CAST(N'2023-11-16' AS Date), 5, 1, 1, 1200, 1500, 15, 80000, N'manager   ', 4, 2, CAST(N'15:00:00' AS Time), CAST(N'18:00:00' AS Time))
INSERT [dbo].[Contest] ([IdContest], [NameOfContest], [Date], [LocationId], [Status], [Factor], [MinPoint], [MaxPoint], [MaxParticipant], [ParticipatingFee], [UserName], [StatusOfContest], [MaxBirdJoin], [StartTime], [EndTime]) VALUES (21, N'Đấu chim chào mào - BC 180', CAST(N'2023-11-21' AS Date), 2, 1, 1, 1900, 2200, 12, 100000, N'manager   ', 0, 1, CAST(N'12:00:00' AS Time), CAST(N'16:14:00' AS Time))
SET IDENTITY_INSERT [dbo].[Contest] OFF
GO
SET IDENTITY_INSERT [dbo].[FeedBack] ON 

INSERT [dbo].[FeedBack] ([IdMember], [Description], [IdFeedback]) VALUES (N'DanhTran  ', N'Trận đấu hay và cảm xúc', 1)
INSERT [dbo].[FeedBack] ([IdMember], [Description], [IdFeedback]) VALUES (N'HuyBui    ', N'Chim đẹp và hót tốt', 2)
INSERT [dbo].[FeedBack] ([IdMember], [Description], [IdFeedback]) VALUES (N'KhangNguye', N'Trọng tài chưa đủ chuyên môn', 3)
INSERT [dbo].[FeedBack] ([IdMember], [Description], [IdFeedback]) VALUES (N'DanhTran  ', N'Muốn tham gia thêm nhiều trận đấu', 7)
INSERT [dbo].[FeedBack] ([IdMember], [Description], [IdFeedback]) VALUES (N'HiepThuan ', N'Chuyên nghiệp trong tổ chức', 8)
INSERT [dbo].[FeedBack] ([IdMember], [Description], [IdFeedback]) VALUES (N'HiepThuan ', N'Tuyệt vời', 12)
INSERT [dbo].[FeedBack] ([IdMember], [Description], [IdFeedback]) VALUES (N'MinhNgoc  ', N'Quá dễ với tôi', 13)
INSERT [dbo].[FeedBack] ([IdMember], [Description], [IdFeedback]) VALUES (N'KhanhVy   ', N'Chú chim của tôi là giỏi nhất', 14)
INSERT [dbo].[FeedBack] ([IdMember], [Description], [IdFeedback]) VALUES (N'HuyLe     ', N'Cảm ơn đã cho tôi những trận đấu tuyệt vời', 15)
SET IDENTITY_INSERT [dbo].[FeedBack] OFF
GO
SET IDENTITY_INSERT [dbo].[Location] ON 

INSERT [dbo].[Location] ([LocationId], [Location], [Status], [PhotoPath], [LinkMap]) VALUES (1, N'Cội chim Ku Tôm', 1, NULL, N'https://maps.app.goo.gl/KRixTLpHiWJ4rpQz6')
INSERT [dbo].[Location] ([LocationId], [Location], [Status], [PhotoPath], [LinkMap]) VALUES (2, N'Ca phê Cội Chim', 1, NULL, N'https://maps.app.goo.gl/USJksFjkEbWt1DMZ7')
INSERT [dbo].[Location] ([LocationId], [Location], [Status], [PhotoPath], [LinkMap]) VALUES (3, N'Cà Phê Sân Vườn Cội Chim', 1, NULL, N'https://maps.app.goo.gl/uDQGHAQsmrE5GY2YA')
INSERT [dbo].[Location] ([LocationId], [Location], [Status], [PhotoPath], [LinkMap]) VALUES (4, N'Cội chim Tuấn Vũ', 1, NULL, N'https://maps.app.goo.gl/av8YasygJNNYkTiR7')
INSERT [dbo].[Location] ([LocationId], [Location], [Status], [PhotoPath], [LinkMap]) VALUES (5, N'Cội chim Nhạc Rừng', 1, NULL, N'https://maps.app.goo.gl/JD4W8Ub3PtTqv42k8')
INSERT [dbo].[Location] ([LocationId], [Location], [Status], [PhotoPath], [LinkMap]) VALUES (6, N'Quán Cội Chim', 1, NULL, N'https://maps.app.goo.gl/LKVTf6JWsFqUM3B37')
INSERT [dbo].[Location] ([LocationId], [Location], [Status], [PhotoPath], [LinkMap]) VALUES (7, N'Cội chim chào mào Win 749', 0, NULL, N'https://maps.app.goo.gl/QfpqtmKqa2Nycf5g9')
INSERT [dbo].[Location] ([LocationId], [Location], [Status], [PhotoPath], [LinkMap]) VALUES (8, NULL, 0, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Location] OFF
GO
INSERT [dbo].[Member] ([IdMember], [FullName], [DateOfBirth], [Country], [Phone], [Status], [Gender], [PhotoPath]) VALUES (N'DangKhoa  ', N'Nguyễn Lê Đăng Khoa', CAST(N'2003-11-26' AS Date), N'Tien Giang', N'0987453512', 1, 1, NULL)
INSERT [dbo].[Member] ([IdMember], [FullName], [DateOfBirth], [Country], [Phone], [Status], [Gender], [PhotoPath]) VALUES (N'DanhTran  ', N'Trần Hữu Danh', CAST(N'2003-05-05' AS Date), N'TP.HCM', N'09121312349', 1, 1, N'eDanh.jpg')
INSERT [dbo].[Member] ([IdMember], [FullName], [DateOfBirth], [Country], [Phone], [Status], [Gender], [PhotoPath]) VALUES (N'DucAnh    ', N'Nguyễn Đức Anh', CAST(N'1998-06-06' AS Date), N'Long An', N'0987672535', 1, 1, NULL)
INSERT [dbo].[Member] ([IdMember], [FullName], [DateOfBirth], [Country], [Phone], [Status], [Gender], [PhotoPath]) VALUES (N'DucCanh   ', N'Lê Đức Cảnh', CAST(N'2000-08-15' AS Date), N'Ca mau', N'0985262613', 1, 1, NULL)
INSERT [dbo].[Member] ([IdMember], [FullName], [DateOfBirth], [Country], [Phone], [Status], [Gender], [PhotoPath]) VALUES (N'HiepThuan ', N'Phương Hiệp Thuận', CAST(N'2003-05-05' AS Date), N'TP.HCM', N'0916632413', 1, 1, N'thuanphuong.jpg')
INSERT [dbo].[Member] ([IdMember], [FullName], [DateOfBirth], [Country], [Phone], [Status], [Gender], [PhotoPath]) VALUES (N'HongMai   ', N'Đỗ Hồng Mai', CAST(N'1999-05-17' AS Date), N'Long An', N'0985644353', 1, 0, NULL)
INSERT [dbo].[Member] ([IdMember], [FullName], [DateOfBirth], [Country], [Phone], [Status], [Gender], [PhotoPath]) VALUES (N'huudann   ', N'Hữu Đan', CAST(N'2003-12-02' AS Date), N'Tien Giang', N'9386564762', 1, 1, NULL)
INSERT [dbo].[Member] ([IdMember], [FullName], [DateOfBirth], [Country], [Phone], [Status], [Gender], [PhotoPath]) VALUES (N'HuuThang  ', N'Trần Thắng', CAST(N'2004-07-04' AS Date), N'Tien Giang', N'938656434', 1, 1, NULL)
INSERT [dbo].[Member] ([IdMember], [FullName], [DateOfBirth], [Country], [Phone], [Status], [Gender], [PhotoPath]) VALUES (N'HuuThanh  ', N'Trần Hữu Thành', CAST(N'2005-06-06' AS Date), N'Tien Giang', N'0962675455', 1, 1, NULL)
INSERT [dbo].[Member] ([IdMember], [FullName], [DateOfBirth], [Country], [Phone], [Status], [Gender], [PhotoPath]) VALUES (N'HuyBui    ', N'Bùi Đức Huy', CAST(N'2003-05-05' AS Date), N'TP.HCM', N'687232424', 1, 1, N'user.jpg')
INSERT [dbo].[Member] ([IdMember], [FullName], [DateOfBirth], [Country], [Phone], [Status], [Gender], [PhotoPath]) VALUES (N'HuyLe     ', N'Lê Nhật Huy', CAST(N'2003-05-05' AS Date), N'TP.HCM', N'0876324114', 1, 1, N'daddyHuy.jpg')
INSERT [dbo].[Member] ([IdMember], [FullName], [DateOfBirth], [Country], [Phone], [Status], [Gender], [PhotoPath]) VALUES (N'KhangNguye', N'Nguyễn Minh Khang', CAST(N'2003-05-05' AS Date), N'TP.HCM', N'0977234234', 1, 1, N'AnhKhang.jpg')
INSERT [dbo].[Member] ([IdMember], [FullName], [DateOfBirth], [Country], [Phone], [Status], [Gender], [PhotoPath]) VALUES (N'KhanhVy   ', N'Lâm Khánh Vy', CAST(N'2003-07-07' AS Date), N'Tien Giang', N'0967454663', 1, 0, NULL)
INSERT [dbo].[Member] ([IdMember], [FullName], [DateOfBirth], [Country], [Phone], [Status], [Gender], [PhotoPath]) VALUES (N'LanHuong  ', N'Nguyễn Lan Hương', CAST(N'2003-09-18' AS Date), N'Dong Nai', N'0912283636', 1, 0, NULL)
INSERT [dbo].[Member] ([IdMember], [FullName], [DateOfBirth], [Country], [Phone], [Status], [Gender], [PhotoPath]) VALUES (N'MinhKhoi  ', N'Nguyễn Minh Khôi', CAST(N'2000-08-15' AS Date), N'TP.HCM', N'0921371273', 1, 1, NULL)
INSERT [dbo].[Member] ([IdMember], [FullName], [DateOfBirth], [Country], [Phone], [Status], [Gender], [PhotoPath]) VALUES (N'MinhLong  ', N'Huỳnh Minh Long', CAST(N'2001-07-06' AS Date), N'TP.HCM', N'0908213216', 1, 1, NULL)
INSERT [dbo].[Member] ([IdMember], [FullName], [DateOfBirth], [Country], [Phone], [Status], [Gender], [PhotoPath]) VALUES (N'MinhNgoc  ', N'Ngô Minh Ngọc', CAST(N'2003-04-08' AS Date), N'Tien Giang', N'0967386322', 1, 0, NULL)
INSERT [dbo].[Member] ([IdMember], [FullName], [DateOfBirth], [Country], [Phone], [Status], [Gender], [PhotoPath]) VALUES (N'MinhNhu   ', N'Nguyen Minh Nhu', CAST(N'2003-09-12' AS Date), N'Dong nai', N'0988745236', 1, 0, NULL)
INSERT [dbo].[Member] ([IdMember], [FullName], [DateOfBirth], [Country], [Phone], [Status], [Gender], [PhotoPath]) VALUES (N'NhuQuynh  ', N'Lê Như Quỳnh', CAST(N'2002-06-07' AS Date), N'Tien Giang', N'0986572132', 1, 0, NULL)
INSERT [dbo].[Member] ([IdMember], [FullName], [DateOfBirth], [Country], [Phone], [Status], [Gender], [PhotoPath]) VALUES (N'NhuY      ', N'Trần Như ý', CAST(N'2001-08-08' AS Date), N'Tien Giang', N'0987121625', 1, 0, NULL)
INSERT [dbo].[Member] ([IdMember], [FullName], [DateOfBirth], [Country], [Phone], [Status], [Gender], [PhotoPath]) VALUES (N'QuangDuy  ', N'Dương Quang Duy', CAST(N'2003-11-23' AS Date), N'Tien Giang', N'0925637153', 1, 1, NULL)
INSERT [dbo].[Member] ([IdMember], [FullName], [DateOfBirth], [Country], [Phone], [Status], [Gender], [PhotoPath]) VALUES (N'QuangVinh ', N'Phan Quang Vinh', CAST(N'2003-07-04' AS Date), N'Tien Giang', N'0912367811', 1, 1, NULL)
INSERT [dbo].[Member] ([IdMember], [FullName], [DateOfBirth], [Country], [Phone], [Status], [Gender], [PhotoPath]) VALUES (N'ThanhDuy  ', N'Nguyễn Thanh Duy', CAST(N'2003-12-16' AS Date), N'Tien Giang', N'0912378233', 1, 1, NULL)
INSERT [dbo].[Member] ([IdMember], [FullName], [DateOfBirth], [Country], [Phone], [Status], [Gender], [PhotoPath]) VALUES (N'ThanhPhong', N'Nguyễn thanh Phong', CAST(N'2003-12-12' AS Date), N'Tây Ninh', N'0961237651', 1, 1, NULL)
INSERT [dbo].[Member] ([IdMember], [FullName], [DateOfBirth], [Country], [Phone], [Status], [Gender], [PhotoPath]) VALUES (N'ThiBa     ', N'Trần Thị Ba', CAST(N'2003-06-08' AS Date), N'TP.HCM', N'0921361273', 1, 0, NULL)
INSERT [dbo].[Member] ([IdMember], [FullName], [DateOfBirth], [Country], [Phone], [Status], [Gender], [PhotoPath]) VALUES (N'ThuanLe   ', N'Lê Văn Thuận', CAST(N'2003-09-09' AS Date), N'TP.HCM', N'0921731621', 1, 1, NULL)
INSERT [dbo].[Member] ([IdMember], [FullName], [DateOfBirth], [Country], [Phone], [Status], [Gender], [PhotoPath]) VALUES (N'ThuyTrang ', N'Lê Thùy Trang', CAST(N'2003-07-15' AS Date), N'TP.HCM', N'0971236233', 1, 0, NULL)
INSERT [dbo].[Member] ([IdMember], [FullName], [DateOfBirth], [Country], [Phone], [Status], [Gender], [PhotoPath]) VALUES (N'VanNghia  ', N'Nguyễn Văn Nghĩa', CAST(N'2000-12-12' AS Date), N'Tiền Giang', N'0912653216', 1, 1, NULL)
INSERT [dbo].[Member] ([IdMember], [FullName], [DateOfBirth], [Country], [Phone], [Status], [Gender], [PhotoPath]) VALUES (N'VanThuan  ', N'Lê Văn Thuận', CAST(N'2000-07-05' AS Date), N'Long An', N'0912361787', 1, 1, NULL)
GO
INSERT [dbo].[MemberShip] ([IdMember], [DateSignUp], [status], [TypeOfMemberShip], [DateExpired]) VALUES (N'DangKhoa  ', CAST(N'2023-11-01' AS Date), 1, N'1', CAST(N'2024-11-01' AS Date))
INSERT [dbo].[MemberShip] ([IdMember], [DateSignUp], [status], [TypeOfMemberShip], [DateExpired]) VALUES (N'DucCanh   ', CAST(N'2023-11-01' AS Date), 1, N'1', CAST(N'2024-11-01' AS Date))
INSERT [dbo].[MemberShip] ([IdMember], [DateSignUp], [status], [TypeOfMemberShip], [DateExpired]) VALUES (N'HiepThuan ', CAST(N'2023-11-06' AS Date), 1, N'1', CAST(N'2024-11-06' AS Date))
INSERT [dbo].[MemberShip] ([IdMember], [DateSignUp], [status], [TypeOfMemberShip], [DateExpired]) VALUES (N'HongMai   ', CAST(N'2023-10-29' AS Date), 1, N'1', CAST(N'2024-10-29' AS Date))
INSERT [dbo].[MemberShip] ([IdMember], [DateSignUp], [status], [TypeOfMemberShip], [DateExpired]) VALUES (N'HuuThang  ', CAST(N'2023-11-08' AS Date), 1, N'2', CAST(N'2024-11-08' AS Date))
INSERT [dbo].[MemberShip] ([IdMember], [DateSignUp], [status], [TypeOfMemberShip], [DateExpired]) VALUES (N'HuuThanh  ', CAST(N'2023-10-09' AS Date), 1, N'1', CAST(N'2024-10-07' AS Date))
INSERT [dbo].[MemberShip] ([IdMember], [DateSignUp], [status], [TypeOfMemberShip], [DateExpired]) VALUES (N'HuyBui    ', CAST(N'2023-10-05' AS Date), 1, N'1', CAST(N'2024-10-07' AS Date))
INSERT [dbo].[MemberShip] ([IdMember], [DateSignUp], [status], [TypeOfMemberShip], [DateExpired]) VALUES (N'KhangNguye', CAST(N'2023-10-07' AS Date), 1, N'1', CAST(N'2024-10-07' AS Date))
INSERT [dbo].[MemberShip] ([IdMember], [DateSignUp], [status], [TypeOfMemberShip], [DateExpired]) VALUES (N'KhanhVy   ', CAST(N'2023-10-07' AS Date), 1, N'1', CAST(N'2024-10-07' AS Date))
INSERT [dbo].[MemberShip] ([IdMember], [DateSignUp], [status], [TypeOfMemberShip], [DateExpired]) VALUES (N'MinhNgoc  ', CAST(N'2023-10-11' AS Date), 1, N'2', CAST(N'2024-10-07' AS Date))
INSERT [dbo].[MemberShip] ([IdMember], [DateSignUp], [status], [TypeOfMemberShip], [DateExpired]) VALUES (N'MinhNhu   ', CAST(N'2023-10-07' AS Date), 1, N'3', CAST(N'2024-10-07' AS Date))
INSERT [dbo].[MemberShip] ([IdMember], [DateSignUp], [status], [TypeOfMemberShip], [DateExpired]) VALUES (N'ThanhDuy  ', CAST(N'2023-11-11' AS Date), 1, N'2', CAST(N'2024-11-11' AS Date))
INSERT [dbo].[MemberShip] ([IdMember], [DateSignUp], [status], [TypeOfMemberShip], [DateExpired]) VALUES (N'ThiBa     ', CAST(N'2023-10-07' AS Date), 1, N'1', CAST(N'2024-10-07' AS Date))
INSERT [dbo].[MemberShip] ([IdMember], [DateSignUp], [status], [TypeOfMemberShip], [DateExpired]) VALUES (N'ThuyTrang ', CAST(N'2023-11-11' AS Date), 1, N'1', CAST(N'2024-11-11' AS Date))
INSERT [dbo].[MemberShip] ([IdMember], [DateSignUp], [status], [TypeOfMemberShip], [DateExpired]) VALUES (N'VanNghia  ', CAST(N'2023-11-01' AS Date), 1, N'1', CAST(N'2024-11-01' AS Date))
GO
SET IDENTITY_INSERT [dbo].[News] ON 

INSERT [dbo].[News] ([IdNews], [NameOfNews], [Date], [Description], [LinkOfNews], [IdUser], [PhotoPath]) VALUES (17, N'Hội thi chim chào mào chào mừng Lễ hội Văn hóa - du lịch dinh Thầy Thím', CAST(N'2023-10-31' AS Date), N'Hưởng ứng Năm Du lịch quốc gia “Bình Thuận - Hội tụ xanh”, Lễ hội Văn hóa du lịch dinh Thầy Thím năm 2023, được thị xã La Gi đầu tư nâng tầm với nhiều nội dung mới. 
	Hội thi chào mào đấu hót mở rộng là một trong những điểm mới của phần hội năm nay.', N'https://baobinhthuan.com.vn/hoi-thi-chim-chao-mao-chao-mung-le-hoi-van-hoa-du-lich-dinh-thay-thim-114280.html', NULL, N'https://bbt.1cdn.vn/2023/10/30/202310301140531.jpeg')
INSERT [dbo].[News] ([IdNews], [NameOfNews], [Date], [Description], [LinkOfNews], [IdUser], [PhotoPath]) VALUES (18, N'Quản Bạ: Hội thi chim chào mào đấu hót lần thứ nhất năm 2023.', CAST(N'2023-02-27' AS Date), N'Sáng ngày 26/2, Câu lạc bộ chim chào mào huyện Quản Bạ thuộc Hội sinh vật cảnh tỉnh Hà Giang đã tổ chức khai mạc Hội thi chim chào mào đấu hót lần thứ nhất. 
	Thu hút đông đảo sự tham gia của các nghệ nhân nuôi chim chào mào cảnh trong và ngoài tỉnh.', N'https://quanba.hagiang.gov.vn/chi-tiet-tin-tuc/-/news/44741/quan-ba-hoi-thi-chim-chao-mao-dau-hot-lan-thu-nhat-nam-2023.html', NULL, N'https://quanba.hagiang.gov.vn/documents/44741/0/%E1%BA%A2nh+2.+H%E1%BB%99i+thi+chim+ch%C3%A0o+m%C3%A0o+%C4%91%E1%BA%A5u%2C+h%C3%B3t.png/89433a1f-c975-c7de-1b30-e49ffe9309af?t=1677466952884')
INSERT [dbo].[News] ([IdNews], [NameOfNews], [Date], [Description], [LinkOfNews], [IdUser], [PhotoPath]) VALUES (19, N'Hội thi chim hót nghệ thuật mở rộng năm 2023', CAST(N'2023-10-09' AS Date), N'Trung tâm Văn hóa, Thể thao và Truyền Thanh TP. Rạch Giá (Kiên Giang) vừa tổ chức hội thi chim hót nghệ thuật mở rộng năm 2023. Kết quả, giải nhất chim chào mào hót thuộc về nghệ nhân Nguyễn Ngọc Diệp đến từ tỉnh An Giang; 
	giải nhất chim chích chòe than hót thuộc về nghệ nhân Nguyễn Văn Tố, tỉnh Kiên Giang.', N'https://www.baokiengiang.vn/le-hoi/hoi-thi-chim-hot-nghe-thuat-mo-rong-nam-2023-17028.html', NULL, N'https://www.baokiengiang.vn/uploads/image/2023/10/09/KGO%20-%20%E1%BA%A3nh%201-.jpg')
INSERT [dbo].[News] ([IdNews], [NameOfNews], [Date], [Description], [LinkOfNews], [IdUser], [PhotoPath]) VALUES (20, N'Sôi nổi Hội thi chim chào mào hót', CAST(N'2023-08-20' AS Date), N'Trong khuôn khổ các hoạt động tổ chức tại Triển lãm và Hội thi Sinh vật cảnh khu vực miền Trung - Tây Nguyên mở rộng năm 2023 diễn ra tại TP Quy Nhơn từ ngày 19 - 28.8, sáng 20.8, tại bãi cỏ Trung tâm Hội nghị tỉnh, 
	rất đông người yêu thích chim cảnh đã có mặt từ sớm để theo dõi Hội thi chim chào mào hót.', N'https://baobinhdinh.vn/viewer.aspx?macm=18&macmp=18&mabb=263604', NULL, N'https://baobinhdinh.vn/viewimage.aspx?imgid=256485')
INSERT [dbo].[News] ([IdNews], [NameOfNews], [Date], [Description], [LinkOfNews], [IdUser], [PhotoPath]) VALUES (21, N'Hội thi chim Chào Mào đấu hót liên tỉnh lần thứ VI năm 2023 thu hút đông đảo các nghệ nhân chơi chim cảnh', CAST(N'2023-05-13' AS Date), N'Sáng 13/5, tại vườn hoa Tố Hữu đã diễn ra Hội thi chim Chào Mào đấu hót liên tỉnh lần thứ VI năm 2023. Chương trình nằm trong chuỗi các hoạt động chào mừng Kỷ niệm 68 năm Ngày Giải phóng Hải Phòng và hưởng ứng Lễ hội Hoa Phượng Đỏ - Hải Phòng 2023.', N'https://haiphong.gov.vn/tin-tuc-su-kien/Hoi-thi-chim-Chao-Mao-dau-hot-lien-tinh-lan-thu-VI-nam-2023-thu-hut-dong-dao-cac-nghe-nhan-choi-chim-canh-118467.html', NULL, N'https://haiphong.gov.vn/upload/haiphong/product/2023/5/e745fc8013c0cd9e94d19-b01f3211820b45b4b954bac2e79b92b9.jpg?maxwidth=2048')
INSERT [dbo].[News] ([IdNews], [NameOfNews], [Date], [Description], [LinkOfNews], [IdUser], [PhotoPath]) VALUES (22, N'Hội thi chim Chào Mào đấu hót liên tỉnh lần thứ VI năm 2023', CAST(N'2023-05-13' AS Date), N'Sáng 13-5, tại vườn hoa Tố Hữu, Trung tâm Văn hóa thành phố (Sở Văn hóa và Thể thao) hướng dẫn Câu lạc bộ Chim Chào Mào Hải Phòng tổ chức Hội thi chim Chào Mào đấu hót liên tỉnh lần thứ VI năm 2023. Dự chương trình có các đồng chí lãnh đạo các phòng chức năng Sở Văn hóa và Thể thao; đại diện Hội Chào Mào Mào miền Bắc; Ban Chủ nhiệm 24 CLB trực thuộc Trung tâm Văn hóa cùng đông đảo Nhân dân và du khách đến cổ vũ và theo dõi. Chương trình nằm trong chuỗi các hoạt động chào mừng 
kỷ niệm 68 năm Ngày giải phóng Hải Phòng và hưởng ứng Lễ hội Hoa Phượng Đỏ - Hải Phòng 2023.', N'http://anhp.vn/hoi-thi-chim-chao-mao-dau-hot-lien-tinh-lan-thu-vi-nam-2023-d53381.html', NULL, N'http://media.anhp.vn:8081/files/2023/050317%20(1).jpg')
SET IDENTITY_INSERT [dbo].[News] OFF
GO
SET IDENTITY_INSERT [dbo].[OrderDetail] ON 

INSERT [dbo].[OrderDetail] ([IdOrder], [IdMember], [Price], [OrderDate], [Status], [OrderName]) VALUES (1, N'DanhTran  ', 100000, CAST(N'2023-11-11' AS Date), 1, N'Đăng ký thi đấu')
INSERT [dbo].[OrderDetail] ([IdOrder], [IdMember], [Price], [OrderDate], [Status], [OrderName]) VALUES (2, N'HiepThuan ', 200000, NULL, 1, N'Đăng ký membership')
INSERT [dbo].[OrderDetail] ([IdOrder], [IdMember], [Price], [OrderDate], [Status], [OrderName]) VALUES (3, N'HuyBui    ', 200000, NULL, 1, N'Đăng ký membership')
INSERT [dbo].[OrderDetail] ([IdOrder], [IdMember], [Price], [OrderDate], [Status], [OrderName]) VALUES (4, N'HuyBui    ', 500000, NULL, 1, N'Đăng ký membership')
INSERT [dbo].[OrderDetail] ([IdOrder], [IdMember], [Price], [OrderDate], [Status], [OrderName]) VALUES (5, N'HuyLe     ', 400000, NULL, 1, N'Đăng ký membership')
INSERT [dbo].[OrderDetail] ([IdOrder], [IdMember], [Price], [OrderDate], [Status], [OrderName]) VALUES (6, N'HuyLe     ', 100000, NULL, 1, N'Đăng ký thi đấu')
INSERT [dbo].[OrderDetail] ([IdOrder], [IdMember], [Price], [OrderDate], [Status], [OrderName]) VALUES (7, N'HuyLe     ', 200000, NULL, 1, N'Đăng ký membership')
INSERT [dbo].[OrderDetail] ([IdOrder], [IdMember], [Price], [OrderDate], [Status], [OrderName]) VALUES (8, N'HuyLe     ', 200000, NULL, 1, N'Nâng cấp membership')
INSERT [dbo].[OrderDetail] ([IdOrder], [IdMember], [Price], [OrderDate], [Status], [OrderName]) VALUES (9, N'DanhTran  ', 200000, NULL, 1, N'Đăng ký membership')
INSERT [dbo].[OrderDetail] ([IdOrder], [IdMember], [Price], [OrderDate], [Status], [OrderName]) VALUES (10, N'DanhTran  ', 200000, NULL, 1, N'Đăng ký membership')
INSERT [dbo].[OrderDetail] ([IdOrder], [IdMember], [Price], [OrderDate], [Status], [OrderName]) VALUES (11, N'DanhTran  ', 200000, NULL, 1, N'Nâng cấp membership')
INSERT [dbo].[OrderDetail] ([IdOrder], [IdMember], [Price], [OrderDate], [Status], [OrderName]) VALUES (12, N'DanhTran  ', 200000, NULL, 1, N'Nâng cấp membership')
INSERT [dbo].[OrderDetail] ([IdOrder], [IdMember], [Price], [OrderDate], [Status], [OrderName]) VALUES (13, N'DanhTran  ', 100000, NULL, 1, N'Đăng ký membership')
INSERT [dbo].[OrderDetail] ([IdOrder], [IdMember], [Price], [OrderDate], [Status], [OrderName]) VALUES (14, N'HiepThuan ', 100000, NULL, 1, N'Nâng cấp membership')
INSERT [dbo].[OrderDetail] ([IdOrder], [IdMember], [Price], [OrderDate], [Status], [OrderName]) VALUES (15, N'HiepThuan ', 100000, NULL, 1, N'Nâng cấp membership')
INSERT [dbo].[OrderDetail] ([IdOrder], [IdMember], [Price], [OrderDate], [Status], [OrderName]) VALUES (16, N'HiepThuan ', 100000, NULL, 1, N'Nâng cấp membership')
INSERT [dbo].[OrderDetail] ([IdOrder], [IdMember], [Price], [OrderDate], [Status], [OrderName]) VALUES (17, N'HiepThuan ', 100000, NULL, 1, N'Đăng ký thi đấu')
INSERT [dbo].[OrderDetail] ([IdOrder], [IdMember], [Price], [OrderDate], [Status], [OrderName]) VALUES (18, N'HiepThuan ', 100000, NULL, 1, N'Đăng ký thi đấu')
INSERT [dbo].[OrderDetail] ([IdOrder], [IdMember], [Price], [OrderDate], [Status], [OrderName]) VALUES (19, N'HiepThuan ', 100000, NULL, 1, N'Đăng ký thi đấu')
INSERT [dbo].[OrderDetail] ([IdOrder], [IdMember], [Price], [OrderDate], [Status], [OrderName]) VALUES (20, N'HuyBui    ', 100000, NULL, 1, N'Đăng ký thi đấu')
INSERT [dbo].[OrderDetail] ([IdOrder], [IdMember], [Price], [OrderDate], [Status], [OrderName]) VALUES (21, N'HuyBui    ', 100000, NULL, 1, N'Đăng ký thi đấu')
INSERT [dbo].[OrderDetail] ([IdOrder], [IdMember], [Price], [OrderDate], [Status], [OrderName]) VALUES (22, N'HuyBui    ', 100000, NULL, 1, N'Đăng ký thi đấu')
INSERT [dbo].[OrderDetail] ([IdOrder], [IdMember], [Price], [OrderDate], [Status], [OrderName]) VALUES (23, N'HuyBui    ', 100000, NULL, 1, N'Đăng ký thi đấu')
INSERT [dbo].[OrderDetail] ([IdOrder], [IdMember], [Price], [OrderDate], [Status], [OrderName]) VALUES (24, N'HuyLe     ', 100000, NULL, 1, N'Đăng ký thi đấu')
INSERT [dbo].[OrderDetail] ([IdOrder], [IdMember], [Price], [OrderDate], [Status], [OrderName]) VALUES (25, N'HuyLe     ', 100000, NULL, 1, N'Đăng ký thi đấu')
INSERT [dbo].[OrderDetail] ([IdOrder], [IdMember], [Price], [OrderDate], [Status], [OrderName]) VALUES (27, N'DanhTran  ', 200000, CAST(N'2023-11-11' AS Date), 1, N'Đăng ký thi đấu')
INSERT [dbo].[OrderDetail] ([IdOrder], [IdMember], [Price], [OrderDate], [Status], [OrderName]) VALUES (28, N'HuuThang  ', 300000, CAST(N'2023-11-08' AS Date), 1, N'Đăng ký membership')
SET IDENTITY_INSERT [dbo].[OrderDetail] OFF
GO
SET IDENTITY_INSERT [dbo].[Products] ON 

INSERT [dbo].[Products] ([IdProduct], [NameOfProducts], [IdContest], [Status]) VALUES (1, N'VIP1      ', NULL, 1)
INSERT [dbo].[Products] ([IdProduct], [NameOfProducts], [IdContest], [Status]) VALUES (2, N'VIP2      ', NULL, 1)
INSERT [dbo].[Products] ([IdProduct], [NameOfProducts], [IdContest], [Status]) VALUES (3, N'VIP3      ', NULL, 1)
INSERT [dbo].[Products] ([IdProduct], [NameOfProducts], [IdContest], [Status]) VALUES (4, N'FeeContest', 1, 1)
INSERT [dbo].[Products] ([IdProduct], [NameOfProducts], [IdContest], [Status]) VALUES (5, N'FeeContest', 2, 1)
INSERT [dbo].[Products] ([IdProduct], [NameOfProducts], [IdContest], [Status]) VALUES (7, N'FeeContest', 3, 1)
INSERT [dbo].[Products] ([IdProduct], [NameOfProducts], [IdContest], [Status]) VALUES (8, N'FeeContest', 4, 1)
INSERT [dbo].[Products] ([IdProduct], [NameOfProducts], [IdContest], [Status]) VALUES (9, N'FeeContest', 5, 1)
INSERT [dbo].[Products] ([IdProduct], [NameOfProducts], [IdContest], [Status]) VALUES (12, N'FeeContest', 7, 1)
SET IDENTITY_INSERT [dbo].[Products] OFF
GO
SET IDENTITY_INSERT [dbo].[Rule] ON 

INSERT [dbo].[Rule] ([IdRule], [NameOfRule], [DetailOfRule], [Status]) VALUES (1, N'Cộng trừ với hệ số bằng 1', N'Bla bla', 1)
INSERT [dbo].[Rule] ([IdRule], [NameOfRule], [DetailOfRule], [Status]) VALUES (2, N'Cộng trừ với hệ số bằng 2', N'Blala', 0)
SET IDENTITY_INSERT [dbo].[Rule] OFF
GO
INSERT [dbo].[TypeOfUserRole] ([UserRole], [TypeOfUserRole]) VALUES (1, N'Admin     ')
INSERT [dbo].[TypeOfUserRole] ([UserRole], [TypeOfUserRole]) VALUES (2, N'Manager   ')
INSERT [dbo].[TypeOfUserRole] ([UserRole], [TypeOfUserRole]) VALUES (3, N'Staff     ')
INSERT [dbo].[TypeOfUserRole] ([UserRole], [TypeOfUserRole]) VALUES (4, N'Member    ')
GO
INSERT [dbo].[User] ([UserName], [UserPassword], [UserGmail], [UserRole], [Status]) VALUES (N'ADanh     ', N'1                   ', NULL, 1, 1)
INSERT [dbo].[User] ([UserName], [UserPassword], [UserGmail], [UserRole], [Status]) VALUES (N'ADanh1    ', N'1                   ', NULL, 1, 0)
INSERT [dbo].[User] ([UserName], [UserPassword], [UserGmail], [UserRole], [Status]) VALUES (N'Admin     ', N'1                   ', N'admin@gmail.com                                   ', 1, 1)
INSERT [dbo].[User] ([UserName], [UserPassword], [UserGmail], [UserRole], [Status]) VALUES (N'AThuan    ', N'1                   ', NULL, 1, 1)
INSERT [dbo].[User] ([UserName], [UserPassword], [UserGmail], [UserRole], [Status]) VALUES (N'DangKhoa  ', N'12345678            ', NULL, 4, 1)
INSERT [dbo].[User] ([UserName], [UserPassword], [UserGmail], [UserRole], [Status]) VALUES (N'DanhTran  ', N'12345678            ', N'danhtran@gmail.com                                ', 4, 1)
INSERT [dbo].[User] ([UserName], [UserPassword], [UserGmail], [UserRole], [Status]) VALUES (N'DucAnh    ', N'12345678            ', NULL, 4, 1)
INSERT [dbo].[User] ([UserName], [UserPassword], [UserGmail], [UserRole], [Status]) VALUES (N'DucCanh   ', N'12345678            ', NULL, 4, 1)
INSERT [dbo].[User] ([UserName], [UserPassword], [UserGmail], [UserRole], [Status]) VALUES (N'HiepThuan ', N'12345678            ', N'thuanhiep@gmail.com                               ', 4, 1)
INSERT [dbo].[User] ([UserName], [UserPassword], [UserGmail], [UserRole], [Status]) VALUES (N'HongMai   ', N'12345678            ', NULL, 4, 1)
INSERT [dbo].[User] ([UserName], [UserPassword], [UserGmail], [UserRole], [Status]) VALUES (N'huudann   ', N'12345678            ', NULL, 4, 1)
INSERT [dbo].[User] ([UserName], [UserPassword], [UserGmail], [UserRole], [Status]) VALUES (N'HuuThang  ', N'12345678            ', N'                                                  ', 4, 1)
INSERT [dbo].[User] ([UserName], [UserPassword], [UserGmail], [UserRole], [Status]) VALUES (N'HuuThanh  ', N'12345678            ', NULL, 4, 1)
INSERT [dbo].[User] ([UserName], [UserPassword], [UserGmail], [UserRole], [Status]) VALUES (N'HuyBui    ', N'12345678            ', N'huybui@gmail.com                                  ', 4, 1)
INSERT [dbo].[User] ([UserName], [UserPassword], [UserGmail], [UserRole], [Status]) VALUES (N'HuyLe     ', N'12345678            ', N'huyle@gmail.com                                   ', 4, 1)
INSERT [dbo].[User] ([UserName], [UserPassword], [UserGmail], [UserRole], [Status]) VALUES (N'KhangNguye', N'12345678            ', N'khangnguyen@gmail.com                             ', 4, 1)
INSERT [dbo].[User] ([UserName], [UserPassword], [UserGmail], [UserRole], [Status]) VALUES (N'KhanhVy   ', N'12345678            ', NULL, 4, 1)
INSERT [dbo].[User] ([UserName], [UserPassword], [UserGmail], [UserRole], [Status]) VALUES (N'LanHuong  ', N'12345678            ', NULL, 4, 1)
INSERT [dbo].[User] ([UserName], [UserPassword], [UserGmail], [UserRole], [Status]) VALUES (N'Manager   ', N'1                   ', N'manager@gmail.com                                 ', 2, 1)
INSERT [dbo].[User] ([UserName], [UserPassword], [UserGmail], [UserRole], [Status]) VALUES (N'MDanh     ', N'1                   ', NULL, 2, 1)
INSERT [dbo].[User] ([UserName], [UserPassword], [UserGmail], [UserRole], [Status]) VALUES (N'MinhKhoi  ', N'12345678            ', NULL, 4, 1)
INSERT [dbo].[User] ([UserName], [UserPassword], [UserGmail], [UserRole], [Status]) VALUES (N'MinhLong  ', N'12345678            ', NULL, 4, 1)
INSERT [dbo].[User] ([UserName], [UserPassword], [UserGmail], [UserRole], [Status]) VALUES (N'MinhNgoc  ', N'12345678            ', NULL, 4, 1)
INSERT [dbo].[User] ([UserName], [UserPassword], [UserGmail], [UserRole], [Status]) VALUES (N'MinhNhu   ', N'12345678            ', NULL, 4, 1)
INSERT [dbo].[User] ([UserName], [UserPassword], [UserGmail], [UserRole], [Status]) VALUES (N'MThuan    ', N'1                   ', NULL, 2, 1)
INSERT [dbo].[User] ([UserName], [UserPassword], [UserGmail], [UserRole], [Status]) VALUES (N'NhuQuynh  ', N'12345678            ', NULL, 4, 1)
INSERT [dbo].[User] ([UserName], [UserPassword], [UserGmail], [UserRole], [Status]) VALUES (N'NhuY      ', N'12345678            ', NULL, 4, 1)
INSERT [dbo].[User] ([UserName], [UserPassword], [UserGmail], [UserRole], [Status]) VALUES (N'QuangDuy  ', N'12345678            ', NULL, 4, 1)
INSERT [dbo].[User] ([UserName], [UserPassword], [UserGmail], [UserRole], [Status]) VALUES (N'QuangVinh ', N'12345678            ', NULL, 4, 1)
INSERT [dbo].[User] ([UserName], [UserPassword], [UserGmail], [UserRole], [Status]) VALUES (N'SDanh     ', N'1                   ', NULL, 3, 1)
INSERT [dbo].[User] ([UserName], [UserPassword], [UserGmail], [UserRole], [Status]) VALUES (N'Staff     ', N'1                   ', N'staff@gmail.com                                   ', 3, 1)
INSERT [dbo].[User] ([UserName], [UserPassword], [UserGmail], [UserRole], [Status]) VALUES (N'ThanhDuy  ', N'12345678            ', NULL, 4, 1)
INSERT [dbo].[User] ([UserName], [UserPassword], [UserGmail], [UserRole], [Status]) VALUES (N'ThanhPhong', N'12345678            ', NULL, 4, 1)
INSERT [dbo].[User] ([UserName], [UserPassword], [UserGmail], [UserRole], [Status]) VALUES (N'ThiBa     ', N'12345678            ', NULL, 4, 1)
INSERT [dbo].[User] ([UserName], [UserPassword], [UserGmail], [UserRole], [Status]) VALUES (N'ThuanLe   ', N'12345678            ', N'thuanle@gmail.com                                 ', 4, 1)
INSERT [dbo].[User] ([UserName], [UserPassword], [UserGmail], [UserRole], [Status]) VALUES (N'ThuyTrang ', N'12345678            ', NULL, 4, 1)
INSERT [dbo].[User] ([UserName], [UserPassword], [UserGmail], [UserRole], [Status]) VALUES (N'VanNghia  ', N'12345678            ', NULL, 4, 1)
INSERT [dbo].[User] ([UserName], [UserPassword], [UserGmail], [UserRole], [Status]) VALUES (N'VanThuan  ', N'12345678            ', NULL, 4, 1)
GO
ALTER TABLE [dbo].[Bird]  WITH CHECK ADD  CONSTRAINT [FK_Bird_Member] FOREIGN KEY([IdMember])
REFERENCES [dbo].[Member] ([IdMember])
GO
ALTER TABLE [dbo].[Bird] CHECK CONSTRAINT [FK_Bird_Member]
GO
ALTER TABLE [dbo].[BirdContest]  WITH CHECK ADD  CONSTRAINT [FK_BirdContest_Bird1] FOREIGN KEY([IdBird])
REFERENCES [dbo].[Bird] ([IdBird])
GO
ALTER TABLE [dbo].[BirdContest] CHECK CONSTRAINT [FK_BirdContest_Bird1]
GO
ALTER TABLE [dbo].[BirdContest]  WITH CHECK ADD  CONSTRAINT [FK_BirdContest_Contest1] FOREIGN KEY([IdContest])
REFERENCES [dbo].[Contest] ([IdContest])
GO
ALTER TABLE [dbo].[BirdContest] CHECK CONSTRAINT [FK_BirdContest_Contest1]
GO
ALTER TABLE [dbo].[Contest]  WITH CHECK ADD  CONSTRAINT [FK_Contest_Location] FOREIGN KEY([LocationId])
REFERENCES [dbo].[Location] ([LocationId])
GO
ALTER TABLE [dbo].[Contest] CHECK CONSTRAINT [FK_Contest_Location]
GO
ALTER TABLE [dbo].[Contest]  WITH CHECK ADD  CONSTRAINT [FK_Contest_User] FOREIGN KEY([UserName])
REFERENCES [dbo].[User] ([UserName])
GO
ALTER TABLE [dbo].[Contest] CHECK CONSTRAINT [FK_Contest_User]
GO
ALTER TABLE [dbo].[FeedBack]  WITH CHECK ADD  CONSTRAINT [FK_FeedBack_Member] FOREIGN KEY([IdMember])
REFERENCES [dbo].[Member] ([IdMember])
GO
ALTER TABLE [dbo].[FeedBack] CHECK CONSTRAINT [FK_FeedBack_Member]
GO
ALTER TABLE [dbo].[Member]  WITH CHECK ADD  CONSTRAINT [FK_Member_User] FOREIGN KEY([IdMember])
REFERENCES [dbo].[User] ([UserName])
GO
ALTER TABLE [dbo].[Member] CHECK CONSTRAINT [FK_Member_User]
GO
ALTER TABLE [dbo].[MemberShip]  WITH CHECK ADD  CONSTRAINT [FK_MemberShip_Member] FOREIGN KEY([IdMember])
REFERENCES [dbo].[Member] ([IdMember])
GO
ALTER TABLE [dbo].[MemberShip] CHECK CONSTRAINT [FK_MemberShip_Member]
GO
ALTER TABLE [dbo].[News]  WITH CHECK ADD  CONSTRAINT [FK_News_User] FOREIGN KEY([IdUser])
REFERENCES [dbo].[User] ([UserName])
GO
ALTER TABLE [dbo].[News] CHECK CONSTRAINT [FK_News_User]
GO
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetail_Member] FOREIGN KEY([IdMember])
REFERENCES [dbo].[Member] ([IdMember])
GO
ALTER TABLE [dbo].[OrderDetail] CHECK CONSTRAINT [FK_OrderDetail_Member]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_Contest] FOREIGN KEY([IdContest])
REFERENCES [dbo].[Contest] ([IdContest])
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_Contest]
GO
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [FK_User_TypeOfUserRole] FOREIGN KEY([UserRole])
REFERENCES [dbo].[TypeOfUserRole] ([UserRole])
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [FK_User_TypeOfUserRole]
GO
/****** Object:  StoredProcedure [dbo].[Id_User]    Script Date: 11/15/2023 1:39:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[Id_User]
as
begin
declare @ma_next varchar(20)
declare @max int 

select @max = count([IdBird]) + 1 from [dbo].[Bird] where [IdBird] like 'B'
set @ma_next='B' + RIGHT('0' + Cast(@max as varchar(10)),10)
while (exists (select * from [dbo].[Bird] where [IdBird]=@ma_next))
begin
	set @max=@max +1 
	set @ma_next = 'B' + Right('0' + cast(@max as varchar(10)),10)
end
end
GO
