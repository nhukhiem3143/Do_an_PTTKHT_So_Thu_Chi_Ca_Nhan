USE [master]
GO
/****** Object:  Database [QL_SoThuChi_CaNhan]    Script Date: 11/04/2025 10:26:43 CH ******/
CREATE DATABASE [QL_SoThuChi_CaNhan]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'QL_SoThuChi_CaNhan', FILENAME = N'D:\sql\MSSQL16.MSSQLSERVER\MSSQL\DATA\QL_SoThuChi_CaNhan.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'QL_SoThuChi_CaNhan_log', FILENAME = N'D:\sql\MSSQL16.MSSQLSERVER\MSSQL\DATA\QL_SoThuChi_CaNhan_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [QL_SoThuChi_CaNhan] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QL_SoThuChi_CaNhan].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [QL_SoThuChi_CaNhan] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [QL_SoThuChi_CaNhan] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [QL_SoThuChi_CaNhan] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [QL_SoThuChi_CaNhan] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [QL_SoThuChi_CaNhan] SET ARITHABORT OFF 
GO
ALTER DATABASE [QL_SoThuChi_CaNhan] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [QL_SoThuChi_CaNhan] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [QL_SoThuChi_CaNhan] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [QL_SoThuChi_CaNhan] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [QL_SoThuChi_CaNhan] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [QL_SoThuChi_CaNhan] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [QL_SoThuChi_CaNhan] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [QL_SoThuChi_CaNhan] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [QL_SoThuChi_CaNhan] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [QL_SoThuChi_CaNhan] SET  DISABLE_BROKER 
GO
ALTER DATABASE [QL_SoThuChi_CaNhan] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [QL_SoThuChi_CaNhan] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [QL_SoThuChi_CaNhan] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [QL_SoThuChi_CaNhan] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [QL_SoThuChi_CaNhan] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [QL_SoThuChi_CaNhan] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [QL_SoThuChi_CaNhan] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [QL_SoThuChi_CaNhan] SET RECOVERY FULL 
GO
ALTER DATABASE [QL_SoThuChi_CaNhan] SET  MULTI_USER 
GO
ALTER DATABASE [QL_SoThuChi_CaNhan] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [QL_SoThuChi_CaNhan] SET DB_CHAINING OFF 
GO
ALTER DATABASE [QL_SoThuChi_CaNhan] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [QL_SoThuChi_CaNhan] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [QL_SoThuChi_CaNhan] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [QL_SoThuChi_CaNhan] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'QL_SoThuChi_CaNhan', N'ON'
GO
ALTER DATABASE [QL_SoThuChi_CaNhan] SET QUERY_STORE = ON
GO
ALTER DATABASE [QL_SoThuChi_CaNhan] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [QL_SoThuChi_CaNhan]
GO
/****** Object:  Table [dbo].[DanhMuc]    Script Date: 11/04/2025 10:26:43 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DanhMuc](
	[MaDanhMuc] [varchar](13) NOT NULL,
	[LoaiDanhMuc] [nvarchar](50) NOT NULL,
	[TenDanhMuc] [nvarchar](100) NOT NULL,
 CONSTRAINT [IX_DanhMuc] UNIQUE NONCLUSTERED 
(
	[TenDanhMuc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [IX_DanhMuc_1] UNIQUE NONCLUSTERED 
(
	[LoaiDanhMuc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GiaoDich]    Script Date: 11/04/2025 10:26:43 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GiaoDich](
	[MaGiaoDich] [varchar](13) NOT NULL,
	[MaNguoiDung] [varchar](13) NULL,
	[MaTaiKhoan] [varchar](13) NULL,
	[MaDanhMuc] [varchar](13) NULL,
	[SoTien] [money] NOT NULL,
	[NgayGiaoDich] [datetime] NULL,
	[GhiChu] [nvarchar](255) NULL,
	[DoiTuongLienQuan] [nvarchar](100) NULL,
 CONSTRAINT [PK__GiaoDich__0A2A24EB24D8A131] PRIMARY KEY CLUSTERED 
(
	[MaGiaoDich] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HanMucChiTieu]    Script Date: 11/04/2025 10:26:43 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HanMucChiTieu](
	[MaHanMuc] [varchar](13) NOT NULL,
	[MaNguoiDung] [varchar](13) NULL,
	[MaDanhMuc] [varchar](13) NULL,
	[SoTienToiDa] [money] NOT NULL,
	[NgayApDung] [date] NOT NULL,
	[TrangThai] [nvarchar](50) NULL,
 CONSTRAINT [PK__HanMucCh__87381ADD873833BC] PRIMARY KEY CLUSTERED 
(
	[MaHanMuc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LichSuDangNhap]    Script Date: 11/04/2025 10:26:43 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LichSuDangNhap](
	[MaLichSu] [varchar](13) NOT NULL,
	[MaNguoiDung] [varchar](13) NULL,
	[ThoiGian] [datetime] NULL,
	[ThietBi_Login] [nvarchar](50) NULL,
 CONSTRAINT [PK__LichSuDa__C443222AE302D6D1] PRIMARY KEY CLUSTERED 
(
	[MaLichSu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MucTieuTietKiem]    Script Date: 11/04/2025 10:26:43 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MucTieuTietKiem](
	[MaMucTieu] [varchar](13) NOT NULL,
	[MaNguoiDung] [varchar](13) NULL,
	[TenMucTieu] [nvarchar](100) NOT NULL,
	[SoTienMucTieu] [money] NOT NULL,
	[SoTienDaTietKiem] [money] NULL,
	[NgayBatDau] [date] NOT NULL,
	[NgayKetThuc] [date] NOT NULL,
	[TrangThai] [nvarchar](50) NULL,
 CONSTRAINT [PK__MucTieuT__E587A329BC4EEFAB] PRIMARY KEY CLUSTERED 
(
	[MaMucTieu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [IX_MucTieuTietKiem] UNIQUE NONCLUSTERED 
(
	[TenMucTieu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NguoiDung]    Script Date: 11/04/2025 10:26:43 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NguoiDung](
	[MaNguoiDung] [varchar](13) NOT NULL,
	[HoTen] [nvarchar](100) NOT NULL,
	[Email] [varchar](100) NOT NULL,
	[MatKhau] [nvarchar](25) NOT NULL,
	[SoDienThoai] [tinyint] NOT NULL,
	[NgayTao] [datetime] NULL,
 CONSTRAINT [PK__NguoiDun__C539D762B1BCD6B8] PRIMARY KEY CLUSTERED 
(
	[MaNguoiDung] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [UQ__NguoiDun__0389B7BDE640E676] UNIQUE NONCLUSTERED 
(
	[SoDienThoai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [UQ__NguoiDun__A9D1053488737F94] UNIQUE NONCLUSTERED 
(
	[Email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TaiKhoan]    Script Date: 11/04/2025 10:26:43 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TaiKhoan](
	[MaTaiKhoan] [varchar](13) NOT NULL,
	[MaNguoiDung] [varchar](13) NULL,
	[TenTaiKhoan] [nvarchar](100) NOT NULL,
	[LoaiTaiKhoan] [nvarchar](50) NULL,
	[SoDu] [money] NULL,
 CONSTRAINT [PK__TaiKhoan__AD7C652942115124] PRIMARY KEY CLUSTERED 
(
	[MaTaiKhoan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [IX_TaiKhoan] UNIQUE NONCLUSTERED 
(
	[TenTaiKhoan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ThongBao]    Script Date: 11/04/2025 10:26:43 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ThongBao](
	[MaThongBao] [varchar](13) NOT NULL,
	[MaNguoiDung] [varchar](13) NULL,
	[NoiDung] [nvarchar](255) NULL,
	[NgayTao] [datetime] NULL,
	[TrangThai] [varchar](20) NULL,
 CONSTRAINT [PK__ThongBao__04DEB54E7EFB3DD0] PRIMARY KEY CLUSTERED 
(
	[MaThongBao] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[GiaoDich] ADD  CONSTRAINT [DF__GiaoDich__NgayGi__4222D4EF]  DEFAULT (getdate()) FOR [NgayGiaoDich]
GO
ALTER TABLE [dbo].[LichSuDangNhap] ADD  CONSTRAINT [DF__LichSuDan__ThoiG__4BAC3F29]  DEFAULT (getdate()) FOR [ThoiGian]
GO
ALTER TABLE [dbo].[MucTieuTietKiem] ADD  CONSTRAINT [DF__MucTieuTi__SoTie__534D60F1]  DEFAULT ((0)) FOR [SoTienDaTietKiem]
GO
ALTER TABLE [dbo].[NguoiDung] ADD  CONSTRAINT [DF__NguoiDung__NgayT__398D8EEE]  DEFAULT (getdate()) FOR [NgayTao]
GO
ALTER TABLE [dbo].[TaiKhoan] ADD  CONSTRAINT [DF__TaiKhoan__SoDu__3C69FB99]  DEFAULT ((0)) FOR [SoDu]
GO
ALTER TABLE [dbo].[ThongBao] ADD  CONSTRAINT [DF__ThongBao__NgayTa__4F7CD00D]  DEFAULT (getdate()) FOR [NgayTao]
GO
ALTER TABLE [dbo].[GiaoDich]  WITH CHECK ADD  CONSTRAINT [FK__GiaoDich__MaNguo__4316F928] FOREIGN KEY([MaNguoiDung])
REFERENCES [dbo].[NguoiDung] ([MaNguoiDung])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[GiaoDich] CHECK CONSTRAINT [FK__GiaoDich__MaNguo__4316F928]
GO
ALTER TABLE [dbo].[GiaoDich]  WITH CHECK ADD  CONSTRAINT [FK__GiaoDich__MaTaiK__440B1D61] FOREIGN KEY([MaTaiKhoan])
REFERENCES [dbo].[TaiKhoan] ([MaTaiKhoan])
GO
ALTER TABLE [dbo].[GiaoDich] CHECK CONSTRAINT [FK__GiaoDich__MaTaiK__440B1D61]
GO
ALTER TABLE [dbo].[HanMucChiTieu]  WITH CHECK ADD  CONSTRAINT [FK__HanMucChi__MaNgu__47DBAE45] FOREIGN KEY([MaNguoiDung])
REFERENCES [dbo].[NguoiDung] ([MaNguoiDung])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[HanMucChiTieu] CHECK CONSTRAINT [FK__HanMucChi__MaNgu__47DBAE45]
GO
ALTER TABLE [dbo].[LichSuDangNhap]  WITH CHECK ADD  CONSTRAINT [FK__LichSuDan__MaNgu__4CA06362] FOREIGN KEY([MaNguoiDung])
REFERENCES [dbo].[NguoiDung] ([MaNguoiDung])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[LichSuDangNhap] CHECK CONSTRAINT [FK__LichSuDan__MaNgu__4CA06362]
GO
ALTER TABLE [dbo].[MucTieuTietKiem]  WITH CHECK ADD  CONSTRAINT [FK__MucTieuTi__MaNgu__5441852A] FOREIGN KEY([MaNguoiDung])
REFERENCES [dbo].[NguoiDung] ([MaNguoiDung])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[MucTieuTietKiem] CHECK CONSTRAINT [FK__MucTieuTi__MaNgu__5441852A]
GO
ALTER TABLE [dbo].[TaiKhoan]  WITH CHECK ADD  CONSTRAINT [FK__TaiKhoan__MaNguo__3D5E1FD2] FOREIGN KEY([MaNguoiDung])
REFERENCES [dbo].[NguoiDung] ([MaNguoiDung])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[TaiKhoan] CHECK CONSTRAINT [FK__TaiKhoan__MaNguo__3D5E1FD2]
GO
ALTER TABLE [dbo].[ThongBao]  WITH CHECK ADD  CONSTRAINT [FK__ThongBao__MaNguo__5070F446] FOREIGN KEY([MaNguoiDung])
REFERENCES [dbo].[NguoiDung] ([MaNguoiDung])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[ThongBao] CHECK CONSTRAINT [FK__ThongBao__MaNguo__5070F446]
GO
ALTER TABLE [dbo].[GiaoDich]  WITH CHECK ADD  CONSTRAINT [CK_GiaoDich_ngayGD] CHECK  (([NgayGiaoDich]>='2000-01-01 00:00:00' AND [NgayGiaoDich]<=getdate()))
GO
ALTER TABLE [dbo].[GiaoDich] CHECK CONSTRAINT [CK_GiaoDich_ngayGD]
GO
ALTER TABLE [dbo].[HanMucChiTieu]  WITH CHECK ADD  CONSTRAINT [CK_HanMucChiTieu_NgayApdung] CHECK  (([NgayApDung]>='2000-01-01' AND [NgayApDung]<=getdate()))
GO
ALTER TABLE [dbo].[HanMucChiTieu] CHECK CONSTRAINT [CK_HanMucChiTieu_NgayApdung]
GO
ALTER TABLE [dbo].[LichSuDangNhap]  WITH CHECK ADD  CONSTRAINT [CK_LichSuDangNhap_TG] CHECK  (([ThoiGian]>='2000-01-01 00:00:00' AND [ThoiGian]<=getdate()))
GO
ALTER TABLE [dbo].[LichSuDangNhap] CHECK CONSTRAINT [CK_LichSuDangNhap_TG]
GO
ALTER TABLE [dbo].[MucTieuTietKiem]  WITH CHECK ADD  CONSTRAINT [CK_MucTieuTietKiem_NgayBD] CHECK  (([NgayBatDau]>='20000101' AND [NgayBatDau]<=getdate()))
GO
ALTER TABLE [dbo].[MucTieuTietKiem] CHECK CONSTRAINT [CK_MucTieuTietKiem_NgayBD]
GO
ALTER TABLE [dbo].[MucTieuTietKiem]  WITH CHECK ADD  CONSTRAINT [CK_MucTieuTietKiem_NgayKT] CHECK  (([NgayKetThuc]>='20000101' AND [NgayKetThuc]<=getdate()))
GO
ALTER TABLE [dbo].[MucTieuTietKiem] CHECK CONSTRAINT [CK_MucTieuTietKiem_NgayKT]
GO
ALTER TABLE [dbo].[NguoiDung]  WITH CHECK ADD  CONSTRAINT [CK_NguoiDung_NgayTao] CHECK  (([NgayTao]>='2000-01-01 00:00:00' AND [NgayTao]<=getdate()))
GO
ALTER TABLE [dbo].[NguoiDung] CHECK CONSTRAINT [CK_NguoiDung_NgayTao]
GO
ALTER TABLE [dbo].[ThongBao]  WITH CHECK ADD  CONSTRAINT [CK_ThongBao_NgayTao] CHECK  (([NgayTao]>='2000-01-01 00:00:00' AND [NgayTao]<=getdate()))
GO
ALTER TABLE [dbo].[ThongBao] CHECK CONSTRAINT [CK_ThongBao_NgayTao]
GO
USE [master]
GO
ALTER DATABASE [QL_SoThuChi_CaNhan] SET  READ_WRITE 
GO
