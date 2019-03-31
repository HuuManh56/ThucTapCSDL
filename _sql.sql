-----------------begin GiaoVien--------------------
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GiaoVien]') AND type in (N'U'))
DROP TABLE [dbo].[GiaoVien]
GO
-------------
CREATE TABLE [GiaoVien]
(
  [Id] Int NOT NULL,
  [IdBoMon] Int NULL,
  [HoTen] Nvarchar(200) NULL,
  [NgaySinh] Datetime NULL,
  [SDT] Varchar(20) NULL,
  [GioiTinh] Int NULL,
  [Email] Varchar(100) NULL,
  [DiaChi] Nvarchar(300) NULL,

    CONSTRAINT [PK_GiaoVien_MY] PRIMARY KEY CLUSTERED 
    (
        [Id] ASC

    ) ON [PRIMARY]
)
GO 
-----------------end GiaoVien--------------------
GO


-----------------begin GiaoVien_DonVi--------------------
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GiaoVien_DonVi]') AND type in (N'U'))
DROP TABLE [dbo].[GiaoVien_DonVi]
GO
-------------
CREATE TABLE [GiaoVien_DonVi]
(
  [IdGiaoVien] Int NOT NULL,
  [IdDonVi] Int NOT NULL,
  [DiaDiem] Nvarchar(200) NULL,
  [ThoIdiemNhan] Datetime NULL,

    CONSTRAINT [PK_GiaoVien_DonVi_MY] PRIMARY KEY CLUSTERED 
    (
        [IdGiaoVien] ASC
        ,[IdDonVi] ASC

    ) ON [PRIMARY]
)
GO 
-----------------end GiaoVien_DonVi--------------------
GO


-----------------begin DonVi--------------------
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DonVi]') AND type in (N'U'))
DROP TABLE [dbo].[DonVi]
GO
-------------
CREATE TABLE [DonVi]
(
  [Id] Int NOT NULL,
  [TenDonVi] Nvarchar(200) NULL,

    CONSTRAINT [PK_DonVi_MY] PRIMARY KEY CLUSTERED 
    (
        [Id] ASC

    ) ON [PRIMARY]
)
GO 
-----------------end DonVi--------------------
GO


-----------------begin HocVi--------------------
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[HocVi]') AND type in (N'U'))
DROP TABLE [dbo].[HocVi]
GO
-------------
CREATE TABLE [HocVi]
(
  [Id] Int NOT NULL,
  [TenHocVi] Nvarchar(200) NULL,

    CONSTRAINT [PK_HocVi_MY] PRIMARY KEY CLUSTERED 
    (
        [Id] ASC

    ) ON [PRIMARY]
)
GO 
-----------------end HocVi--------------------
GO


-----------------begin GiaoVien_HocVi--------------------
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GiaoVien_HocVi]') AND type in (N'U'))
DROP TABLE [dbo].[GiaoVien_HocVi]
GO
-------------
CREATE TABLE [GiaoVien_HocVi]
(
  [IdGiaoVien] Int NOT NULL,
  [IdHocVi] Int NOT NULL,
  [ThoIdiemNhan] Datetime NULL,

    CONSTRAINT [PK_GiaoVien_HocVi_MY] PRIMARY KEY CLUSTERED 
    (
        [IdGiaoVien] ASC
        ,[IdHocVi] ASC

    ) ON [PRIMARY]
)
GO 
-----------------end GiaoVien_HocVi--------------------
GO


-----------------begin ChucVuChinhQuyen--------------------
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ChucVuChinhQuyen]') AND type in (N'U'))
DROP TABLE [dbo].[ChucVuChinhQuyen]
GO
-------------
CREATE TABLE [ChucVuChinhQuyen]
(
  [Id] Int NOT NULL,
  [TenChucVu] Nvarchar(200) NULL,

    CONSTRAINT [PK_ChucVuChinhQuyen_MY] PRIMARY KEY CLUSTERED 
    (
        [Id] ASC

    ) ON [PRIMARY]
)
GO 
-----------------end ChucVuChinhQuyen--------------------
GO


-----------------begin ChucVuDang--------------------
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ChucVuDang]') AND type in (N'U'))
DROP TABLE [dbo].[ChucVuDang]
GO
-------------
CREATE TABLE [ChucVuDang]
(
  [Id] Int NOT NULL,
  [TenChucVu] Nvarchar(200) NULL,

    CONSTRAINT [PK_ChucVuDang_MY] PRIMARY KEY CLUSTERED 
    (
        [Id] ASC

    ) ON [PRIMARY]
)
GO 
-----------------end ChucVuDang--------------------
GO


-----------------begin GiaoVien_CVChinhQuyen--------------------
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GiaoVien_CVChinhQuyen]') AND type in (N'U'))
DROP TABLE [dbo].[GiaoVien_CVChinhQuyen]
GO
-------------
CREATE TABLE [GiaoVien_CVChinhQuyen]
(
  [IdGiaoVien] Int NOT NULL,
  [IdChucVu] Int NOT NULL,
  [ThoIdiemNhan] Date NULL,
  [ThoIdiemKetThuc] Date NULL,

    CONSTRAINT [PK_GiaoVien_CVChinhQuyen_MY] PRIMARY KEY CLUSTERED 
    (
        [IdGiaoVien] ASC
        ,[IdChucVu] ASC

    ) ON [PRIMARY]
)
GO 
-----------------end GiaoVien_CVChinhQuyen--------------------
GO


-----------------begin GiaoVien_CVDang--------------------
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GiaoVien_CVDang]') AND type in (N'U'))
DROP TABLE [dbo].[GiaoVien_CVDang]
GO
-------------
CREATE TABLE [GiaoVien_CVDang]
(
  [IdGiaoVien] Int NOT NULL,
  [IdChucVu] Int NOT NULL,
  [ThoIdiemNhan] Date NULL,

    CONSTRAINT [PK_GiaoVien_CVDang_MY] PRIMARY KEY CLUSTERED 
    (
        [IdGiaoVien] ASC
        ,[IdChucVu] ASC

    ) ON [PRIMARY]
)
GO 
-----------------end GiaoVien_CVDang--------------------
GO


-----------------begin MienGiam--------------------
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[MienGiam]') AND type in (N'U'))
DROP TABLE [dbo].[MienGiam]
GO
-------------
CREATE TABLE [MienGiam]
(
  [Id] Int NOT NULL,
  [Ten] Nvarchar(200) NULL,
  [MucCao] Decimal(3,2) NULL,
  [MucThap] Decimal(3,2) NULL,
  [IDChucVuDang] Int NULL,
  [IDCVChinhQuyen] Int NULL,
  [GhiChu] Nvarchar(200) NULL,

    CONSTRAINT [PK_MienGiam_MY] PRIMARY KEY CLUSTERED 
    (
        [Id] ASC

    ) ON [PRIMARY]
)
GO 
-----------------end MienGiam--------------------
GO


-----------------begin HocHam--------------------
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[HocHam]') AND type in (N'U'))
DROP TABLE [dbo].[HocHam]
GO
-------------
CREATE TABLE [HocHam]
(
  [Id] Int NOT NULL,
  [TenHocHam] Nvarchar(200) NULL,

    CONSTRAINT [PK_HocHam_MY] PRIMARY KEY CLUSTERED 
    (
        [Id] ASC

    ) ON [PRIMARY]
)
GO 
-----------------end HocHam--------------------
GO


-----------------begin GiaoVien_HocHam--------------------
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GiaoVien_HocHam]') AND type in (N'U'))
DROP TABLE [dbo].[GiaoVien_HocHam]
GO
-------------
CREATE TABLE [GiaoVien_HocHam]
(
  [IdGiaoVien] Int NOT NULL,
  [IdHocHam] Int NOT NULL,
  [ThoIdiemNhan] Datetime NULL,
  [DiaDiem] Nvarchar(200) NULL,

    CONSTRAINT [PK_GiaoVien_HocHam_MY] PRIMARY KEY CLUSTERED 
    (
        [IdGiaoVien] ASC
        ,[IdHocHam] ASC

    ) ON [PRIMARY]
)
GO 
-----------------end GiaoVien_HocHam--------------------
GO


-----------------begin CDNghienCuu--------------------
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CDNghienCuu]') AND type in (N'U'))
DROP TABLE [dbo].[CDNghienCuu]
GO
-------------
CREATE TABLE [CDNghienCuu]
(
  [Id] Int NOT NULL,
  [TenChucDanh] Nvarchar(200) NULL,

    CONSTRAINT [PK_CDNghienCuu_MY] PRIMARY KEY CLUSTERED 
    (
        [Id] ASC

    ) ON [PRIMARY]
)
GO 
-----------------end CDNghienCuu--------------------
GO


-----------------begin CDNhaGiao--------------------
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CDNhaGiao]') AND type in (N'U'))
DROP TABLE [dbo].[CDNhaGiao]
GO
-------------
CREATE TABLE [CDNhaGiao]
(
  [Id] Int NOT NULL,
  [TenChucDanh] Nvarchar(200) NULL,

    CONSTRAINT [PK_CDNhaGiao_MY] PRIMARY KEY CLUSTERED 
    (
        [Id] ASC

    ) ON [PRIMARY]
)
GO 
-----------------end CDNhaGiao--------------------
GO


-----------------begin GiaoVien_CDNghienCuu--------------------
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GiaoVien_CDNghienCuu]') AND type in (N'U'))
DROP TABLE [dbo].[GiaoVien_CDNghienCuu]
GO
-------------
CREATE TABLE [GiaoVien_CDNghienCuu]
(
  [IdGiaoVien] Int NOT NULL,
  [IdCDNghienCuu] Int NOT NULL,
  [ThoIdiemNhan] Datetime NULL,
  [DiaDiem] Nvarchar(200) NULL,

    CONSTRAINT [PK_GiaoVien_CDNghienCuu_MY] PRIMARY KEY CLUSTERED 
    (
        [IdGiaoVien] ASC
        ,[IdCDNghienCuu] ASC

    ) ON [PRIMARY]
)
GO 
-----------------end GiaoVien_CDNghienCuu--------------------
GO


-----------------begin GiaoVien_CDNhaGiao--------------------
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GiaoVien_CDNhaGiao]') AND type in (N'U'))
DROP TABLE [dbo].[GiaoVien_CDNhaGiao]
GO
-------------
CREATE TABLE [GiaoVien_CDNhaGiao]
(
  [IdGiaoVien] Int NOT NULL,
  [IdCDNhaGiao] Int NOT NULL,
  [ThoIdiemNhan] Datetime NULL,
  [DiaDiem] Nvarchar(200) NULL,

    CONSTRAINT [PK_GiaoVien_CDNhaGiao_MY] PRIMARY KEY CLUSTERED 
    (
        [IdGiaoVien] ASC
        ,[IdCDNhaGiao] ASC

    ) ON [PRIMARY]
)
GO 
-----------------end GiaoVien_CDNhaGiao--------------------
GO


-----------------begin DinhMucNghienCuu--------------------
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DinhMucNghienCuu]') AND type in (N'U'))
DROP TABLE [dbo].[DinhMucNghienCuu]
GO
-------------
CREATE TABLE [DinhMucNghienCuu]
(
  [Id] Int NOT NULL,
  [TenDinhMuc] Nvarchar(200) NULL,
  [DinhMucThoiGian] Decimal(5,2) NULL,
  [DinhMucGioChuan] Decimal(5,2) NULL,
  [IdHocHam] Int NULL,
  [IdChucDanh] Int NULL,

    CONSTRAINT [PK_DinhMucNghienCuu_MY] PRIMARY KEY CLUSTERED 
    (
        [Id] ASC

    ) ON [PRIMARY]
)
GO 
-----------------end DinhMucNghienCuu--------------------
GO


-----------------begin DinhMucGiangDay--------------------
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DinhMucGiangDay]') AND type in (N'U'))
DROP TABLE [dbo].[DinhMucGiangDay]
GO
-------------
CREATE TABLE [DinhMucGiangDay]
(
  [Id] Int NOT NULL,
  [TenDinhMuc] Nvarchar(200) NULL,
  [QuyDinhChung] Decimal(5,2) NULL,
  [QuyDinhTCQP] Decimal(5,2) NULL,
  [IdHocHam] Int NULL,
  [IdChucDanh] Int NULL,

    CONSTRAINT [PK_DinhMucGiangDay_MY] PRIMARY KEY CLUSTERED 
    (
        [Id] ASC

    ) ON [PRIMARY]
)
GO 
-----------------end DinhMucGiangDay--------------------
GO


-----------------begin CapBac--------------------
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CapBac]') AND type in (N'U'))
DROP TABLE [dbo].[CapBac]
GO
-------------
CREATE TABLE [CapBac]
(
  [Id] Int NOT NULL,
  [TenCapBac] Nvarchar(200) NULL,

    CONSTRAINT [PK_CapBac_MY] PRIMARY KEY CLUSTERED 
    (
        [Id] ASC

    ) ON [PRIMARY]
)
GO 
-----------------end CapBac--------------------
GO


-----------------begin GiaoVien_CapBac--------------------
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GiaoVien_CapBac]') AND type in (N'U'))
DROP TABLE [dbo].[GiaoVien_CapBac]
GO
-------------
CREATE TABLE [GiaoVien_CapBac]
(
  [IdGiaoVien] Int NOT NULL,
  [IdCapBac] Int NOT NULL,
  [ThoIdiemNhan] Date NULL,
  [DiaDiem] Nvarchar(200) NULL,

    CONSTRAINT [PK_GiaoVien_CapBac_MY] PRIMARY KEY CLUSTERED 
    (
        [IdGiaoVien] ASC
        ,[IdCapBac] ASC

    ) ON [PRIMARY]
)
GO 
-----------------end GiaoVien_CapBac--------------------
GO


-----------------begin Khoa--------------------
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Khoa]') AND type in (N'U'))
DROP TABLE [dbo].[Khoa]
GO
-------------
CREATE TABLE [Khoa]
(
  [Id] Int NOT NULL,
  [TenKhoa] Nvarchar(200) NULL,

    CONSTRAINT [PK_Khoa_MY] PRIMARY KEY CLUSTERED 
    (
        [Id] ASC

    ) ON [PRIMARY]
)
GO 
-----------------end Khoa--------------------
GO


-----------------begin BoMon--------------------
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[BoMon]') AND type in (N'U'))
DROP TABLE [dbo].[BoMon]
GO
-------------
CREATE TABLE [BoMon]
(
  [Id] Int NOT NULL,
  [TenBoMon] Nvarchar(200) NULL,
  [Type] Nvarchar(200) NULL,
  [IdKhoa] Int NULL,

    CONSTRAINT [PK_BoMon_MY] PRIMARY KEY CLUSTERED 
    (
        [Id] ASC

    ) ON [PRIMARY]
)
GO 
-----------------end BoMon--------------------
GO


-----------------begin HocKy--------------------
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[HocKy]') AND type in (N'U'))
DROP TABLE [dbo].[HocKy]
GO
-------------
CREATE TABLE [HocKy]
(
  [Id_HocKy] varchar(10) NOT NULL,
  [code] varchar(30) NULL,
  [Ten] nvarchar(100) NULL,
  [NgayBatDau] datetime NULL,
  [NgayKetThuc] datetime NULL,
  [NamHoc] varchar(30) NULL,

    CONSTRAINT [PK_HocKy_MY] PRIMARY KEY CLUSTERED 
    (
        [Id_HocKy] ASC

    ) ON [PRIMARY]
)
GO 
-----------------end HocKy--------------------
GO


-----------------begin HocPhan--------------------
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[HocPhan]') AND type in (N'U'))
DROP TABLE [dbo].[HocPhan]
GO
-------------
CREATE TABLE [HocPhan]
(
  [Id_HocPhan] varchar(10) NOT NULL,
  [ten] nvarchar(100) NULL,
  [code] varchar(30) NULL,
  [SoTietLT] int NULL,
  [SoTietBT] int NULL,
  [SoTietTH] int NULL,
  [SoTinChi] int NULL,
  [Id_BoMon] varchar(10) NULL,

    CONSTRAINT [PK_HocPhan_MY] PRIMARY KEY CLUSTERED 
    (
        [Id_HocPhan] ASC

    ) ON [PRIMARY]
)
GO 
-----------------end HocPhan--------------------
GO


-----------------begin ChiTietHeGiangDay--------------------
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ChiTietHeGiangDay]') AND type in (N'U'))
DROP TABLE [dbo].[ChiTietHeGiangDay]
GO
-------------
CREATE TABLE [ChiTietHeGiangDay]
(
  [Id_ChiTietHeGiangDay] varchar(10) NOT NULL,
  [Id_HocPhan] varchar(10) NULL,
  [Id_HeGiangDay] varchar(10) NULL,
  [GhiChu] nvarchar(200) NULL,

    CONSTRAINT [PK_ChiTietHeGiangDay_MY] PRIMARY KEY CLUSTERED 
    (
        [Id_ChiTietHeGiangDay] ASC

    ) ON [PRIMARY]
)
GO 
-----------------end ChiTietHeGiangDay--------------------
GO


-----------------begin HeGiangDay--------------------
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[HeGiangDay]') AND type in (N'U'))
DROP TABLE [dbo].[HeGiangDay]
GO
-------------
CREATE TABLE [HeGiangDay]
(
  [Id_HeGiangDay] varchar(10) NOT NULL,
  [code] varchar(100) NULL,
  [Ten] nvarchar(100) NULL,
  [GhiChu] nvarchar(200) NULL,

    CONSTRAINT [PK_HeGiangDay_MY] PRIMARY KEY CLUSTERED 
    (
        [Id_HeGiangDay] ASC

    ) ON [PRIMARY]
)
GO 
-----------------end HeGiangDay--------------------
GO


-----------------begin LopHocPhan--------------------
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LopHocPhan]') AND type in (N'U'))
DROP TABLE [dbo].[LopHocPhan]
GO
-------------
CREATE TABLE [LopHocPhan]
(
  [Id_LopHocPHan] varchar(10) NOT NULL,
  [Id_HocKy] varchar(10) NULL,
  [ID_HocPhan] varchar(10) NULL,
  [ID_QuyDoiThi] varchar(10) NULL,
  [Code] varchar(30) NULL,
  [Ten] nvarchar(100) NULL,
  [SiSo] int NULL,
  [GhiChu] nvarchar(200) NULL,

    CONSTRAINT [PK_LopHocPhan_MY] PRIMARY KEY CLUSTERED 
    (
        [Id_LopHocPHan] ASC

    ) ON [PRIMARY]
)
GO 
-----------------end LopHocPhan--------------------
GO


-----------------begin QuyDoIdayHocPhanCT--------------------
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[QuyDoIdayHocPhanCT]') AND type in (N'U'))
DROP TABLE [dbo].[QuyDoIdayHocPhanCT]
GO
-------------
CREATE TABLE [QuyDoIdayHocPhanCT]
(
  [Id_QuyDoIdayHocPhanCT] varchar(10) NOT NULL,
  [Id_LopHocPHan] varchar(10) NULL,
  [Id_QuyDoiThi] varchar(10) NULL,
  [GhiChu] nvarchar(200) NULL,

    CONSTRAINT [PK_QuyDoIdayHocPhanCT_MY] PRIMARY KEY CLUSTERED 
    (
        [Id_QuyDoIdayHocPhanCT] ASC

    ) ON [PRIMARY]
)
GO 
-----------------end QuyDoIdayHocPhanCT--------------------
GO


-----------------begin QuyDoiThi--------------------
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[QuyDoiThi]') AND type in (N'U'))
DROP TABLE [dbo].[QuyDoiThi]
GO
-------------
CREATE TABLE [QuyDoiThi]
(
  [Id_QuyDoiThy] varchar(10) NOT NULL,
  [Code] varchar(30) NULL,
  [Ten] nvarchar(100) NULL,
  [DonViTinh] decimal(10,2) NULL,
  [HeSo] decimal(10,2) NULL,
  [GhiChu] nvarchar(200) NULL,

    CONSTRAINT [PK_QuyDoiThi_MY] PRIMARY KEY CLUSTERED 
    (
        [Id_QuyDoiThy] ASC

    ) ON [PRIMARY]
)
GO 
-----------------end QuyDoiThi--------------------
GO


-----------------begin QuyDoIdayHoc--------------------
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[QuyDoIdayHoc]') AND type in (N'U'))
DROP TABLE [dbo].[QuyDoIdayHoc]
GO
-------------
CREATE TABLE [QuyDoIdayHoc]
(
  [Id_QuyDoIdayHoc] varchar(10) NOT NULL,
  [Code] varchar(30) NULL,
  [DonViTinh] decimal(10,2) NULL,
  [ChiTiet] tinyint NULL,
  [HeSo] decimal(10,2) NULL,
  [GhiChu] nvarchar(200) NULL,

    CONSTRAINT [PK_QuyDoIdayHoc_MY] PRIMARY KEY CLUSTERED 
    (
        [Id_QuyDoIdayHoc] ASC

    ) ON [PRIMARY]
)
GO 
-----------------end QuyDoIdayHoc--------------------
GO


-----------------begin QuyDoIdayHocCT--------------------
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[QuyDoIdayHocCT]') AND type in (N'U'))
DROP TABLE [dbo].[QuyDoIdayHocCT]
GO
-------------
CREATE TABLE [QuyDoIdayHocCT]
(
  [Id_QuyDoIdayHocCT] varchar(10) NOT NULL,
  [Code] varchar(30) NULL,
  [MucThap] decimal(10,2) NULL,
  [MucCao] decimal(10,2) NULL,
  [HeSo] decimal(10,2) NULL,
  [GhiChu] nvarchar(200) NULL,
  [Id_QuyDoIdayHoc] varchar(10) NULL,

    CONSTRAINT [PK_QuyDoIdayHocCT_MY] PRIMARY KEY CLUSTERED 
    (
        [Id_QuyDoIdayHocCT] ASC

    ) ON [PRIMARY]
)
GO 
-----------------end QuyDoIdayHocCT--------------------
GO


-----------------begin DoAn--------------------
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DoAn]') AND type in (N'U'))
DROP TABLE [dbo].[DoAn]
GO
-------------
CREATE TABLE [DoAn]
(
  [Id_DoAn] varchar(10) NOT NULL,
  [Code] varchar(30) NULL,
  [SVThucHien] nvarchar(200) NULL,
  [NgayBatDau] datetime NULL,
  [NgayKetThuc] datetime NULL,
  [Id_QuyDoiTHi] varchar(10) NULL,
  [Id_GiaoVien] varchar(10) NULL,
  [GhiChu] nvarchar(200) NULL,

    CONSTRAINT [PK_DoAn_MY] PRIMARY KEY CLUSTERED 
    (
        [Id_DoAn] ASC

    ) ON [PRIMARY]
)
GO 
-----------------end DoAn--------------------
GO


-----------------begin DayHoc--------------------
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DayHoc]') AND type in (N'U'))
DROP TABLE [dbo].[DayHoc]
GO
-------------
CREATE TABLE [DayHoc]
(
  [Id_DayHoc] varchar(10) NOT NULL,
  [Id_GiaoVien] varchar(10) NULL,
  [SoTietLiThuyet] int NULL,
  [SoTietThucHanh] int NULL,
  [SoTietBaiTap] int NULL,
  [VaiTro] nvarchar(30) NULL,
  [SoBTL] int NULL,
  [Id_LopHocPhan] varchar(10) NULL,

    CONSTRAINT [PK_DayHoc_MY] PRIMARY KEY CLUSTERED 
    (
        [Id_DayHoc] ASC

    ) ON [PRIMARY]
)
GO 
-----------------end DayHoc--------------------
GO


-----------------begin Ch--------------------
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Ch]') AND type in (N'U'))
DROP TABLE [dbo].[Ch]
GO
-------------
CREATE TABLE [Ch]
(
  [Id_ChamThi] varchar(10) NOT NULL,
  [Id_GiaoVien] varchar(10) NULL,
  [SoBai] int NULL,
  [VaiTro] nvarchar(30) NULL,
  [Id_LopHocPhan] varchar(10) NULL,

    CONSTRAINT [PK_Ch_MY] PRIMARY KEY CLUSTERED 
    (
        [Id_ChamThi] ASC

    ) ON [PRIMARY]
)
GO 
-----------------end Ch--------------------
GO


-----------------begin QuyDoiNghienCuu--------------------
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[QuyDoiNghienCuu]') AND type in (N'U'))
DROP TABLE [dbo].[QuyDoiNghienCuu]
GO
-------------
CREATE TABLE [QuyDoiNghienCuu]
(
  [ID] int NOT NULL,
  [Type] Varchar(20) NULL,
  [DonViTinh] int NULL,
  [HeSo] int NULL,
  [GhiChu] Nvarchar(200) NULL,

    CONSTRAINT [PK_QuyDoiNghienCuu_MY] PRIMARY KEY CLUSTERED 
    (
        [ID] ASC

    ) ON [PRIMARY]
)
GO 
-----------------end QuyDoiNghienCuu--------------------
GO


-----------------begin BaiBao--------------------
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[BaiBao]') AND type in (N'U'))
DROP TABLE [dbo].[BaiBao]
GO
-------------
CREATE TABLE [BaiBao]
(
  [ID] int NOT NULL,
  [Ten] Nvarchar(200) NULL,
  [Type] Varchar(20) NULL,
  [NgayXB] Date NULL,

    CONSTRAINT [PK_BaiBao_MY] PRIMARY KEY CLUSTERED 
    (
        [ID] ASC

    ) ON [PRIMARY]
)
GO 
-----------------end BaiBao--------------------
GO


-----------------begin GV_BaiBao--------------------
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GV_BaiBao]') AND type in (N'U'))
DROP TABLE [dbo].[GV_BaiBao]
GO
-------------
CREATE TABLE [GV_BaiBao]
(
  [ID_BaoCao] int NOT NULL,
  [ID_GiaoVien] int NOT NULL,
  [VaiTro] Varchar(20) NULL,

    CONSTRAINT [PK_GV_BaiBao_MY] PRIMARY KEY CLUSTERED 
    (
        [ID_BaoCao] ASC
        ,[ID_GiaoVien] ASC

    ) ON [PRIMARY]
)
GO 
-----------------end GV_BaiBao--------------------
GO


-----------------begin DeTaiKH--------------------
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DeTaiKH]') AND type in (N'U'))
DROP TABLE [dbo].[DeTaiKH]
GO
-------------
CREATE TABLE [DeTaiKH]
(
  [ID] int NOT NULL,
  [Ten] Nvarchar(200) NULL,
  [Type] Varchar(20) NULL,
  [NgayHT] Date NULL,

    CONSTRAINT [PK_DeTaiKH_MY] PRIMARY KEY CLUSTERED 
    (
        [ID] ASC

    ) ON [PRIMARY]
)
GO 
-----------------end DeTaiKH--------------------
GO


-----------------begin GV_DeTaiKH--------------------
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GV_DeTaiKH]') AND type in (N'U'))
DROP TABLE [dbo].[GV_DeTaiKH]
GO
-------------
CREATE TABLE [GV_DeTaiKH]
(
  [ID_DeTaiKH] int NOT NULL,
  [ID_GiaoVien] int NOT NULL,
  [VaiTro] Varchar(20) NULL,

    CONSTRAINT [PK_GV_DeTaiKH_MY] PRIMARY KEY CLUSTERED 
    (
        [ID_DeTaiKH] ASC
        ,[ID_GiaoVien] ASC

    ) ON [PRIMARY]
)
GO 
-----------------end GV_DeTaiKH--------------------
GO


-----------------begin Sach--------------------
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Sach]') AND type in (N'U'))
DROP TABLE [dbo].[Sach]
GO
-------------
CREATE TABLE [Sach]
(
  [ID] int NOT NULL,
  [Ten] Nvarchar(200) NULL,
  [Type] Varchar(50) NULL,
  [NgayXB] Date NULL,

    CONSTRAINT [PK_Sach_MY] PRIMARY KEY CLUSTERED 
    (
        [ID] ASC

    ) ON [PRIMARY]
)
GO 
-----------------end Sach--------------------
GO


-----------------begin GV_Sach--------------------
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GV_Sach]') AND type in (N'U'))
DROP TABLE [dbo].[GV_Sach]
GO
-------------
CREATE TABLE [GV_Sach]
(
  [ID_Sach] int NOT NULL,
  [ID_GiaoVien] int NOT NULL,
  [VaiTro] Varchar(20) NULL,

    CONSTRAINT [PK_GV_Sach_MY] PRIMARY KEY CLUSTERED 
    (
        [ID_Sach] ASC
        ,[ID_GiaoVien] ASC

    ) ON [PRIMARY]
)
GO 
-----------------end GV_Sach--------------------
GO


-----------------begin ThiNhiemNew--------------------
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ThiNhiemNew]') AND type in (N'U'))
DROP TABLE [dbo].[ThiNhiemNew]
GO
-------------
CREATE TABLE [ThiNhiemNew]
(
  [ID] int NOT NULL,
  [Ten] Nvarchar(200) NULL,
  [Type] Varchar(50) NULL,
  [NgayXB] Date NULL,

    CONSTRAINT [PK_ThiNhiemNew_MY] PRIMARY KEY CLUSTERED 
    (
        [ID] ASC

    ) ON [PRIMARY]
)
GO 
-----------------end ThiNhiemNew--------------------
GO


-----------------begin GV_ThiNhiem--------------------
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GV_ThiNhiem]') AND type in (N'U'))
DROP TABLE [dbo].[GV_ThiNhiem]
GO
-------------
CREATE TABLE [GV_ThiNhiem]
(
  [ID_ThiNhiem] int NOT NULL,
  [ID_GiaoVien] int NOT NULL,
  [VaiTro] Varchar(20) NULL,

    CONSTRAINT [PK_GV_ThiNhiem_MY] PRIMARY KEY CLUSTERED 
    (
        [ID_ThiNhiem] ASC
        ,[ID_GiaoVien] ASC

    ) ON [PRIMARY]
)
GO 
-----------------end GV_ThiNhiem--------------------
GO


-----------------begin ChuyenGiaoCongNghe--------------------
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ChuyenGiaoCongNghe]') AND type in (N'U'))
DROP TABLE [dbo].[ChuyenGiaoCongNghe]
GO
-------------
CREATE TABLE [ChuyenGiaoCongNghe]
(
  [ID] int NOT NULL,
  [Ten] Nvarchar(200) NULL,
  [Type] Varchar(50) NULL,
  [NgayHT] Date NULL,

    CONSTRAINT [PK_ChuyenGiaoCongNghe_MY] PRIMARY KEY CLUSTERED 
    (
        [ID] ASC

    ) ON [PRIMARY]
)
GO 
-----------------end ChuyenGiaoCongNghe--------------------
GO


-----------------begin GV_CongNghe--------------------
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GV_CongNghe]') AND type in (N'U'))
DROP TABLE [dbo].[GV_CongNghe]
GO
-------------
CREATE TABLE [GV_CongNghe]
(
  [ID_CongNghe] int NOT NULL,
  [ID_GiaoVien] int NOT NULL,
  [VaiTro] Varchar(20) NULL,

    CONSTRAINT [PK_GV_CongNghe_MY] PRIMARY KEY CLUSTERED 
    (
        [ID_CongNghe] ASC
        ,[ID_GiaoVien] ASC

    ) ON [PRIMARY]
)
GO 
-----------------end GV_CongNghe--------------------
GO


-----------------begin SangKienCaiTien--------------------
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SangKienCaiTien]') AND type in (N'U'))
DROP TABLE [dbo].[SangKienCaiTien]
GO
-------------
CREATE TABLE [SangKienCaiTien]
(
  [ID] int NOT NULL,
  [Ten] Nvarchar(200) NULL,
  [Type] Varchar(50) NULL,
  [NgayHT] Date NULL,

    CONSTRAINT [PK_SangKienCaiTien_MY] PRIMARY KEY CLUSTERED 
    (
        [ID] ASC

    ) ON [PRIMARY]
)
GO 
-----------------end SangKienCaiTien--------------------
GO


-----------------begin GV_SangKien--------------------
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GV_SangKien]') AND type in (N'U'))
DROP TABLE [dbo].[GV_SangKien]
GO
-------------
CREATE TABLE [GV_SangKien]
(
  [ID_CongNghe] int NOT NULL,
  [ID_GiaoVien] int NOT NULL,
  [VaiTro] Varchar(20) NULL,

    CONSTRAINT [PK_GV_SangKien_MY] PRIMARY KEY CLUSTERED 
    (
        [ID_CongNghe] ASC
        ,[ID_GiaoVien] ASC

    ) ON [PRIMARY]
)
GO 
-----------------end GV_SangKien--------------------
GO


-----------------begin GiaiThuongSangTao--------------------
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GiaiThuongSangTao]') AND type in (N'U'))
DROP TABLE [dbo].[GiaiThuongSangTao]
GO
-------------
CREATE TABLE [GiaiThuongSangTao]
(
  [ID] int NOT NULL,
  [Ten] Nvarchar(200) NULL,
  [Type] Varchar(50) NULL,
  [NgayNhan] Date NULL,

    CONSTRAINT [PK_GiaiThuongSangTao_MY] PRIMARY KEY CLUSTERED 
    (
        [ID] ASC

    ) ON [PRIMARY]
)
GO 
-----------------end GiaiThuongSangTao--------------------
GO


-----------------begin Gv_GiaiThuongSt--------------------
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Gv_GiaiThuongSt]') AND type in (N'U'))
DROP TABLE [dbo].[Gv_GiaiThuongSt]
GO
-------------
CREATE TABLE [Gv_GiaiThuongSt]
(
  [ID_GiaiThuong] int NOT NULL,
  [ID_GiaoVien] int NOT NULL,
  [VaiTro] Varchar(20) NULL,

    CONSTRAINT [PK_Gv_GiaiThuongSt_MY] PRIMARY KEY CLUSTERED 
    (
        [ID_GiaiThuong] ASC
        ,[ID_GiaoVien] ASC

    ) ON [PRIMARY]
)
GO 
-----------------end Gv_GiaiThuongSt--------------------
GO


-----------------begin BangPhatMinh--------------------
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[BangPhatMinh]') AND type in (N'U'))
DROP TABLE [dbo].[BangPhatMinh]
GO
-------------
CREATE TABLE [BangPhatMinh]
(
  [ID] int NOT NULL,
  [Ten] Nvarchar(200) NULL,
  [Type] Varchar(50) NULL,
  [NgayNhan] Date NULL,

    CONSTRAINT [PK_BangPhatMinh_MY] PRIMARY KEY CLUSTERED 
    (
        [ID] ASC

    ) ON [PRIMARY]
)
GO 
-----------------end BangPhatMinh--------------------
GO


-----------------begin Gv_BangPhatMinh--------------------
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Gv_BangPhatMinh]') AND type in (N'U'))
DROP TABLE [dbo].[Gv_BangPhatMinh]
GO
-------------
CREATE TABLE [Gv_BangPhatMinh]
(
  [ID_PhatMinh] int NOT NULL,
  [ID_GiaoVien] int NOT NULL,
  [VaiTro] Varchar(20) NULL,

    CONSTRAINT [PK_Gv_BangPhatMinh_MY] PRIMARY KEY CLUSTERED 
    (
        [ID_PhatMinh] ASC
        ,[ID_GiaoVien] ASC

    ) ON [PRIMARY]
)
GO 
-----------------end Gv_BangPhatMinh--------------------
GO



