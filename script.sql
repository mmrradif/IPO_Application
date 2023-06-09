USE [master]
GO
/****** Object:  Database [IPOApplication]    Script Date: 4/19/2023 9:46:00 PM ******/
CREATE DATABASE [IPOApplication]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'IPOApplication', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\IPOApplication.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'IPOApplication_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\IPOApplication_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [IPOApplication] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [IPOApplication].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [IPOApplication] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [IPOApplication] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [IPOApplication] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [IPOApplication] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [IPOApplication] SET ARITHABORT OFF 
GO
ALTER DATABASE [IPOApplication] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [IPOApplication] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [IPOApplication] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [IPOApplication] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [IPOApplication] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [IPOApplication] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [IPOApplication] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [IPOApplication] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [IPOApplication] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [IPOApplication] SET  ENABLE_BROKER 
GO
ALTER DATABASE [IPOApplication] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [IPOApplication] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [IPOApplication] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [IPOApplication] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [IPOApplication] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [IPOApplication] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [IPOApplication] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [IPOApplication] SET RECOVERY FULL 
GO
ALTER DATABASE [IPOApplication] SET  MULTI_USER 
GO
ALTER DATABASE [IPOApplication] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [IPOApplication] SET DB_CHAINING OFF 
GO
ALTER DATABASE [IPOApplication] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [IPOApplication] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [IPOApplication] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [IPOApplication] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'IPOApplication', N'ON'
GO
ALTER DATABASE [IPOApplication] SET QUERY_STORE = OFF
GO
USE [IPOApplication]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 4/19/2023 9:46:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 4/19/2023 9:46:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 4/19/2023 9:46:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 4/19/2023 9:46:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 4/19/2023 9:46:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](128) NOT NULL,
	[ProviderKey] [nvarchar](128) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 4/19/2023 9:46:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](450) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 4/19/2023 9:46:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](450) NOT NULL,
	[FullName] [nvarchar](max) NOT NULL,
	[UserName] [nvarchar](256) NULL,
	[NormalizedUserName] [nvarchar](256) NULL,
	[Email] [nvarchar](256) NULL,
	[NormalizedEmail] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 4/19/2023 9:46:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserTokens](
	[UserId] [nvarchar](450) NOT NULL,
	[LoginProvider] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](128) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[IPO_Application]    Script Date: 4/19/2023 9:46:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IPO_Application](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](max) NOT NULL,
	[InstrumentId] [int] NOT NULL,
	[IsApproved] [int] NOT NULL,
	[IsExecuted] [int] NOT NULL,
	[ApplicationAmount] [float] NOT NULL,
	[CreateDate] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_IPO_Application] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[IPO_Information]    Script Date: 4/19/2023 9:46:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IPO_Information](
	[InstrumentId] [int] IDENTITY(1,1) NOT NULL,
	[InstrumentName] [nvarchar](50) NOT NULL,
	[Facevalue] [float] NOT NULL,
	[Premium] [float] NOT NULL,
	[IPORate] [float] NOT NULL,
	[MinimumAmount] [float] NOT NULL,
	[IPOStartDate] [date] NOT NULL,
	[IPOEndDate] [date] NOT NULL,
 CONSTRAINT [PK_IPO_Information] PRIMARY KEY CLUSTERED 
(
	[InstrumentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230419131817_Final Migration', N'6.0.16')
GO
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'4384c3dc-89df-4e90-84ad-f504c8c2f13d', N'super admin', N'SUPER ADMIN', N'810e9a54-75e1-4a07-ae57-bc25041a75f2')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'a50c8ce6-f31a-432a-b4e9-c8ef0dc6821a', N'admin', N'ADMIN', N'6c766fc7-1ab1-4a6a-ba5e-c97ce0651052')
GO
SET IDENTITY_INSERT [dbo].[AspNetUserClaims] ON 

INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (1, N'12d7b217-3188-4e31-ac84-9a43d0770b6d', N'Create Claim', N'true')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (2, N'12d7b217-3188-4e31-ac84-9a43d0770b6d', N'Edit Claim', N'false')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (3, N'12d7b217-3188-4e31-ac84-9a43d0770b6d', N'Delete Claim', N'false')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (4, N'5116f60b-cf5a-4ae6-b0b9-c89c03e3877f', N'Create Claim', N'false')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (5, N'5116f60b-cf5a-4ae6-b0b9-c89c03e3877f', N'Edit Claim', N'true')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (6, N'5116f60b-cf5a-4ae6-b0b9-c89c03e3877f', N'Delete Claim', N'false')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (7, N'805cb910-c9a2-4342-a341-840f2c34f6b5', N'Create Claim', N'false')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (8, N'805cb910-c9a2-4342-a341-840f2c34f6b5', N'Edit Claim', N'false')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (9, N'805cb910-c9a2-4342-a341-840f2c34f6b5', N'Delete Claim', N'true')
SET IDENTITY_INSERT [dbo].[AspNetUserClaims] OFF
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'3165df7c-a2a7-4a30-9201-12c2bfdb68fa', N'4384c3dc-89df-4e90-84ad-f504c8c2f13d')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'12d7b217-3188-4e31-ac84-9a43d0770b6d', N'a50c8ce6-f31a-432a-b4e9-c8ef0dc6821a')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'5116f60b-cf5a-4ae6-b0b9-c89c03e3877f', N'a50c8ce6-f31a-432a-b4e9-c8ef0dc6821a')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'805cb910-c9a2-4342-a341-840f2c34f6b5', N'a50c8ce6-f31a-432a-b4e9-c8ef0dc6821a')
GO
INSERT [dbo].[AspNetUsers] ([Id], [FullName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'12d7b217-3188-4e31-ac84-9a43d0770b6d', N'Md. Rakib Rayhan', N'rakib', N'RAKIB', N'rakib@gmail.com', N'RAKIB@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEBfImTqCursICkMYXzopv9DvMmyR5vHWgnrKQRALhFmuJOS8U0lKGlIvw4ggLXWjPw==', N'AS6S6IN44GIZ3SBBHJCBUFILKECKRS2M', N'b5f9b2eb-8307-4ab6-87e8-368a6a5c0f33', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FullName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'3165df7c-a2a7-4a30-9201-12c2bfdb68fa', N'Md. Mahbur Rahman', N'mahbur', N'MAHBUR', N'mmrradif@gmail.com', N'MMRRADIF@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEMfCF779CA18TRmfOmhALgofW0UbBoxBcE77yMQcPD+3fXnIsnl/rwyRrMKpJcBl8w==', N'L5MKS3BK36RHAZIJGIX6V6KFC4O2MRQV', N'61f4a289-478a-499e-8195-e628893e47ea', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FullName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'5116f60b-cf5a-4ae6-b0b9-c89c03e3877f', N'Md. Sakib Sanu', N'sakib', N'SAKIB', N'sakib@gmail.com', N'SAKIB@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEAmGzAlryuJMhyp/EDJ+eBuAqx6r0NauRgt7QUDBnXwl/qVqnkda+FCrKq9SKLg2Hg==', N'V36HN5WM456ZUIE2I7OD4QBFAPTOA7WP', N'9bbea1d1-6fdf-49f7-95de-0f697bb7b18b', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FullName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'805cb910-c9a2-4342-a341-840f2c34f6b5', N'Md. Habib Ahmed', N'habib', N'HABIB', N'habib@gmail.com', N'HABIB@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEHL3nBUBZkm2B7yF+6mta7vPDA7iRcivJWdGKdueaFlSvOtho/mY6bWmmvkTBhA0eA==', N'HWK63VDZYCVWT6ICGLSKUN3GSSSTFSDX', N'aa2f1114-180b-4213-be8f-aba7623e4d37', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FullName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'9c2fc028-fb2c-4dd7-bb43-ef45b0c46335', N'Miss Dina Akter', N'dina', N'DINA', N'dina@gmail.com', N'DINA@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEMq5+YDRGxKQjyZrYZ2O8UvWQapMDOd1d1W6yPyD9j1+XZK2f/kE+szT1mRh86cNJw==', N'BVNMDJQTWM7HHIV7P6R3H3LSHFSD5DDY', N'6da92a0f-333f-4028-a60c-60a587987acf', NULL, 0, 0, NULL, 1, 0)
GO
SET IDENTITY_INSERT [dbo].[IPO_Application] ON 

INSERT [dbo].[IPO_Application] ([Id], [UserId], [InstrumentId], [IsApproved], [IsExecuted], [ApplicationAmount], [CreateDate]) VALUES (1, N'9c2fc028-fb2c-4dd7-bb43-ef45b0c46335', 1, 1, 1, 10000, CAST(N'2023-04-19T21:24:13.2136121' AS DateTime2))
INSERT [dbo].[IPO_Application] ([Id], [UserId], [InstrumentId], [IsApproved], [IsExecuted], [ApplicationAmount], [CreateDate]) VALUES (2, N'9c2fc028-fb2c-4dd7-bb43-ef45b0c46335', 2, 1, 1, 10000, CAST(N'2023-04-19T21:25:22.3253713' AS DateTime2))
INSERT [dbo].[IPO_Application] ([Id], [UserId], [InstrumentId], [IsApproved], [IsExecuted], [ApplicationAmount], [CreateDate]) VALUES (3, N'9c2fc028-fb2c-4dd7-bb43-ef45b0c46335', 3, 0, 0, 10000, CAST(N'2023-04-19T21:29:17.5286140' AS DateTime2))
SET IDENTITY_INSERT [dbo].[IPO_Application] OFF
GO
SET IDENTITY_INSERT [dbo].[IPO_Information] ON 

INSERT [dbo].[IPO_Information] ([InstrumentId], [InstrumentName], [Facevalue], [Premium], [IPORate], [MinimumAmount], [IPOStartDate], [IPOEndDate]) VALUES (1, N'JHRML', 20, 0, 20, 10000, CAST(N'2023-04-17' AS Date), CAST(N'2023-04-27' AS Date))
INSERT [dbo].[IPO_Information] ([InstrumentId], [InstrumentName], [Facevalue], [Premium], [IPORate], [MinimumAmount], [IPOStartDate], [IPOEndDate]) VALUES (2, N'ICICL', 10, 0, 10, 10000, CAST(N'2023-04-17' AS Date), CAST(N'2023-04-24' AS Date))
INSERT [dbo].[IPO_Information] ([InstrumentId], [InstrumentName], [Facevalue], [Premium], [IPORate], [MinimumAmount], [IPOStartDate], [IPOEndDate]) VALUES (3, N'CLICL', 10, 0, 10, 10000, CAST(N'2023-04-17' AS Date), CAST(N'2023-05-01' AS Date))
SET IDENTITY_INSERT [dbo].[IPO_Information] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetRoleClaims_RoleId]    Script Date: 4/19/2023 9:46:01 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetRoleClaims_RoleId] ON [dbo].[AspNetRoleClaims]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [RoleNameIndex]    Script Date: 4/19/2023 9:46:01 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[NormalizedName] ASC
)
WHERE ([NormalizedName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserClaims_UserId]    Script Date: 4/19/2023 9:46:01 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserClaims_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserLogins_UserId]    Script Date: 4/19/2023 9:46:01 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserLogins_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserRoles_RoleId]    Script Date: 4/19/2023 9:46:01 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserRoles_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [EmailIndex]    Script Date: 4/19/2023 9:46:01 PM ******/
CREATE NONCLUSTERED INDEX [EmailIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedEmail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UserNameIndex]    Script Date: 4/19/2023 9:46:01 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedUserName] ASC
)
WHERE ([NormalizedUserName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_IPO_Application_InstrumentId]    Script Date: 4/19/2023 9:46:01 PM ******/
CREATE NONCLUSTERED INDEX [IX_IPO_Application_InstrumentId] ON [dbo].[IPO_Application]
(
	[InstrumentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AspNetRoleClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetRoleClaims] CHECK CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserTokens]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserTokens] CHECK CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[IPO_Application]  WITH CHECK ADD  CONSTRAINT [FK_IPO_Application_IPO_Information_InstrumentId] FOREIGN KEY([InstrumentId])
REFERENCES [dbo].[IPO_Information] ([InstrumentId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[IPO_Application] CHECK CONSTRAINT [FK_IPO_Application_IPO_Information_InstrumentId]
GO
USE [master]
GO
ALTER DATABASE [IPOApplication] SET  READ_WRITE 
GO
