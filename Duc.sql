CREATE DATABASE [QLShopQuanAo]


GO
USE [QLShopQuanAo]
GO
/****** Object:  Database [QLShopQuanAo]    Script Date: 12/16/2021 9:02:11 PM ******/

/****** Object:  Table [dbo].[CHATLIEU]    Script Date: 12/16/2021 9:02:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CHATLIEU](
	[MaChatLieu] [int] IDENTITY(1,1) NOT NULL,
	[TenChatLieu] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaChatLieu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CHITIETDOITRA]    Script Date: 12/16/2021 9:02:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CHITIETDOITRA](
	[MaCTDoiTra] [int] IDENTITY(1,1) NOT NULL,
	[MaDoiTra] [int] NOT NULL,
	[MaSP] [int] NULL,
	[SoLuong] [int] NULL,
	[MoTaChiTiet] [nvarchar](max) NULL,
 CONSTRAINT [PK_ChiTietDoiTra] PRIMARY KEY CLUSTERED 
(
	[MaCTDoiTra] ASC,
	[MaDoiTra] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CHITIETHOADON]    Script Date: 12/16/2021 9:02:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CHITIETHOADON](
	[MaCTHoaDon] [int] NOT NULL,
	[MaHD] [int] NULL,
	[MaSP] [int] NULL,
	[SoLuong] [int] NULL,
	[DonGia] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaCTHoaDon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DOITRA]    Script Date: 12/16/2021 9:02:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DOITRA](
	[MaDoiTra] [int] IDENTITY(1,1) NOT NULL,
	[MaNV] [int] NULL,
	[MaKH] [int] NULL,
	[MaLoaiKH] [int] NULL,
	[ThoiGian] [datetime] NULL,
 CONSTRAINT [PK_DoiTra] PRIMARY KEY CLUSTERED 
(
	[MaDoiTra] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GIAMGIA]    Script Date: 12/16/2021 9:02:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GIAMGIA](
	[MaGiamGia] [int] IDENTITY(1,1) NOT NULL,
	[MoTa] [nvarchar](max) NULL,
	[TiLeGiam] [int] NULL,
 CONSTRAINT [PK_GiamGia] PRIMARY KEY CLUSTERED 
(
	[MaGiamGia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HOADON]    Script Date: 12/16/2021 9:02:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HOADON](
	[MaHD] [int] NOT NULL,
	[MaNV] [int] NULL,
	[MaKH] [int] NULL,
	[MaLoaiKH] [int] NULL,
	[ThoiGian] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaHD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KHACHHANG]    Script Date: 12/16/2021 9:02:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KHACHHANG](
	[MaKH] [int] IDENTITY(1,1) NOT NULL,
	[TenKH] [nvarchar](max) NULL,
	[GioiTinh] [varchar](3) NULL,
	[NgaySinh] [datetime] NULL,
	[SDT] [nvarchar](10) NULL,
	[DiaChi] [nvarchar](max) NULL,
	
 CONSTRAINT [PK_KhachHang] PRIMARY KEY CLUSTERED 
(
	[MaKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LOAIKHACHHANG]    Script Date: 12/16/2021 9:02:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LOAIKHACHHANG](
	[MaLoai] [int] IDENTITY(1,1) NOT NULL,
	[TenLoai] [nvarchar](max) NULL,
	[MoTa] [nvarchar](max) NULL,
 CONSTRAINT [PK_LoaiKhachHang] PRIMARY KEY CLUSTERED 
(
	[MaLoai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LOAISANPHAM]    Script Date: 12/16/2021 9:02:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LOAISANPHAM](
	[MaLoai] [int] IDENTITY(1,1) NOT NULL,
	[TenLoaiSanPham] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaLoai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NGUOIDUNG]    Script Date: 12/16/2021 9:02:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NGUOIDUNG](
	[MaNguoiDung] [int] IDENTITY(1,1) NOT NULL,
	[TenDangNhap] [varchar](20) NULL,
	[MatKhau] [varchar](20) NULL,
	[Quyen] [nvarchar](50) NULL,
	[MaNV] [int] NULL,
 CONSTRAINT [PK_NguoiDung] PRIMARY KEY CLUSTERED 
(
	[MaNguoiDung] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NHANVIEN]    Script Date: 12/16/2021 9:02:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NHANVIEN](
	[MaNV] [int] IDENTITY(1,1) NOT NULL,
	[TenNV] [nvarchar](max) NULL,
	[GioiTinh] [varchar](3) NULL,
	[NgaySinh] [datetime] NULL,
	[DiaChi] [nvarchar](max) NULL,
	[SDT] [nchar](10) NULL,
	[ChucVu] [nvarchar](50) NULL,
 CONSTRAINT [PK_NhanVien] PRIMARY KEY CLUSTERED 
(
	[MaNV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NHASANXUAT]    Script Date: 12/16/2021 9:02:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NHASANXUAT](
	[MaNSX] [int] IDENTITY(1,1) NOT NULL,
	[TenNSX] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaNSX] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SANPHAM]    Script Date: 12/16/2021 9:02:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SANPHAM](
	[MaSP] [int] IDENTITY(1,1) NOT NULL,
	[TenSP] [nvarchar](max) NULL,
	[HinhAnh] [nvarchar](max) NULL,
	[TrangThai] [nvarchar](max) NULL,
	[DonGia] [int] NULL,
	[SoLuongTon] [int] NULL,
	[MaChatLieu] [int] NULL,
	[MaLoai] [int] NULL,
	[MaNSX] [int] NULL,
 CONSTRAINT [PK_SANPHAM] PRIMARY KEY CLUSTERED 
(
	[MaSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[CHATLIEU] ON 

INSERT [dbo].[CHATLIEU] ([MaChatLieu], [TenChatLieu]) VALUES (1, N'Vải Thun cao cấp')
INSERT [dbo].[CHATLIEU] ([MaChatLieu], [TenChatLieu]) VALUES (2, N'Vải cotton cao cấp')
INSERT [dbo].[CHATLIEU] ([MaChatLieu], [TenChatLieu]) VALUES (3, N'Vải Len cao cấp')
INSERT [dbo].[CHATLIEU] ([MaChatLieu], [TenChatLieu]) VALUES (4, N'Vải Nỉ cao cấp')
INSERT [dbo].[CHATLIEU] ([MaChatLieu], [TenChatLieu]) VALUES (5, N'Vải Ka Ki cao cấp')
INSERT [dbo].[CHATLIEU] ([MaChatLieu], [TenChatLieu]) VALUES (6, N'Vải Jean cao cấp')
SET IDENTITY_INSERT [dbo].[CHATLIEU] OFF
GO
INSERT [dbo].[CHITIETHOADON] ([MaCTHoaDon], [MaHD], [MaSP], [SoLuong], [DonGia]) VALUES (1, 9, 4, 10, 200000)
INSERT [dbo].[CHITIETHOADON] ([MaCTHoaDon], [MaHD], [MaSP], [SoLuong], [DonGia]) VALUES (2, 9, 4, 10, 200000)
INSERT [dbo].[CHITIETHOADON] ([MaCTHoaDon], [MaHD], [MaSP], [SoLuong], [DonGia]) VALUES (3, 12, 3, 15, 150000)
INSERT [dbo].[CHITIETHOADON] ([MaCTHoaDon], [MaHD], [MaSP], [SoLuong], [DonGia]) VALUES (4, 12, 5, 10, 150000)
INSERT [dbo].[CHITIETHOADON] ([MaCTHoaDon], [MaHD], [MaSP], [SoLuong], [DonGia]) VALUES (5, 12, 5, 3, 150000)
INSERT [dbo].[CHITIETHOADON] ([MaCTHoaDon], [MaHD], [MaSP], [SoLuong], [DonGia]) VALUES (6, 12, 6, 25, 200000)
INSERT [dbo].[CHITIETHOADON] ([MaCTHoaDon], [MaHD], [MaSP], [SoLuong], [DonGia]) VALUES (7, 15, 3, 15, 150000)
INSERT [dbo].[CHITIETHOADON] ([MaCTHoaDon], [MaHD], [MaSP], [SoLuong], [DonGia]) VALUES (8, 15, 6, 25, 200000)
INSERT [dbo].[CHITIETHOADON] ([MaCTHoaDon], [MaHD], [MaSP], [SoLuong], [DonGia]) VALUES (9, 15, 6, 25, 200000)
INSERT [dbo].[CHITIETHOADON] ([MaCTHoaDon], [MaHD], [MaSP], [SoLuong], [DonGia]) VALUES (10, 16, 2, 5, 250000)
INSERT [dbo].[CHITIETHOADON] ([MaCTHoaDon], [MaHD], [MaSP], [SoLuong], [DonGia]) VALUES (11, 16, 4, 10, 200000)
INSERT [dbo].[CHITIETHOADON] ([MaCTHoaDon], [MaHD], [MaSP], [SoLuong], [DonGia]) VALUES (12, 16, 5, 10, 150000)
INSERT [dbo].[CHITIETHOADON] ([MaCTHoaDon], [MaHD], [MaSP], [SoLuong], [DonGia]) VALUES (13, 17, 3, 15, 150000)
INSERT [dbo].[CHITIETHOADON] ([MaCTHoaDon], [MaHD], [MaSP], [SoLuong], [DonGia]) VALUES (14, 17, 4, 10, 200000)
INSERT [dbo].[CHITIETHOADON] ([MaCTHoaDon], [MaHD], [MaSP], [SoLuong], [DonGia]) VALUES (15, 18, 6, 1, 200000)
INSERT [dbo].[CHITIETHOADON] ([MaCTHoaDon], [MaHD], [MaSP], [SoLuong], [DonGia]) VALUES (16, 18, 4, 1, 200000)
INSERT [dbo].[CHITIETHOADON] ([MaCTHoaDon], [MaHD], [MaSP], [SoLuong], [DonGia]) VALUES (17, 18, 2, 1, 250000)
INSERT [dbo].[CHITIETHOADON] ([MaCTHoaDon], [MaHD], [MaSP], [SoLuong], [DonGia]) VALUES (18, 19, 3, 15, 150000)
INSERT [dbo].[CHITIETHOADON] ([MaCTHoaDon], [MaHD], [MaSP], [SoLuong], [DonGia]) VALUES (19, 20, 4, 10, 200000)
INSERT [dbo].[CHITIETHOADON] ([MaCTHoaDon], [MaHD], [MaSP], [SoLuong], [DonGia]) VALUES (20, 20, 5, 10, 150000)
INSERT [dbo].[CHITIETHOADON] ([MaCTHoaDon], [MaHD], [MaSP], [SoLuong], [DonGia]) VALUES (21, 20, 2, 5, 250000)
INSERT [dbo].[CHITIETHOADON] ([MaCTHoaDon], [MaHD], [MaSP], [SoLuong], [DonGia]) VALUES (22, 21, 4, 10, 200000)
INSERT [dbo].[CHITIETHOADON] ([MaCTHoaDon], [MaHD], [MaSP], [SoLuong], [DonGia]) VALUES (23, 21, 6, 5, 200000)
INSERT [dbo].[CHITIETHOADON] ([MaCTHoaDon], [MaHD], [MaSP], [SoLuong], [DonGia]) VALUES (24, 22, 3, 15, 150000)
INSERT [dbo].[CHITIETHOADON] ([MaCTHoaDon], [MaHD], [MaSP], [SoLuong], [DonGia]) VALUES (25, 22, 5, 10, 150000)
INSERT [dbo].[CHITIETHOADON] ([MaCTHoaDon], [MaHD], [MaSP], [SoLuong], [DonGia]) VALUES (26, 23, 3, 15, 150000)
INSERT [dbo].[CHITIETHOADON] ([MaCTHoaDon], [MaHD], [MaSP], [SoLuong], [DonGia]) VALUES (27, 23, 4, 10, 200000)
INSERT [dbo].[CHITIETHOADON] ([MaCTHoaDon], [MaHD], [MaSP], [SoLuong], [DonGia]) VALUES (28, 24, 4, 10, 200000)
INSERT [dbo].[CHITIETHOADON] ([MaCTHoaDon], [MaHD], [MaSP], [SoLuong], [DonGia]) VALUES (29, 24, 3, 15, 150000)
GO
SET IDENTITY_INSERT [dbo].[DOITRA] ON 

INSERT [dbo].[DOITRA] ([MaDoiTra], [MaNV], [MaKH], [MaLoaiKH], [ThoiGian]) VALUES (1, 1, 1, 2, CAST(N'2021-09-20T10:00:00.000' AS DateTime))
INSERT [dbo].[DOITRA] ([MaDoiTra], [MaNV], [MaKH], [MaLoaiKH], [ThoiGian]) VALUES (2, 2, 4, 1, CAST(N'2021-08-20T09:00:00.000' AS DateTime))
INSERT [dbo].[DOITRA] ([MaDoiTra], [MaNV], [MaKH], [MaLoaiKH], [ThoiGian]) VALUES (3, 1, 5, 1, CAST(N'2021-05-20T05:00:00.000' AS DateTime))
INSERT [dbo].[DOITRA] ([MaDoiTra], [MaNV], [MaKH], [MaLoaiKH], [ThoiGian]) VALUES (4, 3, 5, 3, CAST(N'2021-06-20T03:00:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[DOITRA] OFF
GO
SET IDENTITY_INSERT [dbo].[GIAMGIA] ON 

INSERT [dbo].[GIAMGIA] ([MaGiamGia], [MoTa], [TiLeGiam]) VALUES (1, N'Giảm giá khách trung thành', 25)
INSERT [dbo].[GIAMGIA] ([MaGiamGia], [MoTa], [TiLeGiam]) VALUES (2, N'Giảm giá khách tiềm năng', 30)
INSERT [dbo].[GIAMGIA] ([MaGiamGia], [MoTa], [TiLeGiam]) VALUES (3, N'Giảm giá khách giá trị nhỏ', 20)
INSERT [dbo].[GIAMGIA] ([MaGiamGia], [MoTa], [TiLeGiam]) VALUES (4, N'Khách tiêu cực', 5)
SET IDENTITY_INSERT [dbo].[GIAMGIA] OFF
GO
INSERT [dbo].[HOADON] ([MaHD], [MaNV], [MaKH], [MaLoaiKH], [ThoiGian]) VALUES (1, 7, 1, 1, CAST(N'2021-12-15T15:47:04.697' AS DateTime))
INSERT [dbo].[HOADON] ([MaHD], [MaNV], [MaKH], [MaLoaiKH], [ThoiGian]) VALUES (2, 7, 1, 1, CAST(N'2021-12-15T15:48:40.963' AS DateTime))
INSERT [dbo].[HOADON] ([MaHD], [MaNV], [MaKH], [MaLoaiKH], [ThoiGian]) VALUES (3, 7, 1, 1, CAST(N'2021-12-15T15:50:05.563' AS DateTime))
INSERT [dbo].[HOADON] ([MaHD], [MaNV], [MaKH], [MaLoaiKH], [ThoiGian]) VALUES (4, 7, 1, 1, CAST(N'2021-12-15T15:52:11.157' AS DateTime))
INSERT [dbo].[HOADON] ([MaHD], [MaNV], [MaKH], [MaLoaiKH], [ThoiGian]) VALUES (5, 7, 1, 1, CAST(N'2021-12-15T15:53:22.890' AS DateTime))
INSERT [dbo].[HOADON] ([MaHD], [MaNV], [MaKH], [MaLoaiKH], [ThoiGian]) VALUES (6, 7, 1, 1, CAST(N'2021-12-15T15:53:49.993' AS DateTime))
INSERT [dbo].[HOADON] ([MaHD], [MaNV], [MaKH], [MaLoaiKH], [ThoiGian]) VALUES (7, 7, 1, 1, CAST(N'2021-12-15T15:54:57.840' AS DateTime))
INSERT [dbo].[HOADON] ([MaHD], [MaNV], [MaKH], [MaLoaiKH], [ThoiGian]) VALUES (8, 7, 1, 1, CAST(N'2021-12-15T15:56:19.247' AS DateTime))
INSERT [dbo].[HOADON] ([MaHD], [MaNV], [MaKH], [MaLoaiKH], [ThoiGian]) VALUES (9, 7, 1, 1, CAST(N'2021-12-15T15:56:59.990' AS DateTime))
INSERT [dbo].[HOADON] ([MaHD], [MaNV], [MaKH], [MaLoaiKH], [ThoiGian]) VALUES (10, 7, 1, 1, CAST(N'2021-12-15T15:57:37.393' AS DateTime))
INSERT [dbo].[HOADON] ([MaHD], [MaNV], [MaKH], [MaLoaiKH], [ThoiGian]) VALUES (11, 7, 1, 1, CAST(N'2021-12-15T15:58:20.543' AS DateTime))
INSERT [dbo].[HOADON] ([MaHD], [MaNV], [MaKH], [MaLoaiKH], [ThoiGian]) VALUES (12, 7, 1, 1, CAST(N'2021-12-15T16:00:30.760' AS DateTime))
INSERT [dbo].[HOADON] ([MaHD], [MaNV], [MaKH], [MaLoaiKH], [ThoiGian]) VALUES (13, 7, 1, 1, CAST(N'2021-12-15T16:01:27.810' AS DateTime))
INSERT [dbo].[HOADON] ([MaHD], [MaNV], [MaKH], [MaLoaiKH], [ThoiGian]) VALUES (14, 7, 1, 1, CAST(N'2021-12-15T16:21:51.223' AS DateTime))
INSERT [dbo].[HOADON] ([MaHD], [MaNV], [MaKH], [MaLoaiKH], [ThoiGian]) VALUES (15, 1, 1, 1, CAST(N'2021-12-15T16:22:58.610' AS DateTime))
INSERT [dbo].[HOADON] ([MaHD], [MaNV], [MaKH], [MaLoaiKH], [ThoiGian]) VALUES (16, 1, 1, 1, CAST(N'2021-12-15T16:24:07.497' AS DateTime))
INSERT [dbo].[HOADON] ([MaHD], [MaNV], [MaKH], [MaLoaiKH], [ThoiGian]) VALUES (17, 1, 1, 1, CAST(N'2021-12-15T16:25:07.157' AS DateTime))
INSERT [dbo].[HOADON] ([MaHD], [MaNV], [MaKH], [MaLoaiKH], [ThoiGian]) VALUES (18, 7, 1, 1, CAST(N'2021-12-16T00:35:53.230' AS DateTime))
INSERT [dbo].[HOADON] ([MaHD], [MaNV], [MaKH], [MaLoaiKH], [ThoiGian]) VALUES (19, 7, 1, 1, CAST(N'2021-12-16T00:38:50.323' AS DateTime))
INSERT [dbo].[HOADON] ([MaHD], [MaNV], [MaKH], [MaLoaiKH], [ThoiGian]) VALUES (20, 7, 1, 1, CAST(N'2021-12-16T00:39:33.007' AS DateTime))
INSERT [dbo].[HOADON] ([MaHD], [MaNV], [MaKH], [MaLoaiKH], [ThoiGian]) VALUES (21, 7, 1, 1, CAST(N'2021-12-16T00:42:03.370' AS DateTime))
INSERT [dbo].[HOADON] ([MaHD], [MaNV], [MaKH], [MaLoaiKH], [ThoiGian]) VALUES (22, 7, 1, 1, CAST(N'2021-12-16T13:58:40.357' AS DateTime))
INSERT [dbo].[HOADON] ([MaHD], [MaNV], [MaKH], [MaLoaiKH], [ThoiGian]) VALUES (23, 7, 1, 1, CAST(N'2021-12-16T14:00:56.607' AS DateTime))
INSERT [dbo].[HOADON] ([MaHD], [MaNV], [MaKH], [MaLoaiKH], [ThoiGian]) VALUES (24, 7, 2, 2, CAST(N'2021-12-16T15:57:10.047' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[KHACHHANG] ON 

INSERT [dbo].[KHACHHANG] ([MaKH], [TenKH],[GioiTinh],[NgaySinh], [SDT], [DiaChi]) VALUES (1, N'Nguyễn Hà Giang',N'Nam',CAST(N'2001-01-11T00:00:00.000' AS DateTime), N'919878732', N'25 Núi Thành')
INSERT [dbo].[KHACHHANG] ([MaKH], [TenKH],[GioiTinh],[NgaySinh], [SDT], [DiaChi]) VALUES (2, N'Trần Thanh Tùng',N'Nam',CAST(N'2001-02-24T00:00:00.000' AS DateTime), N'0842364', N'857/48 Ba Vân')
INSERT [dbo].[KHACHHANG] ([MaKH], [TenKH],[GioiTinh],[NgaySinh], [SDT], [DiaChi]) VALUES (3, N'Nguyễn Văn Tuấn',N'Nam',CAST(N'2001-03-03T00:00:00.000' AS DateTime), N'087635298', N'435 Âu Cơ')
INSERT [dbo].[KHACHHANG] ([MaKH], [TenKH],[GioiTinh],[NgaySinh], [SDT], [DiaChi]) VALUES (4, N'Trần Thanh Thảo',N'Nữ',CAST(N'2001-04-24T00:00:00.000' AS DateTime), N'08678234', N'1748/56 CMT8')
INSERT [dbo].[KHACHHANG] ([MaKH], [TenKH],[GioiTinh],[NgaySinh], [SDT], [DiaChi]) VALUES (5, N'NGuyễn Thị Mùi',N'Nữ', CAST(N'2001-06-02T00:00:00.000' AS DateTime), N'0987822341', N'234 Lê Trọng Tấn')
INSERT [dbo].[KHACHHANG] ([MaKH], [TenKH],[GioiTinh],[NgaySinh], [SDT], [DiaChi]) VALUES (6, N'Hoàng',N'Nam',CAST(N'2001-05-19T00:00:00.000' AS DateTime), N'919878732', N'25 Núi Thành')
INSERT [dbo].[KHACHHANG] ([MaKH], [TenKH],[GioiTinh],[NgaySinh], [SDT], [DiaChi]) VALUES (7, N'Hà My',N'Nữ', CAST(N'2001-07-05T00:00:00.000' AS DateTime), N'919878732', N'25 Núi Thành')
SET IDENTITY_INSERT [dbo].[KHACHHANG] OFF
GO
SET IDENTITY_INSERT [dbo].[LOAIKHACHHANG] ON 

INSERT [dbo].[LOAIKHACHHANG] ([MaLoai], [TenLoai], [MoTa]) VALUES (1, N'Khách hàng trung thành', N'Luôn luôn mua đồ tại shop thường xuyên')
INSERT [dbo].[LOAIKHACHHANG] ([MaLoai], [TenLoai], [MoTa]) VALUES (2, N'Khách hàng tiềm năng', N'Lấy hàng với số lượng lớn theo lô hàng')
INSERT [dbo].[LOAIKHACHHANG] ([MaLoai], [TenLoai], [MoTa]) VALUES (3, N'Khách hàng giá trị nhỏ', N'Mua lẻ tẻ theo ngày')
INSERT [dbo].[LOAIKHACHHANG] ([MaLoai], [TenLoai], [MoTa]) VALUES (4, N'Khách hàng tiêu cực', N'Không mua đánh giá shop kém chất lượng')
SET IDENTITY_INSERT [dbo].[LOAIKHACHHANG] OFF
GO
SET IDENTITY_INSERT [dbo].[LOAISANPHAM] ON 

INSERT [dbo].[LOAISANPHAM] ([MaLoai], [TenLoaiSanPham]) VALUES (1, N'Tốt')
INSERT [dbo].[LOAISANPHAM] ([MaLoai], [TenLoaiSanPham]) VALUES (2, N'Bình thường')
INSERT [dbo].[LOAISANPHAM] ([MaLoai], [TenLoaiSanPham]) VALUES (3, N'Cao cấp')
SET IDENTITY_INSERT [dbo].[LOAISANPHAM] OFF
GO
SET IDENTITY_INSERT [dbo].[NGUOIDUNG] ON 

INSERT [dbo].[NGUOIDUNG] ([MaNguoiDung], [TenDangNhap], [MatKhau], [Quyen], [MaNV]) VALUES (1, N'Admin001', N'1234', N'Quản lý', 1)
INSERT [dbo].[NGUOIDUNG] ([MaNguoiDung], [TenDangNhap], [MatKhau], [Quyen], [MaNV]) VALUES (2, N'Admin002', N'12345', N'Bán hàng', 3)
INSERT [dbo].[NGUOIDUNG] ([MaNguoiDung], [TenDangNhap], [MatKhau], [Quyen], [MaNV]) VALUES (3, N'Admin003', N'123', N'Quản lý kinh doanh', 2)
INSERT [dbo].[NGUOIDUNG] ([MaNguoiDung], [TenDangNhap], [MatKhau], [Quyen], [MaNV]) VALUES (4, N'Admin004', N'1234', N'Quản lý kho hàng', 7)
SET IDENTITY_INSERT [dbo].[NGUOIDUNG] OFF
GO
SET IDENTITY_INSERT [dbo].[NHANVIEN] ON 

INSERT [dbo].[NHANVIEN] ([MaNV], [TenNV], [GioiTinh], [NgaySinh], [DiaChi], [SDT], [ChucVu]) VALUES (1, N'Nguyễn Trọng Khánh', N'Nam', CAST(N'2001-01-11T00:00:00.000' AS DateTime), N'123/21/2 Điện Biên Phủ', N'9785213488', N'Quản Lý Shop')
INSERT [dbo].[NHANVIEN] ([MaNV], [TenNV], [GioiTinh], [NgaySinh], [DiaChi], [SDT], [ChucVu]) VALUES (2, N'Hứa Thị Mai', N'N?', CAST(N'2001-02-24T00:00:00.000' AS DateTime), N'234 Lê Trọng Tấn', N'978521234 ', N'Quản Lý Thu Ngân')
INSERT [dbo].[NHANVIEN] ([MaNV], [TenNV], [GioiTinh], [NgaySinh], [DiaChi], [SDT], [ChucVu]) VALUES (3, N'Trần NGọc Thảo', N'N?', CAST(N'2001-03-03T00:00:00.000' AS DateTime), N'435 Âu Cơ', N'9785134867', N'Nhân viên bán hàng')
INSERT [dbo].[NHANVIEN] ([MaNV], [TenNV], [GioiTinh], [NgaySinh], [DiaChi], [SDT], [ChucVu]) VALUES (4, N'Nguyễn Văn Ba', N'Nam', CAST(N'2001-04-24T00:00:00.000' AS DateTime), N'45 Nguyễn Thái Học', N'0978134872', N'Nhân viên bán hàng')
INSERT [dbo].[NHANVIEN] ([MaNV], [TenNV], [GioiTinh], [NgaySinh], [DiaChi], [SDT], [ChucVu]) VALUES (5, N'Hà Thị Dung', N'N?', CAST(N'2001-05-19T00:00:00.000' AS DateTime), N'21/78 Bùi Xuân Khoái', N'952134843 ', N'Nhân viên kiểm tra chất lượng')
INSERT [dbo].[NHANVIEN] ([MaNV], [TenNV], [GioiTinh], [NgaySinh], [DiaChi], [SDT], [ChucVu]) VALUES (6, N'Hà Mỹ Tiên', N'N?', CAST(N'2001-06-02T00:00:00.000' AS DateTime), N'1748/56 CMT8', N'9785134889', N'Nhân viên bán hàng')
INSERT [dbo].[NHANVIEN] ([MaNV], [TenNV], [GioiTinh], [NgaySinh], [DiaChi], [SDT], [ChucVu]) VALUES (7, N'Đặng Huỳnh Đức', N'Nam', CAST(N'2001-07-05T00:00:00.000' AS DateTime), N'234 Lê Trọng Tấn', N'9785213482', N'Quản Lý Kho')
SET IDENTITY_INSERT [dbo].[NHANVIEN] OFF
GO
SET IDENTITY_INSERT [dbo].[NHASANXUAT] ON 

INSERT [dbo].[NHASANXUAT] ([MaNSX], [TenNSX]) VALUES (1, N'HUGU')
INSERT [dbo].[NHASANXUAT] ([MaNSX], [TenNSX]) VALUES (2, N'NIKE')
INSERT [dbo].[NHASANXUAT] ([MaNSX], [TenNSX]) VALUES (3, N'ADDIDAS')
INSERT [dbo].[NHASANXUAT] ([MaNSX], [TenNSX]) VALUES (4, N'CHANNEL')
INSERT [dbo].[NHASANXUAT] ([MaNSX], [TenNSX]) VALUES (5, N'HADES')
SET IDENTITY_INSERT [dbo].[NHASANXUAT] OFF
GO
SET IDENTITY_INSERT [dbo].[SANPHAM] ON 

INSERT [dbo].[SANPHAM] ([MaSP], [TenSP], [HinhAnh], [TrangThai], [DonGia], [SoLuongTon], [MaChatLieu], [MaLoai], [MaNSX]) VALUES (1, N'Tee-Shirt', N'Tee.jpg', N'Có sẵn', 150000, 10, 1, 1, 1)
INSERT [dbo].[SANPHAM] ([MaSP], [TenSP], [HinhAnh], [TrangThai], [DonGia], [SoLuongTon], [MaChatLieu], [MaLoai], [MaNSX]) VALUES (2, N'Áo Jacket', N'Jacket.jpg', N'Không có sẵn', 250000, 5, 2, 2, 2)
INSERT [dbo].[SANPHAM] ([MaSP], [TenSP], [HinhAnh], [TrangThai], [DonGia], [SoLuongTon], [MaChatLieu], [MaLoai], [MaNSX]) VALUES (3, N'Quần Shorts', N'Shorts.jpg', N'Có sẵn', 150000, 15, 3, 3, 3)
INSERT [dbo].[SANPHAM] ([MaSP], [TenSP], [HinhAnh], [TrangThai], [DonGia], [SoLuongTon], [MaChatLieu], [MaLoai], [MaNSX]) VALUES (4, N'Áo Hoodie', N'Hoodie.jpg', N'Có sẵn ', 200000, 10, 4, 3, 4)
INSERT [dbo].[SANPHAM] ([MaSP], [TenSP], [HinhAnh], [TrangThai], [DonGia], [SoLuongTon], [MaChatLieu], [MaLoai], [MaNSX]) VALUES (5, N'Áo Khoác', N'Khoac.jpg', N'Không có sẵn', 150000, 10, 5, 2, 5)
INSERT [dbo].[SANPHAM] ([MaSP], [TenSP], [HinhAnh], [TrangThai], [DonGia], [SoLuongTon], [MaChatLieu], [MaLoai], [MaNSX]) VALUES (6, N'Quần Jean', N'Jean.jpg', N'Có sẵn tại', 200000, 25, 6, 1, 5)
SET IDENTITY_INSERT [dbo].[SANPHAM] OFF
GO
ALTER TABLE [dbo].[CHITIETDOITRA]  WITH CHECK ADD  CONSTRAINT [FK_CHITIETDOITRA_DOITRA] FOREIGN KEY([MaDoiTra])
REFERENCES [dbo].[DOITRA] ([MaDoiTra])
GO
ALTER TABLE [dbo].[CHITIETDOITRA] CHECK CONSTRAINT [FK_CHITIETDOITRA_DOITRA]
GO
ALTER TABLE [dbo].[CHITIETDOITRA]  WITH CHECK ADD  CONSTRAINT [FK_CHITIETDOITRA_SANPHAM] FOREIGN KEY([MaSP])
REFERENCES [dbo].[SANPHAM] ([MaSP])
GO
ALTER TABLE [dbo].[CHITIETDOITRA] CHECK CONSTRAINT [FK_CHITIETDOITRA_SANPHAM]
GO
ALTER TABLE [dbo].[CHITIETHOADON]  WITH CHECK ADD  CONSTRAINT [FK_CHITIETHOADON_HOADON] FOREIGN KEY([MaHD])
REFERENCES [dbo].[HOADON] ([MaHD])
GO
ALTER TABLE [dbo].[CHITIETHOADON] CHECK CONSTRAINT [FK_CHITIETHOADON_HOADON]
GO
ALTER TABLE [dbo].[DOITRA]  WITH CHECK ADD  CONSTRAINT [FK_DOITRA_KHACHHANG] FOREIGN KEY([MaKH])
REFERENCES [dbo].[KHACHHANG] ([MaKH])
GO
ALTER TABLE [dbo].[DOITRA] CHECK CONSTRAINT [FK_DOITRA_KHACHHANG]
GO
ALTER TABLE [dbo].[DOITRA]  WITH CHECK ADD  CONSTRAINT [FK_DOITRA_NHANVIEN] FOREIGN KEY([MaNV])
REFERENCES [dbo].[NHANVIEN] ([MaNV])
GO
ALTER TABLE [dbo].[DOITRA] CHECK CONSTRAINT [FK_DOITRA_NHANVIEN]
GO
ALTER TABLE [dbo].[HOADON]  WITH CHECK ADD  CONSTRAINT [FK_HOADON_KHACHHANG] FOREIGN KEY([MaKH])
REFERENCES [dbo].[KHACHHANG] ([MaKH])
GO
ALTER TABLE [dbo].[HOADON] CHECK CONSTRAINT [FK_HOADON_KHACHHANG]
GO
ALTER TABLE [dbo].[HOADON]  WITH CHECK ADD  CONSTRAINT [FK_HOADON_LOAIKHACHHANG] FOREIGN KEY([MaLoaiKH])
REFERENCES [dbo].[LOAIKHACHHANG] ([MaLoai])
GO
ALTER TABLE [dbo].[HOADON] CHECK CONSTRAINT [FK_HOADON_LOAIKHACHHANG]
GO
ALTER TABLE [dbo].[HOADON]  WITH CHECK ADD  CONSTRAINT [FK_HOADON_NHANVIEN] FOREIGN KEY([MaNV])
REFERENCES [dbo].[NHANVIEN] ([MaNV])
GO
ALTER TABLE [dbo].[HOADON] CHECK CONSTRAINT [FK_HOADON_NHANVIEN]
GO
ALTER TABLE [dbo].[KHACHHANG]  WITH CHECK ADD  CONSTRAINT [FK_KHACHHANG_LOAIKHACHHANG] FOREIGN KEY([MaLoaiKH])
REFERENCES [dbo].[LOAIKHACHHANG] ([MaLoai])
GO
ALTER TABLE [dbo].[KHACHHANG] CHECK CONSTRAINT [FK_KHACHHANG_LOAIKHACHHANG]
GO
ALTER TABLE [dbo].[NGUOIDUNG]  WITH CHECK ADD  CONSTRAINT [FK_NGUOIDUNG_NHANVIEN] FOREIGN KEY([MaNV])
REFERENCES [dbo].[NHANVIEN] ([MaNV])
GO
ALTER TABLE [dbo].[NGUOIDUNG] CHECK CONSTRAINT [FK_NGUOIDUNG_NHANVIEN]
GO
ALTER TABLE [dbo].[SANPHAM]  WITH CHECK ADD  CONSTRAINT [FK_SANPHAM_CHATLIEU] FOREIGN KEY([MaChatLieu])
REFERENCES [dbo].[CHATLIEU] ([MaChatLieu])
GO
ALTER TABLE [dbo].[SANPHAM] CHECK CONSTRAINT [FK_SANPHAM_CHATLIEU]
GO
ALTER TABLE [dbo].[SANPHAM]  WITH CHECK ADD  CONSTRAINT [FK_SANPHAM_LOAISANPHAM] FOREIGN KEY([MaLoai])
REFERENCES [dbo].[LOAISANPHAM] ([MaLoai])
GO
ALTER TABLE [dbo].[SANPHAM] CHECK CONSTRAINT [FK_SANPHAM_LOAISANPHAM]
GO
ALTER TABLE [dbo].[SANPHAM]  WITH CHECK ADD  CONSTRAINT [FK_SANPHAM_NHASANXUAT] FOREIGN KEY([MaNSX])
REFERENCES [dbo].[NHASANXUAT] ([MaNSX])
GO
ALTER TABLE [dbo].[SANPHAM] CHECK CONSTRAINT [FK_SANPHAM_NHASANXUAT]
GO
USE [master]
GO
ALTER DATABASE [QLShopQuanAo] SET  READ_WRITE 
GO
