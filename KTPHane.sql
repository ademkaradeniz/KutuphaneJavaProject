USE [master]
GO
/****** Object:  Database [KTPHane]    Script Date: 22.01.2021 00:11:33 ******/
CREATE DATABASE [KTPHane]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'KTPHane', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\KTPHane.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'KTPHane_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\KTPHane_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [KTPHane] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [KTPHane].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [KTPHane] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [KTPHane] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [KTPHane] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [KTPHane] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [KTPHane] SET ARITHABORT OFF 
GO
ALTER DATABASE [KTPHane] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [KTPHane] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [KTPHane] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [KTPHane] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [KTPHane] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [KTPHane] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [KTPHane] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [KTPHane] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [KTPHane] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [KTPHane] SET  ENABLE_BROKER 
GO
ALTER DATABASE [KTPHane] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [KTPHane] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [KTPHane] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [KTPHane] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [KTPHane] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [KTPHane] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [KTPHane] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [KTPHane] SET RECOVERY FULL 
GO
ALTER DATABASE [KTPHane] SET  MULTI_USER 
GO
ALTER DATABASE [KTPHane] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [KTPHane] SET DB_CHAINING OFF 
GO
ALTER DATABASE [KTPHane] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [KTPHane] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [KTPHane] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'KTPHane', N'ON'
GO
ALTER DATABASE [KTPHane] SET QUERY_STORE = OFF
GO
USE [KTPHane]
GO
/****** Object:  Table [dbo].[EmanetGecmis]    Script Date: 22.01.2021 00:11:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmanetGecmis](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[KitapBarkodNo] [nvarchar](300) NULL,
	[OgrenciTCNo] [nvarchar](11) NULL,
	[OduncTarih] [datetime] NULL,
	[DonusTarih] [datetime] NULL,
	[Status] [int] NULL,
	[CreateOrModifyDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EmanetKitaplar]    Script Date: 22.01.2021 00:11:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmanetKitaplar](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[OgrenciTCNo] [nvarchar](11) NULL,
	[KitapBarkodNo] [nvarchar](300) NULL,
	[KitapAdi] [nvarchar](500) NULL,
	[Yazar] [nvarchar](500) NULL,
	[Yayinevi] [nvarchar](500) NULL,
	[Tur] [nvarchar](500) NULL,
	[Sayfa] [int] NULL,
	[OduncTarih] [datetime] NULL,
	[Status] [int] NULL,
	[CreateOrModifyDate] [datetime] NULL,
 CONSTRAINT [PK__KitapEma__3214EC27C93E20BF] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Kitaplar]    Script Date: 22.01.2021 00:11:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Kitaplar](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[BarkodNo] [nvarchar](300) NULL,
	[KitapAdi] [nvarchar](500) NULL,
	[Yazar] [nvarchar](500) NULL,
	[Yayinevi] [nvarchar](500) NULL,
	[Tur] [nvarchar](500) NULL,
	[Sayfa] [int] NULL,
	[Status] [int] NULL,
	[CreateOrModifyDate] [datetime] NULL,
 CONSTRAINT [PK__Kitaplar__3214EC272F92F83B] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ogrenciler]    Script Date: 22.01.2021 00:11:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ogrenciler](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[TCNo] [nvarchar](11) NULL,
	[AdSoyad] [nvarchar](300) NULL,
	[Cinsiyet] [nvarchar](10) NULL,
	[Email] [nvarchar](300) NULL,
	[TelNo] [nvarchar](50) NULL,
	[Status] [int] NULL,
	[CreateOrModifyDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Yoneticiler]    Script Date: 22.01.2021 00:11:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Yoneticiler](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[TCNo] [nvarchar](11) NULL,
	[Name] [nvarchar](500) NULL,
	[Surname] [nvarchar](500) NULL,
	[Email] [nvarchar](max) NULL,
	[Password] [nvarchar](300) NULL,
	[Status] [int] NULL,
	[CreateOrModifyDate] [datetime] NULL,
 CONSTRAINT [PK__Yonetici__3214EC27F98AF0D7] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[EmanetGecmis] ON 

INSERT [dbo].[EmanetGecmis] ([ID], [KitapBarkodNo], [OgrenciTCNo], [OduncTarih], [DonusTarih], [Status], [CreateOrModifyDate]) VALUES (1, N'57341001', N'12345678901', CAST(N'2020-12-08T00:00:00.000' AS DateTime), CAST(N'2020-12-25T00:00:00.000' AS DateTime), 1, CAST(N'2021-01-17T00:00:00.000' AS DateTime))
INSERT [dbo].[EmanetGecmis] ([ID], [KitapBarkodNo], [OgrenciTCNo], [OduncTarih], [DonusTarih], [Status], [CreateOrModifyDate]) VALUES (2, N'57341005', N'12345678901', CAST(N'2021-01-20T01:22:39.000' AS DateTime), CAST(N'2021-01-22T01:23:10.000' AS DateTime), 1, CAST(N'2021-01-21T00:00:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[EmanetGecmis] OFF
SET IDENTITY_INSERT [dbo].[EmanetKitaplar] ON 

INSERT [dbo].[EmanetKitaplar] ([ID], [OgrenciTCNo], [KitapBarkodNo], [KitapAdi], [Yazar], [Yayinevi], [Tur], [Sayfa], [OduncTarih], [Status], [CreateOrModifyDate]) VALUES (4, N'12345678901', N'57341002', N'Beyaz Diş', N'Jack London', N'İnkilap Yayınevi', N'Roman', 350, CAST(N'2020-10-01T00:00:00.000' AS DateTime), 1, CAST(N'2021-01-17T00:00:00.000' AS DateTime))
INSERT [dbo].[EmanetKitaplar] ([ID], [OgrenciTCNo], [KitapBarkodNo], [KitapAdi], [Yazar], [Yayinevi], [Tur], [Sayfa], [OduncTarih], [Status], [CreateOrModifyDate]) VALUES (13, N'12345678902', N'57341003', N'Kervan', N'İskender Pala', N'Kapı Yayınları', N'Roman', 296, CAST(N'2021-01-05T05:49:50.000' AS DateTime), 1, CAST(N'2021-01-17T00:00:00.000' AS DateTime))
INSERT [dbo].[EmanetKitaplar] ([ID], [OgrenciTCNo], [KitapBarkodNo], [KitapAdi], [Yazar], [Yayinevi], [Tur], [Sayfa], [OduncTarih], [Status], [CreateOrModifyDate]) VALUES (1012, N'12345678901', N'57341004', N'Hanne', N'Bahadır Yenişehirli', N'Timaş Yayınları', N'Roman', 288, CAST(N'2021-01-12T22:43:13.000' AS DateTime), 1, CAST(N'2021-01-20T00:00:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[EmanetKitaplar] OFF
SET IDENTITY_INSERT [dbo].[Kitaplar] ON 

INSERT [dbo].[Kitaplar] ([ID], [BarkodNo], [KitapAdi], [Yazar], [Yayinevi], [Tur], [Sayfa], [Status], [CreateOrModifyDate]) VALUES (1009, N'57341001', N'Karanfil ve Yasemin', N'Mehmet Rauf', N'İnkilap Yayınevi', N'Roman', 250, 1, CAST(N'2021-01-17T00:00:00.000' AS DateTime))
INSERT [dbo].[Kitaplar] ([ID], [BarkodNo], [KitapAdi], [Yazar], [Yayinevi], [Tur], [Sayfa], [Status], [CreateOrModifyDate]) VALUES (2007, N'57341006', N'Uçurtma Avcısı', N'Khaled Hosseini', N'Everest Yayınları', N'Roman', 424, 1, CAST(N'2021-01-17T00:00:00.000' AS DateTime))
INSERT [dbo].[Kitaplar] ([ID], [BarkodNo], [KitapAdi], [Yazar], [Yayinevi], [Tur], [Sayfa], [Status], [CreateOrModifyDate]) VALUES (2009, N'57341007', N'Çalıkuşu', N'Reşat Nuri Güntekin', N'İnkilap Kitabevi', N'Roman', 409, 1, CAST(N'2021-01-21T00:00:00.000' AS DateTime))
INSERT [dbo].[Kitaplar] ([ID], [BarkodNo], [KitapAdi], [Yazar], [Yayinevi], [Tur], [Sayfa], [Status], [CreateOrModifyDate]) VALUES (2011, N'57341005', N'Huzursuzluk', N'Zülfü Livaneli', N'Doğan Kitap', N'Edebiyat', 160, 1, CAST(N'2021-01-21T00:00:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[Kitaplar] OFF
SET IDENTITY_INSERT [dbo].[Ogrenciler] ON 

INSERT [dbo].[Ogrenciler] ([ID], [TCNo], [AdSoyad], [Cinsiyet], [Email], [TelNo], [Status], [CreateOrModifyDate]) VALUES (1, N'12345678901', N'Nida Nur Küçükateş', N'Kız', N'nidanur_kucukates@gmail.com', N'05554443322', 1, CAST(N'2021-01-21T00:00:00.000' AS DateTime))
INSERT [dbo].[Ogrenciler] ([ID], [TCNo], [AdSoyad], [Cinsiyet], [Email], [TelNo], [Status], [CreateOrModifyDate]) VALUES (2, N'12345678902', N'Berat Karadeniz', N'Erkek', N'berat@gmail.com', N'05452224457', 1, CAST(N'2021-01-17T00:00:00.000' AS DateTime))
INSERT [dbo].[Ogrenciler] ([ID], [TCNo], [AdSoyad], [Cinsiyet], [Email], [TelNo], [Status], [CreateOrModifyDate]) VALUES (1002, N'12345678903', N'Yusuf Bülent Ay', N'Erkek', N'y.bulent@hotmail.com', N'02224443254', 1, CAST(N'2021-01-17T00:00:00.000' AS DateTime))
INSERT [dbo].[Ogrenciler] ([ID], [TCNo], [AdSoyad], [Cinsiyet], [Email], [TelNo], [Status], [CreateOrModifyDate]) VALUES (1004, N'12345678904', N'Murat Sayın', N'Erkek', N'sayin_murat@gmail.com', N'01112223344', 1, CAST(N'2021-01-21T00:00:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[Ogrenciler] OFF
SET IDENTITY_INSERT [dbo].[Yoneticiler] ON 

INSERT [dbo].[Yoneticiler] ([ID], [TCNo], [Name], [Surname], [Email], [Password], [Status], [CreateOrModifyDate]) VALUES (1, N'12345678900', N'Adem', N'Karadeniz', N'adem_karadeniz@outlook.com', N'123', 1, CAST(N'2020-12-23T00:00:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[Yoneticiler] OFF
USE [master]
GO
ALTER DATABASE [KTPHane] SET  READ_WRITE 
GO
