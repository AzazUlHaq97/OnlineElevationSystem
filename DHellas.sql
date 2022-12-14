USE [master]
GO
/****** Object:  Database [DHellas]    Script Date: 11/17/2016 3:53:51 AM ******/
CREATE DATABASE [DHellas]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'DHellas', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\DHellas.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'DHellas_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\DHellas_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [DHellas] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [DHellas].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [DHellas] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [DHellas] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [DHellas] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [DHellas] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [DHellas] SET ARITHABORT OFF 
GO
ALTER DATABASE [DHellas] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [DHellas] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [DHellas] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [DHellas] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [DHellas] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [DHellas] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [DHellas] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [DHellas] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [DHellas] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [DHellas] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [DHellas] SET  DISABLE_BROKER 
GO
ALTER DATABASE [DHellas] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [DHellas] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [DHellas] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [DHellas] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [DHellas] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [DHellas] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [DHellas] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [DHellas] SET RECOVERY FULL 
GO
ALTER DATABASE [DHellas] SET  MULTI_USER 
GO
ALTER DATABASE [DHellas] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [DHellas] SET DB_CHAINING OFF 
GO
ALTER DATABASE [DHellas] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [DHellas] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [DHellas]
GO
/****** Object:  Table [dbo].[Complaints]    Script Date: 11/17/2016 3:53:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Complaints](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[OrderNumber] [varchar](max) NULL,
	[ProblemFaced] [varchar](max) NULL,
	[ComplainingUser] [varchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CreditCardOrders]    Script Date: 11/17/2016 3:53:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CreditCardOrders](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CardName] [varchar](50) NULL,
	[CardNum] [varchar](50) NULL,
	[CVC] [varchar](50) NULL,
	[ExpiryMonth] [varchar](50) NULL,
	[ExpiryYear] [varchar](50) NULL,
	[UserName] [varchar](50) NULL,
	[OrderNumber] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Feedback]    Script Date: 11/17/2016 3:53:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[Feedback](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](max) NULL,
	[Email] [varchar](max) NULL,
	[Description] [varchar](max) NULL,
	[SatisfyingLevel] [varchar](max) NULL,
	[Problem] [varchar](max) NULL,
	[Improvement] [varchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 11/17/2016 3:53:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Orders](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ElevationSystemRequired] [varchar](max) NULL,
	[NumberOfSystem] [varchar](max) NULL,
	[LocationName] [varchar](max) NULL,
	[Address] [varchar](max) NULL,
	[OrderNumber] [varchar](max) NULL,
	[OrderName] [varchar](max) NULL,
	[TotalCost] [varchar](max) NULL,
	[OrderStatus] [varchar](max) NULL,
	[PaymentType] [varchar](max) NULL,
	[OrderedBy] [varchar](max) NULL,
	[DateTime] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Products]    Script Date: 11/17/2016 3:53:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Products](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ProductName] [varchar](max) NULL,
	[ProdImage] [varchar](max) NULL,
	[Description] [varchar](max) NULL,
	[PunchLine] [varchar](max) NULL,
	[Persons] [varchar](max) NULL,
	[Speed] [varchar](max) NULL,
	[PLoad] [varchar](max) NULL,
	[TractionMachine] [varchar](max) NULL,
	[Price] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Users]    Script Date: 11/17/2016 3:53:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Users](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
	[Username] [varchar](50) NULL,
	[Password] [varchar](50) NULL,
	[Email] [varchar](50) NULL,
	[Contact] [varchar](50) NULL,
	[Address] [varchar](50) NULL,
	[Company] [varchar](50) NULL,
	[Role] [varchar](50) NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Complaints] ON 

INSERT [dbo].[Complaints] ([ID], [OrderNumber], [ProblemFaced], [ComplainingUser]) VALUES (2, N'4e67YRrK', N'The doors were not fixed properly that''s why we had to face some issues. We would want you to send your team here.', N'aliahmed1')
SET IDENTITY_INSERT [dbo].[Complaints] OFF
SET IDENTITY_INSERT [dbo].[CreditCardOrders] ON 

INSERT [dbo].[CreditCardOrders] ([Id], [CardName], [CardNum], [CVC], [ExpiryMonth], [ExpiryYear], [UserName], [OrderNumber]) VALUES (1002, N'ALI AHMED', N'120322341', N'455', N'11', N'2019', N'aliahmed1', N'4e67YRrK')
INSERT [dbo].[CreditCardOrders] ([Id], [CardName], [CardNum], [CVC], [ExpiryMonth], [ExpiryYear], [UserName], [OrderNumber]) VALUES (2002, N'Kainat Shahid', N'090078691', N'331', N'12', N'2019', N'AdminRelative', N'PaS5ihd4')
SET IDENTITY_INSERT [dbo].[CreditCardOrders] OFF
SET IDENTITY_INSERT [dbo].[Feedback] ON 

INSERT [dbo].[Feedback] ([ID], [Name], [Email], [Description], [SatisfyingLevel], [Problem], [Improvement]) VALUES (1002, N'Moiz Mueeb', N'moiz@hotmail.com', N'The product''s quality is good and we expect it to be a little bit more better.', N'Average', N'No.', N'Going perfectly till now.')
SET IDENTITY_INSERT [dbo].[Feedback] OFF
SET IDENTITY_INSERT [dbo].[Orders] ON 

INSERT [dbo].[Orders] ([ID], [ElevationSystemRequired], [NumberOfSystem], [LocationName], [Address], [OrderNumber], [OrderName], [TotalCost], [OrderStatus], [PaymentType], [OrderedBy], [DateTime]) VALUES (1003, N'Car Elevator', N'3', N'Kashmir Palace, Azaad Kashir', N'St.12, Kashir Road', N'OX212dGI', N'MOIZ323CARELEVATOR', N'90000', N'Waiting for Admin Approval', N'CashOnDelivery', N'moiz32', CAST(0x0000A6C000E3CAD8 AS DateTime))
INSERT [dbo].[Orders] ([ID], [ElevationSystemRequired], [NumberOfSystem], [LocationName], [Address], [OrderNumber], [OrderName], [TotalCost], [OrderStatus], [PaymentType], [OrderedBy], [DateTime]) VALUES (1004, N'Bed/Hospital Elevator', N'1', N'North Nazimabad, Karachi', N'B-143, Street # 12, North Nazimabad', N'4e67YRrK', N'ALIAHMED11BED/HOSPITALELEVATOR', N'25000', N'Waiting for Admin Approval', N'CreditCard', N'aliahmed1', CAST(0x0000A6C000E6E560 AS DateTime))
INSERT [dbo].[Orders] ([ID], [ElevationSystemRequired], [NumberOfSystem], [LocationName], [Address], [OrderNumber], [OrderName], [TotalCost], [OrderStatus], [PaymentType], [OrderedBy], [DateTime]) VALUES (2002, N'Residential Elevators', N'3', N'Khulna Bengal', N'St 231 Khi Strikers', N'PaS5ihd4', N'KHULNAORDER123', N'23000', N'In Progress Now', N'CreditCard', N'AdminRelative', CAST(0x0000A6C100368E68 AS DateTime))
SET IDENTITY_INSERT [dbo].[Orders] OFF
SET IDENTITY_INSERT [dbo].[Products] ON 

INSERT [dbo].[Products] ([Id], [ProductName], [ProdImage], [Description], [PunchLine], [Persons], [Speed], [PLoad], [TractionMachine], [Price]) VALUES (1, N'Passenger Elevator', N'5.png', N'DHellas Passenger elevator control system is a special intelligent serial communication control system which absorbed advanced technology from Japan and Germany, innovated and developed independently. The system applies bus technology into elevator control perfectly with safe, accurate and quick performance.', N'Always on top!', N'6-21', N'1.0-4.0m/s', N'450kg / 630kg / 800kg / 1000kg / 1150kg / 1350kg / 1600kg', N'Gearless', 26000)
INSERT [dbo].[Products] ([Id], [ProductName], [ProdImage], [Description], [PunchLine], [Persons], [Speed], [PLoad], [TractionMachine], [Price]) VALUES (2, N'Bed/Hospital Elevator', N'hosp-elevator.jpg', N'DHellas Bed Elevators, a right choice for your hospital needs are designed to greatly contribute to provide the most secure and reliable ambience that your hospital requires', N'Be at time!', N'6-21', N'1.0-2.0m/s', N'1600kg', N'Gearless', 25000)
INSERT [dbo].[Products] ([Id], [ProductName], [ProdImage], [Description], [PunchLine], [Persons], [Speed], [PLoad], [TractionMachine], [Price]) VALUES (3, N'Panoramic Elevator', N'1.jpg', N'DHellas panoramic elevator not only make the passenger enjoy moving up and down but also make the decorative style harmonious with architectural style, endowing the building with personality and vitality, which reflect the charming glamour of modern city life.', N'Beyond imagination!', N'10-21', N'1.0-3.0m/s', N'800kg / 1000kg / 1250kg / 1600kg', N'Gearless', 22000)
INSERT [dbo].[Products] ([Id], [ProductName], [ProdImage], [Description], [PunchLine], [Persons], [Speed], [PLoad], [TractionMachine], [Price]) VALUES (4, N'Residential Elevators', N'4.jpg', N'The unique range of home elevators are the first and only residential elevators of their kind to be available in the USA. Thanks to their small footprint, drive mechanism and dual rail technology, the DHellas Home Elevator has an unrivalled ability to fit into spaces other residential elevators cannot meaning they can be fitted almost anywhere in a two-story home.', N'One of its kind!', N'4-7', N'0.4 m/s', N'250kg/320kg/400kg', N'Gearless', 23000)
INSERT [dbo].[Products] ([Id], [ProductName], [ProdImage], [Description], [PunchLine], [Persons], [Speed], [PLoad], [TractionMachine], [Price]) VALUES (5, N'Car Elevator', N'6.jpg', N'DHellas Automobile Elevators are designed for moving cars in condominiums, car showrooms, garages, homes and more, our Car Elevators provide space saving.', N'Live the luxury', N'NILL', N'0.5m/s', N'3200kg', N'Geared / Gearless', 30000)
SET IDENTITY_INSERT [dbo].[Products] OFF
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([Id], [Name], [Username], [Password], [Email], [Contact], [Address], [Company], [Role]) VALUES (3002, N'Azaz-Ul-Haq', N'AzazUlHaq', N'admin123', N'azazulhaq1997@gmail.com', N'0332-2261706', N'R-655,Sec-8,N.K', N'D''Hellas', N'Admin')
INSERT [dbo].[Users] ([Id], [Name], [Username], [Password], [Email], [Contact], [Address], [Company], [Role]) VALUES (3003, N'Ali Ahmed', N'aliahmed1', N'aliahmed54321', N'ali@yahoo.com', N'0300-2894141', N'Karachi,North Nazimabad', N'Axact', N'User')
INSERT [dbo].[Users] ([Id], [Name], [Username], [Password], [Email], [Contact], [Address], [Company], [Role]) VALUES (3004, N'Moiz Mueeb', N'moiz32', N'moiz54321', N'moiz@hotmail.com', N'0332-1234566', N'Jamu and Kashir', N'Textiles', N'User')
INSERT [dbo].[Users] ([Id], [Name], [Username], [Password], [Email], [Contact], [Address], [Company], [Role]) VALUES (3005, N'Farhaan Khan', N'farhaan55', N'farhan54321', N'farhan@gmail.com', N'0322-1235686', N'Hyderabad, St.11', N'CleverLogic', N'User')
INSERT [dbo].[Users] ([Id], [Name], [Username], [Password], [Email], [Contact], [Address], [Company], [Role]) VALUES (4002, N'Mubashir', N'mubi22', N'mubi12345', N'mubashir@gmail.com', N'0339212312', N'Lyari Express Way Karachi', N'No company as of yet', N'User')
SET IDENTITY_INSERT [dbo].[Users] OFF
USE [master]
GO
ALTER DATABASE [DHellas] SET  READ_WRITE 
GO
