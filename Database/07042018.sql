USE [master]
GO
/****** Object:  Database [BanHangDoGo]    Script Date: 4/7/2018 12:05:18 AM ******/
CREATE DATABASE [BanHangDoGo]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'BanHangDoGo', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\BanHangDoGo.mdf' , SIZE = 3264KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'BanHangDoGo_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\BanHangDoGo_log.ldf' , SIZE = 816KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [BanHangDoGo] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [BanHangDoGo].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [BanHangDoGo] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [BanHangDoGo] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [BanHangDoGo] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [BanHangDoGo] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [BanHangDoGo] SET ARITHABORT OFF 
GO
ALTER DATABASE [BanHangDoGo] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [BanHangDoGo] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [BanHangDoGo] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [BanHangDoGo] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [BanHangDoGo] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [BanHangDoGo] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [BanHangDoGo] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [BanHangDoGo] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [BanHangDoGo] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [BanHangDoGo] SET  ENABLE_BROKER 
GO
ALTER DATABASE [BanHangDoGo] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [BanHangDoGo] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [BanHangDoGo] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [BanHangDoGo] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [BanHangDoGo] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [BanHangDoGo] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [BanHangDoGo] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [BanHangDoGo] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [BanHangDoGo] SET  MULTI_USER 
GO
ALTER DATABASE [BanHangDoGo] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [BanHangDoGo] SET DB_CHAINING OFF 
GO
ALTER DATABASE [BanHangDoGo] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [BanHangDoGo] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [BanHangDoGo] SET DELAYED_DURABILITY = DISABLED 
GO
USE [BanHangDoGo]
GO
/****** Object:  Table [dbo].[ChiTietHoaDon]    Script Date: 4/7/2018 12:05:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ChiTietHoaDon](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[MaSanPham] [bigint] NULL,
	[TenSanPham] [nvarchar](50) NULL,
	[SoLuong] [int] NULL,
	[DonGia] [decimal](18, 0) NULL,
	[TongTien] [decimal](18, 0) NULL,
	[MaHoaDon] [varchar](50) NULL,
	[NgayGiaoHang] [date] NULL,
	[SoLuongDaGiao] [int] NULL DEFAULT ((0)),
 CONSTRAINT [PkChiTietHoaDon] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ChiTietHopDong]    Script Date: 4/7/2018 12:05:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietHopDong](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[MaHopDong] [bigint] NULL,
	[MaSanPham] [bigint] NULL,
	[TenSanPham] [nvarchar](50) NULL,
	[SoLuong] [int] NULL,
	[DonGia] [decimal](18, 0) NULL,
	[ThanhTien] [decimal](18, 0) NULL,
 CONSTRAINT [PkChiTietHopDong] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DanhMucSanPham]    Script Date: 4/7/2018 12:05:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DanhMucSanPham](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[TenDanhMuc] [nvarchar](50) NULL,
 CONSTRAINT [PkDanhMucSanPham] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DeXuat]    Script Date: 4/7/2018 12:05:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DeXuat](
	[Id] [bigint] NOT NULL,
	[DeXuat] [nvarchar](50) NULL,
	[MaNguoiDeXuat] [bigint] NULL,
	[MaNguoiXacNhan] [bigint] NULL,
	[KetQua] [bit] NULL,
 CONSTRAINT [PkDeXuat] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HoaDon]    Script Date: 4/7/2018 12:05:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[HoaDon](
	[MaHoaDon] [varchar](50) NOT NULL,
	[ThoiGianTao] [datetime] NULL,
	[TongTien] [decimal](18, 0) NULL,
	[MaNguoiDung] [bigint] NULL,
	[MaKhachHang] [bigint] NULL,
	[DaThanhToan] [bit] NULL,
	[NgayGiaoHang] [date] NULL,
	[NgayDatCoc] [date] NULL,
	[NgayThanhToan] [date] NULL,
	[HopDong] [bigint] NULL,
	[GiaiDoanGiaoHang] [nvarchar](255) NULL DEFAULT (N'Đã tiếp nhận'),
 CONSTRAINT [PkHoaDon] PRIMARY KEY CLUSTERED 
(
	[MaHoaDon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[HopDong]    Script Date: 4/7/2018 12:05:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[HopDong](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[NgayTao] [date] NULL,
	[MaNhanVien] [bigint] NULL,
	[MaGiamDoc] [bigint] NULL,
	[MaKhachHang] [bigint] NULL,
	[ThanhTien] [decimal](18, 0) NULL,
	[KhachHangXacNhan] [bit] NULL,
	[TienDatCoc] [int] NULL DEFAULT ((0)),
	[NgayBatDau] [date] NULL,
	[NgayKetThuc] [date] NULL,
	[LoaiHopDong] [varchar](1) NULL,
	[ThoiGian] [varchar](1) NULL,
	[TinhTrang] [varchar](255) NULL,
	[NoiDung] [varchar](max) NULL,
 CONSTRAINT [PkHopDong] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KhachHang]    Script Date: 4/7/2018 12:05:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KhachHang](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[TaiKhoan] [nvarchar](50) NULL,
	[MatKhau] [nvarchar](50) NULL,
	[TenKhachHang] [nvarchar](50) NULL,
	[DiaChi] [nvarchar](50) NULL,
	[DienThoai] [varchar](11) NULL,
	[Email] [nvarchar](50) NULL,
	[NgaySinh] [datetime] NULL,
 CONSTRAINT [PkKhachHang] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[LoaiTaiKhoan]    Script Date: 4/7/2018 12:05:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiTaiKhoan](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[TenLoai] [nvarchar](50) NULL,
 CONSTRAINT [PkLoaiTaiKhoan] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[NguoiDung]    Script Date: 4/7/2018 12:05:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[NguoiDung](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[TaiKhoan] [nvarchar](50) NULL,
	[MatKhau] [nvarchar](50) NULL,
	[HoTen] [nvarchar](50) NULL,
	[GioiTinh] [bit] NULL,
	[NgaySinh] [datetime] NULL,
	[DiaChi] [nvarchar](50) NULL,
	[Email] [varchar](50) NULL,
	[MaLoai] [bigint] NOT NULL,
 CONSTRAINT [PkNguoiDung] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[NhaCungCap]    Script Date: 4/7/2018 12:05:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhaCungCap](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[TenNhaCungCap] [nvarchar](50) NULL,
 CONSTRAINT [PkNhaCungCap] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SanPham]    Script Date: 4/7/2018 12:05:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SanPham](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[MetaTitle] [ntext] NULL,
	[TenSanPham] [nvarchar](50) NULL,
	[MoTa] [ntext] NULL,
	[DonGia] [decimal](18, 0) NULL,
	[DonVi] [nvarchar](50) NULL,
	[MaCC] [bigint] NULL,
	[MaDanhMuc] [bigint] NULL,
	[HinhAnh] [nvarchar](100) NULL,
 CONSTRAINT [PkSanPham] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[ChiTietHoaDon] ON 

INSERT [dbo].[ChiTietHoaDon] ([Id], [MaSanPham], [TenSanPham], [SoLuong], [DonGia], [TongTien], [MaHoaDon], [NgayGiaoHang], [SoLuongDaGiao]) VALUES (3, 17, N'Bàn ghế cao cấp', 40, CAST(40000000 AS Decimal(18, 0)), CAST(1600000000 AS Decimal(18, 0)), N'HD636586508276981112', CAST(N'2018-04-06' AS Date), 40)
INSERT [dbo].[ChiTietHoaDon] ([Id], [MaSanPham], [TenSanPham], [SoLuong], [DonGia], [TongTien], [MaHoaDon], [NgayGiaoHang], [SoLuongDaGiao]) VALUES (4, 9, N'Bàn cho trẻ học', 10, CAST(2000000 AS Decimal(18, 0)), CAST(20000000 AS Decimal(18, 0)), N'HD636586508276981112', CAST(N'2018-04-06' AS Date), 10)
INSERT [dbo].[ChiTietHoaDon] ([Id], [MaSanPham], [TenSanPham], [SoLuong], [DonGia], [TongTien], [MaHoaDon], [NgayGiaoHang], [SoLuongDaGiao]) VALUES (5, 14, N'Giường ngủ cho vợ chồng', 10, CAST(5000000 AS Decimal(18, 0)), CAST(50000000 AS Decimal(18, 0)), N'HD636586508276981112', CAST(N'2018-04-06' AS Date), 10)
SET IDENTITY_INSERT [dbo].[ChiTietHoaDon] OFF
SET IDENTITY_INSERT [dbo].[DanhMucSanPham] ON 

INSERT [dbo].[DanhMucSanPham] ([Id], [TenDanhMuc]) VALUES (1, N'Bàn ghế')
INSERT [dbo].[DanhMucSanPham] ([Id], [TenDanhMuc]) VALUES (2, N'Cửa nhà')
INSERT [dbo].[DanhMucSanPham] ([Id], [TenDanhMuc]) VALUES (3, N'Tủ đồ')
INSERT [dbo].[DanhMucSanPham] ([Id], [TenDanhMuc]) VALUES (4, N'Giường')
INSERT [dbo].[DanhMucSanPham] ([Id], [TenDanhMuc]) VALUES (5, N'Gỗ lát sàn')
SET IDENTITY_INSERT [dbo].[DanhMucSanPham] OFF
INSERT [dbo].[DeXuat] ([Id], [DeXuat], [MaNguoiDeXuat], [MaNguoiXacNhan], [KetQua]) VALUES (1, N'âsasasas', 1, 1, 1)
INSERT [dbo].[DeXuat] ([Id], [DeXuat], [MaNguoiDeXuat], [MaNguoiXacNhan], [KetQua]) VALUES (2, N'aaaaaaaaaaaaaaaaaaaa', 1, 1, NULL)
INSERT [dbo].[HoaDon] ([MaHoaDon], [ThoiGianTao], [TongTien], [MaNguoiDung], [MaKhachHang], [DaThanhToan], [NgayGiaoHang], [NgayDatCoc], [NgayThanhToan], [HopDong], [GiaiDoanGiaoHang]) VALUES (N'HD636586508276981112', CAST(N'2018-04-06 22:33:47.697' AS DateTime), CAST(1670000000 AS Decimal(18, 0)), NULL, 6, NULL, CAST(N'2018-04-06' AS Date), NULL, NULL, NULL, N'Hoàn thành')
SET IDENTITY_INSERT [dbo].[HopDong] ON 

INSERT [dbo].[HopDong] ([Id], [NgayTao], [MaNhanVien], [MaGiamDoc], [MaKhachHang], [ThanhTien], [KhachHangXacNhan], [TienDatCoc], [NgayBatDau], [NgayKetThuc], [LoaiHopDong], [ThoiGian], [TinhTrang], [NoiDung]) VALUES (2, CAST(N'2018-04-29' AS Date), 1, 1, 1, CAST(121212 AS Decimal(18, 0)), 1, 121212, CAST(N'2018-04-02' AS Date), CAST(N'2018-04-13' AS Date), N'1', N'1', N'Ðã thanh toán', N'Không th? nào dâu')
SET IDENTITY_INSERT [dbo].[HopDong] OFF
SET IDENTITY_INSERT [dbo].[KhachHang] ON 

INSERT [dbo].[KhachHang] ([Id], [TaiKhoan], [MatKhau], [TenKhachHang], [DiaChi], [DienThoai], [Email], [NgaySinh]) VALUES (1, N'hoalan', N'12345', N'Nguyễn Anh', N'Thanh Hóa', N'123456789', N'anh123@gmail.com', CAST(N'2015-01-07 00:00:00.000' AS DateTime))
INSERT [dbo].[KhachHang] ([Id], [TaiKhoan], [MatKhau], [TenKhachHang], [DiaChi], [DienThoai], [Email], [NgaySinh]) VALUES (2, N'minhnguyet', N'123456', N'Nguyễn Thị Minh Nguyệt', N'Hà Nội', N'1234567899', N'nguyet@gmail.com', CAST(N'2017-05-18 00:00:00.000' AS DateTime))
INSERT [dbo].[KhachHang] ([Id], [TaiKhoan], [MatKhau], [TenKhachHang], [DiaChi], [DienThoai], [Email], [NgaySinh]) VALUES (3, N'trantien', N'1234567', N'Trần Văn Tiến', N' Quảng Nam', N'1234567788', N'tien123@gmai.com', CAST(N'1995-04-01 00:00:00.000' AS DateTime))
INSERT [dbo].[KhachHang] ([Id], [TaiKhoan], [MatKhau], [TenKhachHang], [DiaChi], [DienThoai], [Email], [NgaySinh]) VALUES (4, N'ngocanh1234', N'123456', N'Trần Ngọc Ánh', N' Quảng Ngãi', N'123456789', N'ngocanh123@gmail.com', CAST(N'1980-05-01 00:00:00.000' AS DateTime))
INSERT [dbo].[KhachHang] ([Id], [TaiKhoan], [MatKhau], [TenKhachHang], [DiaChi], [DienThoai], [Email], [NgaySinh]) VALUES (5, N'tunglamdeptrai', N'123456', N'Hoàng Tùng Lâm', N'Nam định', N'12345678', N'tunglam123@gmail.com', CAST(N'1890-12-12 00:00:00.000' AS DateTime))
INSERT [dbo].[KhachHang] ([Id], [TaiKhoan], [MatKhau], [TenKhachHang], [DiaChi], [DienThoai], [Email], [NgaySinh]) VALUES (6, N'user', N'e10adc3949ba59abbe56e057f20f883e', N'user', N'user', N'dia chi', N'user@localhost', CAST(N'2018-04-06 21:52:21.250' AS DateTime))
SET IDENTITY_INSERT [dbo].[KhachHang] OFF
SET IDENTITY_INSERT [dbo].[LoaiTaiKhoan] ON 

INSERT [dbo].[LoaiTaiKhoan] ([Id], [TenLoai]) VALUES (1, N'Người dùng')
INSERT [dbo].[LoaiTaiKhoan] ([Id], [TenLoai]) VALUES (2, N'Khách hàng')
INSERT [dbo].[LoaiTaiKhoan] ([Id], [TenLoai]) VALUES (3, N'Nhà cung cấp')
SET IDENTITY_INSERT [dbo].[LoaiTaiKhoan] OFF
SET IDENTITY_INSERT [dbo].[NguoiDung] ON 

INSERT [dbo].[NguoiDung] ([Id], [TaiKhoan], [MatKhau], [HoTen], [GioiTinh], [NgaySinh], [DiaChi], [Email], [MaLoai]) VALUES (1, N'âs', N'aaa', N'aaa', 1, CAST(N'2018-04-03 00:00:00.000' AS DateTime), N'dssd', N's@gmail.com', 1)
INSERT [dbo].[NguoiDung] ([Id], [TaiKhoan], [MatKhau], [HoTen], [GioiTinh], [NgaySinh], [DiaChi], [Email], [MaLoai]) VALUES (2, N'admin', N'12345', N'Admin', 1, CAST(N'1996-11-25 00:00:00.000' AS DateTime), NULL, NULL, 1)
SET IDENTITY_INSERT [dbo].[NguoiDung] OFF
SET IDENTITY_INSERT [dbo].[NhaCungCap] ON 

INSERT [dbo].[NhaCungCap] ([Id], [TenNhaCungCap]) VALUES (1, N'Công ty  thiết kế bàn ghế Hoàng Anh')
INSERT [dbo].[NhaCungCap] ([Id], [TenNhaCungCap]) VALUES (2, N'Công ty sản xuất gỗ lát nhà Hưng Thịnh')
INSERT [dbo].[NhaCungCap] ([Id], [TenNhaCungCap]) VALUES (3, N'Xưởng sản xuất tủ Ánh Nguyệt')
INSERT [dbo].[NhaCungCap] ([Id], [TenNhaCungCap]) VALUES (4, N'Công ty đồ gỗ Minh Anh')
INSERT [dbo].[NhaCungCap] ([Id], [TenNhaCungCap]) VALUES (5, N'Công ty thiết kế nội thất Minh Vượng')
INSERT [dbo].[NhaCungCap] ([Id], [TenNhaCungCap]) VALUES (6, N'Nội thất Xuân Khánh')
SET IDENTITY_INSERT [dbo].[NhaCungCap] OFF
SET IDENTITY_INSERT [dbo].[SanPham] ON 

INSERT [dbo].[SanPham] ([Id], [MetaTitle], [TenSanPham], [MoTa], [DonGia], [DonVi], [MaCC], [MaDanhMuc], [HinhAnh]) VALUES (4, NULL, N'Giường ngủ cao cấp', N'<p>Giúp cho giấc ngủ của bạn được ngon hơn, bền và đẹp</p>', CAST(5000000 AS Decimal(18, 0)), N'VNĐ', 4, 4, N'4.jpg')
INSERT [dbo].[SanPham] ([Id], [MetaTitle], [TenSanPham], [MoTa], [DonGia], [DonVi], [MaCC], [MaDanhMuc], [HinhAnh]) VALUES (5, NULL, N'Bàn trà', N'<p>Thiết kế sang trọng, phù hợp với căn phòng tiếp khác của bạn. Tạo cảm giác gần gũi với thiên nhiên</p>', CAST(10000000 AS Decimal(18, 0)), N'VNĐ', 1, 1, N'5.jpg')
INSERT [dbo].[SanPham] ([Id], [MetaTitle], [TenSanPham], [MoTa], [DonGia], [DonVi], [MaCC], [MaDanhMuc], [HinhAnh]) VALUES (6, NULL, N'Sàn gỗ lát ngoài trời', N'<p>Chống chịu mưa nắng tốt, thích hợp cho không gian ngoài trời, tôn nên vẻ sang trọng cho nhà của bạn</p>', CAST(300000 AS Decimal(18, 0)), N'VND', 2, 5, N'6.png')
INSERT [dbo].[SanPham] ([Id], [MetaTitle], [TenSanPham], [MoTa], [DonGia], [DonVi], [MaCC], [MaDanhMuc], [HinhAnh]) VALUES (7, NULL, N'Bàn học cao cấp', N'<p>Giúp cho chúng ta có một khoảng không gian để học tập tốt,</p>', CAST(1500000 AS Decimal(18, 0)), N'VNĐ', 1, 1, N'7.jpg')
INSERT [dbo].[SanPham] ([Id], [MetaTitle], [TenSanPham], [MoTa], [DonGia], [DonVi], [MaCC], [MaDanhMuc], [HinhAnh]) VALUES (8, NULL, N'Bàn cho trường học', N'<p>Bền đẹp thích hợp cho ngồi nhiều người, chống chịu tốt, giá rẻ</p>', CAST(700000 AS Decimal(18, 0)), N'VNĐ', 1, 1, N'8.JPG')
INSERT [dbo].[SanPham] ([Id], [MetaTitle], [TenSanPham], [MoTa], [DonGia], [DonVi], [MaCC], [MaDanhMuc], [HinhAnh]) VALUES (9, NULL, N'Bàn cho trẻ học', N'<p>Thiết kế tinh sảo đẹp mắt, có ngăn tủ cho trẻ đựng đồ</p>', CAST(2000000 AS Decimal(18, 0)), N'VNĐ', 1, 1, N'9.jpg')
INSERT [dbo].[SanPham] ([Id], [MetaTitle], [TenSanPham], [MoTa], [DonGia], [DonVi], [MaCC], [MaDanhMuc], [HinhAnh]) VALUES (10, NULL, N'Cửa chính nhà', N'<p>Mẫu mã đẹp có khóa chống chộm, thiết kế tinh sảo</p>', CAST(10000000 AS Decimal(18, 0)), N'VNĐ', 4, 2, N'10.jpg')
INSERT [dbo].[SanPham] ([Id], [MetaTitle], [TenSanPham], [MoTa], [DonGia], [DonVi], [MaCC], [MaDanhMuc], [HinhAnh]) VALUES (11, NULL, N'Cửa sổ', N'<p>Thiết kế đẹp, giá rẻ, chống chịu nắng, mưa, nhiệt độ rất tốt</p>', CAST(900000 AS Decimal(18, 0)), N'VNĐ', 4, 2, N'11.jpg')
INSERT [dbo].[SanPham] ([Id], [MetaTitle], [TenSanPham], [MoTa], [DonGia], [DonVi], [MaCC], [MaDanhMuc], [HinhAnh]) VALUES (12, NULL, N'Gỗ lát sàn nhà', N'<p>Thiết kế đẹp, trơn, màu sắc đẹp, chống nước</p>', CAST(3000000 AS Decimal(18, 0)), N'VNĐ', 2, 5, N'12.jpg')
INSERT [dbo].[SanPham] ([Id], [MetaTitle], [TenSanPham], [MoTa], [DonGia], [DonVi], [MaCC], [MaDanhMuc], [HinhAnh]) VALUES (13, NULL, N'Bàn ghế phòng tiếp khách', N'<p>Đẹp , sang trọng, tạo sự hài hòa trong ngôi nhà của bạn</p>', CAST(8000000 AS Decimal(18, 0)), N'VNĐ', 1, 1, N'13.jpg')
INSERT [dbo].[SanPham] ([Id], [MetaTitle], [TenSanPham], [MoTa], [DonGia], [DonVi], [MaCC], [MaDanhMuc], [HinhAnh]) VALUES (14, NULL, N'Giường ngủ cho vợ chồng', N'<p>Thiết kế sang trọng, ấm cúng, tạo cảm giác thoải mái khi ngủ</p>', CAST(5000000 AS Decimal(18, 0)), N'VNĐ', 4, 4, N'14.jpg')
INSERT [dbo].[SanPham] ([Id], [MetaTitle], [TenSanPham], [MoTa], [DonGia], [DonVi], [MaCC], [MaDanhMuc], [HinhAnh]) VALUES (15, NULL, N'Tủ đựng sách', N'<p>Sản phẩm thiết kế nhiều ngăn giúp đựng nhiều sách  phân loại sách dễ dàng hơn</p>', CAST(8500000 AS Decimal(18, 0)), N'VNĐ', 5, 3, N'15.jpg')
INSERT [dbo].[SanPham] ([Id], [MetaTitle], [TenSanPham], [MoTa], [DonGia], [DonVi], [MaCC], [MaDanhMuc], [HinhAnh]) VALUES (16, NULL, N'Giường ngủ  sang trọng', N'<p>Thích hợp với những ngôi nhà thiế kế theo kiểu phương tây sang trọng quý phái</p>', CAST(15000000 AS Decimal(18, 0)), N'VNĐ', 5, 4, N'16.jpg')
INSERT [dbo].[SanPham] ([Id], [MetaTitle], [TenSanPham], [MoTa], [DonGia], [DonVi], [MaCC], [MaDanhMuc], [HinhAnh]) VALUES (17, NULL, N'Bàn ghế cao cấp', N'<p>Tôn lên phong cách cho căn phòng chính của bạn, vẻ ngoài sang trọng lịch lãm.</p>', CAST(40000000 AS Decimal(18, 0)), N'VNĐ', 6, 1, N'17.jpg')
SET IDENTITY_INSERT [dbo].[SanPham] OFF
SET ANSI_PADDING ON

GO
/****** Object:  Index [UQ__KhachHan__D5B8C7F0459E92C3]    Script Date: 4/7/2018 12:05:18 AM ******/
ALTER TABLE [dbo].[KhachHang] ADD UNIQUE NONCLUSTERED 
(
	[TaiKhoan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ChiTietHoaDon]  WITH CHECK ADD  CONSTRAINT [FkChiTietHoaDon] FOREIGN KEY([MaHoaDon])
REFERENCES [dbo].[HoaDon] ([MaHoaDon])
GO
ALTER TABLE [dbo].[ChiTietHoaDon] CHECK CONSTRAINT [FkChiTietHoaDon]
GO
ALTER TABLE [dbo].[ChiTietHoaDon]  WITH CHECK ADD  CONSTRAINT [FkChiTietHoaDonSanPham] FOREIGN KEY([MaSanPham])
REFERENCES [dbo].[SanPham] ([Id])
GO
ALTER TABLE [dbo].[ChiTietHoaDon] CHECK CONSTRAINT [FkChiTietHoaDonSanPham]
GO
ALTER TABLE [dbo].[ChiTietHopDong]  WITH CHECK ADD  CONSTRAINT [FkChiTietHopDong] FOREIGN KEY([MaHopDong])
REFERENCES [dbo].[HopDong] ([Id])
GO
ALTER TABLE [dbo].[ChiTietHopDong] CHECK CONSTRAINT [FkChiTietHopDong]
GO
ALTER TABLE [dbo].[ChiTietHopDong]  WITH CHECK ADD  CONSTRAINT [FkChiTietHopDongSanPham] FOREIGN KEY([MaSanPham])
REFERENCES [dbo].[SanPham] ([Id])
GO
ALTER TABLE [dbo].[ChiTietHopDong] CHECK CONSTRAINT [FkChiTietHopDongSanPham]
GO
ALTER TABLE [dbo].[DeXuat]  WITH CHECK ADD  CONSTRAINT [FkDeXuatNguoiDung] FOREIGN KEY([MaNguoiDeXuat])
REFERENCES [dbo].[NguoiDung] ([Id])
GO
ALTER TABLE [dbo].[DeXuat] CHECK CONSTRAINT [FkDeXuatNguoiDung]
GO
ALTER TABLE [dbo].[DeXuat]  WITH CHECK ADD  CONSTRAINT [FkDeXuatNguoiDung1] FOREIGN KEY([MaNguoiXacNhan])
REFERENCES [dbo].[NguoiDung] ([Id])
GO
ALTER TABLE [dbo].[DeXuat] CHECK CONSTRAINT [FkDeXuatNguoiDung1]
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD  CONSTRAINT [FkHoaDonKhachHang] FOREIGN KEY([MaKhachHang])
REFERENCES [dbo].[KhachHang] ([Id])
GO
ALTER TABLE [dbo].[HoaDon] CHECK CONSTRAINT [FkHoaDonKhachHang]
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD  CONSTRAINT [FkHoaDonNguoiDung] FOREIGN KEY([MaNguoiDung])
REFERENCES [dbo].[NguoiDung] ([Id])
GO
ALTER TABLE [dbo].[HoaDon] CHECK CONSTRAINT [FkHoaDonNguoiDung]
GO
ALTER TABLE [dbo].[HopDong]  WITH CHECK ADD  CONSTRAINT [FkHopDongKhachHang] FOREIGN KEY([MaKhachHang])
REFERENCES [dbo].[KhachHang] ([Id])
GO
ALTER TABLE [dbo].[HopDong] CHECK CONSTRAINT [FkHopDongKhachHang]
GO
ALTER TABLE [dbo].[HopDong]  WITH CHECK ADD  CONSTRAINT [FkHopDongNguoiDung] FOREIGN KEY([MaNhanVien])
REFERENCES [dbo].[NguoiDung] ([Id])
GO
ALTER TABLE [dbo].[HopDong] CHECK CONSTRAINT [FkHopDongNguoiDung]
GO
ALTER TABLE [dbo].[HopDong]  WITH CHECK ADD  CONSTRAINT [FkHopDongNguoiDung1] FOREIGN KEY([MaGiamDoc])
REFERENCES [dbo].[NguoiDung] ([Id])
GO
ALTER TABLE [dbo].[HopDong] CHECK CONSTRAINT [FkHopDongNguoiDung1]
GO
ALTER TABLE [dbo].[NguoiDung]  WITH CHECK ADD  CONSTRAINT [FkNguoiDungLoaiTaiKhoan] FOREIGN KEY([MaLoai])
REFERENCES [dbo].[LoaiTaiKhoan] ([Id])
GO
ALTER TABLE [dbo].[NguoiDung] CHECK CONSTRAINT [FkNguoiDungLoaiTaiKhoan]
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [FkSanPhamDanhMucSanPham] FOREIGN KEY([MaDanhMuc])
REFERENCES [dbo].[DanhMucSanPham] ([Id])
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [FkSanPhamDanhMucSanPham]
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [FkSanPhamNhaCungCap] FOREIGN KEY([MaCC])
REFERENCES [dbo].[NhaCungCap] ([Id])
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [FkSanPhamNhaCungCap]
GO
USE [master]
GO
ALTER DATABASE [BanHangDoGo] SET  READ_WRITE 
GO
