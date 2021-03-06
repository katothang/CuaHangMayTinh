USE [master]
GO
/****** Object:  Database [BanHangDoGo]    Script Date: 7/1/2020 9:18:54 PM ******/
CREATE DATABASE [BanHangDoGo]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'BanHangDoGo', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\BanHangDoGo.mdf' , SIZE = 3136KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'BanHangDoGo_log', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\BanHangDoGo_log.ldf' , SIZE = 832KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
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
/****** Object:  Table [dbo].[ChiTietHoaDon]    Script Date: 7/1/2020 9:18:54 PM ******/
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
/****** Object:  Table [dbo].[ChiTietHopDong]    Script Date: 7/1/2020 9:18:54 PM ******/
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
/****** Object:  Table [dbo].[DanhMucSanPham]    Script Date: 7/1/2020 9:18:54 PM ******/
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
/****** Object:  Table [dbo].[DeXuat]    Script Date: 7/1/2020 9:18:54 PM ******/
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
/****** Object:  Table [dbo].[HoaDon]    Script Date: 7/1/2020 9:18:54 PM ******/
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
/****** Object:  Table [dbo].[HopDong]    Script Date: 7/1/2020 9:18:54 PM ******/
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
	[NoiDung] [nvarchar](max) NULL,
 CONSTRAINT [PkHopDong] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KhachHang]    Script Date: 7/1/2020 9:18:54 PM ******/
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
/****** Object:  Table [dbo].[LoaiTaiKhoan]    Script Date: 7/1/2020 9:18:54 PM ******/
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
/****** Object:  Table [dbo].[NguoiDung]    Script Date: 7/1/2020 9:18:54 PM ******/
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
/****** Object:  Table [dbo].[NhaCungCap]    Script Date: 7/1/2020 9:18:54 PM ******/
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
/****** Object:  Table [dbo].[SanPham]    Script Date: 7/1/2020 9:18:54 PM ******/
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
INSERT [dbo].[DeXuat] ([Id], [DeXuat], [MaNguoiDeXuat], [MaNguoiXacNhan], [KetQua]) VALUES (1, N'âsasasas', 1, 1, 1)
INSERT [dbo].[DeXuat] ([Id], [DeXuat], [MaNguoiDeXuat], [MaNguoiXacNhan], [KetQua]) VALUES (2, N'aaaaaaaaaaaaaaaaaaaa', 1, 1, NULL)
SET IDENTITY_INSERT [dbo].[KhachHang] ON 

INSERT [dbo].[KhachHang] ([Id], [TaiKhoan], [MatKhau], [TenKhachHang], [DiaChi], [DienThoai], [Email], [NgaySinh]) VALUES (1, N'hoalan', N'e10adc3949ba59abbe56e057f20f883e', N'Nguyễn Anh', N'Thanh Hóa', N'123456789', N'anh123@gmail.com', CAST(0x0000A41900000000 AS DateTime))
INSERT [dbo].[KhachHang] ([Id], [TaiKhoan], [MatKhau], [TenKhachHang], [DiaChi], [DienThoai], [Email], [NgaySinh]) VALUES (2, N'minhnguyet', N'e10adc3949ba59abbe56e057f20f883e', N'Nguyễn Thị Minh Nguyệt', N'Hà Nội', N'1234567899', N'nguyet@gmail.com', CAST(0x0000A77700000000 AS DateTime))
INSERT [dbo].[KhachHang] ([Id], [TaiKhoan], [MatKhau], [TenKhachHang], [DiaChi], [DienThoai], [Email], [NgaySinh]) VALUES (3, N'trantien', N'e10adc3949ba59abbe56e057f20f883e', N'Trần Văn Tiến', N' Quảng Nam', N'1234567788', N'tien123@gmai.com', CAST(0x000087E400000000 AS DateTime))
INSERT [dbo].[KhachHang] ([Id], [TaiKhoan], [MatKhau], [TenKhachHang], [DiaChi], [DienThoai], [Email], [NgaySinh]) VALUES (4, N'ngocanh1234', N'e10adc3949ba59abbe56e057f20f883e', N'Trần Ngọc Ánh', N' Quảng Ngãi', N'123456789', N'ngocanh123@gmail.com', CAST(0x0000729C00000000 AS DateTime))
INSERT [dbo].[KhachHang] ([Id], [TaiKhoan], [MatKhau], [TenKhachHang], [DiaChi], [DienThoai], [Email], [NgaySinh]) VALUES (5, N'tunglamdeptrai', N'e10adc3949ba59abbe56e057f20f883e', N'Hoàng Tùng Lâm', N'Nam định', N'12345678', N'tunglam123@gmail.com', CAST(0xFFFFF31500000000 AS DateTime))
INSERT [dbo].[KhachHang] ([Id], [TaiKhoan], [MatKhau], [TenKhachHang], [DiaChi], [DienThoai], [Email], [NgaySinh]) VALUES (6, N'user', N'e10adc3949ba59abbe56e057f20f883e', N'user', N'user', N'dia chi', N'user@localhost', CAST(0x0000A8BA016872E7 AS DateTime))
INSERT [dbo].[KhachHang] ([Id], [TaiKhoan], [MatKhau], [TenKhachHang], [DiaChi], [DienThoai], [Email], [NgaySinh]) VALUES (7, N'admin2', N'e10adc3949ba59abbe56e057f20f883e', NULL, NULL, NULL, NULL, CAST(0x00009E3900000000 AS DateTime))
INSERT [dbo].[KhachHang] ([Id], [TaiKhoan], [MatKhau], [TenKhachHang], [DiaChi], [DienThoai], [Email], [NgaySinh]) VALUES (8, N'katothang', N'400e6c8365bfe20d1f9d2924da8f7556', N'Nguyen Van Thang', N'ha noi viet nam', N'0364561995', N'katothang@gmail.com', CAST(0x0000AB38014297D0 AS DateTime))
SET IDENTITY_INSERT [dbo].[KhachHang] OFF
SET IDENTITY_INSERT [dbo].[LoaiTaiKhoan] ON 

INSERT [dbo].[LoaiTaiKhoan] ([Id], [TenLoai]) VALUES (1, N'Người dùng')
INSERT [dbo].[LoaiTaiKhoan] ([Id], [TenLoai]) VALUES (2, N'Khách hàng')
INSERT [dbo].[LoaiTaiKhoan] ([Id], [TenLoai]) VALUES (3, N'Nhà cung cấp')
SET IDENTITY_INSERT [dbo].[LoaiTaiKhoan] OFF
SET IDENTITY_INSERT [dbo].[NguoiDung] ON 

INSERT [dbo].[NguoiDung] ([Id], [TaiKhoan], [MatKhau], [HoTen], [GioiTinh], [NgaySinh], [DiaChi], [Email], [MaLoai]) VALUES (1, N'âs', NULL, N'aaa', 1, CAST(0x00008A4000000000 AS DateTime), N'dssd', NULL, 1)
INSERT [dbo].[NguoiDung] ([Id], [TaiKhoan], [MatKhau], [HoTen], [GioiTinh], [NgaySinh], [DiaChi], [Email], [MaLoai]) VALUES (2, N'admin', N'12345', N'Admin', 1, CAST(0x00008A4000000000 AS DateTime), NULL, NULL, 1)
SET IDENTITY_INSERT [dbo].[NguoiDung] OFF
SET ANSI_PADDING ON

GO
/****** Object:  Index [UQ__KhachHan__D5B8C7F086440C70]    Script Date: 7/1/2020 9:18:54 PM ******/
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
