USE [master]
GO
/****** Object:  Database [JJOO]    Script Date: 15/8/2024 15:59:44 ******/
CREATE DATABASE [JJOO]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'JJOO', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\JJOO.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'JJOO_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\JJOO_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [JJOO] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [JJOO].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [JJOO] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [JJOO] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [JJOO] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [JJOO] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [JJOO] SET ARITHABORT OFF 
GO
ALTER DATABASE [JJOO] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [JJOO] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [JJOO] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [JJOO] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [JJOO] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [JJOO] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [JJOO] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [JJOO] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [JJOO] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [JJOO] SET  DISABLE_BROKER 
GO
ALTER DATABASE [JJOO] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [JJOO] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [JJOO] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [JJOO] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [JJOO] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [JJOO] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [JJOO] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [JJOO] SET RECOVERY FULL 
GO
ALTER DATABASE [JJOO] SET  MULTI_USER 
GO
ALTER DATABASE [JJOO] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [JJOO] SET DB_CHAINING OFF 
GO
ALTER DATABASE [JJOO] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [JJOO] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [JJOO] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'JJOO', N'ON'
GO
ALTER DATABASE [JJOO] SET QUERY_STORE = OFF
GO
USE [JJOO]
GO
/****** Object:  User [alumno]    Script Date: 15/8/2024 15:59:44 ******/
CREATE USER [alumno] FOR LOGIN [alumno] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  Table [dbo].[Deportes]    Script Date: 15/8/2024 15:59:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Deportes](
	[IdDeporte] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](200) NOT NULL,
	[Foto] [text] NOT NULL,
 CONSTRAINT [PK_Deportes] PRIMARY KEY CLUSTERED 
(
	[IdDeporte] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Deportistas]    Script Date: 15/8/2024 15:59:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Deportistas](
	[IdDeportista] [int] IDENTITY(1,1) NOT NULL,
	[Apellido] [varchar](200) NOT NULL,
	[Nombre] [varchar](200) NOT NULL,
	[FechaNacimiento] [date] NOT NULL,
	[Foto] [varchar](2500) NOT NULL,
	[IdPais] [int] NOT NULL,
	[IdDeporte] [int] NOT NULL,
 CONSTRAINT [PK_Deportistas] PRIMARY KEY CLUSTERED 
(
	[IdDeportista] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Paises]    Script Date: 15/8/2024 15:59:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Paises](
	[IdPais] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](200) NOT NULL,
	[Bandera] [text] NOT NULL,
	[FechaFundacion] [date] NOT NULL,
 CONSTRAINT [PK_Paises] PRIMARY KEY CLUSTERED 
(
	[IdPais] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Deportes] ON 

INSERT [dbo].[Deportes] ([IdDeporte], [Nombre], [Foto]) VALUES (2, N'futbol', N'https://www.google.com/imgres?q=futbol&imgurl=https%3A%2F%2Fupload.wikimedia.org%2Fwikipedia%2Fcommons%2Fthumb%2F4%2F42%2FFootball_in_Bloomington%252C_Indiana%252C_1995.jpg%2F640px-Football_in_Bloomington%252C_Indiana%252C_1995.jpg&imgrefurl=https%3A%2F%2Fes.wikipedia.org%2Fwiki%2FF%25C3%25BAtbol&docid=cOAmVXPCVLFwxM&tbnid=Ua1P28xXE5jAuM&vet=12ahUKEwiuzMGKzfeHAxVZvJUCHVAiBgAQM3oECBkQAA..i&w=640&h=436&hcb=2&itg=1&ved=2ahUKEwiuzMGKzfeHAxVZvJUCHVAiBgAQM3oECBkQAA')
INSERT [dbo].[Deportes] ([IdDeporte], [Nombre], [Foto]) VALUES (3, N'tennis', N'https://www.google.com/imgres?q=tennis&imgurl=https%3A%2F%2Fupload.wikimedia.org%2Fwikipedia%2Fcommons%2Fthumb%2F9%2F94%2F2013_Australian_Open_-_Guillaume_Rufin.jpg%2F1200px-2013_Australian_Open_-_Guillaume_Rufin.jpg&imgrefurl=https%3A%2F%2Fes.wikipedia.org%2Fwiki%2FTenis&docid=wK2dcX2_cIpR6M&tbnid=T_UB2O7FtPcVHM&vet=12ahUKEwidlfyUzfeHAxVpppUCHcYJB_EQM3oECBgQAA..i&w=1200&h=1800&hcb=2&ved=2ahUKEwidlfyUzfeHAxVpppUCHcYJB_EQM3oECBgQAA')
INSERT [dbo].[Deportes] ([IdDeporte], [Nombre], [Foto]) VALUES (4, N'basketball', N'https://www.google.com/imgres?q=basketball&imgurl=https%3A%2F%2Fstatic.nike.com%2Fa%2Fimages%2Ff_auto%2Ccs_srgb%2Fw_1536%2Cc_limit%2Fef694d9b-8d0b-4d92-9a6c-dbdf5db61071%2Fnike-basketball.jpg&imgrefurl=https%3A%2F%2Fwww.nike.com%2Fes%2Fbaloncesto&docid=SCDVVcKaOKRmSM&tbnid=ngC76Bi9SVt1DM&vet=12ahUKEwjthMSczfeHAxV1rJUCHXPiKWUQM3oECBoQAA..i&w=880&h=1100&hcb=2&ved=2ahUKEwjthMSczfeHAxV1rJUCHXPiKWUQM3oECBoQAA')
INSERT [dbo].[Deportes] ([IdDeporte], [Nombre], [Foto]) VALUES (5, N'padel', N'https://www.google.com/imgres?q=padel&imgurl=https%3A%2F%2Fe00-marca.uecdn.es%2Fblogs%2Fespanasemueve%2Fimagenes_posts%2F2022%2F06%2F03%2F205885.jpg&imgrefurl=https%3A%2F%2Fwww.marca.com%2Fblogs%2Fespanasemueve%2F2022%2F06%2F03%2Fel-padel-se-convierte-en-el-deporte-que.html&docid=OrpvM_0KEPC5cM&tbnid=HsByAPdnjvUUUM&vet=12ahUKEwikgdivzfeHAxWOqJUCHfjtFUUQM3oECBoQAA..i&w=640&h=360&hcb=2&ved=2ahUKEwikgdivzfeHAxWOqJUCHfjtFUUQM3oECBoQAA')
INSERT [dbo].[Deportes] ([IdDeporte], [Nombre], [Foto]) VALUES (6, N'ping pong', N'https://www.google.com/imgres?q=ping%20pong&imgurl=https%3A%2F%2Fupload.wikimedia.org%2Fwikipedia%2Fcommons%2F2%2F29%2F2012_Summer_Olympics_Men%2527s_Team_Table_Tennis_Final_1.jpg&imgrefurl=https%3A%2F%2Fes.wikipedia.org%2Fwiki%2FTenis_de_mesa&docid=yLHhz_17-YosjM&tbnid=gH20X3wF2s6T6M&vet=12ahUKEwiJi528zfeHAxVSrZUCHecELmYQM3oECBgQAA..i&w=3872&h=2592&hcb=2&ved=2ahUKEwiJi528zfeHAxVSrZUCHecELmYQM3oECBgQAA')
SET IDENTITY_INSERT [dbo].[Deportes] OFF
GO
SET IDENTITY_INSERT [dbo].[Deportistas] ON 

INSERT [dbo].[Deportistas] ([IdDeportista], [Apellido], [Nombre], [FechaNacimiento], [Foto], [IdPais], [IdDeporte]) VALUES (3, N'Alvarez', N'Julian', CAST(N'1999-05-05' AS Date), N'data:image/webp;base64,UklGRoobAABXRUJQVlA4IH4bAAAwuQCdASo4ATgBPpVGnEslo68xpVPrOjASiWNt/IEIkpFQYkA2DfwpFcF0C9XdcGwdtOk9encp/basOoh8bpkZbLge5Sj3SzbXt9HfkD8Ro8d4Ov20ghkB3wHO1GxyMi6s8KZPuGQMBRO+qw+kiajfW3h56+/WnJ+X2OlE+cLeRDPaX+SEH7yjjcvmOQqeTrrptLxMBHkXCt/nw2GGT0cYS9axqRwPp68c69F2albhV9hb906SyAWJlOmgYvLulfguviv/1OM9kDsquqfWLYP/0HK4ca3RfrG8E7/2wBQRXxmn7wf3kmLXXG1jo8hCom8Y3guWJEFS0pewHX+d6yJ+DJzJeaRK1n5cmv2qAf6CCInZ9GJsf43AJuIcXCyS44N/0ne6vewBc/akZWU1wftjbaPMUhGWs/8J0pU0NeGDgPj2cvSCttE0WWq5BDWHdYNZU', 1, 2)
INSERT [dbo].[Deportistas] ([IdDeportista], [Apellido], [Nombre], [FechaNacimiento], [Foto], [IdPais], [IdDeporte]) VALUES (8, N'Yago', N'dos Santos', CAST(N'2000-07-03' AS Date), N'data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/4QGQRXhpZgAASUkqAAgAAAAEAA4BAgAgAQAAPgAAAJiCAgAaAAAAXgEAABoBBQABAAAAeAEAABsBBQABAAAAgAEAAAAAAABCRUxHUkFERSwgU0VSQklBIC0gU0VQVEVNQkVSIDI2OiBZYWdvIERvcyBTYW50b3MsICM5OSBwb3NlcyBkdXJpbmcgIDIwMjMvMjAyNCBUdXJraXNoIEFpcmxpbmVzIEV1cm9MZWFndWUgTWVkaWEgRGF5IENydmVuYSBadmV6ZGEgTWVyaWRpYW5iZXQgQmVsZ3JhZGUgYXQgQWxla3NhbmRhciBOaWtvbGljIEhhbGwgb24gU2VwdGVtYmVyIDI2LCAyMDIzIGluIEJlbGdyYWRlLCBTZXJiaWEuIChQaG90byBieSBTcmRqYW4gU3RldmFub3ZpYy9FdXJvbGVhZ3VlIEJhc2tld', 4, 4)
INSERT [dbo].[Deportistas] ([IdDeportista], [Apellido], [Nombre], [FechaNacimiento], [Foto], [IdPais], [IdDeporte]) VALUES (29, N'Rulli', N'Geronimo', CAST(N'2002-02-02' AS Date), N'https://upload.wikimedia.org/wikipedia/commons/thumb/9/9b/GAE_-_Ajax_-_52787523707_%28Ger%C3%B3nimo_Rulli%29.jpg/250px-GAE_-_Ajax_-_52787523707_%28Ger%C3%B3nimo_Rulli%29.jpg', 1, 2)
SET IDENTITY_INSERT [dbo].[Deportistas] OFF
GO
SET IDENTITY_INSERT [dbo].[Paises] ON 

INSERT [dbo].[Paises] ([IdPais], [Nombre], [Bandera], [FechaFundacion]) VALUES (1, N'argentina', N'https://www.google.com/imgres?q=argentina&imgurl=https%3A%2F%2Fupload.wikimedia.org%2Fwikipedia%2Fcommons%2F1%2F1a%2FFlag_of_Argentina.svg&imgrefurl=https%3A%2F%2Fes.wikipedia.org%2Fwiki%2FArgentina&docid=CBoVJTwcn8K_4M&tbnid=JFk8VMZb-9okjM&vet=12ahUKEwi0vPXszfeHAxVWppUCHR1EEAEQM3oECBcQAA..i&w=800&h=500&hcb=2&ved=2ahUKEwi0vPXszfeHAxVWppUCHR1EEAEQM3oECBcQAA', CAST(N'1816-05-01' AS Date))
INSERT [dbo].[Paises] ([IdPais], [Nombre], [Bandera], [FechaFundacion]) VALUES (4, N'brasil', N'https://www.google.com/imgres?q=brasil&imgurl=https%3A%2F%2Fupload.wikimedia.org%2Fwikipedia%2Fcommons%2Fthumb%2F0%2F05%2FFlag_of_Brazil.svg%2F640px-Flag_of_Brazil.svg.png&imgrefurl=https%3A%2F%2Fes.wikipedia.org%2Fwiki%2FBrasil&docid=-gP47KokAjur8M&tbnid=J-h3fuir_LZFiM&vet=12ahUKEwjyl5qDzveHAxWxkJUCHTgdLOkQM3oECBoQAA..i&w=640&h=448&hcb=2&itg=1&ved=2ahUKEwjyl5qDzveHAxWxkJUCHTgdLOkQM3oECBoQAA', CAST(N'1822-09-07' AS Date))
INSERT [dbo].[Paises] ([IdPais], [Nombre], [Bandera], [FechaFundacion]) VALUES (5, N'uruguay', N'https://www.google.com/imgres?q=uruguay%20&imgurl=https%3A%2F%2Fupload.wikimedia.org%2Fwikipedia%2Fcommons%2Fthumb%2Ff%2Ffe%2FFlag_of_Uruguay.svg%2F640px-Flag_of_Uruguay.svg.png&imgrefurl=https%3A%2F%2Fes.wikipedia.org%2Fwiki%2FUruguay&docid=WWJnUsmAq9hdaM&tbnid=zPQPSpJ_zZydXM&vet=12ahUKEwiM_t2jzveHAxUorZUCHdw9GYYQM3oECBoQAA..i&w=640&h=427&hcb=2&itg=1&ved=2ahUKEwiM_t2jzveHAxUorZUCHdw9GYYQM3oECBoQAA', CAST(N'1825-08-25' AS Date))
INSERT [dbo].[Paises] ([IdPais], [Nombre], [Bandera], [FechaFundacion]) VALUES (6, N'israel', N'https://www.google.com/imgres?q=israel&imgurl=https%3A%2F%2Fupload.wikimedia.org%2Fwikipedia%2Fcommons%2Fthumb%2Fd%2Fd4%2FFlag_of_Israel.svg%2F640px-Flag_of_Israel.svg.png&imgrefurl=https%3A%2F%2Fes.wikipedia.org%2Fwiki%2FIsrael&docid=aFEfINWa3ix9xM&tbnid=umMhbcOEqtnzUM&vet=12ahUKEwi98qayzveHAxWnp5UCHUMUA3AQM3oECBcQAA..i&w=640&h=465&hcb=2&itg=1&ved=2ahUKEwi98qayzveHAxWnp5UCHUMUA3AQM3oECBcQAA', CAST(N'1948-05-14' AS Date))
INSERT [dbo].[Paises] ([IdPais], [Nombre], [Bandera], [FechaFundacion]) VALUES (7, N'estados unidos', N'data:image/png;base64,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', CAST(N'1775-04-19' AS Date))
SET IDENTITY_INSERT [dbo].[Paises] OFF
GO
ALTER TABLE [dbo].[Deportistas]  WITH CHECK ADD  CONSTRAINT [FK_Deportistas_Deportes] FOREIGN KEY([IdDeporte])
REFERENCES [dbo].[Deportes] ([IdDeporte])
GO
ALTER TABLE [dbo].[Deportistas] CHECK CONSTRAINT [FK_Deportistas_Deportes]
GO
ALTER TABLE [dbo].[Deportistas]  WITH CHECK ADD  CONSTRAINT [FK_Deportistas_Paises] FOREIGN KEY([IdPais])
REFERENCES [dbo].[Paises] ([IdPais])
GO
ALTER TABLE [dbo].[Deportistas] CHECK CONSTRAINT [FK_Deportistas_Paises]
GO
USE [master]
GO
ALTER DATABASE [JJOO] SET  READ_WRITE 
GO
