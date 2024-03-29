use master
go
CREATE DATABASE [FruitShop]
USE [FruitShop]
GO
/****** Object:  Table [dbo].[Accounts]    Script Date: 19/11/2023 12:18:48 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Accounts](
	[Username] [varchar](50) NOT NULL,
	[Password] [varchar](255) NOT NULL,
	[Fullname] [nvarchar](50) NULL,
	[Email] [varchar](50) NULL,
	[Image] [varchar](255) NULL,
	[Address] [nvarchar](100) NULL,
	[TelePhone] [char](10) NULL,
	[Reset_password] [varchar](50) NULL,
 CONSTRAINT [PK_Accounts] PRIMARY KEY CLUSTERED 
(
	[Username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Authorities]    Script Date: 19/11/2023 12:18:48 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Authorities](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Username] [varchar](50) NOT NULL,
	[RoleId] [nvarchar](10) NULL,
 CONSTRAINT [PK_Authorities] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 19/11/2023 12:18:48 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[CategoryId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED 
(
	[CategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Favorites]    Script Date: 19/11/2023 12:18:48 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Favorites](
	[FavoriteId] [int] IDENTITY(1,1) NOT NULL,
	[Username] [varchar](50) NOT NULL,
	[ProductId] [int] NOT NULL,
 CONSTRAINT [PK_Favorites] PRIMARY KEY CLUSTERED 
(
	[FavoriteId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderDetails]    Script Date: 19/11/2023 12:18:48 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetails](
	[OrderDetailId] [int] IDENTITY(1,1) NOT NULL,
	[OrderId] [int] NOT NULL,
	[ProductId] [int] NOT NULL,
	[Price] [float] NULL,
	[Discount] [float] NULL,
	[Quantity] [int] NULL,
	[Discription] [nvarchar](100) NULL,
	[Amount] [int] NULL,
 CONSTRAINT [PK_OrderDetails] PRIMARY KEY CLUSTERED 
(
	[OrderDetailId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 19/11/2023 12:18:48 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[OrderId] [int] IDENTITY(1,1) NOT NULL,
	[Username] [varchar](50) NULL,
	[CreateDay] [date] NOT NULL,
	[TelePhone] [varchar](12) NULL,
	[Address] [nvarchar](100) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Email] [varchar](30) NULL,
	[Total] [int] NULL,
	[Status] [nvarchar](50) NULL,
 CONSTRAINT [PK_Orders] PRIMARY KEY CLUSTERED 
(
	[OrderId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 19/11/2023 12:18:48 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[ProductId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Quantity] [int] NOT NULL,
	[UnitPrice] [float] NOT NULL,
	[Discount] [float] NULL,
	[Image1] [varchar](50) NOT NULL,
	[Image2] [varchar](50) NULL,
	[Image3] [varchar](50) NULL,
	[Image4] [varchar](50) NULL,
	[Image5] [varchar](50) NULL,
	[EnteredDay] [date] NOT NULL,
	[Discription] [nvarchar](max) NOT NULL,
	[CategoryId] [int] NOT NULL,
	[HotSale] [varchar](20) NULL,
	[OldPrice] [int] NULL,
	[Supplier] [nvarchar](20) NULL,
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Roles]    Script Date: 19/11/2023 12:18:48 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Roles](
	[RoleId] [nvarchar](10) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Roles] PRIMARY KEY CLUSTERED 
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Statitic]    Script Date: 19/11/2023 12:18:48 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Statitic](
	[OrderId] [int] NOT NULL,
	[OrderDetailId] [int] NOT NULL,
	[id] [int] NULL,
	[slDoanhthu] [bigint] NOT NULL,
	[slOrder] [bigint] NOT NULL
) ON [PRIMARY]
GO
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Image], [Address], [TelePhone], [Reset_password]) VALUES (N'qtai0209', N'qtai0209', N'adsad', N'qtai2901@gmail.com', N'noimage.jpg', NULL, N'0316464642', NULL)
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Image], [Address], [TelePhone], [Reset_password]) VALUES (N'qtai2901', N'qtai0209', N'Quốc Tài', N'qtai307@gmail.com', N'MW300RE_un_V3_28_normal_3.00_20180113082312.jpg', N'', N'0975923903', NULL)
GO
SET IDENTITY_INSERT [dbo].[Authorities] ON 

INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (1, N'qtai2901', N'DIRE')
SET IDENTITY_INSERT [dbo].[Authorities] OFF
GO
SET IDENTITY_INSERT [dbo].[Categories] ON 

INSERT [dbo].[Categories] ([CategoryId], [Name]) VALUES (1, N'Loại cứng')
INSERT [dbo].[Categories] ([CategoryId], [Name]) VALUES (2, N'loại mềm')
SET IDENTITY_INSERT [dbo].[Categories] OFF
GO
SET IDENTITY_INSERT [dbo].[Products] ON 

INSERT [dbo].[Products] ([ProductId], [Name], [Quantity], [UnitPrice], [Discount], [Image1], [Image2], [Image3], [Image4], [Image5], [EnteredDay], [Discription], [CategoryId], [HotSale], [OldPrice], [Supplier]) VALUES (1, N'xoài non', 100, 200000, 0, N'mango-51995_640.jpg', N'', N'', N'', N'5sao.png', CAST(N'2023-01-20' AS Date), N'xoài ngon chua lè chua lét', 1, N'hot-icon.gif', 0, N'xiaomi')
INSERT [dbo].[Products] ([ProductId], [Name], [Quantity], [UnitPrice], [Discount], [Image1], [Image2], [Image3], [Image4], [Image5], [EnteredDay], [Discription], [CategoryId], [HotSale], [OldPrice], [Supplier]) VALUES (2, N'Kiwi Kiwi', 122, 100000, 12, N'kiwi-1432088_640.jpg', N'', N'', N'', N'5sao.png', CAST(N'2023-10-12' AS Date), N'kawai kawai', 2, N'white-img.png', 0, N'mercusys')
INSERT [dbo].[Products] ([ProductId], [Name], [Quantity], [UnitPrice], [Discount], [Image1], [Image2], [Image3], [Image4], [Image5], [EnteredDay], [Discription], [CategoryId], [HotSale], [OldPrice], [Supplier]) VALUES (3, N'Khớm', 12, 129000, 32, N'pineapple-275927_640.jpg', N'', N'', N'', N'5sao.png', CAST(N'2003-09-12' AS Date), N'khớm thơm ngon', 1, N'hot-icon.gif', 0, N'toto-link')
INSERT [dbo].[Products] ([ProductId], [Name], [Quantity], [UnitPrice], [Discount], [Image1], [Image2], [Image3], [Image4], [Image5], [EnteredDay], [Discription], [CategoryId], [HotSale], [OldPrice], [Supplier]) VALUES (4, N'Cam Mĩ', 34, 230000, 0, N'pexels-dominika-roseclay-2090900.jpg', N'', N'', N'', N'5sao.png', CAST(N'2023-09-23' AS Date), N'cam siêu tươi ngon', 2, N'hot-icon.gif', 0, N'xiaomi')
INSERT [dbo].[Products] ([ProductId], [Name], [Quantity], [UnitPrice], [Discount], [Image1], [Image2], [Image3], [Image4], [Image5], [EnteredDay], [Discription], [CategoryId], [HotSale], [OldPrice], [Supplier]) VALUES (5, N'Trái Vải', 300, 349900, 0, N'lychees-520481_640.jpg', N'', N'', N'', N'5sao.png', CAST(N'2023-05-06' AS Date), N'Vải ngọt liệm, siêu ngon', 2, N'white-img.png', 0, N'asus')
INSERT [dbo].[Products] ([ProductId], [Name], [Quantity], [UnitPrice], [Discount], [Image1], [Image2], [Image3], [Image4], [Image5], [EnteredDay], [Discription], [CategoryId], [HotSale], [OldPrice], [Supplier]) VALUES (6, N'Dưa hấu', 40, 150000, 12, N'watermelon-1969949_640.jpg', N'', N'', N'', N'4sao.png', CAST(N'2023-04-12' AS Date), N'Dưa hấu mát lạnh, ăn là ghiền', 1, N'hot-icon.gif', 0, N'tenda')
INSERT [dbo].[Products] ([ProductId], [Name], [Quantity], [UnitPrice], [Discount], [Image1], [Image2], [Image3], [Image4], [Image5], [EnteredDay], [Discription], [CategoryId], [HotSale], [OldPrice], [Supplier]) VALUES (7, N'Dừa', 60, 30000, 33, N'coconut-1123738_640.jpg', N'', N'', N'', N'5sao.png', CAST(N'2023-04-22' AS Date), N'Dừa thanh mát, uống là mê', 1, N'hot-icon.gif', 0, N'tp-link')
INSERT [dbo].[Products] ([ProductId], [Name], [Quantity], [UnitPrice], [Discount], [Image1], [Image2], [Image3], [Image4], [Image5], [EnteredDay], [Discription], [CategoryId], [HotSale], [OldPrice], [Supplier]) VALUES (8, N'Dâu tằm', 120, 23000, 10, N'raspberries-2650342_640.jpg', N'', N'', N'', N'4sao.png', CAST(N'2023-03-11' AS Date), N'Dầu tằm siêu ngon, ngọt nước', 2, N'white-img.png', 0, N'asus')
INSERT [dbo].[Products] ([ProductId], [Name], [Quantity], [UnitPrice], [Discount], [Image1], [Image2], [Image3], [Image4], [Image5], [EnteredDay], [Discription], [CategoryId], [HotSale], [OldPrice], [Supplier]) VALUES (9, N'Jerry', 120, 12000, 0, N'berry-1239092_640.jpg', N'', N'', N'', N'5sao.png', CAST(N'2023-03-10' AS Date), N'nhập khẩu nước ngoài uy tín', 2, N'hot-icon.gif', 0, N'tp-link')
INSERT [dbo].[Products] ([ProductId], [Name], [Quantity], [UnitPrice], [Discount], [Image1], [Image2], [Image3], [Image4], [Image5], [EnteredDay], [Discription], [CategoryId], [HotSale], [OldPrice], [Supplier]) VALUES (10, N'Dâu tây', 200, 40000, 0, N'fruits-2200001_640.jpg', N'', N'', N'', N'5sao.png', CAST(N'2023-11-03' AS Date), N'Dâu tây đà lạt siêu ngọt và chua ', 2, N'white-img.png', 0, N'asus')
SET IDENTITY_INSERT [dbo].[Products] OFF
GO
INSERT [dbo].[Roles] ([RoleId], [Name]) VALUES (N'CUST', N'Customers')
INSERT [dbo].[Roles] ([RoleId], [Name]) VALUES (N'DIRE', N'Directors')
INSERT [dbo].[Roles] ([RoleId], [Name]) VALUES (N'STAF', N'Staffs')
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UK23fux5pe6yss1vck8iv9juegn]    Script Date: 19/11/2023 12:18:49 CH ******/
ALTER TABLE [dbo].[Authorities] ADD  CONSTRAINT [UK23fux5pe6yss1vck8iv9juegn] UNIQUE NONCLUSTERED 
(
	[Username] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UKef7fbpy09qu6267gf071q71we]    Script Date: 19/11/2023 12:18:49 CH ******/
ALTER TABLE [dbo].[Authorities] ADD  CONSTRAINT [UKef7fbpy09qu6267gf071q71we] UNIQUE NONCLUSTERED 
(
	[Username] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Authorities]  WITH CHECK ADD  CONSTRAINT [FK_Authorities_Accounts] FOREIGN KEY([Username])
REFERENCES [dbo].[Accounts] ([Username])
GO
ALTER TABLE [dbo].[Authorities] CHECK CONSTRAINT [FK_Authorities_Accounts]
GO
ALTER TABLE [dbo].[Authorities]  WITH CHECK ADD  CONSTRAINT [FK_Authorities_Roles] FOREIGN KEY([RoleId])
REFERENCES [dbo].[Roles] ([RoleId])
GO
ALTER TABLE [dbo].[Authorities] CHECK CONSTRAINT [FK_Authorities_Roles]
GO
ALTER TABLE [dbo].[Favorites]  WITH CHECK ADD  CONSTRAINT [FK_Favorites_Accounts] FOREIGN KEY([Username])
REFERENCES [dbo].[Accounts] ([Username])
GO
ALTER TABLE [dbo].[Favorites] CHECK CONSTRAINT [FK_Favorites_Accounts]
GO
ALTER TABLE [dbo].[Favorites]  WITH CHECK ADD  CONSTRAINT [FK_Favorites_Products] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Products] ([ProductId])
GO
ALTER TABLE [dbo].[Favorites] CHECK CONSTRAINT [FK_Favorites_Products]
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetails_Orders] FOREIGN KEY([OrderId])
REFERENCES [dbo].[Orders] ([OrderId])
GO
ALTER TABLE [dbo].[OrderDetails] CHECK CONSTRAINT [FK_OrderDetails_Orders]
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetails_Products] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Products] ([ProductId])
GO
ALTER TABLE [dbo].[OrderDetails] CHECK CONSTRAINT [FK_OrderDetails_Products]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Accounts] FOREIGN KEY([Username])
REFERENCES [dbo].[Accounts] ([Username])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_Accounts]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_Categories] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Categories] ([CategoryId])
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_Categories]
GO
ALTER TABLE [dbo].[Statitic]  WITH CHECK ADD  CONSTRAINT [FK_Statitic_OrderDetails] FOREIGN KEY([OrderDetailId])
REFERENCES [dbo].[OrderDetails] ([OrderDetailId])
GO
ALTER TABLE [dbo].[Statitic] CHECK CONSTRAINT [FK_Statitic_OrderDetails]
GO
ALTER TABLE [dbo].[Statitic]  WITH CHECK ADD  CONSTRAINT [FK_Statitic_Orders] FOREIGN KEY([OrderId])
REFERENCES [dbo].[Orders] ([OrderId])
GO
ALTER TABLE [dbo].[Statitic] CHECK CONSTRAINT [FK_Statitic_Orders]
GO
