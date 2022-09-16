USE [master]
GO
/****** Object:  Database [CAPSTONEDB]    Script Date: 9/16/2022 11:56:04 PM ******/
CREATE DATABASE [CAPSTONEDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'CAPSTONEDB', FILENAME = N'D:\DB\Data\CAPSTONEDB.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'CAPSTONEDB_log', FILENAME = N'D:\DB\Log\CAPSTONEDB_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
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
/****** Object:  Table [dbo].[tblAccounts]    Script Date: 9/16/2022 11:56:04 PM ******/
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
 CONSTRAINT [PK_tblAccounts] PRIMARY KEY CLUSTERED 
(
	[acntid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblmenu]    Script Date: 9/16/2022 11:56:04 PM ******/
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
/****** Object:  Table [dbo].[tblticketcitation]    Script Date: 9/16/2022 11:56:04 PM ******/
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
 CONSTRAINT [PK_tblticketcitation] PRIMARY KEY CLUSTERED 
(
	[tid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblviolation]    Script Date: 9/16/2022 11:56:04 PM ******/
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

INSERT [dbo].[tblAccounts] ([acntid], [fname], [mname], [lname], [uid], [acnttype], [username], [password]) VALUES (1, N'Jomiel', N'Admin', N'Enriquez', N'90e759a2-d36a-4f38-aa05-8905a816d34d', N'ADMIN', N'Admin', N'Admin')
INSERT [dbo].[tblAccounts] ([acntid], [fname], [mname], [lname], [uid], [acnttype], [username], [password]) VALUES (2, N'clerk', N'clerk', N'clerk', N'adb800a2-5ae9-433c-aae5-7404d5759e50', N'CLERK', N'clerk', N'clerk')
INSERT [dbo].[tblAccounts] ([acntid], [fname], [mname], [lname], [uid], [acnttype], [username], [password]) VALUES (3, N'enforer', N'enforcer', N'enforcer', N'17eebd4c-0f07-4273-ab93-25e803a027a4', N'TENFORCER', N'enforcer', N'enforcer')
SET IDENTITY_INSERT [dbo].[tblAccounts] OFF
GO
SET IDENTITY_INSERT [dbo].[tblmenu] ON 

INSERT [dbo].[tblmenu] ([id], [Text], [acnttype], [action], [controller], [icon], [tagid]) VALUES (1, N'Dashboard', N'ADMIN', N'Dashboard', N'Systems', N'fa-dashboard', N'tg-dashboard')
INSERT [dbo].[tblmenu] ([id], [Text], [acnttype], [action], [controller], [icon], [tagid]) VALUES (2, N'Reports', N'ADMIN', N'Reports', N'Systems', N'fa-list-alt', N'tg-reports')
INSERT [dbo].[tblmenu] ([id], [Text], [acnttype], [action], [controller], [icon], [tagid]) VALUES (3, N'About', N'ADMIN', N'About', N'Systems', N'fa-info', N'tg-about')
SET IDENTITY_INSERT [dbo].[tblmenu] OFF
GO
SET IDENTITY_INSERT [dbo].[tblticketcitation] ON 

INSERT [dbo].[tblticketcitation] ([tid], [fname], [address], [licenseno], [birthdate], [dateofapprehension], [placeofviolation], [violationid], [vehicletype], [classification], [plateno]) VALUES (1, N'Jomiel Enriquez', N'Reaville Brgy. 7 Tanauan City Batangas', N'TEST 123', CAST(N'1998-02-25T00:00:00.000' AS DateTime), CAST(N'2022-01-01T00:00:00.000' AS DateTime), N'brgy 1', 1, N'SUV', NULL, N'TEST 123')
SET IDENTITY_INSERT [dbo].[tblticketcitation] OFF
GO
SET IDENTITY_INSERT [dbo].[tblviolation] ON 

INSERT [dbo].[tblviolation] ([vid], [vdesc], [vamount], [vuid]) VALUES (1, N'TRUCK BAN', CAST(500.00 AS Decimal(10, 2)), N'8c4a1c1e-db53-497f-be8e-a3af3dc48b5b')
INSERT [dbo].[tblviolation] ([vid], [vdesc], [vamount], [vuid]) VALUES (2, N'STALLED VEHICLE', CAST(300.00 AS Decimal(10, 2)), N'26f4629d-88dd-4749-99e7-d6f51ea84f5c')
INSERT [dbo].[tblviolation] ([vid], [vdesc], [vamount], [vuid]) VALUES (3, N'ILLEGAL PARKING / ILLEGAL TERMINAL', CAST(300.00 AS Decimal(10, 2)), N'5cd0c331-df3d-4abc-b571-1d9b3d891c67')
INSERT [dbo].[tblviolation] ([vid], [vdesc], [vamount], [vuid]) VALUES (4, N'OBSTRYCTUIB', CAST(100.00 AS Decimal(10, 2)), N'840cd04f-85a9-43f3-92c2-3b9cb929cb87')
INSERT [dbo].[tblviolation] ([vid], [vdesc], [vamount], [vuid]) VALUES (5, N'DISREGARDING TRAFFIC LIGHTS / SIGNS / OFFICER', CAST(100.00 AS Decimal(10, 2)), N'921a6dce-174f-4459-9b8c-4ddc6d1591f8')
INSERT [dbo].[tblviolation] ([vid], [vdesc], [vamount], [vuid]) VALUES (6, N'DRIVING UNDER THE INFLUENCE OF LIQUUR/DRUG', CAST(2000.00 AS Decimal(10, 2)), N'206bdf79-eca1-4784-9d77-7840bd97f4e1')
INSERT [dbo].[tblviolation] ([vid], [vdesc], [vamount], [vuid]) VALUES (7, N'DRIVING WITH INVALID/DELIQUENT DRIVER''S LICENSE', CAST(300.00 AS Decimal(10, 2)), N'e96b1907-a03a-456c-a8d3-1a39d9220e6a')
INSERT [dbo].[tblviolation] ([vid], [vdesc], [vamount], [vuid]) VALUES (8, N'DRVING WITHOUT DRIVER''S LICENSE', CAST(750.00 AS Decimal(10, 2)), N'8457acf4-1f88-4883-8d0a-c4415c7dca95')
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
/****** Object:  StoredProcedure [dbo].[proc_get_total_violators]    Script Date: 9/16/2022 11:56:04 PM ******/
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
			(select top 1 convert(nvarchar, dateofapprehension, 107) from tblticketcitation order by dateofapprehension desc),
			', until the present.'
		) as [return]
	from tblticketcitation;

END
GO
/****** Object:  StoredProcedure [dbo].[proc_get_total_violators_today]    Script Date: 9/16/2022 11:56:04 PM ******/
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
	from tblticketcitation where dateofapprehension between dateadd(day,datediff(day,0,GETDATE()),0) and dateadd(day,datediff(day,-1,GETDATE()),0);

END
GO
/****** Object:  StoredProcedure [dbo].[prop_get_current_user]    Script Date: 9/16/2022 11:56:04 PM ******/
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
/****** Object:  StoredProcedure [dbo].[prop_get_menu]    Script Date: 9/16/2022 11:56:04 PM ******/
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
/****** Object:  StoredProcedure [dbo].[prop_get_report]    Script Date: 9/16/2022 11:56:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[prop_get_report]
	
AS
BEGIN
	SET NOCOUNT ON;
	
	select c.tid,c.fname,c.address,c.licenseno, c.vehicletype,c.placeofviolation,v.vdesc from tblticketcitation c
		left join tblviolation v on c.violationid=v.vid;

END
GO
/****** Object:  StoredProcedure [dbo].[prop_login_user]    Script Date: 9/16/2022 11:56:04 PM ******/
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
