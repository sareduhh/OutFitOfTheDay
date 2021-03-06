USE [master]
GO
/****** Object:  Database [wardrobe]    Script Date: 10/21/2016 12:11:59 PM ******/
CREATE DATABASE [wardrobe]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'wardrobe', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\wardrobe.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'wardrobe_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\wardrobe_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [wardrobe] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [wardrobe].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [wardrobe] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [wardrobe] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [wardrobe] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [wardrobe] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [wardrobe] SET ARITHABORT OFF 
GO
ALTER DATABASE [wardrobe] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [wardrobe] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [wardrobe] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [wardrobe] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [wardrobe] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [wardrobe] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [wardrobe] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [wardrobe] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [wardrobe] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [wardrobe] SET  DISABLE_BROKER 
GO
ALTER DATABASE [wardrobe] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [wardrobe] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [wardrobe] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [wardrobe] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [wardrobe] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [wardrobe] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [wardrobe] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [wardrobe] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [wardrobe] SET  MULTI_USER 
GO
ALTER DATABASE [wardrobe] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [wardrobe] SET DB_CHAINING OFF 
GO
ALTER DATABASE [wardrobe] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [wardrobe] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [wardrobe] SET DELAYED_DURABILITY = DISABLED 
GO
USE [wardrobe]
GO
/****** Object:  Table [dbo].[Accessories]    Script Date: 10/21/2016 12:11:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Accessories](
	[AccessorieID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Photo] [nvarchar](max) NULL,
	[Type] [nvarchar](50) NULL,
	[Color] [nvarchar](50) NULL,
	[Season] [nvarchar](50) NULL,
	[Occasion] [nvarchar](50) NULL,
 CONSTRAINT [PK_Accessories] PRIMARY KEY CLUSTERED 
(
	[AccessorieID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Bottom]    Script Date: 10/21/2016 12:11:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bottom](
	[BottomID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Photo] [nvarchar](max) NULL,
	[Type] [nvarchar](50) NULL,
	[Color] [nvarchar](50) NULL,
	[Season] [nvarchar](50) NULL,
	[Occasion] [nvarchar](50) NULL,
 CONSTRAINT [PK_Bottom] PRIMARY KEY CLUSTERED 
(
	[BottomID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Shoe]    Script Date: 10/21/2016 12:11:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Shoe](
	[ShoeID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Photo] [nvarchar](max) NULL,
	[Type] [nvarchar](50) NULL,
	[Color] [nvarchar](50) NULL,
	[Season] [nvarchar](50) NULL,
	[Occasion] [nvarchar](50) NULL,
 CONSTRAINT [PK_Shoe] PRIMARY KEY CLUSTERED 
(
	[ShoeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Top]    Script Date: 10/21/2016 12:11:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Top](
	[TopID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Photo] [nvarchar](max) NULL,
	[Type] [nvarchar](50) NULL,
	[Color] [nvarchar](50) NULL,
	[Season] [nvarchar](50) NULL,
	[Occasion] [nvarchar](50) NULL,
 CONSTRAINT [PK_Top] PRIMARY KEY CLUSTERED 
(
	[TopID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Wardrobe]    Script Date: 10/21/2016 12:11:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Wardrobe](
	[WardrobeID] [int] IDENTITY(1,1) NOT NULL,
	[TopID] [int] NOT NULL,
	[BottomID] [int] NOT NULL,
	[ShoeID] [int] NOT NULL,
	[AccessorieID] [int] NOT NULL,
 CONSTRAINT [PK_Wardrobe] PRIMARY KEY CLUSTERED 
(
	[WardrobeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[Accessories] ON 

INSERT [dbo].[Accessories] ([AccessorieID], [Name], [Photo], [Type], [Color], [Season], [Occasion]) VALUES (1, N'The Original Aviators by Ray Ban', N'~/Content/photos/accessories/raybanavs.jpg', N'sunglasses', N'rose gold', N'summer', N'any')
INSERT [dbo].[Accessories] ([AccessorieID], [Name], [Photo], [Type], [Color], [Season], [Occasion]) VALUES (2, N'The Checkered Scarf', N'~/Content/photos/accessories/neutralcheckeredscarf.jpg', N'scarf', N'brown', N'fall', N'casual')
SET IDENTITY_INSERT [dbo].[Accessories] OFF
SET IDENTITY_INSERT [dbo].[Bottom] ON 

INSERT [dbo].[Bottom] ([BottomID], [Name], [Photo], [Type], [Color], [Season], [Occasion]) VALUES (1, N'The Gothic Skinny', N'~/Content/photos/bottoms/blackskinnyjeans.jpg', N'jegging', N'black', N'any', N'casual')
INSERT [dbo].[Bottom] ([BottomID], [Name], [Photo], [Type], [Color], [Season], [Occasion]) VALUES (2, N'The Destroyed Skinny', N'~/Content/photos/bottoms/shreddedskinnyjeans.jpg', N'jegging', N'denim', N'any', N'casual')
INSERT [dbo].[Bottom] ([BottomID], [Name], [Photo], [Type], [Color], [Season], [Occasion]) VALUES (4, N'The Work Pant', N'~/Content/photos/bottoms/blackskinnyworkpant.JPG', N'slacks', N'black', N'any', N'business')
INSERT [dbo].[Bottom] ([BottomID], [Name], [Photo], [Type], [Color], [Season], [Occasion]) VALUES (5, N'The Tan Pant', N'~/Content/photos/bottoms/tanworkpant.jpg', N'slacks', N'tan', N'any', N'business')
INSERT [dbo].[Bottom] ([BottomID], [Name], [Photo], [Type], [Color], [Season], [Occasion]) VALUES (6, N'The Only Black Legging', N'~/Content/photos/bottoms/blackleggings.jpg', N'legging', N'black', N'any', N'any')
SET IDENTITY_INSERT [dbo].[Bottom] OFF
SET IDENTITY_INSERT [dbo].[Shoe] ON 

INSERT [dbo].[Shoe] ([ShoeID], [Name], [Photo], [Type], [Color], [Season], [Occasion]) VALUES (1, N'The Killer Stilletto', N'~/Content/photos/shoes/stillettoheel.jpg', N'stilletto', N'black', N'any', N'any')
INSERT [dbo].[Shoe] ([ShoeID], [Name], [Photo], [Type], [Color], [Season], [Occasion]) VALUES (2, N'The Chunky Heel Boot', N'~/Content/photos/shoes/chunkyheelboot.jpg', N'boot', N'brown', N'fall', N'casual')
INSERT [dbo].[Shoe] ([ShoeID], [Name], [Photo], [Type], [Color], [Season], [Occasion]) VALUES (3, N'The Traditional Pump', N'~/Content/photos/shoes/blackgoldpump.jpg', N'pump', N'black', N'any', N'business')
INSERT [dbo].[Shoe] ([ShoeID], [Name], [Photo], [Type], [Color], [Season], [Occasion]) VALUES (4, N'The Everyday Sandal', N'~/Content/photos/shoes/blacksandal.jpg', N'sandal', N'black', N'summer', N'any')
INSERT [dbo].[Shoe] ([ShoeID], [Name], [Photo], [Type], [Color], [Season], [Occasion]) VALUES (5, N'The Combat Boot', N'~/Content/photos/shoes/combatboot.jpg', N'boot', N'brown', N'fall', N'casual')
INSERT [dbo].[Shoe] ([ShoeID], [Name], [Photo], [Type], [Color], [Season], [Occasion]) VALUES (6, N'The Everyday Boot', N'~/Content/photos/shoes/fallboot.jpg', N'boot', N'grey', N'fall', N'any')
INSERT [dbo].[Shoe] ([ShoeID], [Name], [Photo], [Type], [Color], [Season], [Occasion]) VALUES (7, N'The Perfect Flat', N'~/Content/photos/shoes/flats.jpg', N'flat', N'black', N'any', N'any')
INSERT [dbo].[Shoe] ([ShoeID], [Name], [Photo], [Type], [Color], [Season], [Occasion]) VALUES (8, N'The Ideal Wedge', N'~/Content/photos/shoes/thewedge.jpg', N'wedge', N'black', N'fall', N'any')
SET IDENTITY_INSERT [dbo].[Shoe] OFF
SET IDENTITY_INSERT [dbo].[Top] ON 

INSERT [dbo].[Top] ([TopID], [Name], [Photo], [Type], [Color], [Season], [Occasion]) VALUES (1, N'The Feathered Tee', N'~/Content/photos/tops/feathertee.jpg', N't-shirt', N'grey', N'any', N'casual')
INSERT [dbo].[Top] ([TopID], [Name], [Photo], [Type], [Color], [Season], [Occasion]) VALUES (2, N'The Everyday Tee with Pocket', N'~/Content/photos/tops/greytee.jpg', N't-shirt', N'grey', N'any', N'casual')
INSERT [dbo].[Top] ([TopID], [Name], [Photo], [Type], [Color], [Season], [Occasion]) VALUES (3, N'The Original Blazer', N'~/Content/photos/tops/blackblazer.jpg', N'blazer', N'black', N'any', N'business')
INSERT [dbo].[Top] ([TopID], [Name], [Photo], [Type], [Color], [Season], [Occasion]) VALUES (4, N'The Fashionista Dress', N'~/Content/photos/tops/darkbluedress.jpg', N'dress', N'dark blue', N'winter', N'any')
INSERT [dbo].[Top] ([TopID], [Name], [Photo], [Type], [Color], [Season], [Occasion]) VALUES (5, N'The Everyday Cardigan', N'~/Content/photos/tops/everydaycardigan.jpg', N'cardigan', N'tan', N'fall', N'casual')
INSERT [dbo].[Top] ([TopID], [Name], [Photo], [Type], [Color], [Season], [Occasion]) VALUES (6, N'The Casual Blouse', N'~/Content/photos/tops/greenbuttonblouse.jpg', N'blouse', N'jade', N'fall', N'casual')
INSERT [dbo].[Top] ([TopID], [Name], [Photo], [Type], [Color], [Season], [Occasion]) VALUES (7, N'The Comfy Sweater', N'~/Content/photos/tops/knittedsweater.jpg', N'sweater', N'cream', N'fall', N'any')
INSERT [dbo].[Top] ([TopID], [Name], [Photo], [Type], [Color], [Season], [Occasion]) VALUES (8, N'The Lounge Sweater', N'~/Content/photos/tops/loosesweater.jpg', N'sweater', N'grey', N'fall', N'casual')
INSERT [dbo].[Top] ([TopID], [Name], [Photo], [Type], [Color], [Season], [Occasion]) VALUES (10, N'The Casual Blazer', N'~/Content/photos/tops/tanblazer.jpg', N'blazer', N'tan', N'any', N'casual')
INSERT [dbo].[Top] ([TopID], [Name], [Photo], [Type], [Color], [Season], [Occasion]) VALUES (11, N'The Vintage Dress', N'~/Content/photos/tops/redblackpolkadotdress.jpg', N'dress', N'red black', N'any', N'casual')
INSERT [dbo].[Top] ([TopID], [Name], [Photo], [Type], [Color], [Season], [Occasion]) VALUES (12, N'The Favorite Blouse', N'~/Content/photos/tops/blueblouse.jpg', N'blouse', N'blue', N'any', N'casual')
SET IDENTITY_INSERT [dbo].[Top] OFF
SET IDENTITY_INSERT [dbo].[Wardrobe] ON 

INSERT [dbo].[Wardrobe] ([WardrobeID], [TopID], [BottomID], [ShoeID], [AccessorieID]) VALUES (3, 1, 1, 1, 1)
INSERT [dbo].[Wardrobe] ([WardrobeID], [TopID], [BottomID], [ShoeID], [AccessorieID]) VALUES (4, 6, 2, 2, 2)
SET IDENTITY_INSERT [dbo].[Wardrobe] OFF
ALTER TABLE [dbo].[Wardrobe]  WITH CHECK ADD  CONSTRAINT [FK_Wardrobe_Accessories] FOREIGN KEY([AccessorieID])
REFERENCES [dbo].[Accessories] ([AccessorieID])
GO
ALTER TABLE [dbo].[Wardrobe] CHECK CONSTRAINT [FK_Wardrobe_Accessories]
GO
ALTER TABLE [dbo].[Wardrobe]  WITH CHECK ADD  CONSTRAINT [FK_Wardrobe_Bottom] FOREIGN KEY([BottomID])
REFERENCES [dbo].[Bottom] ([BottomID])
GO
ALTER TABLE [dbo].[Wardrobe] CHECK CONSTRAINT [FK_Wardrobe_Bottom]
GO
ALTER TABLE [dbo].[Wardrobe]  WITH CHECK ADD  CONSTRAINT [FK_Wardrobe_Shoe] FOREIGN KEY([ShoeID])
REFERENCES [dbo].[Shoe] ([ShoeID])
GO
ALTER TABLE [dbo].[Wardrobe] CHECK CONSTRAINT [FK_Wardrobe_Shoe]
GO
ALTER TABLE [dbo].[Wardrobe]  WITH CHECK ADD  CONSTRAINT [FK_Wardrobe_Top] FOREIGN KEY([TopID])
REFERENCES [dbo].[Top] ([TopID])
GO
ALTER TABLE [dbo].[Wardrobe] CHECK CONSTRAINT [FK_Wardrobe_Top]
GO
USE [master]
GO
ALTER DATABASE [wardrobe] SET  READ_WRITE 
GO
