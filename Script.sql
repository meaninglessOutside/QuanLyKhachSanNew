USE [master]
GO
/****** Object:  Database [QuanLyKhachSan]    Script Date: 02/04/2023 18:09:25 ******/
CREATE DATABASE [QuanLyKhachSan]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'QuanLyKhachSan', FILENAME = N'E:\temp1\QuanLyKhachSan_Mdf.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'QuanLyKhachSan_log', FILENAME = N'E:\temp1\QuanLyKhachSan_Log.ldf' , SIZE = 5120KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [QuanLyKhachSan] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QuanLyKhachSan].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [QuanLyKhachSan] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [QuanLyKhachSan] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [QuanLyKhachSan] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [QuanLyKhachSan] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [QuanLyKhachSan] SET ARITHABORT OFF 
GO
ALTER DATABASE [QuanLyKhachSan] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [QuanLyKhachSan] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [QuanLyKhachSan] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [QuanLyKhachSan] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [QuanLyKhachSan] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [QuanLyKhachSan] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [QuanLyKhachSan] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [QuanLyKhachSan] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [QuanLyKhachSan] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [QuanLyKhachSan] SET  DISABLE_BROKER 
GO
ALTER DATABASE [QuanLyKhachSan] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [QuanLyKhachSan] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [QuanLyKhachSan] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [QuanLyKhachSan] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [QuanLyKhachSan] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [QuanLyKhachSan] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [QuanLyKhachSan] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [QuanLyKhachSan] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [QuanLyKhachSan] SET  MULTI_USER 
GO
ALTER DATABASE [QuanLyKhachSan] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [QuanLyKhachSan] SET DB_CHAINING OFF 
GO
ALTER DATABASE [QuanLyKhachSan] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [QuanLyKhachSan] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [QuanLyKhachSan] SET DELAYED_DURABILITY = DISABLED 
GO
USE [QuanLyKhachSan]
GO
/****** Object:  Table [dbo].[tblChucVu]    Script Date: 02/04/2023 18:09:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblChucVu](
	[MaCV] [nvarchar](50) NOT NULL,
	[Khu] [int] NOT NULL,
	[TenDonVi] [nvarchar](50) NULL,
	[ChucVu] [nvarchar](50) NULL,
 CONSTRAINT [PK_tblChucVu] PRIMARY KEY CLUSTERED 
(
	[MaCV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblDangKy]    Script Date: 02/04/2023 18:09:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblDangKy](
	[MaDK] [nvarchar](50) NOT NULL,
	[MaKhach] [nvarchar](50) NULL,
	[MaPhong] [nvarchar](50) NULL,
	[NgayDangKy] [smalldatetime] NULL,
	[NgayDen] [smalldatetime] NULL,
	[NgayDi] [smalldatetime] NULL,
	[TienDat] [int] NULL,
	[SoNguoi] [int] NULL,
	[NgiChu] [nvarchar](50) NULL,
	[TrangThai] [int] NULL,
 CONSTRAINT [PK_tblDangKy] PRIMARY KEY CLUSTERED 
(
	[MaDK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblDichVu]    Script Date: 02/04/2023 18:09:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblDichVu](
	[MaDV] [nvarchar](50) NOT NULL,
	[TenDV] [nvarchar](50) NOT NULL,
	[GiaTien] [int] NOT NULL,
 CONSTRAINT [PK_tblDichVu] PRIMARY KEY CLUSTERED 
(
	[MaDV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblKhachHang]    Script Date: 02/04/2023 18:09:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblKhachHang](
	[MaKhach] [nvarchar](50) NOT NULL,
	[HoDem] [nvarchar](50) NOT NULL,
	[Ten] [nvarchar](50) NOT NULL,
	[NgaySinh] [smalldatetime] NOT NULL,
	[CMND] [nvarchar](50) NOT NULL,
	[QuocTich] [nvarchar](50) NOT NULL,
	[NghiChu] [nvarchar](50) NULL,
 CONSTRAINT [PK_tblKhachHang] PRIMARY KEY CLUSTERED 
(
	[MaKhach] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblNhanVien]    Script Date: 02/04/2023 18:09:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblNhanVien](
	[MaNV] [nvarchar](50) NOT NULL,
	[MaCV] [nvarchar](50) NOT NULL,
	[HoDem] [nvarchar](50) NOT NULL,
	[Ten] [nvarchar](50) NOT NULL,
	[NgaySinh] [smalldatetime] NOT NULL,
	[CMND] [nvarchar](50) NOT NULL,
	[NghiChu] [nvarchar](50) NULL,
	[MatKhau] [nvarchar](max) NULL,
 CONSTRAINT [PK_tblNhanVien] PRIMARY KEY CLUSTERED 
(
	[MaNV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblPhong]    Script Date: 02/04/2023 18:09:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblPhong](
	[MaPhong] [nvarchar](50) NOT NULL,
	[TenPhong] [nvarchar](50) NOT NULL,
	[LoaiPhong] [nvarchar](50) NOT NULL,
	[Gia] [int] NOT NULL,
 CONSTRAINT [PK_tblPhong] PRIMARY KEY CLUSTERED 
(
	[MaPhong] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblSDDV]    Script Date: 02/04/2023 18:09:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblSDDV](
	[MaDK] [nvarchar](50) NOT NULL,
	[MaDV] [nvarchar](50) NOT NULL,
	[MaNV] [nvarchar](50) NULL,
	[NgaySuDung] [smalldatetime] NULL,
	[SoLuong] [int] NULL,
 CONSTRAINT [PK_tblSDDV_1] PRIMARY KEY CLUSTERED 
(
	[MaDK] ASC,
	[MaDV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblThanhToan]    Script Date: 02/04/2023 18:09:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblThanhToan](
	[MaDK] [nvarchar](50) NOT NULL,
	[MaPhong] [nvarchar](50) NOT NULL,
	[MaNV] [nvarchar](50) NOT NULL,
	[NgayThanhToan] [smalldatetime] NOT NULL,
 CONSTRAINT [PK_tblThanhToan] PRIMARY KEY CLUSTERED 
(
	[MaDK] ASC,
	[MaPhong] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
INSERT [dbo].[tblChucVu] ([MaCV], [Khu], [TenDonVi], [ChucVu]) VALUES (N'CV-02/03/2023 21:45:48', 1111, N'Phòng Nhân Sự11', N'Phó Phòng111')
INSERT [dbo].[tblChucVu] ([MaCV], [Khu], [TenDonVi], [ChucVu]) VALUES (N'MCV01', 1, N'Phòng Nhân Sự', N'Phó Phòng')
INSERT [dbo].[tblChucVu] ([MaCV], [Khu], [TenDonVi], [ChucVu]) VALUES (N'MCV02', 2, N'Phòng Dịch Vụ', N'Trưởng Phòng')
INSERT [dbo].[tblChucVu] ([MaCV], [Khu], [TenDonVi], [ChucVu]) VALUES (N'MCV03', 3, N'Phòng Lễ Tân', N'Trưởng Phòng')
INSERT [dbo].[tblChucVu] ([MaCV], [Khu], [TenDonVi], [ChucVu]) VALUES (N'MCV04', 5, N'Phòng Vệ Sinh', N'Trưởng Phòngdsfsdfdsf')
INSERT [dbo].[tblChucVu] ([MaCV], [Khu], [TenDonVi], [ChucVu]) VALUES (N'MCV05', 544, N'Phòng Vệ Sinh', N'Nhân Viên')
INSERT [dbo].[tblChucVu] ([MaCV], [Khu], [TenDonVi], [ChucVu]) VALUES (N'MCV06', 5, N'Phòng Vệ Sinh', N'Nhân Viên')
INSERT [dbo].[tblChucVu] ([MaCV], [Khu], [TenDonVi], [ChucVu]) VALUES (N'MCV07', 5, N'Phòng Vệ Sinh', N'Nhân Viên')
INSERT [dbo].[tblChucVu] ([MaCV], [Khu], [TenDonVi], [ChucVu]) VALUES (N'MCV08', 5, N'Phòng Vệ Sinh', N'Nhân Viên')
INSERT [dbo].[tblChucVu] ([MaCV], [Khu], [TenDonVi], [ChucVu]) VALUES (N'MCV09', 5, N'Phòng Vệ Sinh', N'Nhân Viên')
INSERT [dbo].[tblChucVu] ([MaCV], [Khu], [TenDonVi], [ChucVu]) VALUES (N'MCV10', 5, N'Phòng Vệ Sinh', N'Nhân Viên')
INSERT [dbo].[tblChucVu] ([MaCV], [Khu], [TenDonVi], [ChucVu]) VALUES (N'MCV11', 5, N'Phòng Vệ Sinh', N'Nhân Viên')
INSERT [dbo].[tblChucVu] ([MaCV], [Khu], [TenDonVi], [ChucVu]) VALUES (N'MCV12', 6, N'Phòng Hậu Cần', N'Đầu Bếp')
INSERT [dbo].[tblDangKy] ([MaDK], [MaKhach], [MaPhong], [NgayDangKy], [NgayDen], [NgayDi], [TienDat], [SoNguoi], [NgiChu], [TrangThai]) VALUES (N'DK-02/03/2023 23:28:23', N'MK01', N'MP01', CAST(N'2023-02-03 23:25:00' AS SmallDateTime), CAST(N'2023-02-03 23:31:00' AS SmallDateTime), CAST(N'2023-02-01 00:00:00' AS SmallDateTime), 100000, 1, N'', 3)
INSERT [dbo].[tblDangKy] ([MaDK], [MaKhach], [MaPhong], [NgayDangKy], [NgayDen], [NgayDi], [TienDat], [SoNguoi], [NgiChu], [TrangThai]) VALUES (N'DK-02/04/2023 15:23:36', N'MK02', N'MP05', CAST(N'2023-02-04 15:23:00' AS SmallDateTime), CAST(N'2023-02-04 15:24:00' AS SmallDateTime), CAST(N'2023-02-03 15:24:00' AS SmallDateTime), 0, 1, N'', 3)
INSERT [dbo].[tblDangKy] ([MaDK], [MaKhach], [MaPhong], [NgayDangKy], [NgayDen], [NgayDi], [TienDat], [SoNguoi], [NgiChu], [TrangThai]) VALUES (N'DK-02/04/2023 15:23:51', N'MK06', N'MP06', CAST(N'2023-02-04 15:23:00' AS SmallDateTime), CAST(N'2023-02-04 15:24:00' AS SmallDateTime), CAST(N'2023-02-03 15:24:00' AS SmallDateTime), 0, 1, N'', 3)
INSERT [dbo].[tblDichVu] ([MaDV], [TenDV], [GiaTien]) VALUES (N'MDV01', N'Ăn Sáng', 20000)
INSERT [dbo].[tblDichVu] ([MaDV], [TenDV], [GiaTien]) VALUES (N'MDV02', N'Ăn Trưa', 100000)
INSERT [dbo].[tblDichVu] ([MaDV], [TenDV], [GiaTien]) VALUES (N'MDV03', N'Ăn Tối', 70000)
INSERT [dbo].[tblDichVu] ([MaDV], [TenDV], [GiaTien]) VALUES (N'MDV04', N'Xem Tivi K+', 10000)
INSERT [dbo].[tblDichVu] ([MaDV], [TenDV], [GiaTien]) VALUES (N'MDV05', N'Báo Thức', 5000)
INSERT [dbo].[tblDichVu] ([MaDV], [TenDV], [GiaTien]) VALUES (N'MDV06', N'Giặt Là', 50000)
INSERT [dbo].[tblDichVu] ([MaDV], [TenDV], [GiaTien]) VALUES (N'MDV07', N'Tặng Hoa', 10000)
INSERT [dbo].[tblKhachHang] ([MaKhach], [HoDem], [Ten], [NgaySinh], [CMND], [QuocTich], [NghiChu]) VALUES (N'MK01', N'Ngô Doãn', N'Tình', CAST(N'2015-11-15 00:00:00' AS SmallDateTime), N'123456789', N'Việt Nam', N'')
INSERT [dbo].[tblKhachHang] ([MaKhach], [HoDem], [Ten], [NgaySinh], [CMND], [QuocTich], [NghiChu]) VALUES (N'MK02', N'Nguyễn Mỹ', N'Hạnh', CAST(N'2015-10-20 00:00:00' AS SmallDateTime), N'123978654', N'Việt Nam', N'')
INSERT [dbo].[tblKhachHang] ([MaKhach], [HoDem], [Ten], [NgaySinh], [CMND], [QuocTich], [NghiChu]) VALUES (N'MK03', N'Chu Xuân Linh', N'Linh', CAST(N'2015-10-29 00:00:00' AS SmallDateTime), N'123456789', N'Việt Nam', N'')
INSERT [dbo].[tblKhachHang] ([MaKhach], [HoDem], [Ten], [NgaySinh], [CMND], [QuocTich], [NghiChu]) VALUES (N'MK04', N'Trần Văn', N'Cương', CAST(N'2015-10-13 00:00:00' AS SmallDateTime), N'987654321', N'Việt Nam', N'')
INSERT [dbo].[tblKhachHang] ([MaKhach], [HoDem], [Ten], [NgaySinh], [CMND], [QuocTich], [NghiChu]) VALUES (N'MK05', N'Dương Xuân', N'Tùng', CAST(N'2015-10-18 00:00:00' AS SmallDateTime), N'987654321', N'Việt Nam', N'')
INSERT [dbo].[tblKhachHang] ([MaKhach], [HoDem], [Ten], [NgaySinh], [CMND], [QuocTich], [NghiChu]) VALUES (N'MK06', N'Tô Thành', N'Đồng', CAST(N'1995-07-20 00:00:00' AS SmallDateTime), N'569874321', N'Trung Quốc', N'')
INSERT [dbo].[tblKhachHang] ([MaKhach], [HoDem], [Ten], [NgaySinh], [CMND], [QuocTich], [NghiChu]) VALUES (N'MK07', N'Tô Thành', N'Tiền', CAST(N'1995-07-21 00:00:00' AS SmallDateTime), N'569874321', N'Trung Quốc', N'')
INSERT [dbo].[tblKhachHang] ([MaKhach], [HoDem], [Ten], [NgaySinh], [CMND], [QuocTich], [NghiChu]) VALUES (N'MK08', N'Dương Xuân', N'Tèo', CAST(N'1995-12-15 00:00:00' AS SmallDateTime), N'987654321', N'Cà Mau', N'')
INSERT [dbo].[tblKhachHang] ([MaKhach], [HoDem], [Ten], [NgaySinh], [CMND], [QuocTich], [NghiChu]) VALUES (N'MK10', N'Thất Văn', N'Tý', CAST(N'1995-12-15 00:00:00' AS SmallDateTime), N'987654321', N'Cà Mau', N'')
INSERT [dbo].[tblKhachHang] ([MaKhach], [HoDem], [Ten], [NgaySinh], [CMND], [QuocTich], [NghiChu]) VALUES (N'MK11', N'Trần Trùng', N'Trục', CAST(N'2015-10-22 00:00:00' AS SmallDateTime), N'987123456', N'USA', N'')
INSERT [dbo].[tblKhachHang] ([MaKhach], [HoDem], [Ten], [NgaySinh], [CMND], [QuocTich], [NghiChu]) VALUES (N'MK13', N'Phan Van Tài', N'Em', CAST(N'2015-10-24 00:00:00' AS SmallDateTime), N'2654789', N'Việt Nam', N'')
INSERT [dbo].[tblNhanVien] ([MaNV], [MaCV], [HoDem], [Ten], [NgaySinh], [CMND], [NghiChu], [MatKhau]) VALUES (N'admin', N'MCV01', N'Ngô Doãn', N'Tình', CAST(N'1995-02-20 00:00:00' AS SmallDateTime), N'1234569741', N'', N'admin')
INSERT [dbo].[tblNhanVien] ([MaNV], [MaCV], [HoDem], [Ten], [NgaySinh], [CMND], [NghiChu], [MatKhau]) VALUES (N'taikhoan1', N'MCV01', N'Doãn', N'Tình', CAST(N'1995-02-20 00:00:00' AS SmallDateTime), N'1234569741', N'', N'123456')
INSERT [dbo].[tblNhanVien] ([MaNV], [MaCV], [HoDem], [Ten], [NgaySinh], [CMND], [NghiChu], [MatKhau]) VALUES (N'taikhoan2', N'MCV03', N'Nguyễn Mỹ', N'Hạnh', CAST(N'1995-03-30 00:00:00' AS SmallDateTime), N'1234569741', N'', N'123456')
INSERT [dbo].[tblNhanVien] ([MaNV], [MaCV], [HoDem], [Ten], [NgaySinh], [CMND], [NghiChu], [MatKhau]) VALUES (N'taikhoan3', N'MCV06', N'Chu Xuân', N'Linh', CAST(N'1995-03-30 00:00:00' AS SmallDateTime), N'1234569741', N'', N'123456')
INSERT [dbo].[tblPhong] ([MaPhong], [TenPhong], [LoaiPhong], [Gia]) VALUES (N'MP01', N'TP01', N'VIP', 200000)
INSERT [dbo].[tblPhong] ([MaPhong], [TenPhong], [LoaiPhong], [Gia]) VALUES (N'MP02', N'TP01', N'VIP', 200000)
INSERT [dbo].[tblPhong] ([MaPhong], [TenPhong], [LoaiPhong], [Gia]) VALUES (N'MP03', N'TP01', N'VIP', 200000)
INSERT [dbo].[tblPhong] ([MaPhong], [TenPhong], [LoaiPhong], [Gia]) VALUES (N'MP04', N'TP01', N'VIP', 200000)
INSERT [dbo].[tblPhong] ([MaPhong], [TenPhong], [LoaiPhong], [Gia]) VALUES (N'MP05', N'TP01', N'VIP', 200000)
INSERT [dbo].[tblPhong] ([MaPhong], [TenPhong], [LoaiPhong], [Gia]) VALUES (N'MP06', N'TP01', N'Thường', 100000)
INSERT [dbo].[tblPhong] ([MaPhong], [TenPhong], [LoaiPhong], [Gia]) VALUES (N'MP07', N'TP01', N'Thường', 100000)
INSERT [dbo].[tblPhong] ([MaPhong], [TenPhong], [LoaiPhong], [Gia]) VALUES (N'MP08', N'TP01', N'Thường', 100000)
INSERT [dbo].[tblPhong] ([MaPhong], [TenPhong], [LoaiPhong], [Gia]) VALUES (N'MP09', N'TP09', N'Sinh Viên', 50000)
INSERT [dbo].[tblPhong] ([MaPhong], [TenPhong], [LoaiPhong], [Gia]) VALUES (N'MP10', N'TP10', N'Sinh Viên', 50000)
INSERT [dbo].[tblSDDV] ([MaDK], [MaDV], [MaNV], [NgaySuDung], [SoLuong]) VALUES (N'DK-02/03/2023 23:28:23', N'MDV01', N'taikhoan1', CAST(N'2023-02-03 23:29:00' AS SmallDateTime), 1)
INSERT [dbo].[tblSDDV] ([MaDK], [MaDV], [MaNV], [NgaySuDung], [SoLuong]) VALUES (N'DK-02/03/2023 23:28:23', N'MDV02', N'taikhoan1', CAST(N'2023-02-03 23:29:00' AS SmallDateTime), 2)
ALTER TABLE [dbo].[tblDangKy]  WITH CHECK ADD  CONSTRAINT [FK_tblDangKy_tblKhachHang] FOREIGN KEY([MaKhach])
REFERENCES [dbo].[tblKhachHang] ([MaKhach])
GO
ALTER TABLE [dbo].[tblDangKy] CHECK CONSTRAINT [FK_tblDangKy_tblKhachHang]
GO
ALTER TABLE [dbo].[tblDangKy]  WITH CHECK ADD  CONSTRAINT [FK_tblDangKy_tblPhong] FOREIGN KEY([MaPhong])
REFERENCES [dbo].[tblPhong] ([MaPhong])
GO
ALTER TABLE [dbo].[tblDangKy] CHECK CONSTRAINT [FK_tblDangKy_tblPhong]
GO
ALTER TABLE [dbo].[tblNhanVien]  WITH CHECK ADD  CONSTRAINT [FK_tblNhanVien_tblChucVu] FOREIGN KEY([MaCV])
REFERENCES [dbo].[tblChucVu] ([MaCV])
GO
ALTER TABLE [dbo].[tblNhanVien] CHECK CONSTRAINT [FK_tblNhanVien_tblChucVu]
GO
ALTER TABLE [dbo].[tblSDDV]  WITH CHECK ADD  CONSTRAINT [FK_tblSDDV_tblDangKy] FOREIGN KEY([MaDK])
REFERENCES [dbo].[tblDangKy] ([MaDK])
GO
ALTER TABLE [dbo].[tblSDDV] CHECK CONSTRAINT [FK_tblSDDV_tblDangKy]
GO
ALTER TABLE [dbo].[tblSDDV]  WITH CHECK ADD  CONSTRAINT [FK_tblSDDV_tblDichVu] FOREIGN KEY([MaDV])
REFERENCES [dbo].[tblDichVu] ([MaDV])
GO
ALTER TABLE [dbo].[tblSDDV] CHECK CONSTRAINT [FK_tblSDDV_tblDichVu]
GO
ALTER TABLE [dbo].[tblSDDV]  WITH CHECK ADD  CONSTRAINT [FK_tblSDDV_tblNhanVien] FOREIGN KEY([MaNV])
REFERENCES [dbo].[tblNhanVien] ([MaNV])
GO
ALTER TABLE [dbo].[tblSDDV] CHECK CONSTRAINT [FK_tblSDDV_tblNhanVien]
GO
ALTER TABLE [dbo].[tblThanhToan]  WITH CHECK ADD  CONSTRAINT [FK_tblThanhToan_tblDangKy] FOREIGN KEY([MaDK])
REFERENCES [dbo].[tblDangKy] ([MaDK])
GO
ALTER TABLE [dbo].[tblThanhToan] CHECK CONSTRAINT [FK_tblThanhToan_tblDangKy]
GO
/****** Object:  StoredProcedure [dbo].[BaoCaoDoanhThu]    Script Date: 02/04/2023 18:09:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[BaoCaoDoanhThu]
	@TuNgay date,
	@DenNgay date
as
	
select * from tblDangKy t0
	inner join tblPhong t1 on t0.MaPhong = t1.MaPhong
	left join tblSDDV t2 on t0.MaDK = t2.MaDK
	left join tblDichVu t3 on t2.MaDV = t3.MaDV
	where TrangThai = 3 and (NgayDi between @TuNgay and @DenNgay)

GO
/****** Object:  StoredProcedure [dbo].[tblChucVu_Delete]    Script Date: 02/04/2023 18:09:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[tblChucVu_Delete]
	@MaCV nvarchar(100)
As
	Delete [tblChucVu] 
	Where  ([MaCV]= @MaCV)
GO
/****** Object:  StoredProcedure [dbo].[tblChucVu_Insert]    Script Date: 02/04/2023 18:09:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[tblChucVu_Insert]
	@MaCV nvarchar(100),
	@Khu int,
	@TenDonVi nvarchar(100),
	@ChucVu nvarchar(100)
As
	Insert Into [tblChucVu]
	(
		[MaCV],
		[Khu],
		[TenDonVi],
		[ChucVu]
	)
	Values
	(
		@MaCV,
		@Khu,
		@TenDonVi,
		@ChucVu
	)

GO
/****** Object:  StoredProcedure [dbo].[tblChucVu_SelectAll]    Script Date: 02/04/2023 18:09:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--==============================================

CREATE PROCEDURE [dbo].[tblChucVu_SelectAll]
As
	Select * From [tblChucVu]
GO
/****** Object:  StoredProcedure [dbo].[tblChucVu_SelectByID]    Script Date: 02/04/2023 18:09:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[tblChucVu_SelectByID]
	@MaCV nvarchar(100)
As
	Select *  From [tblChucVu]
 	Where  ([MaCV] = @MaCV)
GO
/****** Object:  StoredProcedure [dbo].[tblChucVu_SelectPage]    Script Date: 02/04/2023 18:09:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[tblChucVu_SelectPage]
	@CurrentPage int,
	@PageSize int,
	@RowCount int output
As
	With TablePaging As
	(
		 Select ROW_NUMBER()
		Over(Order By [MaCV]) As RowNum,*
		From [tblChucVu]
	)
	Select @RowCount = Count(RowNum) from  TablePaging
	Select * From TablePaging
	Where RowNum Between (@CurrentPage - 1) * @PageSize + 1 And @CurrentPage * @PageSize
	Order By RowNum
GO
/****** Object:  StoredProcedure [dbo].[tblChucVu_SelectTop]    Script Date: 02/04/2023 18:09:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[tblChucVu_SelectTop]
	@Top	Nvarchar(10),
	@Where	Nvarchar(200),
	@Order	Nvarchar(200)
AS
	Declare @SQL Nvarchar(500)
	Set @SQL = 'Select Top (' + @Top + ') * From [tblChucVu]'
	if Len(@Top) = 0
		Begin
			Set @SQL = 'Select * From [tblChucVu]'
		End
	If len(@Where) >0 
		Begin
			Set @SQL = @SQL + ' Where ' + @Where
		End
	If Len(@Order) >0
		Begin
			Set @SQL = @SQL + ' Order By ' + @Order
		End
Execute sp_executesql @SQL
GO
/****** Object:  StoredProcedure [dbo].[tblChucVu_TestByID]    Script Date: 02/04/2023 18:09:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[tblChucVu_TestByID]
	@MaCV nvarchar(100),
	@TestID Bit Output
As
	Select [MaCV] From [tblChucVu]
 	Where  ([MaCV] = @MaCV)
	If(@@rowcount =0) Set @TestID = 0
	Else Set @TestID = 1
GO
/****** Object:  StoredProcedure [dbo].[tblChucVu_Update]    Script Date: 02/04/2023 18:09:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[tblChucVu_Update]
	@MaCV nvarchar(100),
	@Khu int,
	@TenDonVi nvarchar(100),
	@ChucVu nvarchar(100)
As
	Update [tblChucVu]  Set
		[Khu] = @Khu,
		[TenDonVi] = @TenDonVi,
		[ChucVu] = @ChucVu
	Where ([MaCV] = @MaCV)
GO
/****** Object:  StoredProcedure [dbo].[tblDangKy_Delete]    Script Date: 02/04/2023 18:09:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[tblDangKy_Delete]
	@MaDK nvarchar(100)
As
	Delete [tblDangKy] 
	Where  ([MaDK]= @MaDK)
GO
/****** Object:  StoredProcedure [dbo].[tblDangKy_Insert]    Script Date: 02/04/2023 18:09:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[tblDangKy_Insert]
	@MaDK nvarchar(100),
	@MaKhach nvarchar(100),
	@MaPhong nvarchar(100) = null,
	@NgayDangKy smalldatetime = null,
	@NgayDen smalldatetime = null,
	@NgayDi smalldatetime = null,
	@TienDat bigint,
	@SoNguoi bigint,
	@NgiChu nvarchar(100),
	@TrangThai int = 1
As
	Insert Into [tblDangKy]
	(
		[MaDK],
		[MaKhach],
		[MaPhong],
		[NgayDangKy],
		[NgayDen],
		[NgayDi],
		[TienDat],
		[SoNguoi],
		[NgiChu],
		TrangThai
	)
	Values
	(
		@MaDK,
		@MaKhach,
		@MaPhong,
		@NgayDangKy,
		@NgayDen,
		@NgayDi,
		@TienDat,
		@SoNguoi,
		@NgiChu,
		@TrangThai
	)

GO
/****** Object:  StoredProcedure [dbo].[tblDangKy_PhongChuaDangKy]    Script Date: 02/04/2023 18:09:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[tblDangKy_PhongChuaDangKy]
As 
	SELECT a.*
FROM tblPhong a
WHERE a.MaPhong not IN (select MaPhong from tblDangKy where TrangThai <> 3 and MaPhong is not null) 



GO
/****** Object:  StoredProcedure [dbo].[tblDangKy_PhongCoKhachThue]    Script Date: 02/04/2023 18:09:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

Create PROCEDURE [dbo].[tblDangKy_PhongCoKhachThue]
As 
	Select *  From tblDangKy t0
	inner join tblPhong t1 on t0.MaPhong= t1.MaPhong where t0.TrangThai = 1 or t0.TrangThai = 2


GO
/****** Object:  StoredProcedure [dbo].[tblDangKy_PhongDaDangKy]    Script Date: 02/04/2023 18:09:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[tblDangKy_PhongDaDangKy]
As
	Select *  From tblDangKy t0
	inner join tblPhong t1 on t0.MaPhong= t1.MaPhong where t0.TrangThai = 1
GO
/****** Object:  StoredProcedure [dbo].[tblDangKy_PhongDaNhan]    Script Date: 02/04/2023 18:09:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[tblDangKy_PhongDaNhan]
As
	Select *  From tblDangKy t0
	inner join tblPhong t1 on t0.MaPhong= t1.MaPhong where t0.TrangThai = 2
GO
/****** Object:  StoredProcedure [dbo].[tblDangKy_SelectAll]    Script Date: 02/04/2023 18:09:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[tblDangKy_SelectAll]
As
	Select * From [tblDangKy]
GO
/****** Object:  StoredProcedure [dbo].[tblDangKy_SelectByID]    Script Date: 02/04/2023 18:09:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[tblDangKy_SelectByID]
	@MaDK nvarchar(100)
As
	Select *  From [tblDangKy]
 	Where  ([MaDK] = @MaDK)
GO
/****** Object:  StoredProcedure [dbo].[tblDangKy_SelectPage]    Script Date: 02/04/2023 18:09:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[tblDangKy_SelectPage]
	@CurrentPage int,
	@PageSize int,
	@RowCount int output
As
	With TablePaging As
	(
		 Select ROW_NUMBER()
		Over(Order By [MaDK]) As RowNum,*
		From [tblDangKy]
	)
	Select @RowCount = Count(RowNum) from  TablePaging
	Select * From TablePaging
	Where RowNum Between (@CurrentPage - 1) * @PageSize + 1 And @CurrentPage * @PageSize
	Order By RowNum
GO
/****** Object:  StoredProcedure [dbo].[tblDangKy_SelectTop]    Script Date: 02/04/2023 18:09:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[tblDangKy_SelectTop]
	@Top	Nvarchar(10),
	@Where	Nvarchar(200),
	@Order	Nvarchar(200)
AS
	Declare @SQL Nvarchar(500)
	Set @SQL = 'Select Top (' + @Top + ') * From [tblDangKy]'
	if Len(@Top) = 0
		Begin
			Set @SQL = 'Select * From [tblDangKy]'
		End
	If len(@Where) >0 
		Begin
			Set @SQL = @SQL + ' Where ' + @Where
		End
	If Len(@Order) >0
		Begin
			Set @SQL = @SQL + ' Order By ' + @Order
		End
Execute sp_executesql @SQL
GO
/****** Object:  StoredProcedure [dbo].[tblDangKy_TestByID]    Script Date: 02/04/2023 18:09:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[tblDangKy_TestByID]
	@MaDK nvarchar(100),
	@TestID Bit Output
As
	Select [MaDK] From [tblDangKy]
 	Where  ([MaDK] = @MaDK)
	If(@@rowcount =0) Set @TestID = 0
	Else Set @TestID = 1
GO
/****** Object:  StoredProcedure [dbo].[tblDangKy_Update]    Script Date: 02/04/2023 18:09:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[tblDangKy_Update]
	@MaDK nvarchar(100),
	@MaKhach nvarchar(100),
	@MaPhong nvarchar(100) = null,
	@NgayDangKy smalldatetime = null,
	@NgayDen smalldatetime = null,
	@NgayDi smalldatetime = null,
	@TienDat bigint,
	@SoNguoi bigint,
	@NgiChu nvarchar(100) = null,
	@TrangThai int = 1
As
	Update [tblDangKy]  Set
		[MaKhach] = @MaKhach,
		[MaPhong] = @MaPhong,
		[NgayDangKy] = @NgayDangKy,
		[NgayDen] = @NgayDen,
		[NgayDi] = @NgayDi,
		[TienDat] = @TienDat,
		[SoNguoi] = @SoNguoi,
		[NgiChu] = @NgiChu,
		[TrangThai] = @TrangThai
	Where ([MaDK] = @MaDK)
GO
/****** Object:  StoredProcedure [dbo].[tblDichVu_Delete]    Script Date: 02/04/2023 18:09:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[tblDichVu_Delete]
	@MaDV nvarchar(100)
As
	Delete [tblDichVu] 
	Where  ([MaDV]= @MaDV)
GO
/****** Object:  StoredProcedure [dbo].[tblDichVu_Insert]    Script Date: 02/04/2023 18:09:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[tblDichVu_Insert]
	@MaDV nvarchar(100),
	@TenDV nvarchar(100),
	@GiaTien bigint
As
	Insert Into [tblDichVu]
	(
		[MaDV],
		[TenDV],
		[GiaTien]
	)
	Values
	(
		@MaDV,
		@TenDV,
		@GiaTien
	)

GO
/****** Object:  StoredProcedure [dbo].[tblDichVu_SelectAll]    Script Date: 02/04/2023 18:09:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[tblDichVu_SelectAll]
As
	Select * From [tblDichVu]
GO
/****** Object:  StoredProcedure [dbo].[tblDichVu_SelectByID]    Script Date: 02/04/2023 18:09:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[tblDichVu_SelectByID]
	@MaDV nvarchar(100)
As
	Select *  From [tblDichVu]
 	Where  ([MaDV] = @MaDV)
GO
/****** Object:  StoredProcedure [dbo].[tblDichVu_SelectPage]    Script Date: 02/04/2023 18:09:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[tblDichVu_SelectPage]
	@CurrentPage int,
	@PageSize int,
	@RowCount int output
As
	With TablePaging As
	(
		 Select ROW_NUMBER()
		Over(Order By [MaDV]) As RowNum,*
		From [tblDichVu]
	)
	Select @RowCount = Count(RowNum) from  TablePaging
	Select * From TablePaging
	Where RowNum Between (@CurrentPage - 1) * @PageSize + 1 And @CurrentPage * @PageSize
	Order By RowNum
GO
/****** Object:  StoredProcedure [dbo].[tblDichVu_SelectTop]    Script Date: 02/04/2023 18:09:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[tblDichVu_SelectTop]
	@Top	Nvarchar(10),
	@Where	Nvarchar(200),
	@Order	Nvarchar(200)
AS
	Declare @SQL Nvarchar(500)
	Set @SQL = 'Select Top (' + @Top + ') * From [tblDichVu]'
	if Len(@Top) = 0
		Begin
			Set @SQL = 'Select * From [tblDichVu]'
		End
	If len(@Where) >0 
		Begin
			Set @SQL = @SQL + ' Where ' + @Where
		End
	If Len(@Order) >0
		Begin
			Set @SQL = @SQL + ' Order By ' + @Order
		End
Execute sp_executesql @SQL
GO
/****** Object:  StoredProcedure [dbo].[tblDichVu_TestByID]    Script Date: 02/04/2023 18:09:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[tblDichVu_TestByID]
	@MaDV nvarchar(100),
	@TestID Bit Output
As
	Select [MaDV] From [tblDichVu]
 	Where  ([MaDV] = @MaDV)
	If(@@rowcount =0) Set @TestID = 0
	Else Set @TestID = 1
GO
/****** Object:  StoredProcedure [dbo].[tblDichVu_Update]    Script Date: 02/04/2023 18:09:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[tblDichVu_Update]
	@MaDV nvarchar(100),
	@TenDV nvarchar(100),
	@GiaTien bigint
As
	Update [tblDichVu]  Set
		[TenDV] = @TenDV,
		[GiaTien] = @GiaTien
	Where ([MaDV] = @MaDV)
GO
/****** Object:  StoredProcedure [dbo].[tblKhachHang_Delete]    Script Date: 02/04/2023 18:09:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[tblKhachHang_Delete]
	@MaKhach nvarchar(100)
As
	Delete [tblKhachHang] 
	Where  ([MaKhach]= @MaKhach)
GO
/****** Object:  StoredProcedure [dbo].[tblKhachHang_GetByID]    Script Date: 02/04/2023 18:09:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[tblKhachHang_GetByID](
	@MaKhach nvarchar(50))
AS
BEGIN
	SELECT * FROM tblKhachHang WHERE MaKhach = @MaKhach
END
GO
/****** Object:  StoredProcedure [dbo].[tblKhachHang_Insert]    Script Date: 02/04/2023 18:09:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[tblKhachHang_Insert]
	@MaKhach nvarchar(100),
	@HoDem nvarchar(100),
	@Ten nvarchar(100),
	@NgaySinh smalldatetime,
	@CMND nvarchar(100),
	@QuocTich nvarchar(100),
	@NghiChu nvarchar(100)
As
	Insert Into [tblKhachHang]
	(
		[MaKhach],
		[HoDem],
		[Ten],
		[NgaySinh],
		[CMND],
		[QuocTich],
		[NghiChu]
	)
	Values
	(
		@MaKhach,
		@HoDem,
		@Ten,
		@NgaySinh,
		@CMND,
		@QuocTich,
		@NghiChu
	)

GO
/****** Object:  StoredProcedure [dbo].[tblKhachHang_SelectAll]    Script Date: 02/04/2023 18:09:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[tblKhachHang_SelectAll]
As
	Select * From [tblKhachHang]
GO
/****** Object:  StoredProcedure [dbo].[tblKhachHang_SelectByID]    Script Date: 02/04/2023 18:09:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[tblKhachHang_SelectByID]
	@MaKhach nvarchar(100)
As
	Select *  From [tblKhachHang]
 	Where  ([MaKhach] = @MaKhach)
GO
/****** Object:  StoredProcedure [dbo].[tblKhachHang_SelectPage]    Script Date: 02/04/2023 18:09:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[tblKhachHang_SelectPage]
	@CurrentPage int,
	@PageSize int,
	@RowCount int output
As
	With TablePaging As
	(
		 Select ROW_NUMBER()
		Over(Order By [MaKhach]) As RowNum,*
		From [tblKhachHang]
	)
	Select @RowCount = Count(RowNum) from  TablePaging
	Select * From TablePaging
	Where RowNum Between (@CurrentPage - 1) * @PageSize + 1 And @CurrentPage * @PageSize
	Order By RowNum
GO
/****** Object:  StoredProcedure [dbo].[tblKhachHang_SelectTop]    Script Date: 02/04/2023 18:09:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[tblKhachHang_SelectTop]
	@Top	Nvarchar(10),
	@Where	Nvarchar(200),
	@Order	Nvarchar(200)
AS
	Declare @SQL Nvarchar(500)
	Set @SQL = 'Select Top (' + @Top + ') * From [tblKhachHang]'
	if Len(@Top) = 0
		Begin
			Set @SQL = 'Select * From [tblKhachHang]'
		End
	If len(@Where) >0 
		Begin
			Set @SQL = @SQL + ' Where ' + @Where
		End
	If Len(@Order) >0
		Begin
			Set @SQL = @SQL + ' Order By ' + @Order
		End
Execute sp_executesql @SQL
GO
/****** Object:  StoredProcedure [dbo].[tblKhachHang_TestByID]    Script Date: 02/04/2023 18:09:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[tblKhachHang_TestByID]
	@MaKhach nvarchar(100),
	@TestID Bit Output
As
	Select [MaKhach] From [tblKhachHang]
 	Where  ([MaKhach] = @MaKhach)
	If(@@rowcount =0) Set @TestID = 0
	Else Set @TestID = 1
GO
/****** Object:  StoredProcedure [dbo].[tblKhachHang_Update]    Script Date: 02/04/2023 18:09:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[tblKhachHang_Update]
	@MaKhach nvarchar(100),
	@HoDem nvarchar(100),
	@Ten nvarchar(100),
	@NgaySinh smalldatetime,
	@CMND nvarchar(100),
	@QuocTich nvarchar(100),
	@NghiChu nvarchar(100)
As
	Update [tblKhachHang]  Set
		[HoDem] = @HoDem,
		[Ten] = @Ten,
		[NgaySinh] = @NgaySinh,
		[CMND] = @CMND,
		[QuocTich] = @QuocTich,
		[NghiChu] = @NghiChu
	Where ([MaKhach] = @MaKhach)
GO
/****** Object:  StoredProcedure [dbo].[tblNhanVien_Delete]    Script Date: 02/04/2023 18:09:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[tblNhanVien_Delete]
	@MaNV nvarchar(100)
As
	Delete [tblNhanVien] 
	Where  ([MaNV]= @MaNV)
GO
/****** Object:  StoredProcedure [dbo].[tblNhanVien_Insert]    Script Date: 02/04/2023 18:09:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[tblNhanVien_Insert]
	@MaNV nvarchar(100),
	@MaCV nvarchar(100),
	@HoDem nvarchar(100),
	@Ten nvarchar(100),
	@NgaySinh smalldatetime,
	@CMND nvarchar(100),
	@NghiChu nvarchar(100)
As
	Insert Into [tblNhanVien]
	(
		[MaNV],
		[MaCV],
		[HoDem],
		[Ten],
		[NgaySinh],
		[CMND],
		[NghiChu]
	)
	Values
	(
		@MaNV,
		@MaCV,
		@HoDem,
		@Ten,
		@NgaySinh,
		@CMND,
		@NghiChu
	)

GO
/****** Object:  StoredProcedure [dbo].[tblNhanVien_SelectAll]    Script Date: 02/04/2023 18:09:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[tblNhanVien_SelectAll]
As
	Select * From [tblNhanVien]
GO
/****** Object:  StoredProcedure [dbo].[tblNhanVien_SelectByID]    Script Date: 02/04/2023 18:09:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--==============================================
CREATE PROCEDURE [dbo].[tblNhanVien_SelectByID]
	@MaNV nvarchar(100)
As
	Select *  From [tblNhanVien]
 	Where  ([MaNV] = @MaNV)
GO
/****** Object:  StoredProcedure [dbo].[tblNhanVien_SelectPage]    Script Date: 02/04/2023 18:09:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[tblNhanVien_SelectPage]
	@CurrentPage int,
	@PageSize int,
	@RowCount int output
As
	With TablePaging As
	(
		 Select ROW_NUMBER()
		Over(Order By [MaNV]) As RowNum,*
		From [tblNhanVien]
	)
	Select @RowCount = Count(RowNum) from  TablePaging
	Select * From TablePaging
	Where RowNum Between (@CurrentPage - 1) * @PageSize + 1 And @CurrentPage * @PageSize
	Order By RowNum
GO
/****** Object:  StoredProcedure [dbo].[tblNhanVien_SelectTop]    Script Date: 02/04/2023 18:09:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[tblNhanVien_SelectTop]
	@Top	Nvarchar(10),
	@Where	Nvarchar(200),
	@Order	Nvarchar(200)
AS
	Declare @SQL Nvarchar(500)
	Set @SQL = 'Select Top (' + @Top + ') * From [tblNhanVien]'
	if Len(@Top) = 0
		Begin
			Set @SQL = 'Select * From [tblNhanVien]'
		End
	If len(@Where) >0 
		Begin
			Set @SQL = @SQL + ' Where ' + @Where
		End
	If Len(@Order) >0
		Begin
			Set @SQL = @SQL + ' Order By ' + @Order
		End
Execute sp_executesql @SQL
GO
/****** Object:  StoredProcedure [dbo].[tblNhanVien_TestByID]    Script Date: 02/04/2023 18:09:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[tblNhanVien_TestByID]
	@MaNV nvarchar(100),
	@TestID Bit Output
As
	Select [MaNV] From [tblNhanVien]
 	Where  ([MaNV] = @MaNV)
	If(@@rowcount =0) Set @TestID = 0
	Else Set @TestID = 1
GO
/****** Object:  StoredProcedure [dbo].[tblNhanVien_Update]    Script Date: 02/04/2023 18:09:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[tblNhanVien_Update]
	@MaNV nvarchar(100),
	@MaCV nvarchar(100),
	@HoDem nvarchar(100),
	@Ten nvarchar(100),
	@NgaySinh smalldatetime,
	@CMND nvarchar(100),
	@NghiChu nvarchar(100)
As
	Update [tblNhanVien]  Set
		[MaCV] = @MaCV,
		[HoDem] = @HoDem,
		[Ten] = @Ten,
		[NgaySinh] = @NgaySinh,
		[CMND] = @CMND,
		[NghiChu] = @NghiChu
	Where ([MaNV] = @MaNV)
GO
/****** Object:  StoredProcedure [dbo].[tblPhong_DaDangKy]    Script Date: 02/04/2023 18:09:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[tblPhong_DaDangKy]
As
	Select *  From [tblDangKy] t0
	inner join [dbo].[tblPhong] t1 on t0.MaPhong = t1.MaPhong where TrangThai = 1
GO
/****** Object:  StoredProcedure [dbo].[tblPhong_DaNhanPhong]    Script Date: 02/04/2023 18:09:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[tblPhong_DaNhanPhong]
As
	Select *  From [tblDangKy] t0
	inner join [dbo].[tblPhong] t1 on t0.MaPhong = t1.MaPhong where TrangThai = 2
GO
/****** Object:  StoredProcedure [dbo].[tblPhong_Delete]    Script Date: 02/04/2023 18:09:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[tblPhong_Delete]
	@MaPhong nvarchar(100)
As
	Delete [tblPhong] 
	Where  ([MaPhong]= @MaPhong)
GO
/****** Object:  StoredProcedure [dbo].[tblPhong_Insert]    Script Date: 02/04/2023 18:09:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[tblPhong_Insert]
	@MaPhong nvarchar(100),
	@TenPhong nvarchar(100),
	@LoaiPhong nvarchar(100),
	@Gia bigint
As
	Insert Into [tblPhong]
	(
		[MaPhong],
		[TenPhong],
		[LoaiPhong],
		[Gia]
	)
	Values
	(
		@MaPhong,
		@TenPhong,
		@LoaiPhong,
		@Gia
	)

GO
/****** Object:  StoredProcedure [dbo].[tblPhong_SelectAll]    Script Date: 02/04/2023 18:09:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[tblPhong_SelectAll]
As
	Select * From [tblPhong]
GO
/****** Object:  StoredProcedure [dbo].[tblPhong_SelectByID]    Script Date: 02/04/2023 18:09:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[tblPhong_SelectByID]
	@MaPhong nvarchar(100)
As
	Select *  From [tblPhong]
 	Where  ([MaPhong] = @MaPhong)
GO
/****** Object:  StoredProcedure [dbo].[tblPhong_SelectPage]    Script Date: 02/04/2023 18:09:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[tblPhong_SelectPage]
	@CurrentPage int,
	@PageSize int,
	@RowCount int output
As
	With TablePaging As
	(
		 Select ROW_NUMBER()
		Over(Order By [MaPhong]) As RowNum,*
		From [tblPhong]
	)
	Select @RowCount = Count(RowNum) from  TablePaging
	Select * From TablePaging
	Where RowNum Between (@CurrentPage - 1) * @PageSize + 1 And @CurrentPage * @PageSize
	Order By RowNum
GO
/****** Object:  StoredProcedure [dbo].[tblPhong_SelectTop]    Script Date: 02/04/2023 18:09:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[tblPhong_SelectTop]
	@Top	Nvarchar(10),
	@Where	Nvarchar(200),
	@Order	Nvarchar(200)
AS
	Declare @SQL Nvarchar(500)
	Set @SQL = 'Select Top (' + @Top + ') * From [tblPhong]'
	if Len(@Top) = 0
		Begin
			Set @SQL = 'Select * From [tblPhong]'
		End
	If len(@Where) >0 
		Begin
			Set @SQL = @SQL + ' Where ' + @Where
		End
	If Len(@Order) >0
		Begin
			Set @SQL = @SQL + ' Order By ' + @Order
		End
Execute sp_executesql @SQL
GO
/****** Object:  StoredProcedure [dbo].[tblPhong_TestByID]    Script Date: 02/04/2023 18:09:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[tblPhong_TestByID]
	@MaPhong nvarchar(100),
	@TestID Bit Output
As
	Select [MaPhong] From [tblPhong]
 	Where  ([MaPhong] = @MaPhong)
	If(@@rowcount =0) Set @TestID = 0
	Else Set @TestID = 1
GO
/****** Object:  StoredProcedure [dbo].[tblPhong_Update]    Script Date: 02/04/2023 18:09:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[tblPhong_Update]
	@MaPhong nvarchar(100),
	@TenPhong nvarchar(100),
	@LoaiPhong nvarchar(100),
	@Gia bigint
As
	Update [tblPhong]  Set
		[TenPhong] = @TenPhong,
		[LoaiPhong] = @LoaiPhong,
		[Gia] = @Gia
	Where ([MaPhong] = @MaPhong)
GO
/****** Object:  StoredProcedure [dbo].[tblSDDV_Delete]    Script Date: 02/04/2023 18:09:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[tblSDDV_Delete]
	@MaDK nvarchar(100),
	@MaDV nvarchar(100)
As
	Delete [tblSDDV] 
	Where  ([MaDK]= @MaDK and [MaDV]= @MaDV)
GO
/****** Object:  StoredProcedure [dbo].[tblSDDV_Insert]    Script Date: 02/04/2023 18:09:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[tblSDDV_Insert]
	@MaDK nvarchar(100),
	@MaDV nvarchar(100),
	@MaNV nvarchar(100) = null,
	@NgaySuDung smalldatetime = null,
	@SoLuong int = null
As
	Insert Into [tblSDDV]
	(
		[MaDK],
		[MaDV],
		[MaNV],
		[NgaySuDung],
		[SoLuong]
	)
	Values
	(
		@MaDK,
		@MaDV,
		@MaNV,
		@NgaySuDung,
		@SoLuong
	)

GO
/****** Object:  StoredProcedure [dbo].[tblSDDV_SelectAll]    Script Date: 02/04/2023 18:09:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[tblSDDV_SelectAll]
As
	Select * From [tblSDDV]
GO
/****** Object:  StoredProcedure [dbo].[tblSDDV_SelectAllByID]    Script Date: 02/04/2023 18:09:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Proc [dbo].[tblSDDV_SelectAllByID]
@MaDK nvarchar(50)
AS
	Select *From tblSDDV
	Where MaDK = @MaDK

GO
/****** Object:  StoredProcedure [dbo].[tblSDDV_SelectByID]    Script Date: 02/04/2023 18:09:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[tblSDDV_SelectByID]
	@MaDK nvarchar(100),
	@MaDV nvarchar(100)
As
	Select *  From [tblSDDV]
 	Where  ([MaDK] = @MaDK and [MaDV] = @MaDV)
GO
/****** Object:  StoredProcedure [dbo].[tblSDDV_SelectPage]    Script Date: 02/04/2023 18:09:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[tblSDDV_SelectPage]
	@CurrentPage int,
	@PageSize int,
	@RowCount int output
As
	With TablePaging As
	(
		 Select ROW_NUMBER()
		Over(Order By [MaDK],[MaDV]) As RowNum,*
		From [tblSDDV]
	)
	Select @RowCount = Count(RowNum) from  TablePaging
	Select * From TablePaging
	Where RowNum Between (@CurrentPage - 1) * @PageSize + 1 And @CurrentPage * @PageSize
	Order By RowNum
GO
/****** Object:  StoredProcedure [dbo].[tblSDDV_SelectTop]    Script Date: 02/04/2023 18:09:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[tblSDDV_SelectTop]
	@Top	Nvarchar(10),
	@Where	Nvarchar(200),
	@Order	Nvarchar(200)
AS
	Declare @SQL Nvarchar(500)
	Set @SQL = 'Select Top (' + @Top + ') * From [tblSDDV]'
	if Len(@Top) = 0
		Begin
			Set @SQL = 'Select * From [tblSDDV]'
		End
	If len(@Where) >0 
		Begin
			Set @SQL = @SQL + ' Where ' + @Where
		End
	If Len(@Order) >0
		Begin
			Set @SQL = @SQL + ' Order By ' + @Order
		End
Execute sp_executesql @SQL
GO
/****** Object:  StoredProcedure [dbo].[tblSDDV_TestByID]    Script Date: 02/04/2023 18:09:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[tblSDDV_TestByID]
	@MaDK nvarchar(100),
	@MaDV nvarchar(100),
	@TestID Bit Output
As
	Select [MaDK],[MaDV] From [tblSDDV]
 	Where  ([MaDK] = @MaDK and [MaDV] = @MaDV)
	If(@@rowcount =0) Set @TestID = 0
	Else Set @TestID = 1
GO
/****** Object:  StoredProcedure [dbo].[tblSDDV_Update]    Script Date: 02/04/2023 18:09:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[tblSDDV_Update]
	@MaDK nvarchar(100),
	@MaDV nvarchar(100),
	@MaNV nvarchar(100),
	@NgaySuDung smalldatetime,
	@SoLuong int
As
	Update [tblSDDV]  Set
		[MaNV] = @MaNV,
		[NgaySuDung] = @NgaySuDung,
		[SoLuong] = @SoLuong
	Where ([MaDK] = @MaDK and [MaDV] = @MaDV)
GO
/****** Object:  StoredProcedure [dbo].[tblThanhToan_Delete]    Script Date: 02/04/2023 18:09:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[tblThanhToan_Delete]
	@MaDK nvarchar(100),
	@MaPhong nvarchar(100)
As
	Delete [tblThanhToan] 
	Where  ([MaDK]= @MaDK and [MaPhong]= @MaPhong)
GO
/****** Object:  StoredProcedure [dbo].[tblThanhToan_Insert]    Script Date: 02/04/2023 18:09:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[tblThanhToan_Insert]
	@MaDK nvarchar(100),
	@MaPhong nvarchar(100),
	@MaNV nvarchar(100),
	@NgayThanhToan smalldatetime
As
	Insert Into [tblThanhToan]
	(
		[MaDK],
		[MaPhong],
		[MaNV],
		[NgayThanhToan]
	)
	Values
	(
		@MaDK,
		@MaPhong,
		@MaNV,
		@NgayThanhToan
	)

GO
/****** Object:  StoredProcedure [dbo].[tblThanhToan_SelectAll]    Script Date: 02/04/2023 18:09:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[tblThanhToan_SelectAll]
As
	Select * From [tblThanhToan]
GO
/****** Object:  StoredProcedure [dbo].[tblThanhToan_SelectByID]    Script Date: 02/04/2023 18:09:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[tblThanhToan_SelectByID]
	@MaDK nvarchar(100),
	@MaPhong nvarchar(100)
As
	Select *  From [tblThanhToan]
 	Where  ([MaDK] = @MaDK and [MaPhong] = @MaPhong)
GO
/****** Object:  StoredProcedure [dbo].[tblThanhToan_SelectPage]    Script Date: 02/04/2023 18:09:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[tblThanhToan_SelectPage]
	@CurrentPage int,
	@PageSize int,
	@RowCount int output
As
	With TablePaging As
	(
		 Select ROW_NUMBER()
		Over(Order By [MaDK],[MaPhong]) As RowNum,*
		From [tblThanhToan]
	)
	Select @RowCount = Count(RowNum) from  TablePaging
	Select * From TablePaging
	Where RowNum Between (@CurrentPage - 1) * @PageSize + 1 And @CurrentPage * @PageSize
	Order By RowNum
GO
/****** Object:  StoredProcedure [dbo].[tblThanhToan_SelectTop]    Script Date: 02/04/2023 18:09:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[tblThanhToan_SelectTop]
	@Top	Nvarchar(10),
	@Where	Nvarchar(200),
	@Order	Nvarchar(200)
AS
	Declare @SQL Nvarchar(500)
	Set @SQL = 'Select Top (' + @Top + ') * From [tblThanhToan]'
	if Len(@Top) = 0
		Begin
			Set @SQL = 'Select * From [tblThanhToan]'
		End
	If len(@Where) >0 
		Begin
			Set @SQL = @SQL + ' Where ' + @Where
		End
	If Len(@Order) >0
		Begin
			Set @SQL = @SQL + ' Order By ' + @Order
		End
Execute sp_executesql @SQL
GO
/****** Object:  StoredProcedure [dbo].[tblThanhToan_TestByID]    Script Date: 02/04/2023 18:09:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[tblThanhToan_TestByID]
	@MaDK nvarchar(100),
	@MaPhong nvarchar(100),
	@TestID Bit Output
As
	Select [MaDK],[MaPhong] From [tblThanhToan]
 	Where  ([MaDK] = @MaDK and [MaPhong] = @MaPhong)
	If(@@rowcount =0) Set @TestID = 0
	Else Set @TestID = 1
GO
/****** Object:  StoredProcedure [dbo].[tblThanhToan_Update]    Script Date: 02/04/2023 18:09:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[tblThanhToan_Update]
	@MaDK nvarchar(100),
	@MaPhong nvarchar(100),
	@MaNV nvarchar(100),
	@NgayThanhToan smalldatetime
As
	Update [tblThanhToan]  Set
		[MaNV] = @MaNV,
		[NgayThanhToan] = @NgayThanhToan
	Where ([MaDK] = @MaDK and [MaPhong] = @MaPhong)
GO
/****** Object:  StoredProcedure [dbo].[tblTraPhong_HoaDon]    Script Date: 02/04/2023 18:09:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[tblTraPhong_HoaDon]
	@MaDK nvarchar(100)
As
	Select *  From [tblPhong] t0
	inner join tblDangKy t1 on t0.MaPhong = t1.MaPhong
 	Where  t1.MaDK = @MaDK
GO
USE [master]
GO
ALTER DATABASE [QuanLyKhachSan] SET  READ_WRITE 
GO
