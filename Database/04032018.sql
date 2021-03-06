USE [master]
GO
/****** Object:  Database [BanHangDoGo]    Script Date: 4/3/2018 10:42:39 PM ******/
CREATE DATABASE [BanHangDoGo]
GO
USE [BanHangDoGo]
GO
/****** Object:  UserDefinedFunction [dbo].[splitstring]    Script Date: 4/3/2018 10:42:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/****** Object:  Table [dbo].[CHI_TIET_HOA_DON]    Script Date: 4/3/2018 10:42:39 PM ******/
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
/****** Object:  Table [dbo].[CHI_TIET_HOP_DONG]    Script Date: 4/3/2018 10:42:39 PM ******/
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
/****** Object:  Table [dbo].[DANH_MUC_SAN_PHAM]    Script Date: 4/3/2018 10:42:39 PM ******/
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
/****** Object:  Table [dbo].[DE_XUAT]    Script Date: 4/3/2018 10:42:39 PM ******/
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
/****** Object:  Table [dbo].[HOA_DON]    Script Date: 4/3/2018 10:42:39 PM ******/
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
/****** Object:  Table [dbo].[HOP_DONG]    Script Date: 4/3/2018 10:42:39 PM ******/
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
/****** Object:  Table [dbo].[KHACH_HANG]    Script Date: 4/3/2018 10:42:39 PM ******/
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
/****** Object:  Table [dbo].[LOAI_TAI_KHOAN]    Script Date: 4/3/2018 10:42:39 PM ******/
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
/****** Object:  Table [dbo].[NGUOI_DUNG]    Script Date: 4/3/2018 10:42:39 PM ******/
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
/****** Object:  Table [dbo].[NHA_CUNG_CAP]    Script Date: 4/3/2018 10:42:39 PM ******/
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
/****** Object:  Table [dbo].[SAN_PHAM]    Script Date: 4/3/2018 10:42:39 PM ******/
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

GO
/****** Object:  Index [UQ__KHACH_HA__FE7B8730948455B9]    Script Date: 4/3/2018 10:42:39 PM ******/
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
ALTER TABLE [dbo].[DeXuat] CHECK CONSTRAINT [FkDeXuatNguoiDung]
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
