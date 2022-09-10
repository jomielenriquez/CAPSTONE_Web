USE [master]
GO
/****** Object:  Database [CAPSTONEDB]    Script Date: 9/10/2022 10:02:48 PM ******/
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
/****** Object:  Table [dbo].[tblAccounts]    Script Date: 9/10/2022 10:02:49 PM ******/
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
/****** Object:  Table [dbo].[tblmenu]    Script Date: 9/10/2022 10:02:49 PM ******/
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
SET IDENTITY_INSERT [dbo].[tblAccounts] ON 

INSERT [dbo].[tblAccounts] ([acntid], [fname], [mname], [lname], [uid], [acnttype], [username], [password]) VALUES (1, N'Admin', N'Admin', N'Admin', N'90e759a2-d36a-4f38-aa05-8905a816d34d', N'ADMIN', N'Admin', N'Admin')
INSERT [dbo].[tblAccounts] ([acntid], [fname], [mname], [lname], [uid], [acnttype], [username], [password]) VALUES (2, N'clerk', N'clerk', N'clerk', N'adb800a2-5ae9-433c-aae5-7404d5759e50', N'CLERK', N'clerk', N'clerk')
INSERT [dbo].[tblAccounts] ([acntid], [fname], [mname], [lname], [uid], [acnttype], [username], [password]) VALUES (3, N'clerk', N'clerk', N'clerk', N'17eebd4c-0f07-4273-ab93-25e803a027a4', N'TENFORCER', N'clerk', N'clerk')
SET IDENTITY_INSERT [dbo].[tblAccounts] OFF
GO
SET IDENTITY_INSERT [dbo].[tblmenu] ON 

INSERT [dbo].[tblmenu] ([id], [Text], [acnttype], [action], [controller], [icon], [tagid]) VALUES (1, N'Dashboard', N'ADMIN', N'', N'', N'fa-dashboard', N'tg-dashboard')
INSERT [dbo].[tblmenu] ([id], [Text], [acnttype], [action], [controller], [icon], [tagid]) VALUES (2, N'Reports', N'ADMIN', N'', N'', N'fa-list-alt', N'tg-reports')
INSERT [dbo].[tblmenu] ([id], [Text], [acnttype], [action], [controller], [icon], [tagid]) VALUES (3, N'About', N'ADMIN', N'', N'', N'fa-info', N'tg-about')
SET IDENTITY_INSERT [dbo].[tblmenu] OFF
GO
/****** Object:  StoredProcedure [dbo].[prop_get_current_user]    Script Date: 9/10/2022 10:02:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[prop_get_current_user]
	@acntuid varchar(50)
AS
BEGIN
	SET NOCOUNT ON;
	
	select fname + '  '+ lname as fullname, acnttype from tblAccounts where uid=cast(@acntuid as uniqueidentifier); 

END
GO
/****** Object:  StoredProcedure [dbo].[prop_get_menu]    Script Date: 9/10/2022 10:02:49 PM ******/
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
/****** Object:  StoredProcedure [dbo].[prop_login_user]    Script Date: 9/10/2022 10:02:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[prop_login_user]
	@username nvarchar(50),
	@password nvarchar(50)
AS
BEGIN
	SET NOCOUNT ON;
	
	select * from tblAccounts where username =@username and password =@password

END
GO
USE [master]
GO
ALTER DATABASE [CAPSTONEDB] SET  READ_WRITE 
GO
