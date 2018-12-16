USE master
GO 
CREATE DATABASE [DoAn]
GO
USE [DoAn]
GO
/****** Object:  Table [dbo].[tbl_album_anh]    Script Date: 06-Dec-18 18:29:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_album_anh](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[anh1] [nvarchar](250) NULL,
	[anh2] [nvarchar](250) NULL,
	[anh3] [nvarchar](250) NULL,
	[anh4] [nvarchar](250) NULL,
 CONSTRAINT [PK_tbl_album_anh] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbl_chitietdonhang]    Script Date: 06-Dec-18 18:29:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_chitietdonhang](
	[id_dondathang] [int] NOT NULL,
	[id_sanpham] [int] NOT NULL,
	[soluong] [int] NULL,
	[gia] [decimal](18, 0) NULL,
PRIMARY KEY CLUSTERED 
(
	[id_dondathang] ASC,
	[id_sanpham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbl_danhmuc]    Script Date: 06-Dec-18 18:29:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_danhmuc](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[ten] [nchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbl_dondathang]    Script Date: 06-Dec-18 18:29:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_dondathang](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[id_khachhang] [int] NULL,
	[id_nhanvien] [int] NULL,
	[ngaylap] [date] NULL,
	[tonggia] [decimal](18, 0) NULL,
	[tinhtrang] [nvarchar](50) NULL,
	[ghichu] [nvarchar](50) NULL,
 CONSTRAINT [PK__tbl_dond__3213E83F268A181D] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbl_khachhang]    Script Date: 06-Dec-18 18:29:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_khachhang](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[ten] [nvarchar](50) NULL,
	[sdt] [decimal](18, 0) NULL,
	[id_themdiachi] [int] NOT NULL,
	[matkhau] [nchar](10) NULL,
	[email] [varchar](100) NULL,
 CONSTRAINT [PK__tbl_khac__3213E83F5332CA3F] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_nguoinhan]    Script Date: 06-Dec-18 18:29:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_nguoinhan](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[ten] [nvarchar](50) NULL,
	[sdt] [nchar](10) NULL,
	[diachi1] [nvarchar](250) NULL,
	[diachi2] [nvarchar](250) NULL,
	[diachi3] [nvarchar](250) NULL,
 CONSTRAINT [PK_tbl_nguoinhan] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbl_nhanvien]    Script Date: 06-Dec-18 18:29:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_nhanvien](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[ten] [nvarchar](100) NULL,
	[sdt] [decimal](18, 0) NULL,
	[email] [varchar](100) NULL,
	[matkhau] [varchar](50) NULL,
	[ngaysinh] [date] NULL,
 CONSTRAINT [PK__tbl_nhan__3213E83F7D0D328F] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_nhasanxuat]    Script Date: 06-Dec-18 18:29:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_nhasanxuat](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[ten] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_quyen]    Script Date: 06-Dec-18 18:29:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_quyen](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[ten] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbl_sanpham]    Script Date: 06-Dec-18 18:29:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_sanpham](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[id_danhmuc] [int] NULL,
	[ten] [nvarchar](150) NULL,
	[id_album_anh] [int] NULL,
	[gia] [decimal](12, 0) NULL,
	[soluong] [int] NULL,
	[trongluong] [nchar](10) NULL,
	[ROM] [nchar](10) NULL,
	[RAM] [nchar](10) NULL,
	[thenho] [nvarchar](50) NULL,
	[camera_truoc] [nchar](10) NULL,
	[camera_sau] [nchar](10) NULL,
	[pin] [int] NULL,
	[baohanh] [nchar](50) NULL,
	[bluetooth] [int] NULL,
	[id_nhasanxuat] [int] NULL,
	[CPU] [varchar](50) NULL,
	[manhinh] [nvarchar](50) NULL,
 CONSTRAINT [PK_tbl_sanpham] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_taikhoan]    Script Date: 06-Dec-18 18:29:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_taikhoan](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[id_quyen] [int] NULL,
	[tentaikhoan] [nvarchar](50) NULL,
	[matkhau] [varchar](30) NULL,
	[trangthai] [bit] NULL,
 CONSTRAINT [PK__tbl_nguo__3213E83FE3021EEB] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_album_anh] ON 

INSERT [dbo].[tbl_album_anh] ([id], [anh1], [anh2], [anh3], [anh4]) VALUES (1, N'http://vn-test-11.slatic.net/original/14a2bfc5860bf1d4fb8eb7ed724da646.jpg_720x720q80.jpg_.webp', N'http://vn-test-11.slatic.net/original/a4e5fc9339be99428aede0c7cbd4c9b5.jpg_720x720q80.jpg_.webp', N'http://vn-test-11.slatic.net/original/026689afa37fba2ba7dbb197689f2b35.jpg_720x720q80.jpg_.webp', N'http://vn-test-11.slatic.net/original/3b1834eb79e643b33b9d42a9de07b69f.jpg_720x720q80.jpg_.webp')
INSERT [dbo].[tbl_album_anh] ([id], [anh1], [anh2], [anh3], [anh4]) VALUES (2, N'http://vn-test-11.slatic.net/original/14a2bfc5860bf1d4fb8eb7ed724da646.jpg_720x720q80.jpg_.webp', N'http://vn-test-11.slatic.net/original/a4e5fc9339be99428aede0c7cbd4c9b5.jpg_720x720q80.jpg_.webp', N'http://vn-test-11.slatic.net/original/026689afa37fba2ba7dbb197689f2b35.jpg_720x720q80.jpg_.webp', N'http://vn-test-11.slatic.net/original/3b1834eb79e643b33b9d42a9de07b69f.jpg_720x720q80.jpg_.webp')
INSERT [dbo].[tbl_album_anh] ([id], [anh1], [anh2], [anh3], [anh4]) VALUES (3, N'http://vn-test-11.slatic.net/p/2/apple-iphone-x-256gb-space-grey-0007-52184812-fc05f7271ca859ae3faef43088d1f49f.jpg_720x720q80.jpg_.webp', N'http://vn-test-11.slatic.net/p/2/apple-iphone-x-256gb-space-grey-0007-52184812-961ee0c3631db47f1ff793452890c94b.jpg_720x720q80.jpg_.webp', N'http://vn-test-11.slatic.net/p/2/apple-iphone-x-256gb-space-grey-0007-52184812-39edc3c40ac6880e5ae440f89b43a0af.jpg_720x720q80.jpg_.webp', N'http://vn-test-11.slatic.net/p/2/apple-iphone-x-256gb-silver-0231-33184812-3a43e9f197455deb908fc6a1cfa569d3.jpg_720x720q80.jpg_.webp')
INSERT [dbo].[tbl_album_anh] ([id], [anh1], [anh2], [anh3], [anh4]) VALUES (4, N'http://vn-test-11.slatic.net/original/2d678dfd04247de32c771c906a750024.jpg_720x720q80.jpg_.webp', N'http://vn-test-11.slatic.net/original/d903041790d9a570f6b0adc16c887d64.jpg_720x720q80.jpg_.webp', N'http://vn-test-11.slatic.net/original/592f6f1d4189c0e2811f5483048a4f99.jpg_720x720q80.jpg_.webp', N'http://vn-test-11.slatic.net/original/2f0def0efa7a5d2873ea3db5ad8bc9f5.jpg_720x720q80.jpg_.webp')
INSERT [dbo].[tbl_album_anh] ([id], [anh1], [anh2], [anh3], [anh4]) VALUES (5, N'http://vn-test-11.slatic.net/original/21f92b09dc151e61bd787e3d6ff72e50.jpg_720x720q80.jpg_.webp', N'http://vn-test-11.slatic.net/original/e840b545303cfe066beac20c8d5b824f.jpg_720x720q80.jpg_.webp', N'http://vn-test-11.slatic.net/original/54f93bc28e717a5898b5236fba6dfe42.jpg_720x720q80.jpg_.webp', N'http://vn-test-11.slatic.net/original/1c917447763fbd7d3610b22bf3d568cf.jpg_720x720q80.jpg_.webp')
INSERT [dbo].[tbl_album_anh] ([id], [anh1], [anh2], [anh3], [anh4]) VALUES (6, N'http://vn-test-11.slatic.net/original/c2ac66e3f87bf3783451058b6589f12c.jpg_720x720q80.jpg_.webp', N'http://vn-test-11.slatic.net/original/a386a0ad649f1189677d966f9a165dd6.jpg_720x720q80.jpg_.webp', N'http://vn-test-11.slatic.net/original/7faa4ce074640db2d6dc43150acc8c0b.jpg_720x720q80.jpg_.webp', N'http://vn-test-11.slatic.net/original/508aca650eb44be19c04789f8ad7ae55.jpg_720x720q80.jpg_.webp')
INSERT [dbo].[tbl_album_anh] ([id], [anh1], [anh2], [anh3], [anh4]) VALUES (7, N'http://vn-test-11.slatic.net/original/29043032bbe9af442cbe652ade9cc39c.jpg_720x720q80.jpg_.webp', N'http://vn-test-11.slatic.net/original/bd5469a67c25abd1ed4e8d58a7d4e742.jpg_720x720q80.jpg_.webp', N'http://vn-test-11.slatic.net/original/6408feef9dc8ea5a07305eba67b05964.jpg_720x720q80.jpg_.webp', N'http://vn-test-11.slatic.net/p/2/sammsung-note8-den-hang-nhap-khau-8503-31252883-870abf8bcf0c394f51fb3cc5657e5ccb-catalog.jpg_720x720q80.jpg_.webp')
INSERT [dbo].[tbl_album_anh] ([id], [anh1], [anh2], [anh3], [anh4]) VALUES (8, N'http://vn-test-11.slatic.net/p/2/samsung-galaxy-s8-plus-midnight-black-128g-ram-6g-hang-nhap-khau-0858-4061995-66414b3b910cbc014c2bef10570215d5-catalog.jpg_720x720q80.jpg_.webp', N'http://vn-test-11.slatic.net/p/2/samsung-galaxy-s8-plus-midnight-black-128g-ram-6g-hang-nhap-khau-0858-4061995-050a5231cfd9802ca65b334ff53e2145-catalog.jpg_720x720q80.jpg_.webp', N'http://vn-test-11.slatic.net/p/2/samsung-galaxy-s8-plus-midnight-black-128g-ram-6g-hang-nhap-khau-0858-4061995-8d42dbfd15a5444ff7a19ced9c358d35-catalog.jpg_720x720q80.jpg_.webp', N'http://vn-test-11.slatic.net/p/2/dien-thoai-samsung-galaxy-s8-plus-hang-hang-phan-phoi-0471-37143772-663b2fabfb819c738deacbedd71d3c20-catalog.jpg_720x720q80.jpg_.webp')
INSERT [dbo].[tbl_album_anh] ([id], [anh1], [anh2], [anh3], [anh4]) VALUES (9, N'http://vn-test-11.slatic.net/original/870b3c16177c415e63a2820738cd4c97.jpg_720x720q80.jpg_.webp', N'http://vn-test-11.slatic.net/original/9ef41129bcbb20a95056ffbc68fd5937.jpg_720x720q80.jpg_.webp', N'http://vn-test-11.slatic.net/original/294b9aa8d384c230afce87e3069938d8.jpg_720x720q80.jpg_.webp', N'http://vn-test-11.slatic.net/original/8d83204becb734928e9cf825eb8c64e0.jpg_720x720q80.jpg_.webp')
INSERT [dbo].[tbl_album_anh] ([id], [anh1], [anh2], [anh3], [anh4]) VALUES (10, N'http://vn-test-11.slatic.net/p/e2da13fbd1f2261093e077ea328c2d4c.jpg_720x720q80.jpg_.webp', N'http://vn-test-11.slatic.net/p/e8e9de0568001e51a0aea1bea8d0fc22.jpg_720x720q80.jpg_.webp', N'http://vn-test-11.slatic.net/p/eb12a56d3d5064fc203eef29bcce21fe.jpg_720x720q80.jpg_.webp', N'http://vn-test-11.slatic.net/p/5c09c943d56e7a0ffb9205bf9bf3c7da.jpg_720x720q80.jpg_.webp')
INSERT [dbo].[tbl_album_anh] ([id], [anh1], [anh2], [anh3], [anh4]) VALUES (11, N'http://vn-test-11.slatic.net/p/2/oppo-f3-plus-2062-8530475-3f6f737b86285622f429c246feaaa74b-catalog.jpg_720x720q80.jpg_.webp', N'http://vn-test-11.slatic.net/p/2/oppo-f3-plus-4gb-64gb-vang-hang-phan-phoi-chinh-thuc-5727-51301571-e3a888f99584900ddd208805f85a8418-catalog.jpg_720x720q80.jpg_.webp', N'https://cf.shopee.vn/file/f7141c9ed94704d94ca3d34df6bcd9df', N'https://cf.shopee.vn/file/6f013c6cdbb4d961361755266605b2bf')
INSERT [dbo].[tbl_album_anh] ([id], [anh1], [anh2], [anh3], [anh4]) VALUES (12, N'http://vn-test-11.slatic.net/original/c731294871c1aca222a5f5047357f2f0.jpg_720x720q80.jpg_.webp', N'http://vn-test-11.slatic.net/original/de61510cb830595c01681deb0d95096c.jpg_720x720q80.jpg_.webp', N'http://vn-test-11.slatic.net/original/fc4aa3c1809e8d8b6d456f38e8ef4c66.jpg_720x720q80.jpg_.webp', N'http://vn-test-11.slatic.net/original/3f6c539f4f2e5f82ea0524dec4487c09.jpg_720x720q80.jpg_.webp')
INSERT [dbo].[tbl_album_anh] ([id], [anh1], [anh2], [anh3], [anh4]) VALUES (13, N'http://vn-test-11.slatic.net/original/c725d0e62a8254bc87a85a60577c4f5b.jpg_720x720q80.jpg_.webp', N'http://vn-test-11.slatic.net/original/21ccdab3aa86cf60d30b3f14516d2d94.jpg_720x720q80.jpg_.webp', N'http://vn-test-11.slatic.net/original/da36f160cad7676903117bfbc6f2687c.jpg_720x720q80.jpg_.webp', N'http://vn-test-11.slatic.net/original/9f3e3a1d05eef97b4bb0a57d887e0fe5.jpg_720x720q80.jpg_.webp')
INSERT [dbo].[tbl_album_anh] ([id], [anh1], [anh2], [anh3], [anh4]) VALUES (14, N'http://vn-test-11.slatic.net/p/9feee3a759d276b30ed301a404e17fbd.jpg_720x720q80.jpg_.webp', N'http://vn-test-11.slatic.net/p/22e8544c87c9b3c05dd22261c1c89605.jpg_720x720q80.jpg_.webp', N'http://vn-test-11.slatic.net/p/ed227341430d663f609501642acdd73f.jpg_720x720q80.jpg_.webp', N'http://vn-test-11.slatic.net/p/52716db9cdcc786c644300cd95b1252c.jpg_720x720q80.jpg_.webp')
INSERT [dbo].[tbl_album_anh] ([id], [anh1], [anh2], [anh3], [anh4]) VALUES (15, N'http://vn-test-11.slatic.net/original/d552332e98c38b2ffcc36661b4d8f27b.jpg_720x720q80.jpg_.webp', N'http://vn-test-11.slatic.net/original/9da7d0cb48573dc66b2f17260182864d.jpg_720x720q80.jpg_.webp', N'http://vn-test-11.slatic.net/original/291092a15393fefc4280f0be16fd14ad.jpg_720x720q80.jpg_.webp', N'http://vn-test-11.slatic.net/original/3e4f2990c16b2d9288793aec9472fc5f.jpg_720x720q80.jpg_.webp')
INSERT [dbo].[tbl_album_anh] ([id], [anh1], [anh2], [anh3], [anh4]) VALUES (16, N'http://vn-test-11.slatic.net/original/c2d29f741502a4596c27a6a2260247ef.jpg_720x720q80.jpg_.webp', N'http://vn-test-11.slatic.net/original/fc2bbeab60cac8d9db243c62b289214a.jpg_720x720q80.jpg_.webp', N'http://vn-test-11.slatic.net/original/e4fe919e4be1f1079caece10364acf78.jpg_720x720q80.jpg_.webp', N'http://vn-test-11.slatic.net/original/9ade110e39ee5d50ad8f0b4a75ac4a44.jpg_720x720q80.jpg_.webp')
INSERT [dbo].[tbl_album_anh] ([id], [anh1], [anh2], [anh3], [anh4]) VALUES (17, N'https://salt.tikicdn.com/cache/w1200/ts/product/32/55/c0/d6cff9b722e9a5b6941d03b616e4edc5.jpg', N'http://vn-test-11.slatic.net/original/b5a27636af87982802a3157719ccce83.jpg_720x720q80.jpg_.webp', N'https://salt.tikicdn.com/cache/w1200/ts/product/a5/4b/a4/bab13016b33745422e02c546a8b5a6a0.jpg', N'https://cdn.fptshop.com.vn/Uploads/Originals/2018/5/14/636618937779295197_3.jpg')
INSERT [dbo].[tbl_album_anh] ([id], [anh1], [anh2], [anh3], [anh4]) VALUES (18, N'http://vn-test-11.slatic.net/original/4f2fef214dd0e1a216f2c89e9f5144ef.jpg_720x720q80.jpg_.webp', N'http://vn-test-11.slatic.net/original/748790faed0101fa1f3f88f2aca5ebd2.jpg_720x720q80.jpg_.webp', N'http://vn-test-11.slatic.net/original/61e7f8716685b8b1d99295fcf557e0c1.jpg_720x720q80.jpg_.webp', N'http://vn-test-11.slatic.net/original/9c939b95b2ed8ed08f471c621e3cbddc.jpg_720x720q80.jpg_.webp')
INSERT [dbo].[tbl_album_anh] ([id], [anh1], [anh2], [anh3], [anh4]) VALUES (19, N'http://vn-test-11.slatic.net/p/2/dien-thoai-asus-zenfone-max-plus-m1-zb570tl-black-tang-op-lung-hang-phan-phoi-chinh-thuc-0706-52906643-6a67577cdcdea5a63ee43c33428b17e6-catalog.jpg_720x720q80.jpg_.webp', N'https://cdn.fptshop.com.vn/Uploads/Originals/2018/9/19/636729634825832448_asus-zenfone-max-plus-m1-silver-3.jpg', N'https://cdn.fptshop.com.vn/Uploads/Originals/2018/9/19/636729634825802448_asus-zenfone-max-plus-m1-silver-1.jpg', N'https://cdn.fptshop.com.vn/Uploads/Originals/2018/9/19/636729634825552448_asus-zenfone-max-plus-m1-silver-2.jpg')
INSERT [dbo].[tbl_album_anh] ([id], [anh1], [anh2], [anh3], [anh4]) VALUES (20, N'http://vn-test-11.slatic.net/p/2/asus-zenfone-3-max-55-den-hang-phan-phoi-chinh-thuc-0469-0538575-68f58a6fc9f537a899b1ba67af650248-catalog.jpg_720x720q80.jpg_.webp', N'http://vn-test-11.slatic.net/p/2/asus-zenfone-3-max-5-5-vang-hang-phan-phoi-chinh-thuc-8622-3206255-baa9dc11a12b25aa01e5b5108371d9e4-catalog.jpg_720x720q80.jpg_.webp', N'https://cdn.tgdd.vn/Products/Images/42/89790/asus-zenfone-3-max-zc553kl-400-460-400x460.png', N'http://media3.scdn.vn/img2/2017/3_9/9LbUCK_simg_de2fe0_500x500_maxb.png')
INSERT [dbo].[tbl_album_anh] ([id], [anh1], [anh2], [anh3], [anh4]) VALUES (21, N'http://vn-test-11.slatic.net/original/6df5987fdeec061e04723871b7299edd.jpg_720x720q80.jpg_.webp', N'http://vn-test-11.slatic.net/original/ed2d9d66415bd9e3d6941f2a9ad35b50.jpg_720x720q80.jpg_.webp', N'http://vn-test-11.slatic.net/original/e86b0e9ac9b52ec8219b8df7faf786e1.jpg_720x720q80.jpg_.webp', N'http://vn-test-11.slatic.net/original/ceced576a9c73c76a2ed7a22dc76e6f8.jpg_720x720q80.jpg_.webp')
INSERT [dbo].[tbl_album_anh] ([id], [anh1], [anh2], [anh3], [anh4]) VALUES (22, N'http://vn-test-11.slatic.net/original/5bcbdc52f45ec639a88175ee4a322de1.jpg_720x720q80.jpg_.webp', N'http://vn-test-11.slatic.net/original/4f1ad130bc648c08e851fb16af22de30.jpg_720x720q80.jpg_.webp', N'http://vn-test-11.slatic.net/original/48182baa3d24e0abae6715d7248effc4.jpg_720x720q80.jpg_.webp', N'http://vn-test-11.slatic.net/original/e7edc6b70982802bdf087387539b76a1.jpg_720x720q80.jpg_.webp')
INSERT [dbo].[tbl_album_anh] ([id], [anh1], [anh2], [anh3], [anh4]) VALUES (23, N'http://vn-test-11.slatic.net/original/e76ef86d1f4a6bc04c0feac8b3992604.jpg_720x720q80.jpg_.webp', N'http://vn-test-11.slatic.net/original/c7fd672c24db8bdba390d8c8178f4c45.jpg_720x720q80.jpg_.webp', N'http://vn-test-11.slatic.net/original/ffe8661fa237221abab9d82b01a74737.jpg_720x720q80.jpg_.webp', N'http://vn-test-11.slatic.net/original/c61c07103cb24f819f1b1d2c161b0a3f.jpg_720x720q80.jpg_.webp')
INSERT [dbo].[tbl_album_anh] ([id], [anh1], [anh2], [anh3], [anh4]) VALUES (24, N'http://vn-test-11.slatic.net/original/7dcdaeb5a0f8039702f0958c7ae52f24.jpg_720x720q80.jpg_.webp', N'http://vn-test-11.slatic.net/original/92ec2abd8e7f77b384d1aefc028aea5d.jpg_720x720q80.jpg_.webp', N'http://vn-test-11.slatic.net/original/1ea28e2fba7a54b93f84becabaa073f5.jpg_720x720q80.jpg_.webp', N'http://vn-test-11.slatic.net/original/73918aed006eb7c7ff4e9d5d237a2912.jpg_720x720q80.jpg_.webp')
INSERT [dbo].[tbl_album_anh] ([id], [anh1], [anh2], [anh3], [anh4]) VALUES (25, N'http://vn-test-11.slatic.net/p/2/apple-ipad-105-inch-wi-fi-64gb-gold-1923-02331753-5bd4a91d0feff00624d394d79ba1c352-catalog.jpg_720x720q80.jpg_.webp', N'http://vn-test-11.slatic.net/p/2/apple-ipad-105-inch-wi-fi-64gb-gold-1930-02331753-e256e058efd9599feeb8e149c01716f7-catalog.jpg_720x720q80.jpg_.webp', N'https://cdn.tgdd.vn/Products/Images/522/106036/ipad-pro-105-inch-wifi-64gb-2017-400-400x460.png', N'https://cdn.tgdd.vn/Products/Images/522/106036/ipad-pro-105-inch-wifi-64gb-2017-xam-2-org.jpg')
INSERT [dbo].[tbl_album_anh] ([id], [anh1], [anh2], [anh3], [anh4]) VALUES (26, N'http://vn-test-11.slatic.net/original/854434013535c26d344ff1a6d2b89887.jpg_720x720q80.jpg_.webp', N'http://vn-test-11.slatic.net/original/036b82962428764a97f37a522d64202b.jpg_720x720q80.jpg_.webp', N'http://vn-test-11.slatic.net/original/73b00f738cfb6ba73a215650c3e6335e.jpg_720x720q80.jpg_.webp', N'http://vn-test-11.slatic.net/original/6099d3ca657c9b7817288c447634f480.jpg_720x720q80.jpg_.webp')
INSERT [dbo].[tbl_album_anh] ([id], [anh1], [anh2], [anh3], [anh4]) VALUES (27, N'http://media3.scdn.vn/img2/2018/4_6/Y0y3pd_simg_de2fe0_500x500_maxb.jpg', N'http://media3.scdn.vn/img2/2018/4_6/ylWVB9_simg_de2fe0_500x500_maxb.jpg', N'http://media3.scdn.vn/img2/2018/4_6/0lWFxp_simg_de2fe0_500x500_maxb.jpg', N'http://media3.scdn.vn/img2/2018/4_6/I3PdDi_simg_de2fe0_500x500_maxb.jpg')
INSERT [dbo].[tbl_album_anh] ([id], [anh1], [anh2], [anh3], [anh4]) VALUES (28, N'https://shopdunk.com/wp-content/uploads/2016/11/ipad-air-2-den-4g-1.png', N'https://shopdunk.com/wp-content/uploads/2016/11/ipad-air-2-den-4g-2.png', N'https://shopdunk.com/wp-content/uploads/2016/11/ipad-air-2-den-4g-3.png', N'https://shopdunk.com/wp-content/uploads/2016/11/ipad-air-2-den-4g-4.png')
INSERT [dbo].[tbl_album_anh] ([id], [anh1], [anh2], [anh3], [anh4]) VALUES (29, N'http://vn-test-11.slatic.net/original/cf696561bfc2297c8cc8afd15378d1a4.jpg_720x720q80.jpg_.webp', N'http://vn-test-11.slatic.net/p/may-tinh-bang-samsung-galaxy-tab-a6-p585-16gb-trang-hang-phan-phoi-chinh-thuc-4844-5752092-312d4c7dcd5da24beae6c552506b2227-catalog.jpg_720x720q80.jpg_.webp', N'http://vn-test-11.slatic.net/p/may-tinh-bang-samsung-galaxy-tab-a6-p585-16gb-trang-hang-phan-phoi-chinh-thuc-4844-5752092-3a54126ce7179fbe5a3809ecf2a598eb-catalog.jpg_720x720q80.jpg_.webp', N'http://vn-test-11.slatic.net/p/may-tinh-bang-samsung-galaxy-tab-a6-p585-16gb-trang-hang-phan-phoi-chinh-thuc-4844-5752092-4e9600338a1e5b7ce3326d36a7d77df4-catalog.jpg_720x720q80.jpg_.webp')
INSERT [dbo].[tbl_album_anh] ([id], [anh1], [anh2], [anh3], [anh4]) VALUES (30, N'http://vn-test-11.slatic.net/original/f98ff2682bd203d0c305b81295912da2.jpg_720x720q80.jpg_.webp', N'http://vn-test-11.slatic.net/original/5395bcf9f7339ad217f702d2a89e5381.jpg_720x720q80.jpg_.webp', N'http://vn-test-11.slatic.net/original/f98ff2682bd203d0c305b81295912da2.jpg_720x720q80.jpg_.webp', N'http://vn-test-11.slatic.net/original/d413206f536e2e2f5348b70ffb4b8f33.jpg_720x720q80.jpg_.webp')
INSERT [dbo].[tbl_album_anh] ([id], [anh1], [anh2], [anh3], [anh4]) VALUES (31, N'http://my-test-11.slatic.net/original/47286c80acb5673c58f365a2d7e0ca5a.jpg_720x720q80.jpg_.webp', N'http://my-test-11.slatic.net/original/dd1295f6cb2c0af38b23c19ccd70e7d9.jpg_720x720q80.jpg_.webp', N'http://my-test-11.slatic.net/original/d852d948c2d33bc4ae95cef8583a07a6.jpg_720x720q80.jpg_.webp', N'http://my-test-11.slatic.net/original/4a29fe3eb5e48ea29d207a4534173fef.jpg_720x720q80.jpg_.webp')
INSERT [dbo].[tbl_album_anh] ([id], [anh1], [anh2], [anh3], [anh4]) VALUES (32, N'http://vn-test-11.slatic.net/original/b5a114cde568a8a674ac089ee35b7649.jpg_720x720q80.jpg_.webp', N'http://images.samsung.com/is/image/samsung/uk-galaxy-tab-s-8-4-t705-sm-t705nzwabtu-000249040-front-white?$PD_GALLERY_L_JPG$', N'http://images.samsung.com/is/image/samsung/uk-galaxy-tab-s-8-4-t705-sm-t705nzwabtu-000249049-back-white?$PD_GALLERY_L_JPG$', N'http://images.samsung.com/is/image/samsung/uk-galaxy-tab-s-8-4-t705-sm-t705nzwabtu-000249058-left-white?$PD_GALLERY_L_JPG$')
INSERT [dbo].[tbl_album_anh] ([id], [anh1], [anh2], [anh3], [anh4]) VALUES (33, N'https://didongthongminh.vn/upload_images/2017/11/nokia-n1-black.png', N'https://didongthongminh.vn/upload_images/2017/11/nokia-n1-gray.png', N'https://cdn.tgdd.vn/Products/Images/522/70336/nokia-n13-1.jpg', N'https://www.viettablet.com/image/data/nokia/n1/nokia-n1-3.jpg')
INSERT [dbo].[tbl_album_anh] ([id], [anh1], [anh2], [anh3], [anh4]) VALUES (34, N'http://media3.scdn.vn/img2/2018/5_7/woVOpO_simg_d0daf0_800x1200_max.jpg', N'http://media3.scdn.vn/img2/2018/5_7/ZTb2NV_simg_d0daf0_800x1200_max.jpg', N'http://media3.scdn.vn/img2/2018/5_7/yJOdKY_simg_d0daf0_800x1200_max.jpg', N'http://media3.scdn.vn/img2/2018/5_7/7aVvFq_simg_d0daf0_800x1200_max.jpg')
INSERT [dbo].[tbl_album_anh] ([id], [anh1], [anh2], [anh3], [anh4]) VALUES (35, N'http://media3.scdn.vn/img2/2018/7_20/Em5AwQ_simg_d0daf0_800x1200_max.jpg', N'http://media3.scdn.vn/img2/2018/7_20/lpdGaw_simg_d0daf0_800x1200_max.jpg', N'http://media3.scdn.vn/img2/2018/7_20/h6qdMM_simg_d0daf0_800x1200_max.jpg', N'http://media3.scdn.vn/img2/2018/7_20/uRm4bZ_simg_d0daf0_800x1200_max.jpg')
INSERT [dbo].[tbl_album_anh] ([id], [anh1], [anh2], [anh3], [anh4]) VALUES (36, N'https://images.mobilecity.vn/media/images/2018/11/medium-xiaomi-mipad-3-3.jpg', N'https://images.mobilecity.vn/media/images/2018/11/medium-xiaomi-mipad-3-2.jpg', N'https://images.mobilecity.vn/media/images/2018/11/medium-xiaomi-mipad-3-1.jpg', N'https://images.mobilecity.vn/media/images/2016/12/Danh-gia-man-hinh-Xiaomi-Mipad-3-xach-tay-001.jpg')
INSERT [dbo].[tbl_album_anh] ([id], [anh1], [anh2], [anh3], [anh4]) VALUES (37, N'http://image2.geekbuying.com/ggo_pic/2018-06-25/2018062501210281nyziuej.jpg', N'http://image2.geekbuying.com/ggo_pic/2018-06-25/2018062501210451a9iw5zr.jpg', N'http://image2.geekbuying.com/ggo_pic/2018-06-25/2018062501210561bl2g4qt.jpg', N'http://image2.geekbuying.com/ggo_pic/2018-06-25/2018062501211161bzdwu3k.jpg')
SET IDENTITY_INSERT [dbo].[tbl_album_anh] OFF
INSERT [dbo].[tbl_chitietdonhang] ([id_dondathang], [id_sanpham], [soluong], [gia]) VALUES (1, 1, 1, CAST(35000000 AS Decimal(18, 0)))
INSERT [dbo].[tbl_chitietdonhang] ([id_dondathang], [id_sanpham], [soluong], [gia]) VALUES (2, 2, 1, CAST(40000000 AS Decimal(18, 0)))
INSERT [dbo].[tbl_chitietdonhang] ([id_dondathang], [id_sanpham], [soluong], [gia]) VALUES (2, 5, 1, CAST(30000000 AS Decimal(18, 0)))
INSERT [dbo].[tbl_chitietdonhang] ([id_dondathang], [id_sanpham], [soluong], [gia]) VALUES (3, 25, 1, CAST(20000000 AS Decimal(18, 0)))
INSERT [dbo].[tbl_chitietdonhang] ([id_dondathang], [id_sanpham], [soluong], [gia]) VALUES (3, 30, 2, CAST(12000000 AS Decimal(18, 0)))
SET IDENTITY_INSERT [dbo].[tbl_danhmuc] ON 

INSERT [dbo].[tbl_danhmuc] ([id], [ten]) VALUES (1, N'Điện thoai')
INSERT [dbo].[tbl_danhmuc] ([id], [ten]) VALUES (2, N'Tablet    ')
INSERT [dbo].[tbl_danhmuc] ([id], [ten]) VALUES (3, N'Phụ Kiện  ')
INSERT [dbo].[tbl_danhmuc] ([id], [ten]) VALUES (5, N'Khuyến mại')
INSERT [dbo].[tbl_danhmuc] ([id], [ten]) VALUES (6, N'Khác      ')
SET IDENTITY_INSERT [dbo].[tbl_danhmuc] OFF
SET IDENTITY_INSERT [dbo].[tbl_dondathang] ON 

INSERT [dbo].[tbl_dondathang] ([id], [id_khachhang], [id_nhanvien], [ngaylap], [tonggia], [tinhtrang], [ghichu]) VALUES (1, 1, 1, CAST(0xB63D0B00 AS Date), CAST(35000000 AS Decimal(18, 0)), N'đang giao hàng', NULL)
INSERT [dbo].[tbl_dondathang] ([id], [id_khachhang], [id_nhanvien], [ngaylap], [tonggia], [tinhtrang], [ghichu]) VALUES (2, 2, 2, CAST(0xD53D0B00 AS Date), CAST(70000000 AS Decimal(18, 0)), N'đã thanh toán', NULL)
INSERT [dbo].[tbl_dondathang] ([id], [id_khachhang], [id_nhanvien], [ngaylap], [tonggia], [tinhtrang], [ghichu]) VALUES (3, 3, 3, CAST(0xB83D0B00 AS Date), CAST(32000000 AS Decimal(18, 0)), N'đang giao hàng', NULL)
SET IDENTITY_INSERT [dbo].[tbl_dondathang] OFF
SET IDENTITY_INSERT [dbo].[tbl_khachhang] ON 

INSERT [dbo].[tbl_khachhang] ([id], [ten], [sdt], [id_themdiachi], [matkhau], [email]) VALUES (1, N'Lê Văn A', CAST(101 AS Decimal(18, 0)), 1, N'123       ', N'levana@gmail.com')
INSERT [dbo].[tbl_khachhang] ([id], [ten], [sdt], [id_themdiachi], [matkhau], [email]) VALUES (2, N'Lê Văn B', CAST(102 AS Decimal(18, 0)), 1, N'123       ', N'levanb@gmail.com')
INSERT [dbo].[tbl_khachhang] ([id], [ten], [sdt], [id_themdiachi], [matkhau], [email]) VALUES (3, N'Lê Văn C', CAST(103 AS Decimal(18, 0)), 1, N'123       ', N'levanc@gmail.com')
SET IDENTITY_INSERT [dbo].[tbl_khachhang] OFF
SET IDENTITY_INSERT [dbo].[tbl_nguoinhan] ON 

INSERT [dbo].[tbl_nguoinhan] ([id], [ten], [sdt], [diachi1], [diachi2], [diachi3]) VALUES (1, N'Lê Văn A', N'101       ', N'Hà Đông', N'Cầu Giấy', N'Thanh Xuân')
INSERT [dbo].[tbl_nguoinhan] ([id], [ten], [sdt], [diachi1], [diachi2], [diachi3]) VALUES (2, N'Lê Văn B', N'102       ', N'Kim Anh', N'Hai Bà Trưng', N'Hồ Tây')
INSERT [dbo].[tbl_nguoinhan] ([id], [ten], [sdt], [diachi1], [diachi2], [diachi3]) VALUES (3, N'Lê Văn C', N'103       ', N'Ba Đình', N'Long Biên', N'Từ Liêm')
SET IDENTITY_INSERT [dbo].[tbl_nguoinhan] OFF
SET IDENTITY_INSERT [dbo].[tbl_nhanvien] ON 

INSERT [dbo].[tbl_nhanvien] ([id], [ten], [sdt], [email], [matkhau], [ngaysinh]) VALUES (1, N'Trần Văn A', CAST(201 AS Decimal(18, 0)), N'tranvana@gmail.com', N'123', CAST(0xDF1F0B00 AS Date))
INSERT [dbo].[tbl_nhanvien] ([id], [ten], [sdt], [email], [matkhau], [ngaysinh]) VALUES (2, N'Trần Văn B', CAST(202 AS Decimal(18, 0)), N'tranvanb@gmail.com', N'123', CAST(0xE01F0B00 AS Date))
INSERT [dbo].[tbl_nhanvien] ([id], [ten], [sdt], [email], [matkhau], [ngaysinh]) VALUES (3, N'Trần Văn C', CAST(203 AS Decimal(18, 0)), N'tranvanc@gmail.com', N'123', CAST(0xE11F0B00 AS Date))
SET IDENTITY_INSERT [dbo].[tbl_nhanvien] OFF
SET IDENTITY_INSERT [dbo].[tbl_nhasanxuat] ON 

INSERT [dbo].[tbl_nhasanxuat] ([id], [ten]) VALUES (1, N'Apple')
INSERT [dbo].[tbl_nhasanxuat] ([id], [ten]) VALUES (2, N'Samsung')
INSERT [dbo].[tbl_nhasanxuat] ([id], [ten]) VALUES (3, N'Oppo')
INSERT [dbo].[tbl_nhasanxuat] ([id], [ten]) VALUES (4, N'Nokia')
INSERT [dbo].[tbl_nhasanxuat] ([id], [ten]) VALUES (5, N'Asus')
INSERT [dbo].[tbl_nhasanxuat] ([id], [ten]) VALUES (6, N'Xiaomi')
SET IDENTITY_INSERT [dbo].[tbl_nhasanxuat] OFF
SET IDENTITY_INSERT [dbo].[tbl_quyen] ON 

INSERT [dbo].[tbl_quyen] ([id], [ten]) VALUES (1, N'admin')
INSERT [dbo].[tbl_quyen] ([id], [ten]) VALUES (2, N'nhanvien')
INSERT [dbo].[tbl_quyen] ([id], [ten]) VALUES (3, N'khachhang')
SET IDENTITY_INSERT [dbo].[tbl_quyen] OFF
SET IDENTITY_INSERT [dbo].[tbl_sanpham] ON 

INSERT [dbo].[tbl_sanpham] ([id], [id_danhmuc], [ten], [id_album_anh], [gia], [soluong], [trongluong], [ROM], [RAM], [thenho], [camera_truoc], [camera_sau], [pin], [baohanh], [bluetooth], [id_nhasanxuat], [CPU], [manhinh]) VALUES (1, 1, N'Iphone Xs', 1, CAST(35000000 AS Decimal(12, 0)), 10, N'100       ', N'256       ', N'4         ', N'0', N'7         ', N'12        ', 2658, N'12                                                ', 5, 1, N'Apple A12', N'5.8')
INSERT [dbo].[tbl_sanpham] ([id], [id_danhmuc], [ten], [id_album_anh], [gia], [soluong], [trongluong], [ROM], [RAM], [thenho], [camera_truoc], [camera_sau], [pin], [baohanh], [bluetooth], [id_nhasanxuat], [CPU], [manhinh]) VALUES (2, 1, N'Iphone Xs Max', 2, CAST(40000000 AS Decimal(12, 0)), 10, N'100       ', N'512       ', N'4         ', N'0', N'7         ', N'12        ', 3174, N'12                                                ', 5, 1, N'Apple A12', N'6.5')
INSERT [dbo].[tbl_sanpham] ([id], [id_danhmuc], [ten], [id_album_anh], [gia], [soluong], [trongluong], [ROM], [RAM], [thenho], [camera_truoc], [camera_sau], [pin], [baohanh], [bluetooth], [id_nhasanxuat], [CPU], [manhinh]) VALUES (3, 1, N'Iphone X', 3, CAST(25000000 AS Decimal(12, 0)), 10, N'100       ', N'256       ', N'3         ', N'0', N'7         ', N'12        ', 2716, N'12                                                ', 5, 1, N'Apple A11', N'5.8')
INSERT [dbo].[tbl_sanpham] ([id], [id_danhmuc], [ten], [id_album_anh], [gia], [soluong], [trongluong], [ROM], [RAM], [thenho], [camera_truoc], [camera_sau], [pin], [baohanh], [bluetooth], [id_nhasanxuat], [CPU], [manhinh]) VALUES (4, 1, N'Iphone Xr', 4, CAST(30000000 AS Decimal(12, 0)), 10, N'100       ', N'256       ', N'3         ', N'0', N'7         ', N'12        ', 2942, N'12                                                ', 5, 1, N'Apple A12', N'6.1')
INSERT [dbo].[tbl_sanpham] ([id], [id_danhmuc], [ten], [id_album_anh], [gia], [soluong], [trongluong], [ROM], [RAM], [thenho], [camera_truoc], [camera_sau], [pin], [baohanh], [bluetooth], [id_nhasanxuat], [CPU], [manhinh]) VALUES (5, 1, N'Samsung Galaxy Note 9', 5, CAST(30000000 AS Decimal(12, 0)), 10, N'100       ', N'512       ', N'8         ', N'1', N'8         ', N'12        ', 4000, N'12                                                ', 5, 2, N'Exynos 9810', N'6.4')
INSERT [dbo].[tbl_sanpham] ([id], [id_danhmuc], [ten], [id_album_anh], [gia], [soluong], [trongluong], [ROM], [RAM], [thenho], [camera_truoc], [camera_sau], [pin], [baohanh], [bluetooth], [id_nhasanxuat], [CPU], [manhinh]) VALUES (6, 1, N'Samsung Galaxy S9+', 6, CAST(25000000 AS Decimal(12, 0)), 10, N'100       ', N'128       ', N'6         ', N'1', N'8         ', N'12        ', 3500, N'12                                                ', 5, 2, N'Exynos 9810', N'6.2')
INSERT [dbo].[tbl_sanpham] ([id], [id_danhmuc], [ten], [id_album_anh], [gia], [soluong], [trongluong], [ROM], [RAM], [thenho], [camera_truoc], [camera_sau], [pin], [baohanh], [bluetooth], [id_nhasanxuat], [CPU], [manhinh]) VALUES (7, 1, N'Samsung Galaxy Note 8', 7, CAST(20000000 AS Decimal(12, 0)), 10, N'100       ', N'64        ', N'6         ', N'1', N'8         ', N'12        ', 3300, N'12                                                ', 5, 2, N'Exynos 8895', N'6.3')
INSERT [dbo].[tbl_sanpham] ([id], [id_danhmuc], [ten], [id_album_anh], [gia], [soluong], [trongluong], [ROM], [RAM], [thenho], [camera_truoc], [camera_sau], [pin], [baohanh], [bluetooth], [id_nhasanxuat], [CPU], [manhinh]) VALUES (8, 1, N'Samsung Galaxy S8+', 8, CAST(18000000 AS Decimal(12, 0)), 10, N'100       ', N'64        ', N'4         ', N'1', N'8         ', N'12        ', 3500, N'12                                                ', 5, 2, N'Exynos 8895', N'6.2')
INSERT [dbo].[tbl_sanpham] ([id], [id_danhmuc], [ten], [id_album_anh], [gia], [soluong], [trongluong], [ROM], [RAM], [thenho], [camera_truoc], [camera_sau], [pin], [baohanh], [bluetooth], [id_nhasanxuat], [CPU], [manhinh]) VALUES (9, 1, N'Oppo Find X', 9, CAST(20000000 AS Decimal(12, 0)), 10, N'100       ', N'256       ', N'8         ', N'1', N'25        ', N'20        ', 3730, N'12                                                ', 5, 3, N'Snapdragon 845', N'6.42')
INSERT [dbo].[tbl_sanpham] ([id], [id_danhmuc], [ten], [id_album_anh], [gia], [soluong], [trongluong], [ROM], [RAM], [thenho], [camera_truoc], [camera_sau], [pin], [baohanh], [bluetooth], [id_nhasanxuat], [CPU], [manhinh]) VALUES (10, 1, N'Oppo R17 Pro', 10, CAST(17000000 AS Decimal(12, 0)), 10, N'100       ', N'128       ', N'8         ', N'1', N'25        ', N'20        ', 3700, N'12                                                ', 5, 3, N'Snapdragon 710', N'6.4')
INSERT [dbo].[tbl_sanpham] ([id], [id_danhmuc], [ten], [id_album_anh], [gia], [soluong], [trongluong], [ROM], [RAM], [thenho], [camera_truoc], [camera_sau], [pin], [baohanh], [bluetooth], [id_nhasanxuat], [CPU], [manhinh]) VALUES (11, 1, N'Oppo F3+', 11, CAST(10000000 AS Decimal(12, 0)), 10, N'100       ', N'64        ', N'6         ', N'1', N'25        ', N'16        ', 3500, N'12                                                ', 4, 3, N'Media Tek P60', N'6.3')
INSERT [dbo].[tbl_sanpham] ([id], [id_danhmuc], [ten], [id_album_anh], [gia], [soluong], [trongluong], [ROM], [RAM], [thenho], [camera_truoc], [camera_sau], [pin], [baohanh], [bluetooth], [id_nhasanxuat], [CPU], [manhinh]) VALUES (12, 1, N'Oppo F7', 12, CAST(7000000 AS Decimal(12, 0)), 10, N'100       ', N'64        ', N'6         ', N'1', N'25        ', N'16        ', 3400, N'12                                                ', 4, 3, N'MediaTek P60', N'6.23')
INSERT [dbo].[tbl_sanpham] ([id], [id_danhmuc], [ten], [id_album_anh], [gia], [soluong], [trongluong], [ROM], [RAM], [thenho], [camera_truoc], [camera_sau], [pin], [baohanh], [bluetooth], [id_nhasanxuat], [CPU], [manhinh]) VALUES (13, 1, N'Nokia 7+', 13, CAST(8000000 AS Decimal(12, 0)), 10, N'100       ', N'64        ', N'4         ', N'1', N'12        ', N'16        ', 3800, N'12                                                ', 5, 4, N'Snapdragon 660', N'6')
INSERT [dbo].[tbl_sanpham] ([id], [id_danhmuc], [ten], [id_album_anh], [gia], [soluong], [trongluong], [ROM], [RAM], [thenho], [camera_truoc], [camera_sau], [pin], [baohanh], [bluetooth], [id_nhasanxuat], [CPU], [manhinh]) VALUES (14, 1, N'Nokia X7', 14, CAST(6000000 AS Decimal(12, 0)), 10, N'100       ', N'64        ', N'4         ', N'1', N'12        ', N'20        ', 3500, N'12                                                ', 4, 4, N'Snapdragon 710', N'6.18')
INSERT [dbo].[tbl_sanpham] ([id], [id_danhmuc], [ten], [id_album_anh], [gia], [soluong], [trongluong], [ROM], [RAM], [thenho], [camera_truoc], [camera_sau], [pin], [baohanh], [bluetooth], [id_nhasanxuat], [CPU], [manhinh]) VALUES (15, 1, N'Nokia X6', 15, CAST(5000000 AS Decimal(12, 0)), 10, N'100       ', N'64        ', N'6         ', N'1', N'16        ', N'16        ', 3060, N'12                                                ', 4, 4, N'Snapdragon 636', N'5.8')
INSERT [dbo].[tbl_sanpham] ([id], [id_danhmuc], [ten], [id_album_anh], [gia], [soluong], [trongluong], [ROM], [RAM], [thenho], [camera_truoc], [camera_sau], [pin], [baohanh], [bluetooth], [id_nhasanxuat], [CPU], [manhinh]) VALUES (16, 1, N'Nokia 6.1+', 16, CAST(7000000 AS Decimal(12, 0)), 10, N'100       ', N'64        ', N'4         ', N'1', N'16        ', N'16        ', 3060, N'12                                                ', 5, 4, N'Snapdragon 636', N'5.8')
INSERT [dbo].[tbl_sanpham] ([id], [id_danhmuc], [ten], [id_album_anh], [gia], [soluong], [trongluong], [ROM], [RAM], [thenho], [camera_truoc], [camera_sau], [pin], [baohanh], [bluetooth], [id_nhasanxuat], [CPU], [manhinh]) VALUES (17, 1, N'Asus 5z', 17, CAST(11000000 AS Decimal(12, 0)), 10, N'100       ', N'128       ', N'6         ', N'1', N'8         ', N'12        ', 3300, N'12                                                ', 5, 5, N'Snapdragon 845', N'6.2')
INSERT [dbo].[tbl_sanpham] ([id], [id_danhmuc], [ten], [id_album_anh], [gia], [soluong], [trongluong], [ROM], [RAM], [thenho], [camera_truoc], [camera_sau], [pin], [baohanh], [bluetooth], [id_nhasanxuat], [CPU], [manhinh]) VALUES (18, 1, N'Asus Max Pro M1', 18, CAST(5000000 AS Decimal(12, 0)), 10, N'100       ', N'64        ', N'4         ', N'1', N'5         ', N'16        ', 5000, N'12                                                ', 4, 5, N'Snapdragon 636', N'6')
INSERT [dbo].[tbl_sanpham] ([id], [id_danhmuc], [ten], [id_album_anh], [gia], [soluong], [trongluong], [ROM], [RAM], [thenho], [camera_truoc], [camera_sau], [pin], [baohanh], [bluetooth], [id_nhasanxuat], [CPU], [manhinh]) VALUES (19, 1, N'Asus Max Plus M1', 19, CAST(3000000 AS Decimal(12, 0)), 10, N'100       ', N'32        ', N'3         ', N'1', N'8         ', N'16        ', 4130, N'12                                                ', 4, 5, N'MTK', N'5.7')
INSERT [dbo].[tbl_sanpham] ([id], [id_danhmuc], [ten], [id_album_anh], [gia], [soluong], [trongluong], [ROM], [RAM], [thenho], [camera_truoc], [camera_sau], [pin], [baohanh], [bluetooth], [id_nhasanxuat], [CPU], [manhinh]) VALUES (20, 1, N'Asus 3 Max', 20, CAST(4000000 AS Decimal(12, 0)), 10, N'100       ', N'32        ', N'3         ', N'1', N'8         ', N'16        ', 4100, N'12                                                ', 4, 5, N'Snapdragon 430', N'5.5')
INSERT [dbo].[tbl_sanpham] ([id], [id_danhmuc], [ten], [id_album_anh], [gia], [soluong], [trongluong], [ROM], [RAM], [thenho], [camera_truoc], [camera_sau], [pin], [baohanh], [bluetooth], [id_nhasanxuat], [CPU], [manhinh]) VALUES (21, 1, N'Xiaomi Mi Mix 2S', 21, CAST(14000000 AS Decimal(12, 0)), 10, N'100       ', N'128       ', N'8         ', N'1', N'12        ', N'16        ', 3400, N'12                                                ', 5, 6, N'Snapdragon 845', N'6')
INSERT [dbo].[tbl_sanpham] ([id], [id_danhmuc], [ten], [id_album_anh], [gia], [soluong], [trongluong], [ROM], [RAM], [thenho], [camera_truoc], [camera_sau], [pin], [baohanh], [bluetooth], [id_nhasanxuat], [CPU], [manhinh]) VALUES (22, 1, N'Xiaomi Mi 8 Pro', 22, CAST(15000000 AS Decimal(12, 0)), 10, N'100       ', N'128       ', N'8         ', N'1', N'12        ', N'20        ', 3000, N'12                                                ', 5, 6, N'Snapdragon 845', N'6.21')
INSERT [dbo].[tbl_sanpham] ([id], [id_danhmuc], [ten], [id_album_anh], [gia], [soluong], [trongluong], [ROM], [RAM], [thenho], [camera_truoc], [camera_sau], [pin], [baohanh], [bluetooth], [id_nhasanxuat], [CPU], [manhinh]) VALUES (23, 1, N'Xiaomi Mi 8', 23, CAST(12000000 AS Decimal(12, 0)), 10, N'100       ', N'64        ', N'6         ', N'1', N'12        ', N'20        ', 3400, N'12                                                ', 5, 6, N'Snapdragon 845', N'6.21')
INSERT [dbo].[tbl_sanpham] ([id], [id_danhmuc], [ten], [id_album_anh], [gia], [soluong], [trongluong], [ROM], [RAM], [thenho], [camera_truoc], [camera_sau], [pin], [baohanh], [bluetooth], [id_nhasanxuat], [CPU], [manhinh]) VALUES (24, 1, N'Xiaomi Note 6 Pro', 24, CAST(6000000 AS Decimal(12, 0)), 10, N'100       ', N'64        ', N'4         ', N'1', N'12        ', N'20        ', 4000, N'12                                                ', 4, 6, N'Snapdragon 636', N'6.26')
INSERT [dbo].[tbl_sanpham] ([id], [id_danhmuc], [ten], [id_album_anh], [gia], [soluong], [trongluong], [ROM], [RAM], [thenho], [camera_truoc], [camera_sau], [pin], [baohanh], [bluetooth], [id_nhasanxuat], [CPU], [manhinh]) VALUES (25, 2, N'Ipad Pro 10.5', 25, CAST(20000000 AS Decimal(12, 0)), 10, N'200       ', N'512       ', N'4         ', N'0', N'7         ', N'12        ', 30400, N'12                                                ', 5, 1, N'Apple A10X', N'10.5')
INSERT [dbo].[tbl_sanpham] ([id], [id_danhmuc], [ten], [id_album_anh], [gia], [soluong], [trongluong], [ROM], [RAM], [thenho], [camera_truoc], [camera_sau], [pin], [baohanh], [bluetooth], [id_nhasanxuat], [CPU], [manhinh]) VALUES (26, 2, N'Ipad 2018', 26, CAST(15000000 AS Decimal(12, 0)), 10, N'200       ', N'128       ', N'2         ', N'0', N'2         ', N'8         ', 32400, N'12                                                ', 5, 1, N'Apple A10', N'9.7')
INSERT [dbo].[tbl_sanpham] ([id], [id_danhmuc], [ten], [id_album_anh], [gia], [soluong], [trongluong], [ROM], [RAM], [thenho], [camera_truoc], [camera_sau], [pin], [baohanh], [bluetooth], [id_nhasanxuat], [CPU], [manhinh]) VALUES (27, 2, N'Ipad 4', 27, CAST(5000000 AS Decimal(12, 0)), 10, N'200       ', N'64        ', N'1         ', N'0', N'2         ', N'5         ', 11500, N'12                                                ', 4, 1, N'Apple A6X', N'9.7')
INSERT [dbo].[tbl_sanpham] ([id], [id_danhmuc], [ten], [id_album_anh], [gia], [soluong], [trongluong], [ROM], [RAM], [thenho], [camera_truoc], [camera_sau], [pin], [baohanh], [bluetooth], [id_nhasanxuat], [CPU], [manhinh]) VALUES (28, 2, N'Ipad Air 2', 28, CAST(7000000 AS Decimal(12, 0)), 10, N'200       ', N'32        ', N'2         ', N'0', N'2         ', N'8         ', 7340, N'12                                                ', 4, 1, N'Apple A8X', N'9.7')
INSERT [dbo].[tbl_sanpham] ([id], [id_danhmuc], [ten], [id_album_anh], [gia], [soluong], [trongluong], [ROM], [RAM], [thenho], [camera_truoc], [camera_sau], [pin], [baohanh], [bluetooth], [id_nhasanxuat], [CPU], [manhinh]) VALUES (29, 2, N'Samsung Galaxy Tab A6', 29, CAST(8000000 AS Decimal(12, 0)), 10, N'200       ', N'16        ', N'3         ', N'1', N'2         ', N'8         ', 7300, N'12                                                ', 4, 2, N'Exynos 7870', N'10.1')
INSERT [dbo].[tbl_sanpham] ([id], [id_danhmuc], [ten], [id_album_anh], [gia], [soluong], [trongluong], [ROM], [RAM], [thenho], [camera_truoc], [camera_sau], [pin], [baohanh], [bluetooth], [id_nhasanxuat], [CPU], [manhinh]) VALUES (30, 2, N'Samsung Galaxy Tab A8', 30, CAST(6000000 AS Decimal(12, 0)), 10, N'200       ', N'16        ', N'2         ', N'1', N'5         ', N'8         ', 5000, N'12                                                ', 4, 2, N'MSM 8917', N'8')
INSERT [dbo].[tbl_sanpham] ([id], [id_danhmuc], [ten], [id_album_anh], [gia], [soluong], [trongluong], [ROM], [RAM], [thenho], [camera_truoc], [camera_sau], [pin], [baohanh], [bluetooth], [id_nhasanxuat], [CPU], [manhinh]) VALUES (31, 2, N'Samsung Galaxy Tab S4', 31, CAST(18000000 AS Decimal(12, 0)), 10, N'200       ', N'64        ', N'4         ', N'1', N'8         ', N'13        ', 7300, N'12                                                ', 5, 2, N'MSM 8998', N'10.5')
INSERT [dbo].[tbl_sanpham] ([id], [id_danhmuc], [ten], [id_album_anh], [gia], [soluong], [trongluong], [ROM], [RAM], [thenho], [camera_truoc], [camera_sau], [pin], [baohanh], [bluetooth], [id_nhasanxuat], [CPU], [manhinh]) VALUES (32, 2, N'Samsung Galaxy TabS', 32, CAST(10000000 AS Decimal(12, 0)), 10, N'200       ', N'16        ', N'3         ', N'1', N'2         ', N'8         ', 7900, N'12                                                ', 4, 2, N'Intel Core', N'10.5')
INSERT [dbo].[tbl_sanpham] ([id], [id_danhmuc], [ten], [id_album_anh], [gia], [soluong], [trongluong], [ROM], [RAM], [thenho], [camera_truoc], [camera_sau], [pin], [baohanh], [bluetooth], [id_nhasanxuat], [CPU], [manhinh]) VALUES (33, 2, N'Nokia N1', 33, CAST(4000000 AS Decimal(12, 0)), 10, N'200       ', N'32        ', N'2         ', N'1', N'5         ', N'8         ', 5300, N'12                                                ', 4, 4, N'Intel Atom Z3580', N'7.9')
INSERT [dbo].[tbl_sanpham] ([id], [id_danhmuc], [ten], [id_album_anh], [gia], [soluong], [trongluong], [ROM], [RAM], [thenho], [camera_truoc], [camera_sau], [pin], [baohanh], [bluetooth], [id_nhasanxuat], [CPU], [manhinh]) VALUES (34, 2, N'Asus Zenpad Z8', 34, CAST(3000000 AS Decimal(12, 0)), 10, N'200       ', N'16        ', N'2         ', N'1', N'2         ', N'8         ', 4600, N'12                                                ', 4, 5, N'Snapdragon 650', N'8')
INSERT [dbo].[tbl_sanpham] ([id], [id_danhmuc], [ten], [id_album_anh], [gia], [soluong], [trongluong], [ROM], [RAM], [thenho], [camera_truoc], [camera_sau], [pin], [baohanh], [bluetooth], [id_nhasanxuat], [CPU], [manhinh]) VALUES (35, 2, N'Asus Zenpad Z10', 35, CAST(6000000 AS Decimal(12, 0)), 10, N'200       ', N'32        ', N'3         ', N'1', N'5         ', N'8         ', 7800, N'12                                                ', 4, 5, N'Snapdragon 650', N'9.7')
INSERT [dbo].[tbl_sanpham] ([id], [id_danhmuc], [ten], [id_album_anh], [gia], [soluong], [trongluong], [ROM], [RAM], [thenho], [camera_truoc], [camera_sau], [pin], [baohanh], [bluetooth], [id_nhasanxuat], [CPU], [manhinh]) VALUES (36, 2, N'Xiaomi Mipad 3', 36, CAST(5000000 AS Decimal(12, 0)), 10, N'200       ', N'64        ', N'4         ', N'1', N'5         ', N'13        ', 6600, N'12                                                ', 4, 6, N'MediaTek MT8176', N'7.9')
INSERT [dbo].[tbl_sanpham] ([id], [id_danhmuc], [ten], [id_album_anh], [gia], [soluong], [trongluong], [ROM], [RAM], [thenho], [camera_truoc], [camera_sau], [pin], [baohanh], [bluetooth], [id_nhasanxuat], [CPU], [manhinh]) VALUES (37, 2, N'Xiaomi Mipad 4', 37, CAST(6000000 AS Decimal(12, 0)), 10, N'200       ', N'64        ', N'4         ', N'1', N'5         ', N'13        ', 6000, N'12                                                ', 4, 6, N'Snapdragon 660', N'8')
SET IDENTITY_INSERT [dbo].[tbl_sanpham] OFF
SET IDENTITY_INSERT [dbo].[tbl_taikhoan] ON 

INSERT [dbo].[tbl_taikhoan] ([id], [id_quyen], [tentaikhoan], [matkhau], [trangthai]) VALUES (1, 1, N'admin', N'admin', 1)
INSERT [dbo].[tbl_taikhoan] ([id], [id_quyen], [tentaikhoan], [matkhau], [trangthai]) VALUES (2, 2, N'tranvana', N'123', 1)
INSERT [dbo].[tbl_taikhoan] ([id], [id_quyen], [tentaikhoan], [matkhau], [trangthai]) VALUES (3, 2, N'tranvanb', N'123', 1)
INSERT [dbo].[tbl_taikhoan] ([id], [id_quyen], [tentaikhoan], [matkhau], [trangthai]) VALUES (4, 2, N'tranvanc', N'123', 1)
INSERT [dbo].[tbl_taikhoan] ([id], [id_quyen], [tentaikhoan], [matkhau], [trangthai]) VALUES (5, 3, N'levana', N'123', 1)
INSERT [dbo].[tbl_taikhoan] ([id], [id_quyen], [tentaikhoan], [matkhau], [trangthai]) VALUES (6, 3, N'levanb', N'123', 1)
INSERT [dbo].[tbl_taikhoan] ([id], [id_quyen], [tentaikhoan], [matkhau], [trangthai]) VALUES (7, 3, N'levanc', N'123', 1)
SET IDENTITY_INSERT [dbo].[tbl_taikhoan] OFF
ALTER TABLE [dbo].[tbl_chitietdonhang]  WITH CHECK ADD  CONSTRAINT [FK_tbl_chitietdonhang_tbl_dondathang] FOREIGN KEY([id_dondathang])
REFERENCES [dbo].[tbl_dondathang] ([id])
GO
ALTER TABLE [dbo].[tbl_chitietdonhang] CHECK CONSTRAINT [FK_tbl_chitietdonhang_tbl_dondathang]
GO
ALTER TABLE [dbo].[tbl_chitietdonhang]  WITH CHECK ADD  CONSTRAINT [FK_tbl_chitietdonhang_tbl_sanpham] FOREIGN KEY([id_sanpham])
REFERENCES [dbo].[tbl_sanpham] ([id])
GO
ALTER TABLE [dbo].[tbl_chitietdonhang] CHECK CONSTRAINT [FK_tbl_chitietdonhang_tbl_sanpham]
GO
ALTER TABLE [dbo].[tbl_dondathang]  WITH CHECK ADD  CONSTRAINT [FK_tbl_dondathang_tbl_khachhang] FOREIGN KEY([id_khachhang])
REFERENCES [dbo].[tbl_khachhang] ([id])
GO
ALTER TABLE [dbo].[tbl_dondathang] CHECK CONSTRAINT [FK_tbl_dondathang_tbl_khachhang]
GO
ALTER TABLE [dbo].[tbl_dondathang]  WITH CHECK ADD  CONSTRAINT [FK_tbl_dondathang_tbl_nhanvien] FOREIGN KEY([id_nhanvien])
REFERENCES [dbo].[tbl_nhanvien] ([id])
GO
ALTER TABLE [dbo].[tbl_dondathang] CHECK CONSTRAINT [FK_tbl_dondathang_tbl_nhanvien]
GO
ALTER TABLE [dbo].[tbl_khachhang]  WITH CHECK ADD  CONSTRAINT [FK_tbl_khachhang_tbl_nguoinhan] FOREIGN KEY([id_themdiachi])
REFERENCES [dbo].[tbl_nguoinhan] ([id])
GO
ALTER TABLE [dbo].[tbl_khachhang] CHECK CONSTRAINT [FK_tbl_khachhang_tbl_nguoinhan]
GO
ALTER TABLE [dbo].[tbl_sanpham]  WITH CHECK ADD  CONSTRAINT [FK_tbl_sanpham_tbl_album_anh] FOREIGN KEY([id_album_anh])
REFERENCES [dbo].[tbl_album_anh] ([id])
GO
ALTER TABLE [dbo].[tbl_sanpham] CHECK CONSTRAINT [FK_tbl_sanpham_tbl_album_anh]
GO
ALTER TABLE [dbo].[tbl_sanpham]  WITH CHECK ADD  CONSTRAINT [FK_tbl_sanpham_tbl_danhmuc] FOREIGN KEY([id_danhmuc])
REFERENCES [dbo].[tbl_danhmuc] ([id])
GO
ALTER TABLE [dbo].[tbl_sanpham] CHECK CONSTRAINT [FK_tbl_sanpham_tbl_danhmuc]
GO
ALTER TABLE [dbo].[tbl_sanpham]  WITH CHECK ADD  CONSTRAINT [FK_tbl_sanpham_tbl_nhasanxuat] FOREIGN KEY([id_nhasanxuat])
REFERENCES [dbo].[tbl_nhasanxuat] ([id])
GO
ALTER TABLE [dbo].[tbl_sanpham] CHECK CONSTRAINT [FK_tbl_sanpham_tbl_nhasanxuat]
GO
ALTER TABLE [dbo].[tbl_taikhoan]  WITH CHECK ADD  CONSTRAINT [FK_tbl_taikhoan_tbl_quyen] FOREIGN KEY([id_quyen])
REFERENCES [dbo].[tbl_quyen] ([id])
GO
ALTER TABLE [dbo].[tbl_taikhoan] CHECK CONSTRAINT [FK_tbl_taikhoan_tbl_quyen]
GO
