USE [master]
GO
/****** Object:  Database [CAPSTONEDB]    Script Date: 17/01/2023 8:18:28 pm ******/
CREATE DATABASE [CAPSTONEDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'CAPSTONEDB_Data', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\CAPSTONEDB.mdf' , SIZE = 8192KB , MAXSIZE = 30720KB , FILEGROWTH = 22528KB )
 LOG ON 
( NAME = N'CAPSTONEDB_Logs', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\CAPSTONEDB.ldf' , SIZE = 8192KB , MAXSIZE = 30720KB , FILEGROWTH = 22528KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [CAPSTONEDB] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [CAPSTONEDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [CAPSTONEDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [CAPSTONEDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [CAPSTONEDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [CAPSTONEDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [CAPSTONEDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [CAPSTONEDB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [CAPSTONEDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [CAPSTONEDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [CAPSTONEDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [CAPSTONEDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [CAPSTONEDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [CAPSTONEDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [CAPSTONEDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [CAPSTONEDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [CAPSTONEDB] SET  DISABLE_BROKER 
GO
ALTER DATABASE [CAPSTONEDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [CAPSTONEDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [CAPSTONEDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [CAPSTONEDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [CAPSTONEDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [CAPSTONEDB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [CAPSTONEDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [CAPSTONEDB] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [CAPSTONEDB] SET  MULTI_USER 
GO
ALTER DATABASE [CAPSTONEDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [CAPSTONEDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [CAPSTONEDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [CAPSTONEDB] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [CAPSTONEDB] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [CAPSTONEDB] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [CAPSTONEDB] SET QUERY_STORE = OFF
GO
USE [CAPSTONEDB]
GO
/****** Object:  User [TestingSite_SQLLogin_1]    Script Date: 17/01/2023 8:18:28 pm ******/
CREATE USER [TestingSite_SQLLogin_1] WITHOUT LOGIN WITH DEFAULT_SCHEMA=[dbo]
GO
ALTER ROLE [db_owner] ADD MEMBER [TestingSite_SQLLogin_1]
GO
/****** Object:  Schema [TestingSite_SQLLogin_1]    Script Date: 17/01/2023 8:18:28 pm ******/
CREATE SCHEMA [TestingSite_SQLLogin_1]
GO
/****** Object:  Table [dbo].[tblAccounts]    Script Date: 17/01/2023 8:18:28 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblAccounts](
	[acntid] [int] IDENTITY(1,1) NOT NULL,
	[fname] [nvarchar](50) NULL,
	[mname] [nvarchar](50) NULL,
	[lname] [nvarchar](50) NULL,
	[uid] [uniqueidentifier] NULL,
	[acnttype] [nvarchar](50) NULL,
	[username] [nvarchar](50) NULL,
	[password] [nvarchar](50) NULL,
	[latitude] [nvarchar](50) NULL,
	[longetude] [nvarchar](50) NULL,
	[locdatetime] [datetime] NULL,
 CONSTRAINT [PK_tblAccounts] PRIMARY KEY CLUSTERED 
(
	[acntid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblCompound]    Script Date: 17/01/2023 8:18:28 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCompound](
	[cid] [int] IDENTITY(1,1) NOT NULL,
	[Compound] [nvarchar](50) NULL,
 CONSTRAINT [PK_tblCompound] PRIMARY KEY CLUSTERED 
(
	[cid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblmenu]    Script Date: 17/01/2023 8:18:28 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblmenu](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Text] [nvarchar](50) NULL,
	[acnttype] [nvarchar](50) NULL,
	[action] [nvarchar](50) NULL,
	[controller] [nvarchar](50) NULL,
	[icon] [nvarchar](50) NULL,
	[tagid] [nvarchar](50) NULL,
 CONSTRAINT [PK_tblmenu] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblticketcitation]    Script Date: 17/01/2023 8:18:28 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblticketcitation](
	[tid] [int] IDENTITY(1,1) NOT NULL,
	[fname] [nvarchar](50) NULL,
	[address] [nvarchar](150) NULL,
	[licenseno] [nvarchar](50) NULL,
	[birthdate] [datetime] NULL,
	[dateofapprehension] [datetime] NULL,
	[placeofviolation] [nvarchar](250) NULL,
	[violationid] [int] NULL,
	[vehicletype] [nvarchar](50) NULL,
	[classification] [nvarchar](50) NULL,
	[plateno] [nvarchar](50) NULL,
	[isDeleted] [int] NULL,
	[ddate] [datetime] NULL,
	[isSettled] [int] NULL,
	[sdate] [datetime] NULL,
	[clearedby] [nvarchar](50) NULL,
 CONSTRAINT [PK_tblticketcitation] PRIMARY KEY CLUSTERED 
(
	[tid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblviolation]    Script Date: 17/01/2023 8:18:28 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblviolation](
	[vid] [int] IDENTITY(1,1) NOT NULL,
	[vdesc] [nvarchar](50) NULL,
	[vamount] [decimal](10, 2) NULL,
	[vuid] [uniqueidentifier] NULL,
 CONSTRAINT [PK_tblviolation] PRIMARY KEY CLUSTERED 
(
	[vid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[tblAccounts] ON 

INSERT [dbo].[tblAccounts] ([acntid], [fname], [mname], [lname], [uid], [acnttype], [username], [password], [latitude], [longetude], [locdatetime]) VALUES (13, N'Cesar', N'D', N'De Leon', N'6ea4806b-98d7-47a9-b3b5-955d3bfbbf2b', N'ADMIN', N'Admin', N'Admin', NULL, NULL, NULL)
INSERT [dbo].[tblAccounts] ([acntid], [fname], [mname], [lname], [uid], [acnttype], [username], [password], [latitude], [longetude], [locdatetime]) VALUES (14, N'enforcer', N'enforcer', N'enforcer', N'd783eb1a-4d97-4e34-aa26-b4b34186d701', N'TENFORCER', N'enforcer', N'enforcer', NULL, NULL, NULL)
INSERT [dbo].[tblAccounts] ([acntid], [fname], [mname], [lname], [uid], [acnttype], [username], [password], [latitude], [longetude], [locdatetime]) VALUES (15, N'Erwin', N'F.', N'Montealto', N'bd4167ac-9e92-4c7d-a43d-7ff560ca153d', N'TENFORCER', N'EnforcerErwin', N'erwinenforcer', N'14.044868', N'121.156304', CAST(N'2023-01-03T23:16:44.517' AS DateTime))
INSERT [dbo].[tblAccounts] ([acntid], [fname], [mname], [lname], [uid], [acnttype], [username], [password], [latitude], [longetude], [locdatetime]) VALUES (16, N'Liza', N'P', N'Sangalang', N'c1716d99-0d70-481a-b630-1e0e211056c7', N'ADMIN', N'admin2', N'admin2', NULL, NULL, NULL)
INSERT [dbo].[tblAccounts] ([acntid], [fname], [mname], [lname], [uid], [acnttype], [username], [password], [latitude], [longetude], [locdatetime]) VALUES (17, N'Nicole', N'M', N'Magsino', N'e4182bb7-a2d2-4a53-9009-2425952cbdb7', N'ADMIN', N'admin3', N'admin3', NULL, NULL, NULL)
INSERT [dbo].[tblAccounts] ([acntid], [fname], [mname], [lname], [uid], [acnttype], [username], [password], [latitude], [longetude], [locdatetime]) VALUES (18, N'Erwin', N'F', N'Montealto', N'd2cb732a-7516-405e-b9bb-de9794932a9e', N'ADMIN', N'admin4', N'admin4', NULL, NULL, NULL)
INSERT [dbo].[tblAccounts] ([acntid], [fname], [mname], [lname], [uid], [acnttype], [username], [password], [latitude], [longetude], [locdatetime]) VALUES (19, N'Daniella Ross', N'P', N'Santos', N'72cec893-9846-4bef-a3c5-2123b4cd3c51', N'ADMIN', N'admin5', N'admin5', NULL, NULL, NULL)
INSERT [dbo].[tblAccounts] ([acntid], [fname], [mname], [lname], [uid], [acnttype], [username], [password], [latitude], [longetude], [locdatetime]) VALUES (24, N'NICOLE', N'M.', N'MAGSINO', N'a0a0e171-0670-425d-aecc-c07370970a96', N'TENFORCER', N'EnforcerNicole ', N'nicoleenforcer', NULL, NULL, NULL)
INSERT [dbo].[tblAccounts] ([acntid], [fname], [mname], [lname], [uid], [acnttype], [username], [password], [latitude], [longetude], [locdatetime]) VALUES (26, N'DANIELLA ROSS ', N'P.', N'Santos', N'060d519b-d616-42e4-9f61-41122dda705c', N'TENFORCER', N'EnforcerDaniella', N'12345678', NULL, NULL, NULL)
INSERT [dbo].[tblAccounts] ([acntid], [fname], [mname], [lname], [uid], [acnttype], [username], [password], [latitude], [longetude], [locdatetime]) VALUES (29, N'ELLA', N'PEREZ', N'SANTOS', N'62dfe615-1c23-47e6-aa19-7383eb4187b6', N'CLERK', N'ellasantos211', N'12345678', NULL, NULL, NULL)
INSERT [dbo].[tblAccounts] ([acntid], [fname], [mname], [lname], [uid], [acnttype], [username], [password], [latitude], [longetude], [locdatetime]) VALUES (30, N'ELLA', N'PEREZ', N'SANTOS', N'61788246-7995-4d7d-a565-a091957f3d5e', N'CLERK', N'ellasantos2119', N'12345678', NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[tblAccounts] OFF
GO
SET IDENTITY_INSERT [dbo].[tblCompound] ON 

INSERT [dbo].[tblCompound] ([cid], [Compound]) VALUES (1, N'Altura Bata')
INSERT [dbo].[tblCompound] ([cid], [Compound]) VALUES (2, N'Altura Matanda')
INSERT [dbo].[tblCompound] ([cid], [Compound]) VALUES (3, N'Altura-South')
INSERT [dbo].[tblCompound] ([cid], [Compound]) VALUES (4, N'Ambulong')
INSERT [dbo].[tblCompound] ([cid], [Compound]) VALUES (5, N'Bañadero')
INSERT [dbo].[tblCompound] ([cid], [Compound]) VALUES (6, N'Bagbag')
INSERT [dbo].[tblCompound] ([cid], [Compound]) VALUES (7, N'Bagumbayan')
INSERT [dbo].[tblCompound] ([cid], [Compound]) VALUES (8, N'Balele')
INSERT [dbo].[tblCompound] ([cid], [Compound]) VALUES (9, N'Banjo East (Bungkalot)')
INSERT [dbo].[tblCompound] ([cid], [Compound]) VALUES (10, N'Banjo West (Banjo Laurel)')
INSERT [dbo].[tblCompound] ([cid], [Compound]) VALUES (11, N'Bilog-bilog')
INSERT [dbo].[tblCompound] ([cid], [Compound]) VALUES (12, N'Boot')
INSERT [dbo].[tblCompound] ([cid], [Compound]) VALUES (13, N'Cale')
INSERT [dbo].[tblCompound] ([cid], [Compound]) VALUES (14, N'Darasa')
INSERT [dbo].[tblCompound] ([cid], [Compound]) VALUES (15, N'Gonzales')
INSERT [dbo].[tblCompound] ([cid], [Compound]) VALUES (16, N'Hidalgo')
INSERT [dbo].[tblCompound] ([cid], [Compound]) VALUES (17, N'Janopol')
INSERT [dbo].[tblCompound] ([cid], [Compound]) VALUES (18, N'Janopol Oriental')
INSERT [dbo].[tblCompound] ([cid], [Compound]) VALUES (19, N'Laurel')
INSERT [dbo].[tblCompound] ([cid], [Compound]) VALUES (20, N'Luyos')
INSERT [dbo].[tblCompound] ([cid], [Compound]) VALUES (21, N'Mabini')
INSERT [dbo].[tblCompound] ([cid], [Compound]) VALUES (22, N'Malaking Pulo')
INSERT [dbo].[tblCompound] ([cid], [Compound]) VALUES (23, N'Maria Paz')
INSERT [dbo].[tblCompound] ([cid], [Compound]) VALUES (24, N'Maugat')
INSERT [dbo].[tblCompound] ([cid], [Compound]) VALUES (25, N'Montaña (Ik-ik)')
INSERT [dbo].[tblCompound] ([cid], [Compound]) VALUES (26, N'Natatas')
INSERT [dbo].[tblCompound] ([cid], [Compound]) VALUES (27, N'Pagaspas (Balokbalok)')
INSERT [dbo].[tblCompound] ([cid], [Compound]) VALUES (28, N'Pantay Matanda')
INSERT [dbo].[tblCompound] ([cid], [Compound]) VALUES (29, N'Pantay Bata')
INSERT [dbo].[tblCompound] ([cid], [Compound]) VALUES (30, N'Poblacion Barangay 1')
INSERT [dbo].[tblCompound] ([cid], [Compound]) VALUES (31, N'Poblacion Barangay 2')
INSERT [dbo].[tblCompound] ([cid], [Compound]) VALUES (32, N'Poblacion Barangay 3')
INSERT [dbo].[tblCompound] ([cid], [Compound]) VALUES (33, N'Poblacion Barangay 4')
INSERT [dbo].[tblCompound] ([cid], [Compound]) VALUES (34, N'Poblacion Barangay 5')
INSERT [dbo].[tblCompound] ([cid], [Compound]) VALUES (35, N'Poblacion Barangay 6')
INSERT [dbo].[tblCompound] ([cid], [Compound]) VALUES (36, N'Poblacion Barangay 7')
INSERT [dbo].[tblCompound] ([cid], [Compound]) VALUES (37, N'Sala')
INSERT [dbo].[tblCompound] ([cid], [Compound]) VALUES (38, N'Sambat')
INSERT [dbo].[tblCompound] ([cid], [Compound]) VALUES (39, N'San Jose')
INSERT [dbo].[tblCompound] ([cid], [Compound]) VALUES (40, N'Santol (Doña Jacoba Garcia)')
INSERT [dbo].[tblCompound] ([cid], [Compound]) VALUES (41, N'Santor')
INSERT [dbo].[tblCompound] ([cid], [Compound]) VALUES (42, N'Sulpoc')
INSERT [dbo].[tblCompound] ([cid], [Compound]) VALUES (43, N'Suplang')
INSERT [dbo].[tblCompound] ([cid], [Compound]) VALUES (44, N'Talaga')
INSERT [dbo].[tblCompound] ([cid], [Compound]) VALUES (45, N'Tinurik')
INSERT [dbo].[tblCompound] ([cid], [Compound]) VALUES (46, N'Trapiche')
INSERT [dbo].[tblCompound] ([cid], [Compound]) VALUES (47, N'Ulango')
INSERT [dbo].[tblCompound] ([cid], [Compound]) VALUES (48, N'Wawa')
SET IDENTITY_INSERT [dbo].[tblCompound] OFF
GO
SET IDENTITY_INSERT [dbo].[tblmenu] ON 

INSERT [dbo].[tblmenu] ([id], [Text], [acnttype], [action], [controller], [icon], [tagid]) VALUES (1, N'Dashboard', N'ADMIN', N'Dashboard', N'Systems', N'fa-dashboard', N'tg-dashboard')
INSERT [dbo].[tblmenu] ([id], [Text], [acnttype], [action], [controller], [icon], [tagid]) VALUES (2, N'Reports', N'ADMIN', N'Reports', N'Systems', N'fa-list-alt', N'tg-reports')
INSERT [dbo].[tblmenu] ([id], [Text], [acnttype], [action], [controller], [icon], [tagid]) VALUES (6, N'Apprehension Reports', N'TENFORCER', N'Enforcer_Apprehension_Report', N'Systems', N'fa-truck', N'tg-apprehensions')
INSERT [dbo].[tblmenu] ([id], [Text], [acnttype], [action], [controller], [icon], [tagid]) VALUES (7, N'Fines of Violation', N'TENFORCER', N'Enforcer_Fines_of_Violation', N'Systems', N'fa-list', N'tg-list')
INSERT [dbo].[tblmenu] ([id], [Text], [acnttype], [action], [controller], [icon], [tagid]) VALUES (8, N'About', N'TENFORCER', N'About', N'Systems', N'fa-info', N'tg-about')
INSERT [dbo].[tblmenu] ([id], [Text], [acnttype], [action], [controller], [icon], [tagid]) VALUES (9, N'Apprehension Reports', N'TENFORCER', N'Apprehension_Report', N'Systems', N'fa-book', N'tg-apprehension')
INSERT [dbo].[tblmenu] ([id], [Text], [acnttype], [action], [controller], [icon], [tagid]) VALUES (10, N'Violation Statistics', N'ADMIN', N'Statics', N'Systems', N'fa-list-ul', N'tg-statics')
INSERT [dbo].[tblmenu] ([id], [Text], [acnttype], [action], [controller], [icon], [tagid]) VALUES (14, N'Dashboard', N'CLERK', N'Dashboard', N'Systems', N'fa-dashboard', N'tg-dashboard')
INSERT [dbo].[tblmenu] ([id], [Text], [acnttype], [action], [controller], [icon], [tagid]) VALUES (15, N'Apprehension Reports', N'CLERK', N'Apprehension_Report', N'Systems', N'fa-truck', N'tg-apprehension')
INSERT [dbo].[tblmenu] ([id], [Text], [acnttype], [action], [controller], [icon], [tagid]) VALUES (16, N'Daily Summary', N'disabled', N'Daily', N'Systems', N'fa-sun-o', N'tg-daily')
INSERT [dbo].[tblmenu] ([id], [Text], [acnttype], [action], [controller], [icon], [tagid]) VALUES (18, N'Confiscated License', N'CLERK', N'ConfiscatedLicense', N'Systems', N'fa-list-alt', N'tg-confiscated')
INSERT [dbo].[tblmenu] ([id], [Text], [acnttype], [action], [controller], [icon], [tagid]) VALUES (19, N'Impounded Vehicles', N'CLERK', N'ImpoundedVehicles', N'Systems', N'fa-warning', N'tg-impounded')
INSERT [dbo].[tblmenu] ([id], [Text], [acnttype], [action], [controller], [icon], [tagid]) VALUES (21, N'Settled Apprehensions', N'CLERK', N'SettledApprehensions', N'Systems', N'fa-check-square-o', N'tg-settled')
INSERT [dbo].[tblmenu] ([id], [Text], [acnttype], [action], [controller], [icon], [tagid]) VALUES (22, N'About', N'CLERK', N'About', N'Systems', N'fa-info', N'tg-about')
INSERT [dbo].[tblmenu] ([id], [Text], [acnttype], [action], [controller], [icon], [tagid]) VALUES (23, N'Enforcer Accounts', N'ADMIN', N'EnforcerAccounts', N'Systems', N'fa-users', N'tg-Eaccounts')
INSERT [dbo].[tblmenu] ([id], [Text], [acnttype], [action], [controller], [icon], [tagid]) VALUES (25, N'PDA Location', N'ADMIN', N'PDALocation', N'Systems', N'fa-map-marker', N'tg-pdalocation')
INSERT [dbo].[tblmenu] ([id], [Text], [acnttype], [action], [controller], [icon], [tagid]) VALUES (26, N'About', N'ADMIN', N'About', N'Systems', N'fa-info', N'tg-about')
SET IDENTITY_INSERT [dbo].[tblmenu] OFF
GO
SET IDENTITY_INSERT [dbo].[tblticketcitation] ON 

INSERT [dbo].[tblticketcitation] ([tid], [fname], [address], [licenseno], [birthdate], [dateofapprehension], [placeofviolation], [violationid], [vehicletype], [classification], [plateno], [isDeleted], [ddate], [isSettled], [sdate], [clearedby]) VALUES (1, N'Jil L. Enrique', N'Test TEST  Test', N'Test 123', CAST(N'2022-11-02T00:00:00.000' AS DateTime), CAST(N'2022-11-02T00:00:00.000' AS DateTime), N'Test', 11, N'Test', N'Private', N'Test Plate', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblticketcitation] ([tid], [fname], [address], [licenseno], [birthdate], [dateofapprehension], [placeofviolation], [violationid], [vehicletype], [classification], [plateno], [isDeleted], [ddate], [isSettled], [sdate], [clearedby]) VALUES (4, N'NICOLE M. MAGSINO', N'322 SAN JUAN STO.TOMAS', N'123456-D', CAST(N'2022-10-14T00:00:00.000' AS DateTime), CAST(N'2022-10-14T00:00:00.000' AS DateTime), N'Patton''s', 25, N'SUV', N'private', N'DDD-1234', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblticketcitation] ([tid], [fname], [address], [licenseno], [birthdate], [dateofapprehension], [placeofviolation], [violationid], [vehicletype], [classification], [plateno], [isDeleted], [ddate], [isSettled], [sdate], [clearedby]) VALUES (5, N'ERUEL F. MONTEALTO', N'336 TRAPICHE 2 TANAUAN', N'123456', CAST(N'2022-10-14T00:00:00.000' AS DateTime), CAST(N'2022-10-14T00:00:00.000' AS DateTime), N'Palengke', 19, N'MIO SPORTY', N'private', N'FFF-1234', NULL, NULL, 1, CAST(N'2022-12-05T14:36:55.827' AS DateTime), N'Christine Joy  Orense')
INSERT [dbo].[tblticketcitation] ([tid], [fname], [address], [licenseno], [birthdate], [dateofapprehension], [placeofviolation], [violationid], [vehicletype], [classification], [plateno], [isDeleted], [ddate], [isSettled], [sdate], [clearedby]) VALUES (6, N'NICOLE M. MAGSINO', N'123 SAN VICENTE STO. TOMAS', N'12345', CAST(N'2022-10-12T00:00:00.000' AS DateTime), CAST(N'2022-10-17T00:00:00.000' AS DateTime), N'Palengke', 3, N'SUV', N'private', N'1234', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblticketcitation] ([tid], [fname], [address], [licenseno], [birthdate], [dateofapprehension], [placeofviolation], [violationid], [vehicletype], [classification], [plateno], [isDeleted], [ddate], [isSettled], [sdate], [clearedby]) VALUES (7, N'LIZA P. SANGALANG', N'59 MOÑTANA TANAUAN', N'123456', CAST(N'1973-04-15T00:00:00.000' AS DateTime), CAST(N'2022-10-18T00:00:00.000' AS DateTime), N'Mabini Avenue', 3, N'SUV', N'private', N'ABC-123', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblticketcitation] ([tid], [fname], [address], [licenseno], [birthdate], [dateofapprehension], [placeofviolation], [violationid], [vehicletype], [classification], [plateno], [isDeleted], [ddate], [isSettled], [sdate], [clearedby]) VALUES (8, N'NICOLE M. MAGSINO', N'123 SAN VICENTE STO. TOMAS', N'12345', CAST(N'2022-10-22T00:00:00.000' AS DateTime), CAST(N'2022-10-22T00:00:00.000' AS DateTime), N'Palengke', 3, N'SUV', N'private', N'Erwino', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblticketcitation] ([tid], [fname], [address], [licenseno], [birthdate], [dateofapprehension], [placeofviolation], [violationid], [vehicletype], [classification], [plateno], [isDeleted], [ddate], [isSettled], [sdate], [clearedby]) VALUES (9, N'Jomiel L. Enriquez', N'Test TEST  Test', N'Test 123', CAST(N'1997-02-02T00:00:00.000' AS DateTime), CAST(N'2022-12-05T00:00:00.000' AS DateTime), N'Test', 3, N'TEst', N'Private', N'Test', 1, CAST(N'2022-12-20T07:41:31.437' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[tblticketcitation] ([tid], [fname], [address], [licenseno], [birthdate], [dateofapprehension], [placeofviolation], [violationid], [vehicletype], [classification], [plateno], [isDeleted], [ddate], [isSettled], [sdate], [clearedby]) VALUES (10, N'Juan T. Dela', N'Test TEST  Test', N'Test', CAST(N'1998-12-12T00:00:00.000' AS DateTime), CAST(N'2022-12-05T00:00:00.000' AS DateTime), N'Test', 8, N'Test1', N'Private', N'Test', 1, CAST(N'2022-12-21T09:42:24.607' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[tblticketcitation] ([tid], [fname], [address], [licenseno], [birthdate], [dateofapprehension], [placeofviolation], [violationid], [vehicletype], [classification], [plateno], [isDeleted], [ddate], [isSettled], [sdate], [clearedby]) VALUES (11, N'Gokut T. San', N'house number ST  test', N'Test123', CAST(N'2022-12-23T00:00:00.000' AS DateTime), CAST(N'2022-12-07T00:00:00.000' AS DateTime), N'Gonzales', 17, N'Test123', N'Private', N'Test', 1, CAST(N'2022-12-21T09:41:32.537' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[tblticketcitation] ([tid], [fname], [address], [licenseno], [birthdate], [dateofapprehension], [placeofviolation], [violationid], [vehicletype], [classification], [plateno], [isDeleted], [ddate], [isSettled], [sdate], [clearedby]) VALUES (12, N'Jsjsjs J. Jsjsjs', N'Snjsjs JSJJS  Jsjsj', N'Nsnsjs', CAST(N'2022-12-14T00:00:00.000' AS DateTime), CAST(N'2022-12-17T00:00:00.000' AS DateTime), N'Bagumbayan', 6, N'Nzjsjsj', N'Private', N'Nznzjs', 1, CAST(N'2022-12-21T09:41:55.733' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[tblticketcitation] ([tid], [fname], [address], [licenseno], [birthdate], [dateofapprehension], [placeofviolation], [violationid], [vehicletype], [classification], [plateno], [isDeleted], [ddate], [isSettled], [sdate], [clearedby]) VALUES (13, N'Ella M. Santos', N'111 111  111', N'111', CAST(N'2022-12-13T00:00:00.000' AS DateTime), CAST(N'2022-12-21T00:00:00.000' AS DateTime), N'Bagumbayan', 6, N'Test', N'Private', N'0987654321', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblticketcitation] ([tid], [fname], [address], [licenseno], [birthdate], [dateofapprehension], [placeofviolation], [violationid], [vehicletype], [classification], [plateno], [isDeleted], [ddate], [isSettled], [sdate], [clearedby]) VALUES (14, N'Erwino F. Montealto', N'333 333  333', N'333', CAST(N'2022-12-01T00:00:00.000' AS DateTime), CAST(N'2022-12-17T00:00:00.000' AS DateTime), N'Trapiche', 7, N'SUV', N'Private', N'333', NULL, NULL, 1, CAST(N'2022-12-17T00:54:11.413' AS DateTime), N'Christine Joy  Orense')
INSERT [dbo].[tblticketcitation] ([tid], [fname], [address], [licenseno], [birthdate], [dateofapprehension], [placeofviolation], [violationid], [vehicletype], [classification], [plateno], [isDeleted], [ddate], [isSettled], [sdate], [clearedby]) VALUES (15, N'Erwino F. Montealto ', N'333 333  333', N'333', CAST(N'2022-12-01T00:00:00.000' AS DateTime), CAST(N'2022-12-18T00:00:00.000' AS DateTime), N'Trapiche', 5, N'SUV', N'Private', N'333', NULL, NULL, 1, CAST(N'2022-12-17T00:55:54.573' AS DateTime), N'Christine Joy  Orense')
INSERT [dbo].[tblticketcitation] ([tid], [fname], [address], [licenseno], [birthdate], [dateofapprehension], [placeofviolation], [violationid], [vehicletype], [classification], [plateno], [isDeleted], [ddate], [isSettled], [sdate], [clearedby]) VALUES (16, N'J K. J', N'M J J', N'N', CAST(N'2022-12-21T00:00:00.000' AS DateTime), CAST(N'2022-12-21T00:00:00.000' AS DateTime), N'Banjo West (Banjo Laurel)', 9, N'j', N'private', N'j', 1, CAST(N'2022-12-21T09:41:43.933' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[tblticketcitation] ([tid], [fname], [address], [licenseno], [birthdate], [dateofapprehension], [placeofviolation], [violationid], [vehicletype], [classification], [plateno], [isDeleted], [ddate], [isSettled], [sdate], [clearedby]) VALUES (17, N'JACK P. BALBALEC ', N'331 TRAPICHE TANAUAN', N'A00-00-000000', CAST(N'2022-12-01T00:00:00.000' AS DateTime), CAST(N'2022-12-21T00:00:00.000' AS DateTime), N'Trapiche', 8, N'SUV', N'private', N'AAA-0000', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblticketcitation] ([tid], [fname], [address], [licenseno], [birthdate], [dateofapprehension], [placeofviolation], [violationid], [vehicletype], [classification], [plateno], [isDeleted], [ddate], [isSettled], [sdate], [clearedby]) VALUES (18, N'JJAJAJA H. NAJAJA', N'JAJAJA NSNSNSN NNJ', N'HSJAJAJA', CAST(N'2022-12-21T00:00:00.000' AS DateTime), CAST(N'2022-12-21T00:00:00.000' AS DateTime), N'Bagbag', 8, N'bzhshaj', N'private', N'zbsjjsna', 1, CAST(N'2022-12-21T09:42:10.760' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[tblticketcitation] ([tid], [fname], [address], [licenseno], [birthdate], [dateofapprehension], [placeofviolation], [violationid], [vehicletype], [classification], [plateno], [isDeleted], [ddate], [isSettled], [sdate], [clearedby]) VALUES (19, N'HAJAJAJ H. JAJAJAJ', N'SHJSJAJ BZNANAN NANANMS', N'NZNSNSN', CAST(N'2022-12-01T00:00:00.000' AS DateTime), CAST(N'2022-12-21T00:00:00.000' AS DateTime), N'Bagumbayan', 9, N'nznan', N'private', N'jajaiiak', 1, CAST(N'2022-12-21T09:41:35.537' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[tblticketcitation] ([tid], [fname], [address], [licenseno], [birthdate], [dateofapprehension], [placeofviolation], [violationid], [vehicletype], [classification], [plateno], [isDeleted], [ddate], [isSettled], [sdate], [clearedby]) VALUES (20, N'JACK P. BALBALEC', N'330 TRAPICHE TANAUAN', N'A00-00-000000', CAST(N'1999-10-29T00:00:00.000' AS DateTime), CAST(N'2022-12-21T00:00:00.000' AS DateTime), N'Trapiche', 8, N'SUV', N'private', N'AAA-0000', 1, CAST(N'2022-12-21T09:42:17.327' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[tblticketcitation] ([tid], [fname], [address], [licenseno], [birthdate], [dateofapprehension], [placeofviolation], [violationid], [vehicletype], [classification], [plateno], [isDeleted], [ddate], [isSettled], [sdate], [clearedby]) VALUES (21, N'AJAJAJA A. JAJAKA', N'ANANANA BZBSNAN NSJAJAJ', N'NANANAM', CAST(N'2022-12-21T00:00:00.000' AS DateTime), CAST(N'2022-12-21T00:00:00.000' AS DateTime), N'Bagbag', 7, N'najajajja', N'private', N'najaja', 1, CAST(N'2022-12-21T09:41:25.517' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[tblticketcitation] ([tid], [fname], [address], [licenseno], [birthdate], [dateofapprehension], [placeofviolation], [violationid], [vehicletype], [classification], [plateno], [isDeleted], [ddate], [isSettled], [sdate], [clearedby]) VALUES (22, N'JSJSJAJ B. JSJZJSJA', N'ANANJA NANANAJAJ NAJAJAJAJ', N'SHJANANA', CAST(N'2022-12-21T00:00:00.000' AS DateTime), CAST(N'2022-12-21T00:00:00.000' AS DateTime), N'Bagbag', 4, N'sjjsnaja', N'private', N'ahjajaja', 1, CAST(N'2022-12-21T09:41:52.403' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[tblticketcitation] ([tid], [fname], [address], [licenseno], [birthdate], [dateofapprehension], [placeofviolation], [violationid], [vehicletype], [classification], [plateno], [isDeleted], [ddate], [isSettled], [sdate], [clearedby]) VALUES (23, N'JAJAJA J. JJAJA', N'AJJAJSN NANANA NANANAN', N'NANANNA', CAST(N'2022-12-21T00:00:00.000' AS DateTime), CAST(N'2022-12-21T00:00:00.000' AS DateTime), N'Bañadero', 7, N'jajaj', N'private', N'nanan', 1, CAST(N'2022-12-21T09:41:48.137' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[tblticketcitation] ([tid], [fname], [address], [licenseno], [birthdate], [dateofapprehension], [placeofviolation], [violationid], [vehicletype], [classification], [plateno], [isDeleted], [ddate], [isSettled], [sdate], [clearedby]) VALUES (24, N'HSHSHSHS H. HSHSHS', N'SNSNNS BAHAHAJA HAHAHA', N'JAJAJAJ', CAST(N'2022-12-21T00:00:00.000' AS DateTime), CAST(N'2022-12-21T00:00:00.000' AS DateTime), N'Bagumbayan', 8, N'nNJaja', N'private', N'nanakam', 1, CAST(N'2022-12-21T09:42:06.723' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[tblticketcitation] ([tid], [fname], [address], [licenseno], [birthdate], [dateofapprehension], [placeofviolation], [violationid], [vehicletype], [classification], [plateno], [isDeleted], [ddate], [isSettled], [sdate], [clearedby]) VALUES (25, N'HSHAHHS H. HSJAJA', N'HSHSJSJA JSJSJSN JSJSJJS', N'NSNSNSNA', CAST(N'2022-12-21T00:00:00.000' AS DateTime), CAST(N'2022-12-21T00:00:00.000' AS DateTime), N'Bañadero', 6, N'hajaha', N'private', N'nznnanan', 1, CAST(N'2022-12-21T09:41:40.537' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[tblticketcitation] ([tid], [fname], [address], [licenseno], [birthdate], [dateofapprehension], [placeofviolation], [violationid], [vehicletype], [classification], [plateno], [isDeleted], [ddate], [isSettled], [sdate], [clearedby]) VALUES (26, N'ARCEO  . PANGILINAN', N'123 BRGY.3 TANAUAN', N'A00-00-000000', CAST(N'2022-12-09T00:00:00.000' AS DateTime), CAST(N'2022-12-22T00:00:00.000' AS DateTime), N'Poblacion Barangay 3', 7, N'SUV', N'private', N'AAA-0000', NULL, NULL, 1, CAST(N'2022-12-22T08:39:10.240' AS DateTime), N'ELLA  SANTOS')
INSERT [dbo].[tblticketcitation] ([tid], [fname], [address], [licenseno], [birthdate], [dateofapprehension], [placeofviolation], [violationid], [vehicletype], [classification], [plateno], [isDeleted], [ddate], [isSettled], [sdate], [clearedby]) VALUES (27, N'ERUEL F. MONTEALTO', N'336 TRAPICHE TANAUAN', N'A00-00-000000', CAST(N'2002-05-07T00:00:00.000' AS DateTime), CAST(N'2022-12-22T00:00:00.000' AS DateTime), N'Trapiche', 8, N'SUV', N'private', N'AAA-0000', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblticketcitation] ([tid], [fname], [address], [licenseno], [birthdate], [dateofapprehension], [placeofviolation], [violationid], [vehicletype], [classification], [plateno], [isDeleted], [ddate], [isSettled], [sdate], [clearedby]) VALUES (28, N'RAFAEL F. MONTEALTO', N'336 TRAPICHE 2 TANAUAN', N'123', CAST(N'2022-12-22T00:00:00.000' AS DateTime), CAST(N'2022-12-22T00:00:00.000' AS DateTime), N'Bagumbayan', 8, N'SUV', N'private', N'123', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblticketcitation] ([tid], [fname], [address], [licenseno], [birthdate], [dateofapprehension], [placeofviolation], [violationid], [vehicletype], [classification], [plateno], [isDeleted], [ddate], [isSettled], [sdate], [clearedby]) VALUES (29, N'DANIEL F. MONTEALTO', N'336 TRAPICHE 2 TANAUAN', N'A00-00-000000', CAST(N'2022-12-03T00:00:00.000' AS DateTime), CAST(N'2022-12-22T00:00:00.000' AS DateTime), N'Tinurik', 7, N'SUV', N'private', N'AAA-0000', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblticketcitation] ([tid], [fname], [address], [licenseno], [birthdate], [dateofapprehension], [placeofviolation], [violationid], [vehicletype], [classification], [plateno], [isDeleted], [ddate], [isSettled], [sdate], [clearedby]) VALUES (30, N'TEKI F. SANTOS', N'336 TRAPICHE 2 TANAUAN', N'A00-00-000000', CAST(N'2022-11-24T00:00:00.000' AS DateTime), CAST(N'2022-12-22T00:00:00.000' AS DateTime), N'Janopol Oriental', 8, N'SUV', N'private', N'ABC-1234', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblticketcitation] ([tid], [fname], [address], [licenseno], [birthdate], [dateofapprehension], [placeofviolation], [violationid], [vehicletype], [classification], [plateno], [isDeleted], [ddate], [isSettled], [sdate], [clearedby]) VALUES (31, N'ARLYN F. PERA', N'331 TRAPICHE TANAUAN', N'A00-123-123456', CAST(N'2022-09-01T00:00:00.000' AS DateTime), CAST(N'2022-12-22T00:00:00.000' AS DateTime), N'Pantay Bata', 8, N'Mio', N'private', N'ABC-1234', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblticketcitation] ([tid], [fname], [address], [licenseno], [birthdate], [dateofapprehension], [placeofviolation], [violationid], [vehicletype], [classification], [plateno], [isDeleted], [ddate], [isSettled], [sdate], [clearedby]) VALUES (32, N'MARK JHON T. DACAPIO', N'123 TRAPICHE 2 TANAUAN', N'A12-123-123456', CAST(N'2022-09-20T00:00:00.000' AS DateTime), CAST(N'2022-12-22T00:00:00.000' AS DateTime), N'Altura Matanda', 11, N'SUV', N'private', N'QWE-1234', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblticketcitation] ([tid], [fname], [address], [licenseno], [birthdate], [dateofapprehension], [placeofviolation], [violationid], [vehicletype], [classification], [plateno], [isDeleted], [ddate], [isSettled], [sdate], [clearedby]) VALUES (33, N'ERUEL F. MONTEALTO', N'555 BRGY.3 TANAUAN', N'A00-000-000000', CAST(N'2003-05-07T00:00:00.000' AS DateTime), CAST(N'2022-12-22T00:00:00.000' AS DateTime), N'Balele', 16, N'SUV', N'private', N'AAA-0000', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblticketcitation] ([tid], [fname], [address], [licenseno], [birthdate], [dateofapprehension], [placeofviolation], [violationid], [vehicletype], [classification], [plateno], [isDeleted], [ddate], [isSettled], [sdate], [clearedby]) VALUES (34, N'ARCEO  . PANGILINAN', N'123 BRGY.3 TANAUAN', N'A00-00-000000', CAST(N'2001-02-18T00:00:00.000' AS DateTime), CAST(N'2022-12-22T00:00:00.000' AS DateTime), N'Boot', 7, N'SUV', N'private', N'AAA-0000', NULL, NULL, 1, CAST(N'2022-12-22T08:39:13.233' AS DateTime), N'ELLA  SANTOS')
INSERT [dbo].[tblticketcitation] ([tid], [fname], [address], [licenseno], [birthdate], [dateofapprehension], [placeofviolation], [violationid], [vehicletype], [classification], [plateno], [isDeleted], [ddate], [isSettled], [sdate], [clearedby]) VALUES (35, N'JOSHUA F. JORDAN', N'336 TRAPICHE 2 TANAUAN', N'A00-00-000000', CAST(N'1999-08-06T00:00:00.000' AS DateTime), CAST(N'2022-12-22T00:00:00.000' AS DateTime), N'Darasa', 30, N'MIO SPORTY', N'private', N'ABC-1234', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblticketcitation] ([tid], [fname], [address], [licenseno], [birthdate], [dateofapprehension], [placeofviolation], [violationid], [vehicletype], [classification], [plateno], [isDeleted], [ddate], [isSettled], [sdate], [clearedby]) VALUES (36, N'ARLYN P. DACAPIO', N'335 TRAPICHE TANAUAN', N'A00-00-000000', CAST(N'1993-01-12T00:00:00.000' AS DateTime), CAST(N'2022-12-22T00:00:00.000' AS DateTime), N'Darasa', 22, N'SUV', N'private', N'ABC-1234', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblticketcitation] ([tid], [fname], [address], [licenseno], [birthdate], [dateofapprehension], [placeofviolation], [violationid], [vehicletype], [classification], [plateno], [isDeleted], [ddate], [isSettled], [sdate], [clearedby]) VALUES (37, N'ARLYN P. DACAPIO', N'335 TRAPICHE TANAUAN', N'A00-00-000000', CAST(N'1993-01-12T00:00:00.000' AS DateTime), CAST(N'2022-12-22T00:00:00.000' AS DateTime), N'Bagbag', 9, N'SUV', N'private', N'ABC-1234', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblticketcitation] ([tid], [fname], [address], [licenseno], [birthdate], [dateofapprehension], [placeofviolation], [violationid], [vehicletype], [classification], [plateno], [isDeleted], [ddate], [isSettled], [sdate], [clearedby]) VALUES (38, N'ARLYN P. DACAPIO', N'335 TRAPICHE 2 TANAUAN', N'A12-12-123456', CAST(N'1993-01-12T00:00:00.000' AS DateTime), CAST(N'2022-12-22T00:00:00.000' AS DateTime), N'Boot', 10, N'SUV', N'private', N'ABC-1234', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblticketcitation] ([tid], [fname], [address], [licenseno], [birthdate], [dateofapprehension], [placeofviolation], [violationid], [vehicletype], [classification], [plateno], [isDeleted], [ddate], [isSettled], [sdate], [clearedby]) VALUES (39, N'DAVE F. JORDAN', N'334 TRAPICHE 2 TANAUAN', N'A09-12-678954', CAST(N'1993-12-15T00:00:00.000' AS DateTime), CAST(N'2022-12-22T00:00:00.000' AS DateTime), N'Bagbag', 4, N'SUV', N'private', N'ABC-4567', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblticketcitation] ([tid], [fname], [address], [licenseno], [birthdate], [dateofapprehension], [placeofviolation], [violationid], [vehicletype], [classification], [plateno], [isDeleted], [ddate], [isSettled], [sdate], [clearedby]) VALUES (40, N'DAVID F. JORDAN', N'990 TRAPICHE 4 TANAUAN', N'A00-00-000000', CAST(N'2022-12-28T00:00:00.000' AS DateTime), CAST(N'2022-12-22T00:00:00.000' AS DateTime), N'Bagumbayan', 2, N'SUV', N'private', N'ABC-0000', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblticketcitation] ([tid], [fname], [address], [licenseno], [birthdate], [dateofapprehension], [placeofviolation], [violationid], [vehicletype], [classification], [plateno], [isDeleted], [ddate], [isSettled], [sdate], [clearedby]) VALUES (41, N'BEVERLY N. VILLAREAL', N'123 TEST TEST', N'TEST', CAST(N'2022-12-22T00:00:00.000' AS DateTime), CAST(N'2022-12-22T00:00:00.000' AS DateTime), N'Balele', 9, N'Test', N'private', N'Test', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblticketcitation] ([tid], [fname], [address], [licenseno], [birthdate], [dateofapprehension], [placeofviolation], [violationid], [vehicletype], [classification], [plateno], [isDeleted], [ddate], [isSettled], [sdate], [clearedby]) VALUES (42, N'NICOLE M. MAGSINO', N'TEST TEST TEST', N'TEST', CAST(N'2022-12-13T00:00:00.000' AS DateTime), CAST(N'2022-12-22T00:00:00.000' AS DateTime), N'Bagumbayan', 8, N'Test', N'private', N'Test', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblticketcitation] ([tid], [fname], [address], [licenseno], [birthdate], [dateofapprehension], [placeofviolation], [violationid], [vehicletype], [classification], [plateno], [isDeleted], [ddate], [isSettled], [sdate], [clearedby]) VALUES (43, N'TEST T. TEST', N'TEST TEST TEST', N'TEST', CAST(N'2022-12-22T00:00:00.000' AS DateTime), CAST(N'2022-12-22T00:00:00.000' AS DateTime), N'Altura Bata', 4, N'Test', N'private', N'Test', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblticketcitation] ([tid], [fname], [address], [licenseno], [birthdate], [dateofapprehension], [placeofviolation], [violationid], [vehicletype], [classification], [plateno], [isDeleted], [ddate], [isSettled], [sdate], [clearedby]) VALUES (44, N'SAMPLE S. SAMPLE', N'SAMPLE SAMPLE SAMPLE', N'SAMPLE', CAST(N'1997-06-15T00:00:00.000' AS DateTime), CAST(N'2022-12-22T00:00:00.000' AS DateTime), N'Bilog-bilog', 23, N'Sample', N'private', N'Sample', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblticketcitation] ([tid], [fname], [address], [licenseno], [birthdate], [dateofapprehension], [placeofviolation], [violationid], [vehicletype], [classification], [plateno], [isDeleted], [ddate], [isSettled], [sdate], [clearedby]) VALUES (45, N'FLORINDA F. PERA', N'TEST TEST TEST', N'TEST', CAST(N'2022-09-14T00:00:00.000' AS DateTime), CAST(N'2022-12-22T00:00:00.000' AS DateTime), N'Bagbag', 8, N'Test', N'private', N'Test', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblticketcitation] ([tid], [fname], [address], [licenseno], [birthdate], [dateofapprehension], [placeofviolation], [violationid], [vehicletype], [classification], [plateno], [isDeleted], [ddate], [isSettled], [sdate], [clearedby]) VALUES (46, N'VANS B. HAVAIANAS', N'SANDUGO CROCS TANAUAN', N'123', CAST(N'1955-01-14T00:00:00.000' AS DateTime), CAST(N'2022-12-22T00:00:00.000' AS DateTime), N'Janopol Oriental', 41, N'MIO SPORTY', N'private', N'123456', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblticketcitation] ([tid], [fname], [address], [licenseno], [birthdate], [dateofapprehension], [placeofviolation], [violationid], [vehicletype], [classification], [plateno], [isDeleted], [ddate], [isSettled], [sdate], [clearedby]) VALUES (47, N'DOMINGA O. FETALINO', N'SAMPLE SAMPLE SAMPLE', N'SAMPLE', CAST(N'1941-12-17T00:00:00.000' AS DateTime), CAST(N'2022-12-22T00:00:00.000' AS DateTime), N'Altura Matanda', 26, N'Sample', N'private', N'Sample', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblticketcitation] ([tid], [fname], [address], [licenseno], [birthdate], [dateofapprehension], [placeofviolation], [violationid], [vehicletype], [classification], [plateno], [isDeleted], [ddate], [isSettled], [sdate], [clearedby]) VALUES (48, N'DOMINADOR G. MONTEALTO', N'SAMPLE TEST SAMPLE TEST SAMPLE TEST', N'A00-00-000000', CAST(N'1935-12-12T00:00:00.000' AS DateTime), CAST(N'2022-12-23T00:00:00.000' AS DateTime), N'Banjo East (Bungkalot)', 36, N'Sample Test', N'private', N'ZXC-1234', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblticketcitation] ([tid], [fname], [address], [licenseno], [birthdate], [dateofapprehension], [placeofviolation], [violationid], [vehicletype], [classification], [plateno], [isDeleted], [ddate], [isSettled], [sdate], [clearedby]) VALUES (49, N'FLORIZA F. MONTEALTO', N'TEST SAMPLE TEST SAMPLE TEST SAMPLE', N'N78-45-678905', CAST(N'1929-12-06T00:00:00.000' AS DateTime), CAST(N'2022-12-23T00:00:00.000' AS DateTime), N'Luyos', 31, N'Test Sample', N'private', N'HJK-1234', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblticketcitation] ([tid], [fname], [address], [licenseno], [birthdate], [dateofapprehension], [placeofviolation], [violationid], [vehicletype], [classification], [plateno], [isDeleted], [ddate], [isSettled], [sdate], [clearedby]) VALUES (50, N'KHIEFER P. SANTOS', N'777 BALELE TANAUAN', N'S98-99-999999', CAST(N'1914-12-29T00:00:00.000' AS DateTime), CAST(N'2022-12-23T00:00:00.000' AS DateTime), N'Altura-South', 26, N'MIO', N'private', N'TYU-6543', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblticketcitation] ([tid], [fname], [address], [licenseno], [birthdate], [dateofapprehension], [placeofviolation], [violationid], [vehicletype], [classification], [plateno], [isDeleted], [ddate], [isSettled], [sdate], [clearedby]) VALUES (51, N'RINA C. CORTUNA', N'113 BAGBAG TANAUAN', N'A78-56-123466', CAST(N'1959-12-05T00:00:00.000' AS DateTime), CAST(N'2022-12-23T00:00:00.000' AS DateTime), N'Bagumbayan', 11, N'SUV', N'private', N'ABC-3456', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblticketcitation] ([tid], [fname], [address], [licenseno], [birthdate], [dateofapprehension], [placeofviolation], [violationid], [vehicletype], [classification], [plateno], [isDeleted], [ddate], [isSettled], [sdate], [clearedby]) VALUES (1048, N'JOHNSON F. MANZANAL', N'565 PANTAY MATANDA TANAUAN', N'N34-17-786346', CAST(N'2000-04-12T00:00:00.000' AS DateTime), CAST(N'2022-12-23T00:00:00.000' AS DateTime), N'Cale', 30, N'MIO SPORTY', N'private', N'HJK-6423', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblticketcitation] ([tid], [fname], [address], [licenseno], [birthdate], [dateofapprehension], [placeofviolation], [violationid], [vehicletype], [classification], [plateno], [isDeleted], [ddate], [isSettled], [sdate], [clearedby]) VALUES (1049, N'DOMINADOR G. MONTEALTO', N'336 TRAPICHE TANAUAN', N'A00-00-000000', CAST(N'1973-04-25T00:00:00.000' AS DateTime), CAST(N'2022-12-25T00:00:00.000' AS DateTime), N'Bagumbayan', 8, N'MIO SPORTY', N'private', N'ABC-1234', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblticketcitation] ([tid], [fname], [address], [licenseno], [birthdate], [dateofapprehension], [placeofviolation], [violationid], [vehicletype], [classification], [plateno], [isDeleted], [ddate], [isSettled], [sdate], [clearedby]) VALUES (1050, N'ERUELO D. MONTEALTO', N'336 TEST TEST', N'TEST', CAST(N'2022-12-26T00:00:00.000' AS DateTime), CAST(N'2022-12-26T00:00:00.000' AS DateTime), N'Balele', 9, N'Test', N'private', N'Test', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblticketcitation] ([tid], [fname], [address], [licenseno], [birthdate], [dateofapprehension], [placeofviolation], [violationid], [vehicletype], [classification], [plateno], [isDeleted], [ddate], [isSettled], [sdate], [clearedby]) VALUES (1051, N'NOAH M. MESIAS', N'SAMPE SAMPLE SAMPLE', N'SAMPLE', CAST(N'1980-12-28T00:00:00.000' AS DateTime), CAST(N'2022-12-28T00:00:00.000' AS DateTime), N'Bagumbayan', 16, N'sample', N'private', N'sample', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblticketcitation] ([tid], [fname], [address], [licenseno], [birthdate], [dateofapprehension], [placeofviolation], [violationid], [vehicletype], [classification], [plateno], [isDeleted], [ddate], [isSettled], [sdate], [clearedby]) VALUES (1052, N'PRICE DHAVE F. PERA', N'123 TRAPICHE TANAUAN', N'S09-00-678456', CAST(N'2006-07-20T00:00:00.000' AS DateTime), CAST(N'2022-12-30T00:00:00.000' AS DateTime), N'Altura-South', 9, N'SUV', N'private', N'FGH-1234', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblticketcitation] ([tid], [fname], [address], [licenseno], [birthdate], [dateofapprehension], [placeofviolation], [violationid], [vehicletype], [classification], [plateno], [isDeleted], [ddate], [isSettled], [sdate], [clearedby]) VALUES (1053, N'RUZZEL F. MANZANAL', N'698 BAGBAG TANAUAN', N'V70-54-235863', CAST(N'2000-01-05T00:00:00.000' AS DateTime), CAST(N'2023-01-01T00:00:00.000' AS DateTime), N'Hidalgo', 9, N'MIO', N'private', N'ABC-5423', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblticketcitation] ([tid], [fname], [address], [licenseno], [birthdate], [dateofapprehension], [placeofviolation], [violationid], [vehicletype], [classification], [plateno], [isDeleted], [ddate], [isSettled], [sdate], [clearedby]) VALUES (1054, N'BARWET T. MANDAHUYAN', N'523 BALELE TANAUAN', N'G43-56-987654', CAST(N'1999-01-14T00:00:00.000' AS DateTime), CAST(N'2023-01-01T00:00:00.000' AS DateTime), N'Altura Matanda', 13, N'MIO SPORTY', N'private', N'HJK-5287', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblticketcitation] ([tid], [fname], [address], [licenseno], [birthdate], [dateofapprehension], [placeofviolation], [violationid], [vehicletype], [classification], [plateno], [isDeleted], [ddate], [isSettled], [sdate], [clearedby]) VALUES (1055, N'MARY JOY M. SANTIAGO', N'347 TRAPICHE TANAUAN', N'D98-56-109298', CAST(N'1954-01-23T00:00:00.000' AS DateTime), CAST(N'2023-01-02T00:00:00.000' AS DateTime), N'Luyos', 20, N'MIO SPORTY', N'private', N'HJK-8970', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblticketcitation] ([tid], [fname], [address], [licenseno], [birthdate], [dateofapprehension], [placeofviolation], [violationid], [vehicletype], [classification], [plateno], [isDeleted], [ddate], [isSettled], [sdate], [clearedby]) VALUES (1056, N'THESIS J. DEFENDED', N'004 BAGBAG TANAUAN', N'A89-65-234567', CAST(N'1997-01-17T00:00:00.000' AS DateTime), CAST(N'2023-01-04T00:00:00.000' AS DateTime), N'Ambulong', 8, N'Mio Sporty', N'private', N'FGH-1234', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblticketcitation] ([tid], [fname], [address], [licenseno], [birthdate], [dateofapprehension], [placeofviolation], [violationid], [vehicletype], [classification], [plateno], [isDeleted], [ddate], [isSettled], [sdate], [clearedby]) VALUES (1057, N'ERWINO G. MONTEALTOWS', N'337 TRAPICHE TANAUAN', N'F67-09-789098', CAST(N'1980-01-04T00:00:00.000' AS DateTime), CAST(N'2023-01-04T00:00:00.000' AS DateTime), N'Cale', 13, N'Mio Sporty', N'private', N'ABC-6789', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblticketcitation] ([tid], [fname], [address], [licenseno], [birthdate], [dateofapprehension], [placeofviolation], [violationid], [vehicletype], [classification], [plateno], [isDeleted], [ddate], [isSettled], [sdate], [clearedby]) VALUES (1058, N'SAMPLE S. SAMPLE', N'SAMPLE SAMPLE SAMPLE', N'SAMPLE', CAST(N'2008-01-18T00:00:00.000' AS DateTime), CAST(N'2023-01-04T00:00:00.000' AS DateTime), N'Bagumbayan', 12, N'Sample', N'private', N'Sample', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblticketcitation] ([tid], [fname], [address], [licenseno], [birthdate], [dateofapprehension], [placeofviolation], [violationid], [vehicletype], [classification], [plateno], [isDeleted], [ddate], [isSettled], [sdate], [clearedby]) VALUES (1059, N'ERWIN F. PAMPLONA', N'336 POBLACION 5 TANAUAN', N'D18-1234-5678', CAST(N'1983-01-20T00:00:00.000' AS DateTime), CAST(N'2023-01-04T00:00:00.000' AS DateTime), N'Janopol', 30, N'Mio', N'private', N'ABC-1234', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblticketcitation] ([tid], [fname], [address], [licenseno], [birthdate], [dateofapprehension], [placeofviolation], [violationid], [vehicletype], [classification], [plateno], [isDeleted], [ddate], [isSettled], [sdate], [clearedby]) VALUES (1060, N'RONALD O. PAMPLONA', N'12 POBLACION 2 TANAUAN', N'D18-1410-6921', CAST(N'1998-02-19T00:00:00.000' AS DateTime), CAST(N'2023-01-04T00:00:00.000' AS DateTime), N'Poblacion Barangay 5', 3, N'Motorcycle', N'private', N'0401-079549', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblticketcitation] ([tid], [fname], [address], [licenseno], [birthdate], [dateofapprehension], [placeofviolation], [violationid], [vehicletype], [classification], [plateno], [isDeleted], [ddate], [isSettled], [sdate], [clearedby]) VALUES (1061, N'MALDRIN C. SANGALANG', N'123 BAGBAG TANAUAN', N'D97-65-234567', CAST(N'1999-09-15T00:00:00.000' AS DateTime), CAST(N'2023-01-04T00:00:00.000' AS DateTime), N'Bilog-bilog', 13, N'Mio Sporty', N'private', N'YUI-1234', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblticketcitation] ([tid], [fname], [address], [licenseno], [birthdate], [dateofapprehension], [placeofviolation], [violationid], [vehicletype], [classification], [plateno], [isDeleted], [ddate], [isSettled], [sdate], [clearedby]) VALUES (1062, N'JENELYN F. UNIGO', N'335 BAGBAG TANAUAN', N'A01-65-789987', CAST(N'2001-01-18T00:00:00.000' AS DateTime), CAST(N'2023-01-04T00:00:00.000' AS DateTime), N'Boot', 13, N'Motorcycle', N'private', N'ASD-1234', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblticketcitation] ([tid], [fname], [address], [licenseno], [birthdate], [dateofapprehension], [placeofviolation], [violationid], [vehicletype], [classification], [plateno], [isDeleted], [ddate], [isSettled], [sdate], [clearedby]) VALUES (1063, N'TEST T. TEST', N'TEST TEST TEST', N'TEST', CAST(N'2010-01-22T00:00:00.000' AS DateTime), CAST(N'2023-01-04T00:00:00.000' AS DateTime), N'Bagumbayan', 10, N'test', N'private', N'test', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblticketcitation] ([tid], [fname], [address], [licenseno], [birthdate], [dateofapprehension], [placeofviolation], [violationid], [vehicletype], [classification], [plateno], [isDeleted], [ddate], [isSettled], [sdate], [clearedby]) VALUES (1064, N'JOHN REY N. MANZANAL', N'055 BAGBAG TANAUAN', N'A01-00-000000', CAST(N'1992-01-01T00:00:00.000' AS DateTime), CAST(N'2023-01-04T00:00:00.000' AS DateTime), N'Gonzales', 30, N'Motorcycle', N'private', N'ABC-1234', NULL, NULL, 1, CAST(N'2023-01-03T22:42:24.610' AS DateTime), N'ELLA  SANTOS')
INSERT [dbo].[tblticketcitation] ([tid], [fname], [address], [licenseno], [birthdate], [dateofapprehension], [placeofviolation], [violationid], [vehicletype], [classification], [plateno], [isDeleted], [ddate], [isSettled], [sdate], [clearedby]) VALUES (1065, N'JOHN REY N. MANZANAL', N'055 BAGBAG TANAUAN', N'A01-00-000000', CAST(N'1992-01-01T00:00:00.000' AS DateTime), CAST(N'2023-01-04T00:00:00.000' AS DateTime), N'Gonzales', 8, N'Motorcycle', N'private', N'ABC-1234', NULL, NULL, 1, CAST(N'2023-01-03T22:47:23.843' AS DateTime), N'ELLA  SANTOS')
SET IDENTITY_INSERT [dbo].[tblticketcitation] OFF
GO
SET IDENTITY_INSERT [dbo].[tblviolation] ON 

INSERT [dbo].[tblviolation] ([vid], [vdesc], [vamount], [vuid]) VALUES (1, N'TRUCK BAN', CAST(500.00 AS Decimal(10, 2)), N'8c4a1c1e-db53-497f-be8e-a3af3dc48b5b')
INSERT [dbo].[tblviolation] ([vid], [vdesc], [vamount], [vuid]) VALUES (2, N'STALLED VEHICLE', CAST(300.00 AS Decimal(10, 2)), N'26f4629d-88dd-4749-99e7-d6f51ea84f5c')
INSERT [dbo].[tblviolation] ([vid], [vdesc], [vamount], [vuid]) VALUES (3, N'ILLEGAL PARKING / ILLEGAL TERMINAL', CAST(300.00 AS Decimal(10, 2)), N'5cd0c331-df3d-4abc-b571-1d9b3d891c67')
INSERT [dbo].[tblviolation] ([vid], [vdesc], [vamount], [vuid]) VALUES (4, N'OBSTRUCTION', CAST(100.00 AS Decimal(10, 2)), N'840cd04f-85a9-43f3-92c2-3b9cb929cb87')
INSERT [dbo].[tblviolation] ([vid], [vdesc], [vamount], [vuid]) VALUES (5, N'DISREGARDING TRAFFIC LIGHTS / SIGNS / OFFICER', CAST(100.00 AS Decimal(10, 2)), N'921a6dce-174f-4459-9b8c-4ddc6d1591f8')
INSERT [dbo].[tblviolation] ([vid], [vdesc], [vamount], [vuid]) VALUES (6, N'DRIVING UNDER THE INFLUENCE OF LIQUUR/DRUG', CAST(2000.00 AS Decimal(10, 2)), N'206bdf79-eca1-4784-9d77-7840bd97f4e1')
INSERT [dbo].[tblviolation] ([vid], [vdesc], [vamount], [vuid]) VALUES (7, N'DRIVING WITH INVALID/DELIQUENT DRIVER''S LICENSE', CAST(300.00 AS Decimal(10, 2)), N'e96b1907-a03a-456c-a8d3-1a39d9220e6a')
INSERT [dbo].[tblviolation] ([vid], [vdesc], [vamount], [vuid]) VALUES (8, N'DRIVING WITHOUT DRIVER''S LICENSE', CAST(750.00 AS Decimal(10, 2)), N'8457acf4-1f88-4883-8d0a-c4415c7dca95')
INSERT [dbo].[tblviolation] ([vid], [vdesc], [vamount], [vuid]) VALUES (9, N'UNREGISTERED MOTOR VEHICLE NO PLATE', CAST(1000.00 AS Decimal(10, 2)), N'99a26631-dc54-458e-92d6-b1ed09d769b8')
INSERT [dbo].[tblviolation] ([vid], [vdesc], [vamount], [vuid]) VALUES (10, N'DELIQUENT/INVALID/SUSPENDED REGISTRATION', CAST(500.00 AS Decimal(10, 2)), N'f1bb84b8-46f0-42ad-b4b1-d4f662dd1fd6')
INSERT [dbo].[tblviolation] ([vid], [vdesc], [vamount], [vuid]) VALUES (11, N'COLORUM OPERATION', CAST(2000.00 AS Decimal(10, 2)), N'96d0ec76-ba73-4fe8-8a4b-c54d13d69c02')
INSERT [dbo].[tblviolation] ([vid], [vdesc], [vamount], [vuid]) VALUES (12, N'INVALID/DELIQUENT FRANCHISE', CAST(500.00 AS Decimal(10, 2)), N'ddd3d0b1-3434-415d-b6d2-c5eef3789413')
INSERT [dbo].[tblviolation] ([vid], [vdesc], [vamount], [vuid]) VALUES (13, N'NO C.R/O.R CARRIED', CAST(300.00 AS Decimal(10, 2)), N'b1426382-0cad-4bb2-89b8-459d2ea38ec5')
INSERT [dbo].[tblviolation] ([vid], [vdesc], [vamount], [vuid]) VALUES (14, N'NO FRANCHISE/CPC/PA CARRIED', CAST(500.00 AS Decimal(10, 2)), N'2e8c9460-3771-483f-8f78-841712d5015d')
INSERT [dbo].[tblviolation] ([vid], [vdesc], [vamount], [vuid]) VALUES (15, N'OPERATING OUT-OF-LINE', CAST(1000.00 AS Decimal(10, 2)), N'5cc0e34a-f710-46fe-a170-8f2369dde305')
INSERT [dbo].[tblviolation] ([vid], [vdesc], [vamount], [vuid]) VALUES (16, N'TRIP CUTTING', CAST(500.00 AS Decimal(10, 2)), N'e50bcfac-7a06-4d51-b4d9-e4270590ed21')
INSERT [dbo].[tblviolation] ([vid], [vdesc], [vamount], [vuid]) VALUES (17, N'OVER LOADING', CAST(300.00 AS Decimal(10, 2)), N'f83b95fa-de71-4a4f-a0e4-045538d1d4e5')
INSERT [dbo].[tblviolation] ([vid], [vdesc], [vamount], [vuid]) VALUES (18, N'NO MAYOR''S PERMIT', CAST(500.00 AS Decimal(10, 2)), N'79aabd10-84be-46f5-8c9c-1726601b5d2e')
INSERT [dbo].[tblviolation] ([vid], [vdesc], [vamount], [vuid]) VALUES (19, N'WEARING SHORT/SLEEVELESS/SLIPPERS', CAST(200.00 AS Decimal(10, 2)), N'f1410187-1252-48a7-959d-4848a0843dd2')
INSERT [dbo].[tblviolation] ([vid], [vdesc], [vamount], [vuid]) VALUES (20, N'OPEN PIPE', CAST(500.00 AS Decimal(10, 2)), N'c310896f-df3e-4035-9e77-6c0b82b54175')
INSERT [dbo].[tblviolation] ([vid], [vdesc], [vamount], [vuid]) VALUES (21, N'NO ENTRY', CAST(500.00 AS Decimal(10, 2)), N'654dbe97-47fd-4140-a3ca-74fe8ea568b1')
INSERT [dbo].[tblviolation] ([vid], [vdesc], [vamount], [vuid]) VALUES (22, N'NO U-TURN', CAST(500.00 AS Decimal(10, 2)), N'9f18f77e-d700-483f-bc3f-aecf6c15780a')
INSERT [dbo].[tblviolation] ([vid], [vdesc], [vamount], [vuid]) VALUES (23, N'NO LEFT TURN', CAST(500.00 AS Decimal(10, 2)), N'14257a79-dbf3-4c21-930f-06992295dae7')
INSERT [dbo].[tblviolation] ([vid], [vdesc], [vamount], [vuid]) VALUES (24, N'NO RIGHT TURN', CAST(500.00 AS Decimal(10, 2)), N'1aa8398b-c2ff-4dcb-b82f-c644e0daa230')
INSERT [dbo].[tblviolation] ([vid], [vdesc], [vamount], [vuid]) VALUES (25, N'COUNTER FLOW', CAST(500.00 AS Decimal(10, 2)), N'de41db00-93fc-40bf-a55f-de4400c80c9f')
INSERT [dbo].[tblviolation] ([vid], [vdesc], [vamount], [vuid]) VALUES (26, N'BLOCKING PEDESTRIAN LANE', CAST(300.00 AS Decimal(10, 2)), N'dc0e5cbc-0ae3-4038-9524-4569a82b6bf9')
INSERT [dbo].[tblviolation] ([vid], [vdesc], [vamount], [vuid]) VALUES (27, N'ANNUAL FIX TAX', CAST(750.00 AS Decimal(10, 2)), N'78ec628a-7627-4060-9a4f-14e89ad00eec')
INSERT [dbo].[tblviolation] ([vid], [vdesc], [vamount], [vuid]) VALUES (28, N'STUDENT PERMIT', CAST(200.00 AS Decimal(10, 2)), N'c0aeeceb-6953-4f87-9a55-ac28ff114534')
INSERT [dbo].[tblviolation] ([vid], [vdesc], [vamount], [vuid]) VALUES (29, N'RECKLESS DRIVING', CAST(1000.00 AS Decimal(10, 2)), N'e290dffd-1ee8-4e04-a7ed-4bd60cd1b630')
INSERT [dbo].[tblviolation] ([vid], [vdesc], [vamount], [vuid]) VALUES (30, N'NO HELMET', CAST(100.00 AS Decimal(10, 2)), N'20386861-b623-4cb7-bcfb-08daf2e73b7f')
INSERT [dbo].[tblviolation] ([vid], [vdesc], [vamount], [vuid]) VALUES (31, N'BEATING THE RED LIGHT', CAST(300.00 AS Decimal(10, 2)), N'4637ad06-e519-4152-8baa-f4f673b7f72f')
INSERT [dbo].[tblviolation] ([vid], [vdesc], [vamount], [vuid]) VALUES (32, N'NO FACE SHIELD/MASK/ SOCIAL DISTANCING - 1ST', CAST(2500.00 AS Decimal(10, 2)), N'a27952ff-b9e3-4369-bbcb-408a8683f895')
INSERT [dbo].[tblviolation] ([vid], [vdesc], [vamount], [vuid]) VALUES (33, N'NO FACE SHIELD/MASK/ SOCIAL DISTANCING - 2ND', CAST(3500.00 AS Decimal(10, 2)), N'9d9c5710-6d86-4495-9cc5-68b9d34a9673')
INSERT [dbo].[tblviolation] ([vid], [vdesc], [vamount], [vuid]) VALUES (34, N'NO FACE SHIELD/MASK/ SOCIAL DISTANCING - 3RD', CAST(5000.00 AS Decimal(10, 2)), N'fa496261-f70c-4716-b4d2-0d64a7b68d7d')
INSERT [dbo].[tblviolation] ([vid], [vdesc], [vamount], [vuid]) VALUES (35, N'CITY ORDINANCE 2021-08 - 1ST', CAST(1000.00 AS Decimal(10, 2)), N'f9d09175-fb8c-4c39-a4b4-c35559e5643b')
INSERT [dbo].[tblviolation] ([vid], [vdesc], [vamount], [vuid]) VALUES (36, N'CITY ORDINANCE 2021-08 - 2ND', CAST(2000.00 AS Decimal(10, 2)), N'24ab98a9-3acb-4947-9713-469a531206a2')
INSERT [dbo].[tblviolation] ([vid], [vdesc], [vamount], [vuid]) VALUES (37, N'CITY ORDINANCE 2021-08 - 3RD', CAST(3000.00 AS Decimal(10, 2)), N'9d2367b1-a26d-45be-a9e2-862c35de7057')
INSERT [dbo].[tblviolation] ([vid], [vdesc], [vamount], [vuid]) VALUES (38, N'CITY ORDINANCE 2021-08 - 4TH-5TH', CAST(5000.00 AS Decimal(10, 2)), N'da150d12-7b37-42f2-a4bd-b70f3dadcaf7')
INSERT [dbo].[tblviolation] ([vid], [vdesc], [vamount], [vuid]) VALUES (39, N'CITY ORDINANCE 2021-09 - 1RD', CAST(2000.00 AS Decimal(10, 2)), N'47537a8e-751e-4a89-9a89-f5ecfbbbd820')
INSERT [dbo].[tblviolation] ([vid], [vdesc], [vamount], [vuid]) VALUES (40, N'CITY ORDINANCE 2021-09 - 2RD', CAST(3000.00 AS Decimal(10, 2)), N'07de6f77-0bea-43e4-afa0-c7788e9db1bf')
INSERT [dbo].[tblviolation] ([vid], [vdesc], [vamount], [vuid]) VALUES (41, N'CITY ORDINANCE 2021-09 - 3RD', CAST(5000.00 AS Decimal(10, 2)), N'4001a20b-992f-4f15-a9e7-32aa927bcb6d')
SET IDENTITY_INSERT [dbo].[tblviolation] OFF
GO
/****** Object:  StoredProcedure [dbo].[proc_clear_citation]    Script Date: 17/01/2023 8:18:28 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_clear_citation]
	@tid INT,
	@clearedby nvarchar(50)
AS
BEGIN
	SET NOCOUNT ON;

	update tblticketcitation set isSettled=1, sdate=GETDATE(), clearedby=@clearedby where tid= @tid;

END
GO
/****** Object:  StoredProcedure [dbo].[proc_delete_citation]    Script Date: 17/01/2023 8:18:28 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_delete_citation] 
	@id int	
AS
BEGIN

	update tblticketcitation set isDeleted=1, ddate = getdate() where tid=@id;
	

END
GO
/****** Object:  StoredProcedure [dbo].[proc_get_all_enforcer_account]    Script Date: 17/01/2023 8:18:28 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_get_all_enforcer_account]
	
AS
BEGIN
	SET NOCOUNT ON;

	select fname + ' ' + lname fullname, * from tblaccounts where acnttype = 'TENFORCER'


END
GO
/****** Object:  StoredProcedure [dbo].[proc_get_daily_report]    Script Date: 17/01/2023 8:18:28 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[proc_get_daily_report]
AS
BEGIN
	SET NOCOUNT ON;
	
	SELECT 
	   dateofapprehension,
	   count(*) as Record
	   from tblticketcitation
	   group by dateofapprehension

END
GO
/****** Object:  StoredProcedure [dbo].[proc_get_monthly_report]    Script Date: 17/01/2023 8:18:28 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_get_monthly_report]
AS
BEGIN
	SET NOCOUNT ON;
	
	select DATEADD(MONTH, DATEDIFF(MONTH, 0, dateofapprehension), 0) [year-month], convert(varchar(50),datename(month,dateofapprehension)) + ' - ' + convert(varchar(50),year(dateofapprehension))  [month-words], count(*) [count] from tblticketcitation
	group by DATEADD(MONTH, DATEDIFF(MONTH, 0, dateofapprehension), 0), convert(varchar(50),datename(month,dateofapprehension)) + ' - ' + convert(varchar(50),year(dateofapprehension))
	order by DATEADD(MONTH, DATEDIFF(MONTH, 0, dateofapprehension), 0)

END
GO
/****** Object:  StoredProcedure [dbo].[proc_get_pda_location]    Script Date: 17/01/2023 8:18:28 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_get_pda_location]
AS
BEGIN
	SET NOCOUNT ON;

	select * from tblAccounts where latitude is not null and longetude is not null and locdatetime is not null;

END
GO
/****** Object:  StoredProcedure [dbo].[proc_get_setteled_apprehensions]    Script Date: 17/01/2023 8:18:28 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_get_setteled_apprehensions] 
	
AS
BEGIN
	SET NOCOUNT ON;

	select 
		fname,
		address, 
		licenseno, 
		plateno, 
		case when COUNT(*)=1 then '<span class="label" style="background-color:#f25e5e">1st Offense</span>'
			when COUNT(*)=2 then '<span class="label" style="background-color:#f04f4f">2nd Offense</span>'
			when COUNT(*)=3 then '<span class="label" style="background-color:#d92929">3rd Offense</span>'
			else '<span class="label" style="background-color:#a31010">More than 3</span>'
		end Offenses,
		isSettled
		from tblticketcitation 
	where isSettled=1 and isDeleted is null
	group by fname,address, licenseno, plateno,isSettled;

END
GO
/****** Object:  StoredProcedure [dbo].[proc_get_statistics]    Script Date: 17/01/2023 8:18:28 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[proc_get_statistics]
AS
BEGIN
	SET NOCOUNT ON;

	select v.vdesc trafficviolation,vamount finesofviolation, count(*) violationtotalnumber from tblticketcitation t
		left join tblviolation v on v.vid=t.violationid where t.isDeleted is null group by v.vdesc, v.vamount

END
GO
/****** Object:  StoredProcedure [dbo].[proc_get_total_violators]    Script Date: 17/01/2023 8:18:28 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_get_total_violators]
	
AS
BEGIN
	SET NOCOUNT ON;

    Select 
		concat(
			'A total of ',
			count(*),
			' from ',
			(select top 1 convert(nvarchar, dateofapprehension, 107) from tblticketcitation where isDeleted is null order by dateofapprehension),
			', until the present.'
		) as [return]
	from tblticketcitation where isDeleted is null;

END
GO
/****** Object:  StoredProcedure [dbo].[proc_get_total_violators_list]    Script Date: 17/01/2023 8:18:28 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_get_total_violators_list]
AS
BEGIN
	SET NOCOUNT ON;
	
	Select 
		t.*,v.vdesc
	from tblticketcitation t
	left join tblviolation v on t.violationid=v.vid 
	where t.isDeleted is null;

END
GO
/****** Object:  StoredProcedure [dbo].[proc_get_total_violators_today]    Script Date: 17/01/2023 8:18:28 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_get_total_violators_today]
AS
BEGIN
	SET NOCOUNT ON;

	Select 
		concat(
			count(*),
			' citations overall from today.'
		) as [return]
	from tblticketcitation where dateofapprehension between dateadd(day,datediff(day,0,GETDATE()),0) and dateadd(day,datediff(day,-1,GETDATE()),0) and isDeleted is null;

END
GO
/****** Object:  StoredProcedure [dbo].[proc_get_total_violators_today_list]    Script Date: 17/01/2023 8:18:28 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[proc_get_total_violators_today_list]
AS
BEGIN
	SET NOCOUNT ON;

	Select t.*,v.vdesc
	from tblticketcitation t 
	left join tblviolation v on t.violationid = v.vid 
	where t.dateofapprehension between dateadd(day,datediff(day,0,GETDATE()),0) and dateadd(day,datediff(day,-1,GETDATE()),0) and t.isDeleted is null;

END
GO
/****** Object:  StoredProcedure [dbo].[proc_get_violation]    Script Date: 17/01/2023 8:18:28 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_get_violation]
	
AS
BEGIN
	SET NOCOUNT ON;

    select * from tblviolation;

END
GO
/****** Object:  StoredProcedure [dbo].[proc_get_weekly_report]    Script Date: 17/01/2023 8:18:28 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_get_weekly_report]
AS
BEGIN
	SET NOCOUNT ON;
	-- OLD
	--SELECT 
 --  CONVERT(varchar(50), (DATEADD(dd, @@DATEFIRST - DATEPART(dw, dateofapprehension) - 6, dateofapprehension)), 101) + ' - ' +
 --  CONVERT(varchar(50), (DATEADD(dd, @@DATEFIRST - DATEPART(dw, dateofapprehension), dateofapprehension)), 101) as [Week],

 --  count(*) as Record
 --  from tblticketcitation
 --  group by 
 --  CONVERT(varchar(50), (DATEADD(dd, @@DATEFIRST - DATEPART(dw, dateofapprehension) - 6, dateofapprehension)), 101) + ' - ' +
 --  CONVERT(varchar(50), (DATEADD(dd, @@DATEFIRST - DATEPART(dw, dateofapprehension), dateofapprehension)), 101)

 SELECT 
   CONVERT(varchar(50), (DATEADD(dd, @@DATEFIRST - DATEPART(dw, dateofapprehension) - 6, dateofapprehension)), 101) + ' - ' +
   CONVERT(varchar(50), (DATEADD(dd, @@DATEFIRST - DATEPART(dw, dateofapprehension), dateofapprehension)), 101) as [Week],
   count(*) as Record,
   DATEADD(MONTH, DATEDIFF(MONTH, 0, dateofapprehension), 0)
   from tblticketcitation
   group by 
   CONVERT(varchar(50), (DATEADD(dd, @@DATEFIRST - DATEPART(dw, dateofapprehension) - 6, dateofapprehension)), 101) + ' - ' +
   CONVERT(varchar(50), (DATEADD(dd, @@DATEFIRST - DATEPART(dw, dateofapprehension), dateofapprehension)), 101),
   DATEADD(MONTH, DATEDIFF(MONTH, 0, dateofapprehension), 0)
   order by DATEADD(MONTH, DATEDIFF(MONTH, 0, dateofapprehension), 0)

END
GO
/****** Object:  StoredProcedure [dbo].[proc_get_yearly_report]    Script Date: 17/01/2023 8:18:28 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[proc_get_yearly_report]
AS
BEGIN
	SET NOCOUNT ON;
	
	select 
	year(dateofapprehension) [year],
	count(*) [count]
	from tblticketcitation
	group by year(dateofapprehension)


END
GO
/****** Object:  StoredProcedure [dbo].[proc_insert_citation]    Script Date: 17/01/2023 8:18:28 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_insert_citation] 
			@fname nvarchar(50),
            @address nvarchar(150),
            @licneseno nvarchar(50),
            @birthdate nvarchar(50),
            @dateofapprehension nvarchar(50),
            @placeofviolation nvarchar(250),
            @violationid int,
            @vehicletype nvarchar(50),
            @classification nvarchar(50),
            @plateno nvarchar(50)
AS
BEGIN
	SET NOCOUNT ON;

    select * from tblticketcitation where isDeleted is null;

	insert into tblticketcitation (
		fname,
		[address],
		licenseno,
		birthdate,
		dateofapprehension,
		placeofviolation,
		violationid,
		vehicletype,
		[classification],
		plateno
	)
	values(
		@fname,
        @address,
        @licneseno,
        @birthdate,
        @dateofapprehension,
        @placeofviolation,
        @violationid,
        @vehicletype,
        @classification,
        @plateno
	)

END
GO
/****** Object:  StoredProcedure [dbo].[proc_insert_ticketcitation]    Script Date: 17/01/2023 8:18:28 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_insert_ticketcitation]
	@tid int,
	@fname nvarchar(50),
	@address nvarchar(150),
	@licenseno nvarchar(50),
	@vehicletype nvarchar(50),
	@placeofviolation nvarchar(250),
	@violationid int
AS
BEGIN
	SET NOCOUNT ON;

	select * from tblticketcitation where isDeleted is null;

	update tblticketcitation set
		fname=@fname,
		[address]=@address,
		[licenseno]=@licenseno,
		[vehicletype]=@vehicletype,
		[placeofviolation]=@placeofviolation,
		[violationid]=@violationid
	where tid=@tid

END
GO
/****** Object:  StoredProcedure [dbo].[proc_update_account]    Script Date: 17/01/2023 8:18:28 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[proc_update_account]
	@acntid int,
	@fname nvarchar(50),
	@mname nvarchar(50),
	@lname nvarchar(50),
	@username nvarchar(50),
	@password nvarchar(50)
AS
BEGIN
	SET NOCOUNT ON;

	update tblAccounts set fname=@fname, mname=@mname, lname=@lname, username=@username, password=@password where acntid=@acntid;

END
GO
/****** Object:  StoredProcedure [dbo].[proc_update_confiscated]    Script Date: 17/01/2023 8:18:28 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_update_confiscated]
	@name nvarchar(50),
	@licenseno nvarchar(50),
	@dateofapprehension datetime,
	@platenumber nvarchar(50),
	@violationid int,
	@editid int
AS
BEGIN
	SET NOCOUNT ON;
	
	update tblticketcitation 
	set 
		fname=@name, 
		licenseno=@licenseno, 
		dateofapprehension=@dateofapprehension ,
		plateno=@platenumber,
		violationid=@violationid
	where tid = @editid

END
GO
/****** Object:  StoredProcedure [dbo].[proc_update_confiscated_clerk]    Script Date: 17/01/2023 8:18:28 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_update_confiscated_clerk]
	@name nvarchar(50),
	@licenseno nvarchar(50),
	@dateofapprehension datetime,
	@platenumber nvarchar(50),
	@violationid int,
	@editid int
AS
BEGIN
	SET NOCOUNT ON;
	
	update tblticketcitation 
	set 
		fname=@name, 
		licenseno=@licenseno, 
		dateofapprehension=@dateofapprehension ,
		plateno=@platenumber,
		violationid=@violationid
	where tid = @editid

END
GO
/****** Object:  StoredProcedure [dbo].[proc_update_impounded_vehicle]    Script Date: 17/01/2023 8:18:28 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_update_impounded_vehicle]
	@name nvarchar(50),
	--@licenseno nvarchar(50),
	@dateofapprehension datetime,
	@vehicle nvarchar(50),
	@violationid int,
	@editid int
AS
BEGIN
	SET NOCOUNT ON;
	
	update tblticketcitation 
	set 
		fname=@name, 
		--licenseno=@licenseno, 
		dateofapprehension=@dateofapprehension ,
		vehicletype=@vehicle,
		violationid=@violationid
	where tid = @editid

END
GO
/****** Object:  StoredProcedure [dbo].[proc_update_user_location]    Script Date: 17/01/2023 8:18:28 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_update_user_location]
	@uid nvarchar(50),
	@lat nvarchar(50),
	@long nvarchar(50)
AS
BEGIN
	SET NOCOUNT ON;

	update tblAccounts set latitude=null, longetude= null, locdatetime = null;

	update tblAccounts set latitude=@lat, longetude= @long, locdatetime = GETDATE() where uid=@uid;

END
GO
/****** Object:  StoredProcedure [dbo].[prop_get_compound]    Script Date: 17/01/2023 8:18:28 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[prop_get_compound]
AS
BEGIN
	SET NOCOUNT ON;

	select * from tblCompound;
	
END
GO
/****** Object:  StoredProcedure [dbo].[prop_get_confiscated_license]    Script Date: 17/01/2023 8:18:28 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[prop_get_confiscated_license]
	
AS
BEGIN
	SET NOCOUNT ON;
	
	select 
		c.tid,
		c.fname,
		v.vdesc violation, 
		c.plateno,
		c.licenseno, 
		c.dateofapprehension, 
		c.vehicletype, 
		c.isSettled, 
		v.vid,
		case when convert(date, getdate()) = convert(date,c.dateofapprehension) then '<span class="label label-warning">New Pending</span>' 
			else '<span class="label label-danger">Pending</span>'
		end PendingStatus
	from tblticketcitation c
	left join tblviolation v on c.violationid=v.vid
	where isDeleted is null
	order by dateofapprehension desc;

END
GO
/****** Object:  StoredProcedure [dbo].[prop_get_current_user]    Script Date: 17/01/2023 8:18:28 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[prop_get_current_user]
	@acntuid varchar(50)
AS
BEGIN
	SET NOCOUNT ON;
	
	select fname + '  '+ lname as fullname, acnttype,uid from tblAccounts where uid=cast(@acntuid as uniqueidentifier); 

END
GO
/****** Object:  StoredProcedure [dbo].[prop_get_daily_report]    Script Date: 17/01/2023 8:18:28 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[prop_get_daily_report]
	
AS
BEGIN
	SET NOCOUNT ON;
	
	select c.tid,c.fname,c.address,c.licenseno, c.vehicletype,c.placeofviolation,v.vdesc,c.violationid from tblticketcitation c
		left join tblviolation v on c.violationid=v.vid where c.dateofapprehension between dateadd(day,datediff(day,0,GETDATE()),0) and dateadd(day,datediff(day,-1,GETDATE()),0) and c.isDeleted is null;

END
GO
/****** Object:  StoredProcedure [dbo].[prop_get_menu]    Script Date: 17/01/2023 8:18:28 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[prop_get_menu]
	@acnttype nvarchar(50)
AS
BEGIN
	SET NOCOUNT ON;
	
	select Text,icon,tagid,action,controller from tblmenu where acnttype=@acnttype;

END
GO
/****** Object:  StoredProcedure [dbo].[prop_get_record_by_plateno]    Script Date: 17/01/2023 8:18:28 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[prop_get_record_by_plateno] 
	@platenumber nvarchar(50)
AS
BEGIN
	SET NOCOUNT ON;

	select c.*, v.vdesc from tblticketcitation c
	left join tblviolation v on c.violationid= v.vid
	where upper(plateno) like upper(@platenumber)
	
END
GO
/****** Object:  StoredProcedure [dbo].[prop_get_report]    Script Date: 17/01/2023 8:18:28 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[prop_get_report]
	
AS
BEGIN
	SET NOCOUNT ON;
	
	select c.tid,c.fname,c.address,c.licenseno, c.vehicletype,c.placeofviolation,v.vdesc,c.violationid from tblticketcitation c
		left join tblviolation v on c.violationid=v.vid where c.isDeleted is null;

END
GO
/****** Object:  StoredProcedure [dbo].[prop_insert_account]    Script Date: 17/01/2023 8:18:28 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[prop_insert_account] 
	@fname nvarchar(50),
	@mname nvarchar(50),
	@lname nvarchar(50),
	@username nvarchar(50),
	@password nvarchar(50),
	@acnttype nvarchar(50)
AS
BEGIN
	SET NOCOUNT ON;

	insert into tblAccounts(
		fname,
		mname,
		lname,
		username,
		[password],
		acnttype,
		[uid]
	)
	values(
		upper(@fname),
		upper(@mname),
		upper(@lname),
		@username,
		@password,
		@acnttype,
		newid()
	)
	
END
GO
/****** Object:  StoredProcedure [dbo].[prop_login_user]    Script Date: 17/01/2023 8:18:28 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[prop_login_user]
	@username nvarchar(50),
	@password nvarchar(50),
	@acnttype nvarchar(50)
AS
BEGIN
	SET NOCOUNT ON;
	
	select * from tblAccounts where username =@username and password =@password and acnttype=@acnttype;

END
GO
USE [master]
GO
ALTER DATABASE [CAPSTONEDB] SET  READ_WRITE 
GO
