USE [master]
GO
/****** Object:  Database [dbWeb]    Script Date: 02-04-2019 11:39:36 ******/
CREATE DATABASE [dbWeb]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'dbWeb_Data', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\dbWeb.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'dbWeb_Log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\dbWeb.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [dbWeb] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [dbWeb].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [dbWeb] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [dbWeb] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [dbWeb] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [dbWeb] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [dbWeb] SET ARITHABORT OFF 
GO
ALTER DATABASE [dbWeb] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [dbWeb] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [dbWeb] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [dbWeb] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [dbWeb] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [dbWeb] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [dbWeb] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [dbWeb] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [dbWeb] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [dbWeb] SET  DISABLE_BROKER 
GO
ALTER DATABASE [dbWeb] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [dbWeb] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [dbWeb] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [dbWeb] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [dbWeb] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [dbWeb] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [dbWeb] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [dbWeb] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [dbWeb] SET  MULTI_USER 
GO
ALTER DATABASE [dbWeb] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [dbWeb] SET DB_CHAINING OFF 
GO
ALTER DATABASE [dbWeb] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [dbWeb] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [dbWeb] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [dbWeb] SET QUERY_STORE = OFF
GO
USE [dbWeb]
GO
/****** Object:  Table [dbo].[tbClass]    Script Date: 02-04-2019 11:39:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbClass](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Sclass] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbFee]    Script Date: 02-04-2019 11:39:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbFee](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[UniqID] [int] NULL,
	[Fee] [int] NULL,
	[Sdate] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbRegister]    Script Date: 02-04-2019 11:39:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbRegister](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Sname] [varchar](50) NULL,
	[SuserName] [varchar](50) NULL,
	[Spassword] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbStudent]    Script Date: 02-04-2019 11:39:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbStudent](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[SName] [varchar](50) NULL,
	[SFatherName] [varchar](50) NULL,
	[SAddress] [varchar](50) NULL,
	[SMobile] [varchar](50) NULL,
	[Sclass] [varchar](50) NULL,
	[SDob] [varchar](50) NULL
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[tbClass] ON 

INSERT [dbo].[tbClass] ([id], [Sclass]) VALUES (1, N'Level5')
INSERT [dbo].[tbClass] ([id], [Sclass]) VALUES (2, N'Level6')
INSERT [dbo].[tbClass] ([id], [Sclass]) VALUES (3, N'Level7')
INSERT [dbo].[tbClass] ([id], [Sclass]) VALUES (4, N'Level8')
SET IDENTITY_INSERT [dbo].[tbClass] OFF
SET IDENTITY_INSERT [dbo].[tbFee] ON 

INSERT [dbo].[tbFee] ([ID], [UniqID], [Fee], [Sdate]) VALUES (5, 10, 1500, N'01-04-2019')
INSERT [dbo].[tbFee] ([ID], [UniqID], [Fee], [Sdate]) VALUES (6, 12, 900, N'01-04-2019')
SET IDENTITY_INSERT [dbo].[tbFee] OFF
SET IDENTITY_INSERT [dbo].[tbRegister] ON 

INSERT [dbo].[tbRegister] ([id], [Sname], [SuserName], [Spassword]) VALUES (1, N'ok', N'ok', N'ok')
INSERT [dbo].[tbRegister] ([id], [Sname], [SuserName], [Spassword]) VALUES (2, N'joban', N'Joban12', N'Joban12')
SET IDENTITY_INSERT [dbo].[tbRegister] OFF
SET IDENTITY_INSERT [dbo].[tbStudent] ON 

INSERT [dbo].[tbStudent] ([ID], [SName], [SFatherName], [SAddress], [SMobile], [Sclass], [SDob]) VALUES (10, N'joban', N'MS. Dhillon', N'papatoetoe', N'0225248214', N'Level6', N'15/01/1997')
INSERT [dbo].[tbStudent] ([ID], [SName], [SFatherName], [SAddress], [SMobile], [Sclass], [SDob]) VALUES (11, N'Shivam', N'Thakur', N'Flatbush', N'026564446', N'Level8', N'01/8/1955')
INSERT [dbo].[tbStudent] ([ID], [SName], [SFatherName], [SAddress], [SMobile], [Sclass], [SDob]) VALUES (12, N'Harman', N'G.Sandhu', N'Pakuranga', N'01566364', N'Level5', N'18/12/2017')
INSERT [dbo].[tbStudent] ([ID], [SName], [SFatherName], [SAddress], [SMobile], [Sclass], [SDob]) VALUES (13, N'Garry', N'Harman', N'chheharta', N'021654351', N'Level7', N'01/12/1996')
SET IDENTITY_INSERT [dbo].[tbStudent] OFF
USE [master]
GO
ALTER DATABASE [dbWeb] SET  READ_WRITE 
GO
