USE [master]
GO
/****** Object:  Database [CarRemarketing]    Script Date: 02-07-2020 14:33:02 ******/
CREATE DATABASE [CarRemarketing]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'[CarRemarketing]', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.SQLEXPRESS\MSSQL\DATA\[CarRemarketing].mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'[CarRemarketing]_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.SQLEXPRESS\MSSQL\DATA\[CarRemarketing]_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [CarRemarketing] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [CarRemarketing].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [CarRemarketing] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [CarRemarketing] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [CarRemarketing] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [CarRemarketing] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [CarRemarketing] SET ARITHABORT OFF 
GO
ALTER DATABASE [CarRemarketing] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [CarRemarketing] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [CarRemarketing] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [CarRemarketing] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [CarRemarketing] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [CarRemarketing] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [CarRemarketing] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [CarRemarketing] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [CarRemarketing] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [CarRemarketing] SET  ENABLE_BROKER 
GO
ALTER DATABASE [CarRemarketing] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [CarRemarketing] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [CarRemarketing] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [CarRemarketing] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [CarRemarketing] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [CarRemarketing] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [CarRemarketing] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [CarRemarketing] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [CarRemarketing] SET  MULTI_USER 
GO
ALTER DATABASE [CarRemarketing] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [CarRemarketing] SET DB_CHAINING OFF 
GO
ALTER DATABASE [CarRemarketing] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [CarRemarketing] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [CarRemarketing] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [CarRemarketing] SET QUERY_STORE = OFF
GO
USE [CarRemarketing]
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET MAXDOP = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET LEGACY_CARDINALITY_ESTIMATION = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET PARAMETER_SNIFFING = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET QUERY_OPTIMIZER_HOTFIXES = PRIMARY;
GO
USE [CarRemarketing]
GO
/****** Object:  Table [dbo].[Model]    Script Date: 02-07-2020 14:33:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Model](
	[ModelId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
	[BrandId] [int] NULL,
	[IsActive] [bit] NULL,
	[CreatedBy] [varchar](50) NULL,
	[ModifiedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedOn] [datetime] NULL,
	[IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_Model] PRIMARY KEY CLUSTERED 
(
	[ModelId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CarAllocation]    Script Date: 02-07-2020 14:33:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CarAllocation](
	[CarId] [int] IDENTITY(1,1) NOT NULL,
	[VINNumber] [varchar](20) NULL,
	[Video] [varchar](25) NULL,
	[Type] [varchar](20) NULL,
	[VehiclePrice] [bigint] NULL,
	[IsNew] [bit] NULL,
	[Kms] [bigint] NOT NULL,
	[Status] [date] NULL,
	[DownPaymentType] [varchar](12) NULL,
	[DownPayment] [int] NULL,
	[VisitedCount] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[ModifiedBy] [nchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedOn] [datetime] NULL,
	[Vpath] [varchar](200) NULL,
	[IsDeleted] [bit] NOT NULL,
	[AccessoryId] [int] NULL,
 CONSTRAINT [PK_CarAllocation] PRIMARY KEY CLUSTERED 
(
	[CarId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CarImages]    Script Date: 02-07-2020 14:33:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CarImages](
	[ImageId] [int] IDENTITY(1,1) NOT NULL,
	[VINNumber] [varchar](20) NULL,
	[PriorityNumber] [tinyint] NULL,
	[ImagePath] [varchar](25) NULL,
	[CreatedBy] [varchar](50) NULL,
	[ModifiedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedOn] [datetime] NULL,
 CONSTRAINT [PK_CarImages] PRIMARY KEY CLUSTERED 
(
	[ImageId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CarMaster]    Script Date: 02-07-2020 14:33:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CarMaster](
	[VINNumber] [varchar](20) NOT NULL,
	[BrandId] [int] NULL,
	[ModelId] [int] NULL,
	[Average] [float] NULL,
	[Power] [smallint] NULL,
	[GearType] [varchar](20) NULL,
	[NumberOfGears] [varchar](6) NULL,
	[FuelType] [varchar](50) NULL,
	[ManufactureDate] [date] NULL,
	[NumberOfSeats] [tinyint] NULL,
	[CarDescription] [nvarchar](max) NULL,
	[Cylinders] [tinyint] NULL,
	[CylindersCapacity] [smallint] NULL,
	[IsActive] [bit] NULL,
	[CreatedBy] [varchar](50) NULL,
	[ModifiedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedOn] [datetime] NULL,
	[IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_CarMaster] PRIMARY KEY CLUSTERED 
(
	[VINNumber] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Brand]    Script Date: 02-07-2020 14:33:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Brand](
	[BrandId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](40) NULL,
	[IsActive] [bit] NULL,
	[LogoImage] [varchar](25) NULL,
	[CreatedBy] [varchar](50) NULL,
	[ModifiedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedOn] [datetime] NULL,
	[LogoThumbNail] [nvarchar](500) NULL,
	[IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_Brand] PRIMARY KEY CLUSTERED 
(
	[BrandId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  View [dbo].[vw_carDetails]    Script Date: 02-07-2020 14:33:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE view [dbo].[vw_carDetails]
as
SELECT cmaster.VINNumber,cmaster.Cylinders,car.Kms,car.VehiclePrice,cmaster.ManufactureDate,b.LogoImage,b.Name,m.Name as modelname,ci.ImagePath,car.VisitedCount
FROM CarMaster 
AS cmaster
left JOIN CarAllocation  AS car ON cmaster.VINNumber = car.VINNumber 
left join Brand as b on b.BrandId=cmaster.BrandId
left join Model as m on m.ModelId=cmaster.ModelId
left join CarImages as ci on ci.VINNumber = cmaster.VINNumber WHERE ci.PriorityNumber=1



GO
/****** Object:  Table [dbo].[Accessories]    Script Date: 02-07-2020 14:33:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Accessories](
	[AccessoryId] [int] IDENTITY(1,1) NOT NULL,
	[AccessoryName] [varchar](40) NULL,
	[Price] [bigint] NULL,
	[CreatedBy] [varchar](50) NULL,
	[ModifiedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedOn] [datetime] NULL,
	[BrandId] [int] NULL,
	[ModelId] [int] NULL,
 CONSTRAINT [PK_Accessories] PRIMARY KEY CLUSTERED 
(
	[AccessoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Accessoriesmap]    Script Date: 02-07-2020 14:33:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Accessoriesmap](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CarId] [int] NOT NULL,
	[AccessoriesId] [int] NULL,
 CONSTRAINT [PK_Accessoriesmap] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AccessoryCarMapping]    Script Date: 02-07-2020 14:33:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AccessoryCarMapping](
	[AccessoryCarId] [int] NOT NULL,
	[AccessoryId] [int] NULL,
	[CarId] [int] NULL,
	[Price] [bigint] NULL,
	[CreatedBy] [varchar](50) NULL,
	[ModifiedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedOn] [datetime] NULL,
	[IsDeleted] [bit] NULL,
 CONSTRAINT [PK_AccessoryCarMapping] PRIMARY KEY CLUSTERED 
(
	[AccessoryCarId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AccessoryQuoteMapping]    Script Date: 02-07-2020 14:33:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AccessoryQuoteMapping](
	[AccessoryQuoteId] [int] NOT NULL,
	[AccessoryId] [int] NULL,
	[QuoteId] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[ModifiedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedOn] [datetime] NULL,
 CONSTRAINT [PK_AccessoryQuoteMapping] PRIMARY KEY CLUSTERED 
(
	[AccessoryQuoteId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AdminLogin]    Script Date: 02-07-2020 14:33:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AdminLogin](
	[AdminEmail] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](50) NULL,
 CONSTRAINT [PK_Admin] PRIMARY KEY CLUSTERED 
(
	[AdminEmail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[InsuranceMaster]    Script Date: 02-07-2020 14:33:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[InsuranceMaster](
	[InsuranceId] [int] NOT NULL,
	[ModelId] [int] NULL,
	[Duration] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[ModifiedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedOn] [datetime] NULL,
 CONSTRAINT [PK_InsuranceMaster] PRIMARY KEY CLUSTERED 
(
	[InsuranceId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PaymentDetail]    Script Date: 02-07-2020 14:33:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PaymentDetail](
	[TXNID] [nvarchar](50) NULL,
	[ORDERID] [nvarchar](50) NULL,
	[PAYMENTMODE] [nvarchar](15) NULL,
	[AMOUNT] [nvarchar](1000) NULL,
	[TXNDATE] [datetime] NULL,
	[STATUS] [nvarchar](50) NULL,
	[ID] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_PaymentDetail] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[QuoteDetails]    Script Date: 02-07-2020 14:33:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[QuoteDetails](
	[QuoteId] [int] NOT NULL,
	[CarId] [int] NULL,
	[QuoteNumber] [varchar](50) NULL,
	[Duration] [int] NULL,
	[RequesterEmail] [varchar](40) NULL,
	[InsuranceId] [int] NULL,
	[Discount] [int] NULL,
	[QuoteDocument] [varchar](20) NULL,
	[AccessoryTotal] [bigint] NULL,
	[GrandTotal] [bigint] NULL,
	[CreatedBy] [varchar](50) NULL,
	[ModifiedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedOn] [datetime] NULL,
 CONSTRAINT [PK_QuoteDetails] PRIMARY KEY CLUSTERED 
(
	[QuoteId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[RentandDirectpurchase]    Script Date: 02-07-2020 14:33:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RentandDirectpurchase](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CarId] [int] NULL,
	[AccessoriesTotal] [decimal](18, 2) NULL,
	[GrandTotal] [decimal](18, 2) NULL,
 CONSTRAINT [PK_RentandDirectpurchase] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[UserDetail]    Script Date: 02-07-2020 14:33:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[UserDetail](
	[UserID] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [nvarchar](50) NULL,
	[UserEmail] [nvarchar](50) NULL,
	[UserMobile] [varchar](13) NULL,
 CONSTRAINT [PK_UserDetail] PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[Brand] ADD  CONSTRAINT [DF__Brand__IsDeleted__37A5467C]  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[CarAllocation] ADD  CONSTRAINT [df_Kms]  DEFAULT ((0)) FOR [Kms]
GO
ALTER TABLE [dbo].[CarAllocation] ADD  CONSTRAINT [DF__CarAlloca__IsDel__398D8EEE]  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[CarMaster] ADD  CONSTRAINT [DF_CarMaster_IsDeleted]  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[Model] ADD  CONSTRAINT [DF__Model__IsDeleted__3B75D760]  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[Accessories]  WITH CHECK ADD  CONSTRAINT [FK__Accessori__Brand__6EF57B66] FOREIGN KEY([BrandId])
REFERENCES [dbo].[Brand] ([BrandId])
GO
ALTER TABLE [dbo].[Accessories] CHECK CONSTRAINT [FK__Accessori__Brand__6EF57B66]
GO
ALTER TABLE [dbo].[Accessories]  WITH CHECK ADD  CONSTRAINT [FK__Accessori__Model__6FE99F9F] FOREIGN KEY([ModelId])
REFERENCES [dbo].[Model] ([ModelId])
GO
ALTER TABLE [dbo].[Accessories] CHECK CONSTRAINT [FK__Accessori__Model__6FE99F9F]
GO
ALTER TABLE [dbo].[Accessoriesmap]  WITH CHECK ADD  CONSTRAINT [FK_Accessoriesmap_Accessories] FOREIGN KEY([AccessoriesId])
REFERENCES [dbo].[Accessories] ([AccessoryId])
GO
ALTER TABLE [dbo].[Accessoriesmap] CHECK CONSTRAINT [FK_Accessoriesmap_Accessories]
GO
ALTER TABLE [dbo].[Accessoriesmap]  WITH CHECK ADD  CONSTRAINT [FK_Accessoriesmap_CarAllocation] FOREIGN KEY([CarId])
REFERENCES [dbo].[CarAllocation] ([CarId])
GO
ALTER TABLE [dbo].[Accessoriesmap] CHECK CONSTRAINT [FK_Accessoriesmap_CarAllocation]
GO
ALTER TABLE [dbo].[AccessoryCarMapping]  WITH CHECK ADD  CONSTRAINT [FK__Accessory__Acces__71D1E811] FOREIGN KEY([AccessoryId])
REFERENCES [dbo].[Accessories] ([AccessoryId])
GO
ALTER TABLE [dbo].[AccessoryCarMapping] CHECK CONSTRAINT [FK__Accessory__Acces__71D1E811]
GO
ALTER TABLE [dbo].[AccessoryCarMapping]  WITH CHECK ADD  CONSTRAINT [FK__Accessory__CarId__3F466844] FOREIGN KEY([CarId])
REFERENCES [dbo].[CarAllocation] ([CarId])
GO
ALTER TABLE [dbo].[AccessoryCarMapping] CHECK CONSTRAINT [FK__Accessory__CarId__3F466844]
GO
ALTER TABLE [dbo].[AccessoryCarMapping]  WITH CHECK ADD  CONSTRAINT [FK__Accessory__CarId__66603565] FOREIGN KEY([CarId])
REFERENCES [dbo].[CarAllocation] ([CarId])
GO
ALTER TABLE [dbo].[AccessoryCarMapping] CHECK CONSTRAINT [FK__Accessory__CarId__66603565]
GO
ALTER TABLE [dbo].[AccessoryQuoteMapping]  WITH CHECK ADD  CONSTRAINT [FK__Accessory__Acces__3D5E1FD2] FOREIGN KEY([AccessoryId])
REFERENCES [dbo].[Accessories] ([AccessoryId])
GO
ALTER TABLE [dbo].[AccessoryQuoteMapping] CHECK CONSTRAINT [FK__Accessory__Acces__3D5E1FD2]
GO
ALTER TABLE [dbo].[AccessoryQuoteMapping]  WITH CHECK ADD  CONSTRAINT [FK__Accessory__Acces__3E52440B] FOREIGN KEY([AccessoryId])
REFERENCES [dbo].[Accessories] ([AccessoryId])
GO
ALTER TABLE [dbo].[AccessoryQuoteMapping] CHECK CONSTRAINT [FK__Accessory__Acces__3E52440B]
GO
ALTER TABLE [dbo].[AccessoryQuoteMapping]  WITH CHECK ADD  CONSTRAINT [FK__Accessory__Quote__4222D4EF] FOREIGN KEY([QuoteId])
REFERENCES [dbo].[QuoteDetails] ([QuoteId])
GO
ALTER TABLE [dbo].[AccessoryQuoteMapping] CHECK CONSTRAINT [FK__Accessory__Quote__4222D4EF]
GO
ALTER TABLE [dbo].[AccessoryQuoteMapping]  WITH CHECK ADD  CONSTRAINT [FK__Accessory__Quote__4316F928] FOREIGN KEY([QuoteId])
REFERENCES [dbo].[QuoteDetails] ([QuoteId])
GO
ALTER TABLE [dbo].[AccessoryQuoteMapping] CHECK CONSTRAINT [FK__Accessory__Quote__4316F928]
GO
ALTER TABLE [dbo].[AccessoryQuoteMapping]  WITH CHECK ADD  CONSTRAINT [FK__Accessory__Quote__6754599E] FOREIGN KEY([QuoteId])
REFERENCES [dbo].[QuoteDetails] ([QuoteId])
GO
ALTER TABLE [dbo].[AccessoryQuoteMapping] CHECK CONSTRAINT [FK__Accessory__Quote__6754599E]
GO
ALTER TABLE [dbo].[AccessoryQuoteMapping]  WITH CHECK ADD  CONSTRAINT [FK__Accessory__Quote__68487DD7] FOREIGN KEY([QuoteId])
REFERENCES [dbo].[QuoteDetails] ([QuoteId])
GO
ALTER TABLE [dbo].[AccessoryQuoteMapping] CHECK CONSTRAINT [FK__Accessory__Quote__68487DD7]
GO
ALTER TABLE [dbo].[CarAllocation]  WITH CHECK ADD  CONSTRAINT [FK__CarAlloca__VINNu__4CA06362] FOREIGN KEY([VINNumber])
REFERENCES [dbo].[CarMaster] ([VINNumber])
GO
ALTER TABLE [dbo].[CarAllocation] CHECK CONSTRAINT [FK__CarAlloca__VINNu__4CA06362]
GO
ALTER TABLE [dbo].[CarAllocation]  WITH CHECK ADD  CONSTRAINT [FK_AcessoryId] FOREIGN KEY([AccessoryId])
REFERENCES [dbo].[Accessories] ([AccessoryId])
GO
ALTER TABLE [dbo].[CarAllocation] CHECK CONSTRAINT [FK_AcessoryId]
GO
ALTER TABLE [dbo].[CarImages]  WITH CHECK ADD  CONSTRAINT [FK__CarImages__VINNu__4D94879B] FOREIGN KEY([VINNumber])
REFERENCES [dbo].[CarMaster] ([VINNumber])
GO
ALTER TABLE [dbo].[CarImages] CHECK CONSTRAINT [FK__CarImages__VINNu__4D94879B]
GO
ALTER TABLE [dbo].[CarMaster]  WITH CHECK ADD  CONSTRAINT [FK__CarMaster__Brand__4E88ABD4] FOREIGN KEY([BrandId])
REFERENCES [dbo].[Brand] ([BrandId])
GO
ALTER TABLE [dbo].[CarMaster] CHECK CONSTRAINT [FK__CarMaster__Brand__4E88ABD4]
GO
ALTER TABLE [dbo].[CarMaster]  WITH CHECK ADD  CONSTRAINT [FK__CarMaster__Model__4F7CD00D] FOREIGN KEY([ModelId])
REFERENCES [dbo].[Model] ([ModelId])
GO
ALTER TABLE [dbo].[CarMaster] CHECK CONSTRAINT [FK__CarMaster__Model__4F7CD00D]
GO
ALTER TABLE [dbo].[InsuranceMaster]  WITH CHECK ADD  CONSTRAINT [FK__Insurance__Model__5070F446] FOREIGN KEY([ModelId])
REFERENCES [dbo].[Model] ([ModelId])
GO
ALTER TABLE [dbo].[InsuranceMaster] CHECK CONSTRAINT [FK__Insurance__Model__5070F446]
GO
ALTER TABLE [dbo].[Model]  WITH CHECK ADD  CONSTRAINT [FK__Model__BrandId__619B8048] FOREIGN KEY([BrandId])
REFERENCES [dbo].[Brand] ([BrandId])
GO
ALTER TABLE [dbo].[Model] CHECK CONSTRAINT [FK__Model__BrandId__619B8048]
GO
ALTER TABLE [dbo].[QuoteDetails]  WITH CHECK ADD  CONSTRAINT [FK__QuoteDeta__CarId__52593CB8] FOREIGN KEY([CarId])
REFERENCES [dbo].[CarAllocation] ([CarId])
GO
ALTER TABLE [dbo].[QuoteDetails] CHECK CONSTRAINT [FK__QuoteDeta__CarId__52593CB8]
GO
ALTER TABLE [dbo].[QuoteDetails]  WITH CHECK ADD  CONSTRAINT [FK__QuoteDeta__Insur__4BAC3F29] FOREIGN KEY([InsuranceId])
REFERENCES [dbo].[InsuranceMaster] ([InsuranceId])
GO
ALTER TABLE [dbo].[QuoteDetails] CHECK CONSTRAINT [FK__QuoteDeta__Insur__4BAC3F29]
GO
ALTER TABLE [dbo].[QuoteDetails]  WITH CHECK ADD  CONSTRAINT [FK__QuoteDeta__Insur__4CA06362] FOREIGN KEY([InsuranceId])
REFERENCES [dbo].[InsuranceMaster] ([InsuranceId])
GO
ALTER TABLE [dbo].[QuoteDetails] CHECK CONSTRAINT [FK__QuoteDeta__Insur__4CA06362]
GO
ALTER TABLE [dbo].[QuoteDetails]  WITH CHECK ADD  CONSTRAINT [FK__QuoteDeta__Insur__693CA210] FOREIGN KEY([InsuranceId])
REFERENCES [dbo].[InsuranceMaster] ([InsuranceId])
GO
ALTER TABLE [dbo].[QuoteDetails] CHECK CONSTRAINT [FK__QuoteDeta__Insur__693CA210]
GO
ALTER TABLE [dbo].[QuoteDetails]  WITH CHECK ADD  CONSTRAINT [FK__QuoteDeta__Insur__6A30C649] FOREIGN KEY([InsuranceId])
REFERENCES [dbo].[InsuranceMaster] ([InsuranceId])
GO
ALTER TABLE [dbo].[QuoteDetails] CHECK CONSTRAINT [FK__QuoteDeta__Insur__6A30C649]
GO
ALTER TABLE [dbo].[RentandDirectpurchase]  WITH CHECK ADD  CONSTRAINT [FK_RentandDirectpurchase_CarAllocation] FOREIGN KEY([CarId])
REFERENCES [dbo].[CarAllocation] ([CarId])
GO
ALTER TABLE [dbo].[RentandDirectpurchase] CHECK CONSTRAINT [FK_RentandDirectpurchase_CarAllocation]
GO
/****** Object:  StoredProcedure [dbo].[Usp_Models]    Script Date: 02-07-2020 14:33:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[Usp_Models] 
As
Begin
	Select m.Name ,b.Name ,m.IsActive From Brand b Inner Join Model m on b.BrandId=m.BrandId
End
GO
USE [master]
GO
ALTER DATABASE [CarRemarketing] SET  READ_WRITE 
GO
