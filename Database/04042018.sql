USE [master]
GO
/****** Object:  Database [BanHangDoGo]    Script Date: 4/4/2018 6:18:53 PM ******/
CREATE DATABASE [BanHangDoGo]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'BanHangDoGo', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\BanHangDoGo.mdf' , SIZE = 3136KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'BanHangDoGo_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\BanHangDoGo_log.ldf' , SIZE = 832KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [BanHangDoGo] SET COMPATIBILITY_LEVEL = 110
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
ALTER DATABASE [BanHangDoGo] SET AUTO_CREATE_STATISTICS ON 
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
USE [BanHangDoGo]
GO
/****** Object:  Table [dbo].[ChiTietHoaDon]    Script Date: 4/4/2018 6:18:53 PM ******/
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
	[SoLuongDaGiao] [int] NULL,
 CONSTRAINT [PkChiTietHoaDon] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ChiTietHopDong]    Script Date: 4/4/2018 6:18:53 PM ******/
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
/****** Object:  Table [dbo].[DanhMucSanPham]    Script Date: 4/4/2018 6:18:53 PM ******/
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
/****** Object:  Table [dbo].[DeXuat]    Script Date: 4/4/2018 6:18:53 PM ******/
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
/****** Object:  Table [dbo].[HoaDon]    Script Date: 4/4/2018 6:18:53 PM ******/
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
	[GiaiDoanGiaoHang] [nvarchar](255) NULL,
 CONSTRAINT [PkHoaDon] PRIMARY KEY CLUSTERED 
(
	[MaHoaDon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[HopDong]    Script Date: 4/4/2018 6:18:53 PM ******/
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
	[TienDatCoc] [int] NULL,
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
/****** Object:  Table [dbo].[KhachHang]    Script Date: 4/4/2018 6:18:53 PM ******/
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
/****** Object:  Table [dbo].[LoaiTaiKhoan]    Script Date: 4/4/2018 6:18:53 PM ******/
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
/****** Object:  Table [dbo].[NguoiDung]    Script Date: 4/4/2018 6:18:53 PM ******/
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
/****** Object:  Table [dbo].[NhaCungCap]    Script Date: 4/4/2018 6:18:53 PM ******/
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
/****** Object:  Table [dbo].[SanPham]    Script Date: 4/4/2018 6:18:53 PM ******/
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
SET IDENTITY_INSERT [dbo].[DanhMucSanPham] ON 

INSERT [dbo].[DanhMucSanPham] ([Id], [TenDanhMuc]) VALUES (1, N'Bàn')
INSERT [dbo].[DanhMucSanPham] ([Id], [TenDanhMuc]) VALUES (2, N'Ghế')
SET IDENTITY_INSERT [dbo].[DanhMucSanPham] OFF
INSERT [dbo].[DeXuat] ([Id], [DeXuat], [MaNguoiDeXuat], [MaNguoiXacNhan], [KetQua]) VALUES (1, N'âsasasas', 1, 1, 1)
INSERT [dbo].[DeXuat] ([Id], [DeXuat], [MaNguoiDeXuat], [MaNguoiXacNhan], [KetQua]) VALUES (2, N'aaaaaaaaaaaaaaaaaaaa', 1, 1, NULL)
SET IDENTITY_INSERT [dbo].[KhachHang] ON 

INSERT [dbo].[KhachHang] ([Id], [TaiKhoan], [MatKhau], [TenKhachHang], [DiaChi], [DienThoai], [Email], [NgaySinh]) VALUES (1, N'khachhang1', N'12345', N' nguyen anh', N'ssdsđ', N'1213456', N'anhtien@gmail.com', CAST(0x0000A8B700000000 AS DateTime))
SET IDENTITY_INSERT [dbo].[KhachHang] OFF
SET IDENTITY_INSERT [dbo].[LoaiTaiKhoan] ON 

INSERT [dbo].[LoaiTaiKhoan] ([Id], [TenLoai]) VALUES (1, N'sâs')
SET IDENTITY_INSERT [dbo].[LoaiTaiKhoan] OFF
SET IDENTITY_INSERT [dbo].[NguoiDung] ON 

INSERT [dbo].[NguoiDung] ([Id], [TaiKhoan], [MatKhau], [HoTen], [GioiTinh], [NgaySinh], [DiaChi], [Email], [MaLoai]) VALUES (1, N'âs', N'aaa', N'aaa', 1, CAST(0x0000A8B700000000 AS DateTime), N'dssd', N's@gmail.com', 1)
SET IDENTITY_INSERT [dbo].[NguoiDung] OFF
SET IDENTITY_INSERT [dbo].[NhaCungCap] ON 

INSERT [dbo].[NhaCungCap] ([Id], [TenNhaCungCap]) VALUES (1, N'Công ty FPT')
INSERT [dbo].[NhaCungCap] ([Id], [TenNhaCungCap]) VALUES (2, N'Công ty ENV')
SET IDENTITY_INSERT [dbo].[NhaCungCap] OFF
SET IDENTITY_INSERT [dbo].[SanPham] ON 

INSERT [dbo].[SanPham] ([Id], [MetaTitle], [TenSanPham], [MoTa], [DonGia], [DonVi], [MaCC], [MaDanhMuc], [HinhAnh]) VALUES (1, N'mi pham', N'Nước hoa thái lan', N'hướng thơm quyến rũ', CAST(1000 AS Decimal(18, 0)), N'vnd', 2, 2, N'anh1.jpg')
SET IDENTITY_INSERT [dbo].[SanPham] OFF
SET ANSI_PADDING ON

GO
/****** Object:  Index [UQ__KhachHan__D5B8C7F012BBC378]    Script Date: 4/4/2018 6:18:53 PM ******/
ALTER TABLE [dbo].[KhachHang] ADD UNIQUE NONCLUSTERED 
(
	[TaiKhoan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ChiTietHoaDon] ADD  DEFAULT ((0)) FOR [SoLuongDaGiao]
GO
ALTER TABLE [dbo].[HoaDon] ADD  DEFAULT (N'Đã tiếp nhận') FOR [GiaiDoanGiaoHang]
GO
ALTER TABLE [dbo].[HopDong] ADD  DEFAULT ((0)) FOR [TienDatCoc]
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
