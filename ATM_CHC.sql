

/* *********************************************************************************************************************************** */
/*                             Change the CREATE DATABASE FILENAME to suit your server installation                                    */
/* *********************************************************************************************************************************** */

USE [master]
GO
/****** Object:  Database [ATM_CHC]    Script Date: 25/03/2020 7:50:20 PM ******/
CREATE DATABASE [ATM_CHC]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ATM_CHC', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\ATM_CHC.mdf' , SIZE = 8192KB , MAXSIZE = 32768KB , FILEGROWTH = 8192KB )
 LOG ON 
( NAME = N'ATM_CHC_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\ATM_CHC_log.ldf' , SIZE = 8192KB , MAXSIZE = 32768KB , FILEGROWTH = 8192KB )
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ATM_CHC].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ATM_CHC] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ATM_CHC] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ATM_CHC] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ATM_CHC] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ATM_CHC] SET ARITHABORT OFF 
GO
ALTER DATABASE [ATM_CHC] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [ATM_CHC] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ATM_CHC] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ATM_CHC] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ATM_CHC] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ATM_CHC] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ATM_CHC] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ATM_CHC] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ATM_CHC] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ATM_CHC] SET  DISABLE_BROKER 
GO
ALTER DATABASE [ATM_CHC] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ATM_CHC] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ATM_CHC] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ATM_CHC] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ATM_CHC] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ATM_CHC] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ATM_CHC] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ATM_CHC] SET RECOVERY FULL 
GO
ALTER DATABASE [ATM_CHC] SET  MULTI_USER 
GO
ALTER DATABASE [ATM_CHC] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ATM_CHC] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ATM_CHC] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ATM_CHC] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [ATM_CHC] SET DELAYED_DURABILITY = DISABLED 
GO
USE [ATM_CHC]
GO
/****** Object:  Table [dbo].[TransDetail]    Script Date: 25/03/2020 7:50:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TransDetail](
	[Id] [int] IDENTITY(400001,1) NOT FOR REPLICATION NOT NULL,
	[SiteID] [int] NOT NULL,
	[TransactionId] [int] NOT NULL,
	[CategoryId] [int] NOT NULL,
	[Status] [int] NOT NULL,
	[Amount] [money] NOT NULL,
	[ExchangeAmount] [money] NOT NULL,
	[ExchangeRate] [float] NOT NULL,
	[RateUsed] [float] NULL,
	[Count1] [int] NOT NULL,
	[Count2] [int] NOT NULL,
	[Count3] [int] NOT NULL,
	[Count4] [int] NOT NULL,
	[Count5] [int] NOT NULL,
	[Count6] [int] NOT NULL,
	[Count7] [int] NOT NULL,
	[Count8] [int] NOT NULL,
	[Count9] [int] NOT NULL,
	[Count10] [int] NOT NULL,
	[ContractInfo] [varchar](20) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TransHeader]    Script Date: 25/03/2020 7:50:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TransHeader](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[SiteID] [int] NOT NULL,
	[ParentId] [int] NOT NULL,
	[BankId] [int] NOT NULL,
	[AccountId] [int] NOT NULL,
	[Received] [datetime] NULL,
	[Processed] [datetime] NULL,
	[Dispatched] [datetime] NULL,
	[Shipped] [datetime] NULL,
	[Credit] [datetime] NULL,
	[Revenue] [datetime] NULL,
	[Completed] [datetime] NULL,
	[TransactionType] [int] NOT NULL,
	[SubType] [nchar](3) NULL,
	[Status] [int] NOT NULL,
	[OperatorId] [nchar](5) NOT NULL,
	[Exchange] [money] NOT NULL,
	[ExchangeListing] [money] NOT NULL,
	[Comment] [nchar](30) NULL,
	[ClientSerialIdentifier] [nchar](35) NULL,
	[Declared] [money] NOT NULL,
	[Adjustment] [money] NOT NULL,
	[AmountReceived] [money] NOT NULL,
	[Pre_Note] [nchar](40) NULL,
	[WorkStationId] [nchar](30) NOT NULL,
	[ModifiedDate] [datetime] NOT NULL,
	[ModifiedBy] [nchar](5) NULL
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[TransDetail] ON 

INSERT [dbo].[TransDetail] ([Id], [SiteID], [TransactionId], [CategoryId], [Status], [Amount], [ExchangeAmount], [ExchangeRate], [RateUsed], [Count1], [Count2], [Count3], [Count4], [Count5], [Count6], [Count7], [Count8], [Count9], [Count10], [ContractInfo]) VALUES (400001, 4, 1, 237, 16, 220000.0000, 0.0000, 1, 1, 0, 0, 6000, 2000, 0, 0, 0, 0, 0, 0, N'')
INSERT [dbo].[TransDetail] ([Id], [SiteID], [TransactionId], [CategoryId], [Status], [Amount], [ExchangeAmount], [ExchangeRate], [RateUsed], [Count1], [Count2], [Count3], [Count4], [Count5], [Count6], [Count7], [Count8], [Count9], [Count10], [ContractInfo]) VALUES (400002, 4, 2, 237, 16, 220000.0000, 0.0000, 1, 1, 0, 0, 6000, 2000, 0, 0, 0, 0, 0, 0, N'')
INSERT [dbo].[TransDetail] ([Id], [SiteID], [TransactionId], [CategoryId], [Status], [Amount], [ExchangeAmount], [ExchangeRate], [RateUsed], [Count1], [Count2], [Count3], [Count4], [Count5], [Count6], [Count7], [Count8], [Count9], [Count10], [ContractInfo]) VALUES (400003, 4, 3, 237, 16, 220000.0000, 0.0000, 1, 1, 0, 0, 6000, 2000, 0, 0, 0, 0, 0, 0, N'')
INSERT [dbo].[TransDetail] ([Id], [SiteID], [TransactionId], [CategoryId], [Status], [Amount], [ExchangeAmount], [ExchangeRate], [RateUsed], [Count1], [Count2], [Count3], [Count4], [Count5], [Count6], [Count7], [Count8], [Count9], [Count10], [ContractInfo]) VALUES (400004, 4, 1, 237, 16, 220000.0000, 0.0000, 1, 1, 0, 0, 6000, 2000, 0, 0, 0, 0, 0, 0, N'')
INSERT [dbo].[TransDetail] ([Id], [SiteID], [TransactionId], [CategoryId], [Status], [Amount], [ExchangeAmount], [ExchangeRate], [RateUsed], [Count1], [Count2], [Count3], [Count4], [Count5], [Count6], [Count7], [Count8], [Count9], [Count10], [ContractInfo]) VALUES (400005, 4, 1, 237, 16, 220000.0000, 0.0000, 1, 1, 0, 0, 6000, 2000, 0, 0, 0, 0, 0, 0, N'')
INSERT [dbo].[TransDetail] ([Id], [SiteID], [TransactionId], [CategoryId], [Status], [Amount], [ExchangeAmount], [ExchangeRate], [RateUsed], [Count1], [Count2], [Count3], [Count4], [Count5], [Count6], [Count7], [Count8], [Count9], [Count10], [ContractInfo]) VALUES (400006, 4, 1, 237, 16, 220000.0000, 0.0000, 1, 1, 0, 0, 6000, 2000, 0, 0, 0, 0, 0, 0, N'')
INSERT [dbo].[TransDetail] ([Id], [SiteID], [TransactionId], [CategoryId], [Status], [Amount], [ExchangeAmount], [ExchangeRate], [RateUsed], [Count1], [Count2], [Count3], [Count4], [Count5], [Count6], [Count7], [Count8], [Count9], [Count10], [ContractInfo]) VALUES (400007, 4, 1, 237, 16, 220000.0000, 0.0000, 1, 1, 0, 0, 6000, 2000, 0, 0, 0, 0, 0, 0, N'')
INSERT [dbo].[TransDetail] ([Id], [SiteID], [TransactionId], [CategoryId], [Status], [Amount], [ExchangeAmount], [ExchangeRate], [RateUsed], [Count1], [Count2], [Count3], [Count4], [Count5], [Count6], [Count7], [Count8], [Count9], [Count10], [ContractInfo]) VALUES (401004, 4, 1, 237, 16, 220000.0000, 0.0000, 1, 1, 0, 0, 6000, 2000, 0, 0, 0, 0, 0, 0, N'')
INSERT [dbo].[TransDetail] ([Id], [SiteID], [TransactionId], [CategoryId], [Status], [Amount], [ExchangeAmount], [ExchangeRate], [RateUsed], [Count1], [Count2], [Count3], [Count4], [Count5], [Count6], [Count7], [Count8], [Count9], [Count10], [ContractInfo]) VALUES (401005, 4, 1, 237, 16, 220000.0000, 0.0000, 1, 1, 0, 0, 6000, 2000, 0, 0, 0, 0, 0, 0, N'')
INSERT [dbo].[TransDetail] ([Id], [SiteID], [TransactionId], [CategoryId], [Status], [Amount], [ExchangeAmount], [ExchangeRate], [RateUsed], [Count1], [Count2], [Count3], [Count4], [Count5], [Count6], [Count7], [Count8], [Count9], [Count10], [ContractInfo]) VALUES (401006, 4, 1, 237, 16, 220000.0000, 0.0000, 1, 1, 0, 0, 6000, 2000, 0, 0, 0, 0, 0, 0, N'')
INSERT [dbo].[TransDetail] ([Id], [SiteID], [TransactionId], [CategoryId], [Status], [Amount], [ExchangeAmount], [ExchangeRate], [RateUsed], [Count1], [Count2], [Count3], [Count4], [Count5], [Count6], [Count7], [Count8], [Count9], [Count10], [ContractInfo]) VALUES (401007, 4, 1, 237, 16, 220000.0000, 0.0000, 1, 1, 0, 0, 6000, 2000, 0, 0, 0, 0, 0, 0, N'')
INSERT [dbo].[TransDetail] ([Id], [SiteID], [TransactionId], [CategoryId], [Status], [Amount], [ExchangeAmount], [ExchangeRate], [RateUsed], [Count1], [Count2], [Count3], [Count4], [Count5], [Count6], [Count7], [Count8], [Count9], [Count10], [ContractInfo]) VALUES (401008, 4, 1, 237, 16, 220000.0000, 0.0000, 1, 1, 0, 0, 6000, 2000, 0, 0, 0, 0, 0, 0, N'')
INSERT [dbo].[TransDetail] ([Id], [SiteID], [TransactionId], [CategoryId], [Status], [Amount], [ExchangeAmount], [ExchangeRate], [RateUsed], [Count1], [Count2], [Count3], [Count4], [Count5], [Count6], [Count7], [Count8], [Count9], [Count10], [ContractInfo]) VALUES (401009, 4, 1, 237, 16, 220000.0000, 0.0000, 1, 1, 0, 0, 6000, 2000, 0, 0, 0, 0, 0, 0, N'')
SET IDENTITY_INSERT [dbo].[TransDetail] OFF
SET IDENTITY_INSERT [dbo].[TransHeader] ON 

INSERT [dbo].[TransHeader] ([Id], [SiteID], [ParentId], [BankId], [AccountId], [Received], [Processed], [Dispatched], [Shipped], [Credit], [Revenue], [Completed], [TransactionType], [SubType], [Status], [OperatorId], [Exchange], [ExchangeListing], [Comment], [ClientSerialIdentifier], [Declared], [Adjustment], [AmountReceived], [Pre_Note], [WorkStationId], [ModifiedDate], [ModifiedBy]) VALUES (1, 4, 0, 6, 6976, CAST(N'2019-07-07T10:34:17.437' AS DateTime), CAST(N'1899-12-30T00:00:00.000' AS DateTime), CAST(N'2019-07-07T00:00:00.000' AS DateTime), CAST(N'2019-06-14T00:00:00.000' AS DateTime), CAST(N'2019-07-07T00:00:00.000' AS DateTime), CAST(N'2019-07-07T00:00:00.000' AS DateTime), CAST(N'1900-01-01T00:00:00.000' AS DateTime), 4, N'STD', 17, N'HWEB ', 0.0000, 0.0000, N'Auto generated                ', N'                                   ', 220000.0000, 0.0000, 0.0000, N'ATM TFRS                                ', N'                              ', CAST(N'2019-07-07T10:34:17.437' AS DateTime), N'     ')
SET IDENTITY_INSERT [dbo].[TransHeader] OFF
/****** Object:  Index [PK_TransDetail]    Script Date: 25/03/2020 7:50:20 PM ******/
ALTER TABLE [dbo].[TransDetail] ADD  CONSTRAINT [PK_TransDetail] PRIMARY KEY NONCLUSTERED 
(
	[Id] ASC,
	[SiteID] ASC,
	[TransactionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 75) ON [PRIMARY]
GO
/****** Object:  Index [PK_TransHeader]    Script Date: 25/03/2020 7:50:20 PM ******/
ALTER TABLE [dbo].[TransHeader] ADD  CONSTRAINT [PK_TransHeader] PRIMARY KEY NONCLUSTERED 
(
	[Id] ASC,
	[SiteID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 75) ON [PRIMARY]
GO
ALTER TABLE [dbo].[TransDetail] ADD  DEFAULT ((0)) FOR [Count1]
GO
ALTER TABLE [dbo].[TransDetail] ADD  DEFAULT ((0)) FOR [Count2]
GO
ALTER TABLE [dbo].[TransDetail] ADD  DEFAULT ((0)) FOR [Count3]
GO
ALTER TABLE [dbo].[TransDetail] ADD  DEFAULT ((0)) FOR [Count4]
GO
ALTER TABLE [dbo].[TransDetail] ADD  DEFAULT ((0)) FOR [Count5]
GO
ALTER TABLE [dbo].[TransDetail] ADD  DEFAULT ((0)) FOR [Count6]
GO
ALTER TABLE [dbo].[TransDetail] ADD  DEFAULT ((0)) FOR [Count7]
GO
ALTER TABLE [dbo].[TransDetail] ADD  DEFAULT ((0)) FOR [Count8]
GO
ALTER TABLE [dbo].[TransDetail] ADD  DEFAULT ((0)) FOR [Count9]
GO
ALTER TABLE [dbo].[TransDetail] ADD  DEFAULT ((0)) FOR [Count10]
GO
ALTER TABLE [dbo].[TransHeader] ADD  DEFAULT (getdate()) FOR [ModifiedDate]
GO
USE [master]
GO
ALTER DATABASE [ATM_CHC] SET  READ_WRITE 
GO
