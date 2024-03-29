USE [master]
GO
/****** Object:  Database [ProyectoFin]    Script Date: 11/01/2019 15:04:38 ******/
CREATE DATABASE [ProyectoFin] ON  PRIMARY 
( NAME = N'ProyectoFin', FILENAME = N'c:\Users\edelm\Desktop\Miro\Programas\Cosas Microsoft SQL\ServidorXD\MSSQL10_50.SERVIDORXD\MSSQL\DATA\ProyectoFin.mdf' , SIZE = 2304KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'ProyectoFin_log', FILENAME = N'c:\Users\edelm\Desktop\Miro\Programas\Cosas Microsoft SQL\ServidorXD\MSSQL10_50.SERVIDORXD\MSSQL\DATA\ProyectoFin_log.LDF' , SIZE = 576KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [ProyectoFin] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ProyectoFin].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ProyectoFin] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [ProyectoFin] SET ANSI_NULLS OFF
GO
ALTER DATABASE [ProyectoFin] SET ANSI_PADDING OFF
GO
ALTER DATABASE [ProyectoFin] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [ProyectoFin] SET ARITHABORT OFF
GO
ALTER DATABASE [ProyectoFin] SET AUTO_CLOSE ON
GO
ALTER DATABASE [ProyectoFin] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [ProyectoFin] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [ProyectoFin] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [ProyectoFin] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [ProyectoFin] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [ProyectoFin] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [ProyectoFin] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [ProyectoFin] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [ProyectoFin] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [ProyectoFin] SET  ENABLE_BROKER
GO
ALTER DATABASE [ProyectoFin] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [ProyectoFin] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [ProyectoFin] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [ProyectoFin] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [ProyectoFin] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [ProyectoFin] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [ProyectoFin] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [ProyectoFin] SET  READ_WRITE
GO
ALTER DATABASE [ProyectoFin] SET RECOVERY SIMPLE
GO
ALTER DATABASE [ProyectoFin] SET  MULTI_USER
GO
ALTER DATABASE [ProyectoFin] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [ProyectoFin] SET DB_CHAINING OFF
GO
USE [ProyectoFin]
GO
/****** Object:  ForeignKey [FK_Pto]    Script Date: 11/01/2019 15:04:41 ******/
ALTER TABLE [dbo].[Empleado] DROP CONSTRAINT [FK_Pto]
GO
/****** Object:  ForeignKey [FK_Puesto]    Script Date: 11/01/2019 15:04:41 ******/
ALTER TABLE [dbo].[Empleado] DROP CONSTRAINT [FK_Puesto]
GO
/****** Object:  ForeignKey [FK_Turno]    Script Date: 11/01/2019 15:04:41 ******/
ALTER TABLE [dbo].[Empleado] DROP CONSTRAINT [FK_Turno]
GO
/****** Object:  ForeignKey [FK_Proovedor]    Script Date: 11/01/2019 15:04:41 ******/
ALTER TABLE [dbo].[Marca] DROP CONSTRAINT [FK_Proovedor]
GO
/****** Object:  ForeignKey [FK_Categoria]    Script Date: 11/01/2019 15:04:41 ******/
ALTER TABLE [dbo].[Producto] DROP CONSTRAINT [FK_Categoria]
GO
/****** Object:  ForeignKey [FK_Marca]    Script Date: 11/01/2019 15:04:41 ******/
ALTER TABLE [dbo].[Producto] DROP CONSTRAINT [FK_Marca]
GO
/****** Object:  ForeignKey [FK_Medida]    Script Date: 11/01/2019 15:04:41 ******/
ALTER TABLE [dbo].[Producto] DROP CONSTRAINT [FK_Medida]
GO
/****** Object:  ForeignKey [FK_Mes]    Script Date: 11/01/2019 15:04:41 ******/
ALTER TABLE [dbo].[Producto] DROP CONSTRAINT [FK_Mes]
GO
/****** Object:  ForeignKey [FK_Tamaño]    Script Date: 11/01/2019 15:04:41 ******/
ALTER TABLE [dbo].[Producto] DROP CONSTRAINT [FK_Tamaño]
GO
/****** Object:  ForeignKey [FK_Empleado]    Script Date: 11/01/2019 15:04:41 ******/
ALTER TABLE [dbo].[Ticket] DROP CONSTRAINT [FK_Empleado]
GO
/****** Object:  ForeignKey [FK_Producto]    Script Date: 11/01/2019 15:04:41 ******/
ALTER TABLE [dbo].[Ticket] DROP CONSTRAINT [FK_Producto]
GO
/****** Object:  ForeignKey [FK_PtoTicket]    Script Date: 11/01/2019 15:04:41 ******/
ALTER TABLE [dbo].[Ticket] DROP CONSTRAINT [FK_PtoTicket]
GO
/****** Object:  ForeignKey [FK_Tarjeta]    Script Date: 11/01/2019 15:04:41 ******/
ALTER TABLE [dbo].[Ticket] DROP CONSTRAINT [FK_Tarjeta]
GO
/****** Object:  ForeignKey [FK_TipPago]    Script Date: 11/01/2019 15:04:41 ******/
ALTER TABLE [dbo].[Ticket] DROP CONSTRAINT [FK_TipPago]
GO
/****** Object:  ForeignKey [FK_Almacen]    Script Date: 11/01/2019 15:04:41 ******/
ALTER TABLE [dbo].[Reabasto] DROP CONSTRAINT [FK_Almacen]
GO
/****** Object:  ForeignKey [FK_Marc]    Script Date: 11/01/2019 15:04:41 ******/
ALTER TABLE [dbo].[Reabasto] DROP CONSTRAINT [FK_Marc]
GO
/****** Object:  ForeignKey [FK_Medid]    Script Date: 11/01/2019 15:04:41 ******/
ALTER TABLE [dbo].[Reabasto] DROP CONSTRAINT [FK_Medid]
GO
/****** Object:  ForeignKey [FK_Prod]    Script Date: 11/01/2019 15:04:41 ******/
ALTER TABLE [dbo].[Reabasto] DROP CONSTRAINT [FK_Prod]
GO
/****** Object:  ForeignKey [FK_Proo]    Script Date: 11/01/2019 15:04:41 ******/
ALTER TABLE [dbo].[Reabasto] DROP CONSTRAINT [FK_Proo]
GO
/****** Object:  ForeignKey [FK_AlmInv]    Script Date: 11/01/2019 15:04:41 ******/
ALTER TABLE [dbo].[Inventario] DROP CONSTRAINT [FK_AlmInv]
GO
/****** Object:  ForeignKey [FK_MedInv]    Script Date: 11/01/2019 15:04:41 ******/
ALTER TABLE [dbo].[Inventario] DROP CONSTRAINT [FK_MedInv]
GO
/****** Object:  ForeignKey [FK_ProInv]    Script Date: 11/01/2019 15:04:41 ******/
ALTER TABLE [dbo].[Inventario] DROP CONSTRAINT [FK_ProInv]
GO
/****** Object:  Table [dbo].[Inventario]    Script Date: 11/01/2019 15:04:41 ******/
ALTER TABLE [dbo].[Inventario] DROP CONSTRAINT [FK_AlmInv]
GO
ALTER TABLE [dbo].[Inventario] DROP CONSTRAINT [FK_MedInv]
GO
ALTER TABLE [dbo].[Inventario] DROP CONSTRAINT [FK_ProInv]
GO
DROP TABLE [dbo].[Inventario]
GO
/****** Object:  Table [dbo].[Reabasto]    Script Date: 11/01/2019 15:04:41 ******/
ALTER TABLE [dbo].[Reabasto] DROP CONSTRAINT [FK_Almacen]
GO
ALTER TABLE [dbo].[Reabasto] DROP CONSTRAINT [FK_Marc]
GO
ALTER TABLE [dbo].[Reabasto] DROP CONSTRAINT [FK_Medid]
GO
ALTER TABLE [dbo].[Reabasto] DROP CONSTRAINT [FK_Prod]
GO
ALTER TABLE [dbo].[Reabasto] DROP CONSTRAINT [FK_Proo]
GO
DROP TABLE [dbo].[Reabasto]
GO
/****** Object:  Table [dbo].[Ticket]    Script Date: 11/01/2019 15:04:41 ******/
ALTER TABLE [dbo].[Ticket] DROP CONSTRAINT [FK_Empleado]
GO
ALTER TABLE [dbo].[Ticket] DROP CONSTRAINT [FK_Producto]
GO
ALTER TABLE [dbo].[Ticket] DROP CONSTRAINT [FK_PtoTicket]
GO
ALTER TABLE [dbo].[Ticket] DROP CONSTRAINT [FK_Tarjeta]
GO
ALTER TABLE [dbo].[Ticket] DROP CONSTRAINT [FK_TipPago]
GO
DROP TABLE [dbo].[Ticket]
GO
/****** Object:  Table [dbo].[Producto]    Script Date: 11/01/2019 15:04:41 ******/
ALTER TABLE [dbo].[Producto] DROP CONSTRAINT [FK_Categoria]
GO
ALTER TABLE [dbo].[Producto] DROP CONSTRAINT [FK_Marca]
GO
ALTER TABLE [dbo].[Producto] DROP CONSTRAINT [FK_Medida]
GO
ALTER TABLE [dbo].[Producto] DROP CONSTRAINT [FK_Mes]
GO
ALTER TABLE [dbo].[Producto] DROP CONSTRAINT [FK_Tamaño]
GO
DROP TABLE [dbo].[Producto]
GO
/****** Object:  Table [dbo].[Marca]    Script Date: 11/01/2019 15:04:41 ******/
ALTER TABLE [dbo].[Marca] DROP CONSTRAINT [FK_Proovedor]
GO
DROP TABLE [dbo].[Marca]
GO
/****** Object:  Table [dbo].[Empleado]    Script Date: 11/01/2019 15:04:41 ******/
ALTER TABLE [dbo].[Empleado] DROP CONSTRAINT [FK_Pto]
GO
ALTER TABLE [dbo].[Empleado] DROP CONSTRAINT [FK_Puesto]
GO
ALTER TABLE [dbo].[Empleado] DROP CONSTRAINT [FK_Turno]
GO
DROP TABLE [dbo].[Empleado]
GO
/****** Object:  Table [dbo].[TipoPago]    Script Date: 11/01/2019 15:04:41 ******/
DROP TABLE [dbo].[TipoPago]
GO
/****** Object:  Table [dbo].[Turno]    Script Date: 11/01/2019 15:04:41 ******/
DROP TABLE [dbo].[Turno]
GO
/****** Object:  Table [dbo].[Tamaño]    Script Date: 11/01/2019 15:04:41 ******/
DROP TABLE [dbo].[Tamaño]
GO
/****** Object:  Table [dbo].[Tarjeta]    Script Date: 11/01/2019 15:04:41 ******/
DROP TABLE [dbo].[Tarjeta]
GO
/****** Object:  Table [dbo].[Almacen]    Script Date: 11/01/2019 15:04:41 ******/
DROP TABLE [dbo].[Almacen]
GO
/****** Object:  Table [dbo].[Categoria]    Script Date: 11/01/2019 15:04:40 ******/
DROP TABLE [dbo].[Categoria]
GO
/****** Object:  Table [dbo].[Medida]    Script Date: 11/01/2019 15:04:40 ******/
DROP TABLE [dbo].[Medida]
GO
/****** Object:  Table [dbo].[Meses]    Script Date: 11/01/2019 15:04:40 ******/
DROP TABLE [dbo].[Meses]
GO
/****** Object:  Table [dbo].[Proovedor]    Script Date: 11/01/2019 15:04:40 ******/
DROP TABLE [dbo].[Proovedor]
GO
/****** Object:  Table [dbo].[PtoDeVenta]    Script Date: 11/01/2019 15:04:40 ******/
DROP TABLE [dbo].[PtoDeVenta]
GO
/****** Object:  Table [dbo].[Puesto]    Script Date: 11/01/2019 15:04:40 ******/
DROP TABLE [dbo].[Puesto]
GO
/****** Object:  Table [dbo].[Puesto]    Script Date: 11/01/2019 15:04:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Puesto](
	[Puesto_ID] [int] NOT NULL,
	[NombrePuesto] [varchar](30) NOT NULL,
	[HoraEntrada] [time](7) NOT NULL,
	[HoraSalida] [time](7) NOT NULL,
	[PagoXHora] [int] NOT NULL,
	[HorasTrabajo] [int] NOT NULL,
	[Sueldo]  AS ([PagoXHora]*[HorasTrabajo]),
PRIMARY KEY CLUSTERED 
(
	[Puesto_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Puesto] ([Puesto_ID], [NombrePuesto], [HoraEntrada], [HoraSalida], [PagoXHora], [HorasTrabajo]) VALUES (1, N'Cajero', CAST(0x07000C41DD3E0000 AS Time), CAST(0x07004C64EB810000 AS Time), 300, 8)
INSERT [dbo].[Puesto] ([Puesto_ID], [NombrePuesto], [HoraEntrada], [HoraSalida], [PagoXHora], [HorasTrabajo]) VALUES (2, N'Cajero', CAST(0x07004C64EB810000 AS Time), CAST(0x070058A5C8C00000 AS Time), 300, 8)
INSERT [dbo].[Puesto] ([Puesto_ID], [NombrePuesto], [HoraEntrada], [HoraSalida], [PagoXHora], [HorasTrabajo]) VALUES (3, N'Conserje', CAST(0x07000C41DD3E0000 AS Time), CAST(0x07004C64EB810000 AS Time), 150, 8)
INSERT [dbo].[Puesto] ([Puesto_ID], [NombrePuesto], [HoraEntrada], [HoraSalida], [PagoXHora], [HorasTrabajo]) VALUES (4, N'Conserje', CAST(0x07004C64EB810000 AS Time), CAST(0x070058A5C8C00000 AS Time), 150, 8)
INSERT [dbo].[Puesto] ([Puesto_ID], [NombrePuesto], [HoraEntrada], [HoraSalida], [PagoXHora], [HorasTrabajo]) VALUES (5, N'Guardia', CAST(0x07000C41DD3E0000 AS Time), CAST(0x07004C64EB810000 AS Time), 350, 8)
INSERT [dbo].[Puesto] ([Puesto_ID], [NombrePuesto], [HoraEntrada], [HoraSalida], [PagoXHora], [HorasTrabajo]) VALUES (6, N'Guardia', CAST(0x07004C64EB810000 AS Time), CAST(0x070058A5C8C00000 AS Time), 350, 8)
INSERT [dbo].[Puesto] ([Puesto_ID], [NombrePuesto], [HoraEntrada], [HoraSalida], [PagoXHora], [HorasTrabajo]) VALUES (7, N'Acomodador', CAST(0x07000C41DD3E0000 AS Time), CAST(0x07004C64EB810000 AS Time), 300, 8)
INSERT [dbo].[Puesto] ([Puesto_ID], [NombrePuesto], [HoraEntrada], [HoraSalida], [PagoXHora], [HorasTrabajo]) VALUES (8, N'Acomodador', CAST(0x07004C64EB810000 AS Time), CAST(0x070058A5C8C00000 AS Time), 300, 8)
INSERT [dbo].[Puesto] ([Puesto_ID], [NombrePuesto], [HoraEntrada], [HoraSalida], [PagoXHora], [HorasTrabajo]) VALUES (9, N'Cajero 2', CAST(0x07000C41DD3E0000 AS Time), CAST(0x07004C64EB810000 AS Time), 300, 8)
INSERT [dbo].[Puesto] ([Puesto_ID], [NombrePuesto], [HoraEntrada], [HoraSalida], [PagoXHora], [HorasTrabajo]) VALUES (10, N'Cajero 2', CAST(0x07004C64EB810000 AS Time), CAST(0x070058A5C8C00000 AS Time), 300, 8)
/****** Object:  Table [dbo].[PtoDeVenta]    Script Date: 11/01/2019 15:04:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PtoDeVenta](
	[Pto_ID] [int] NOT NULL,
	[Calle] [varchar](50) NOT NULL,
	[Colonia] [varchar](50) NOT NULL,
	[Ciudad] [varchar](50) NOT NULL,
	[Estado] [varchar](50) NOT NULL,
	[Pais] [varchar](50) NOT NULL,
	[Ubicacion]  AS (((((((([Calle]+', ')+[Colonia])+', ')+[Ciudad])+', ')+[Estado])+', ')+[Pais]),
	[CodPostal] [bigint] NOT NULL,
	[HoraApertura] [time](7) NOT NULL,
	[HoraCerrado] [time](7) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Pto_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[PtoDeVenta] ([Pto_ID], [Calle], [Colonia], [Ciudad], [Estado], [Pais], [CodPostal], [HoraApertura], [HoraCerrado]) VALUES (1, N'Sonora', N'San Miguel', N'Monterrey', N'Nuevo Leon', N'México', 158475, CAST(0x07000C41DD3E0000 AS Time), CAST(0x07002058A3A70000 AS Time))
INSERT [dbo].[PtoDeVenta] ([Pto_ID], [Calle], [Colonia], [Ciudad], [Estado], [Pais], [CodPostal], [HoraApertura], [HoraCerrado]) VALUES (2, N'Sino', N'Torres', N'San Nicolas', N'Nuevo Leon', N'México', 521472, CAST(0x07000C41DD3E0000 AS Time), CAST(0x07002058A3A70000 AS Time))
INSERT [dbo].[PtoDeVenta] ([Pto_ID], [Calle], [Colonia], [Ciudad], [Estado], [Pais], [CodPostal], [HoraApertura], [HoraCerrado]) VALUES (3, N'Cerro', N'Corona', N'San Pedro', N'Nuevo Leon', N'México', 514879, CAST(0x0700D85EAC3A0000 AS Time), CAST(0x0700F0E066B80000 AS Time))
INSERT [dbo].[PtoDeVenta] ([Pto_ID], [Calle], [Colonia], [Ciudad], [Estado], [Pais], [CodPostal], [HoraApertura], [HoraCerrado]) VALUES (4, N'Campana', N'Frida', N'San Nicolas', N'Nuevo Leon', N'México', 548961, CAST(0x07000C41DD3E0000 AS Time), CAST(0x07002058A3A70000 AS Time))
INSERT [dbo].[PtoDeVenta] ([Pto_ID], [Calle], [Colonia], [Ciudad], [Estado], [Pais], [CodPostal], [HoraApertura], [HoraCerrado]) VALUES (5, N'Trino', N'Trono', N'San Nicolas', N'Nuevo Leon', N'México', 256987, CAST(0x0700F2CFC43C0000 AS Time), CAST(0x07002058A3A70000 AS Time))
INSERT [dbo].[PtoDeVenta] ([Pto_ID], [Calle], [Colonia], [Ciudad], [Estado], [Pais], [CodPostal], [HoraApertura], [HoraCerrado]) VALUES (6, N'Topo', N'Trago', N'Apodaca', N'Nuevo Leon', N'México', 215487, CAST(0x07005A9426450000 AS Time), CAST(0x0700881C05B00000 AS Time))
INSERT [dbo].[PtoDeVenta] ([Pto_ID], [Calle], [Colonia], [Ciudad], [Estado], [Pais], [CodPostal], [HoraApertura], [HoraCerrado]) VALUES (7, N'Tinmio', N'Zocalo', N'San Nicolas', N'Nuevo Leon', N'México', 215698, CAST(0x0700BEED93380000 AS Time), CAST(0x07002058A3A70000 AS Time))
INSERT [dbo].[PtoDeVenta] ([Pto_ID], [Calle], [Colonia], [Ciudad], [Estado], [Pais], [CodPostal], [HoraApertura], [HoraCerrado]) VALUES (8, N'Tronami', N'ABCDEF', N'Monterrey', N'Nuevo Leon', N'Méxcio', 215965, CAST(0x070074053F470000 AS Time), CAST(0x07002058A3A70000 AS Time))
INSERT [dbo].[PtoDeVenta] ([Pto_ID], [Calle], [Colonia], [Ciudad], [Estado], [Pais], [CodPostal], [HoraApertura], [HoraCerrado]) VALUES (9, N'Tonito', N'logiano', N'Saltillo', N'Coahuila', N'México', 215987, CAST(0x0700DCC9A04F0000 AS Time), CAST(0x0700881C05B00000 AS Time))
INSERT [dbo].[PtoDeVenta] ([Pto_ID], [Calle], [Colonia], [Ciudad], [Estado], [Pais], [CodPostal], [HoraApertura], [HoraCerrado]) VALUES (10, N'so live', N'a life', N'you will', N'remember', N'Estados Unidos', 125987, CAST(0x070010ACD1530000 AS Time), CAST(0x0700881C05B00000 AS Time))
/****** Object:  Table [dbo].[Proovedor]    Script Date: 11/01/2019 15:04:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Proovedor](
	[Proovedor_ID] [int] NOT NULL,
	[NombreProo] [varchar](30) NOT NULL,
	[TelProo] [bigint] NOT NULL,
	[CorreoProo] [varchar](30) NULL,
PRIMARY KEY CLUSTERED 
(
	[Proovedor_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Proovedor] ([Proovedor_ID], [NombreProo], [TelProo], [CorreoProo]) VALUES (1, N'Bimbo', 8156321456, N'Bimbo@hotmail.com')
INSERT [dbo].[Proovedor] ([Proovedor_ID], [NombreProo], [TelProo], [CorreoProo]) VALUES (2, N'Coca Cola', 8145987452, N'CocaSupport@hotmail.com')
INSERT [dbo].[Proovedor] ([Proovedor_ID], [NombreProo], [TelProo], [CorreoProo]) VALUES (3, N'Pepsi Co', 8154796584, N'PepsiSup@hotmail.com')
INSERT [dbo].[Proovedor] ([Proovedor_ID], [NombreProo], [TelProo], [CorreoProo]) VALUES (4, N'Nestlé', 8152364789, N'NestSup@hotmail.com')
INSERT [dbo].[Proovedor] ([Proovedor_ID], [NombreProo], [TelProo], [CorreoProo]) VALUES (5, N'Danone', 8156324875, N'DanoSupport@gmail.com')
INSERT [dbo].[Proovedor] ([Proovedor_ID], [NombreProo], [TelProo], [CorreoProo]) VALUES (6, N'Kellogs', 8156320125, N'KellogSup@live.com')
INSERT [dbo].[Proovedor] ([Proovedor_ID], [NombreProo], [TelProo], [CorreoProo]) VALUES (7, N'Mars', 81256321478, N'Mars@hotmail.support.com')
INSERT [dbo].[Proovedor] ([Proovedor_ID], [NombreProo], [TelProo], [CorreoProo]) VALUES (8, N'Mondelez', 8156321478, N'Mondelez@Support.com')
/****** Object:  Table [dbo].[Meses]    Script Date: 11/01/2019 15:04:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Meses](
	[Mes_ID] [int] NOT NULL,
	[Mes] [varchar](30) NULL,
PRIMARY KEY CLUSTERED 
(
	[Mes_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Meses] ([Mes_ID], [Mes]) VALUES (1, N'Enero')
INSERT [dbo].[Meses] ([Mes_ID], [Mes]) VALUES (2, N'Febrero')
INSERT [dbo].[Meses] ([Mes_ID], [Mes]) VALUES (3, N'Marzo')
INSERT [dbo].[Meses] ([Mes_ID], [Mes]) VALUES (4, N'Abril')
INSERT [dbo].[Meses] ([Mes_ID], [Mes]) VALUES (5, N'Mayo')
INSERT [dbo].[Meses] ([Mes_ID], [Mes]) VALUES (6, N'Junio')
INSERT [dbo].[Meses] ([Mes_ID], [Mes]) VALUES (7, N'Julio')
INSERT [dbo].[Meses] ([Mes_ID], [Mes]) VALUES (8, N'Agosto')
INSERT [dbo].[Meses] ([Mes_ID], [Mes]) VALUES (9, N'Septiembre')
INSERT [dbo].[Meses] ([Mes_ID], [Mes]) VALUES (10, N'Octubre')
INSERT [dbo].[Meses] ([Mes_ID], [Mes]) VALUES (11, N'Noviembre')
INSERT [dbo].[Meses] ([Mes_ID], [Mes]) VALUES (12, N'Diciembre')
/****** Object:  Table [dbo].[Medida]    Script Date: 11/01/2019 15:04:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Medida](
	[Medida_ID] [int] NOT NULL,
	[Medida] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Medida_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Medida] ([Medida_ID], [Medida]) VALUES (1, N'litros')
INSERT [dbo].[Medida] ([Medida_ID], [Medida]) VALUES (2, N'mililitros')
INSERT [dbo].[Medida] ([Medida_ID], [Medida]) VALUES (3, N'Kilogramos')
INSERT [dbo].[Medida] ([Medida_ID], [Medida]) VALUES (4, N'gramos')
INSERT [dbo].[Medida] ([Medida_ID], [Medida]) VALUES (5, N'cajas')
INSERT [dbo].[Medida] ([Medida_ID], [Medida]) VALUES (6, N'Paquetes')
INSERT [dbo].[Medida] ([Medida_ID], [Medida]) VALUES (7, N'latas')
INSERT [dbo].[Medida] ([Medida_ID], [Medida]) VALUES (8, N'bolsas')
INSERT [dbo].[Medida] ([Medida_ID], [Medida]) VALUES (9, N'botellas')
/****** Object:  Table [dbo].[Categoria]    Script Date: 11/01/2019 15:04:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Categoria](
	[Categoria_ID] [int] NOT NULL,
	[Categoria] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[Categoria_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Categoria] ([Categoria_ID], [Categoria]) VALUES (1, N'Picante')
INSERT [dbo].[Categoria] ([Categoria_ID], [Categoria]) VALUES (2, N'Gaseosa')
INSERT [dbo].[Categoria] ([Categoria_ID], [Categoria]) VALUES (3, N'Dulce')
INSERT [dbo].[Categoria] ([Categoria_ID], [Categoria]) VALUES (4, N'Chocolate')
INSERT [dbo].[Categoria] ([Categoria_ID], [Categoria]) VALUES (5, N'Salado')
/****** Object:  Table [dbo].[Almacen]    Script Date: 11/01/2019 15:04:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Almacen](
	[Almacen_ID] [int] NOT NULL,
	[Calle] [varchar](40) NULL,
	[Colonia] [varchar](40) NULL,
	[Ciudad] [varchar](40) NULL,
	[Estado] [varchar](40) NULL,
	[Pais] [varchar](40) NULL,
	[Ubicacion]  AS (((((((([Calle]+', ')+[Colonia])+', ')+[Ciudad])+', ')+[Estado])+', ')+[Pais]),
PRIMARY KEY CLUSTERED 
(
	[Almacen_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Almacen] ([Almacen_ID], [Calle], [Colonia], [Ciudad], [Estado], [Pais]) VALUES (1, N'Filadelfia', N'Callespo', N'Monterrey', N'Nuevo Leon', N'México')
INSERT [dbo].[Almacen] ([Almacen_ID], [Calle], [Colonia], [Ciudad], [Estado], [Pais]) VALUES (2, N'Coutinho', N'Contry', N'San Nicolas', N'Nuevo Leon', N'México')
INSERT [dbo].[Almacen] ([Almacen_ID], [Calle], [Colonia], [Ciudad], [Estado], [Pais]) VALUES (3, N'Gitana', N'Ceveda', N'Apodaca', N'Nuevo Leon', N'México')
INSERT [dbo].[Almacen] ([Almacen_ID], [Calle], [Colonia], [Ciudad], [Estado], [Pais]) VALUES (4, N'Lenin', N'Comunista', N'San Pedro', N'Nuevo Leon', N'México')
INSERT [dbo].[Almacen] ([Almacen_ID], [Calle], [Colonia], [Ciudad], [Estado], [Pais]) VALUES (5, N'Karl', N'Levington', N'San Nicolas', N'Nuevo Leon', N'México')
INSERT [dbo].[Almacen] ([Almacen_ID], [Calle], [Colonia], [Ciudad], [Estado], [Pais]) VALUES (6, N'Maximato', N'Independencia', N'Monterrey', N'Nuevo Leon', N'México')
INSERT [dbo].[Almacen] ([Almacen_ID], [Calle], [Colonia], [Ciudad], [Estado], [Pais]) VALUES (7, N'cerro', N'Alpes', N'Saltillo', N'Coahuila', N'México')
INSERT [dbo].[Almacen] ([Almacen_ID], [Calle], [Colonia], [Ciudad], [Estado], [Pais]) VALUES (8, N'Comandante', N'licenciado', N'Rosales', N'Tabasco', N'México')
INSERT [dbo].[Almacen] ([Almacen_ID], [Calle], [Colonia], [Ciudad], [Estado], [Pais]) VALUES (9, N'Hercules', N'Simion', N'Apodaca', N'Nuevo Leon', N'México')
INSERT [dbo].[Almacen] ([Almacen_ID], [Calle], [Colonia], [Ciudad], [Estado], [Pais]) VALUES (10, N'Atlaton', N'polo', N'San Nicolas', N'Nuevo Leon', N'México')
/****** Object:  Table [dbo].[Tarjeta]    Script Date: 11/01/2019 15:04:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Tarjeta](
	[Tarjeta_ID] [int] NOT NULL,
	[NombreTarj] [varchar](20) NOT NULL,
	[TipoTarj] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Tarjeta_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Tarjeta] ([Tarjeta_ID], [NombreTarj], [TipoTarj]) VALUES (1, N'Citibanamex', N'credito')
INSERT [dbo].[Tarjeta] ([Tarjeta_ID], [NombreTarj], [TipoTarj]) VALUES (2, N'BanRegio', N'debito')
INSERT [dbo].[Tarjeta] ([Tarjeta_ID], [NombreTarj], [TipoTarj]) VALUES (3, N'AmericanExpress', N'Credito')
INSERT [dbo].[Tarjeta] ([Tarjeta_ID], [NombreTarj], [TipoTarj]) VALUES (4, N'Santander', N'debito')
INSERT [dbo].[Tarjeta] ([Tarjeta_ID], [NombreTarj], [TipoTarj]) VALUES (5, N'visa', N'credito')
INSERT [dbo].[Tarjeta] ([Tarjeta_ID], [NombreTarj], [TipoTarj]) VALUES (6, N'HSBC', N'debito')
INSERT [dbo].[Tarjeta] ([Tarjeta_ID], [NombreTarj], [TipoTarj]) VALUES (7, N'Banco Azteca', N'debito')
INSERT [dbo].[Tarjeta] ([Tarjeta_ID], [NombreTarj], [TipoTarj]) VALUES (8, N'Libreton', N'Debito')
/****** Object:  Table [dbo].[Tamaño]    Script Date: 11/01/2019 15:04:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Tamaño](
	[Tamaño_ID] [int] NOT NULL,
	[Tamaño] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Tamaño_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Tamaño] ([Tamaño_ID], [Tamaño]) VALUES (1, N'Pequeño')
INSERT [dbo].[Tamaño] ([Tamaño_ID], [Tamaño]) VALUES (2, N'Mediano')
INSERT [dbo].[Tamaño] ([Tamaño_ID], [Tamaño]) VALUES (3, N'Grande')
/****** Object:  Table [dbo].[Turno]    Script Date: 11/01/2019 15:04:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Turno](
	[Turno_ID] [int] NOT NULL,
	[Turno] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Turno_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Turno] ([Turno_ID], [Turno]) VALUES (1, N'Matutino')
INSERT [dbo].[Turno] ([Turno_ID], [Turno]) VALUES (2, N'Vespertino')
/****** Object:  Table [dbo].[TipoPago]    Script Date: 11/01/2019 15:04:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TipoPago](
	[TipoPago_ID] [int] NOT NULL,
	[TipoPago] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[TipoPago_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[TipoPago] ([TipoPago_ID], [TipoPago]) VALUES (1, N'Tarjeta')
INSERT [dbo].[TipoPago] ([TipoPago_ID], [TipoPago]) VALUES (2, N'Efectivo')
/****** Object:  Table [dbo].[Empleado]    Script Date: 11/01/2019 15:04:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Empleado](
	[Empleado_ID] [int] NOT NULL,
	[Nombre1] [varchar](20) NOT NULL,
	[Nombre2] [varchar](20) NULL,
	[Apellido1] [varchar](20) NULL,
	[Apellido2] [varchar](20) NULL,
	[NomCompleto]  AS (((([Nombre1]+' ')+[Apellido1])+' ')+[Apellido2]),
	[Edad] [int] NOT NULL,
	[Correo] [varchar](30) NOT NULL,
	[Calle] [varchar](30) NOT NULL,
	[Colonia] [varchar](30) NOT NULL,
	[Ciudad] [varchar](30) NOT NULL,
	[Estado] [varchar](30) NOT NULL,
	[Pais] [varchar](30) NOT NULL,
	[Vivienda]  AS (((((((([Calle]+', ')+[Colonia])+', ')+[Ciudad])+', ')+[Estado])+', ')+[Pais]),
	[SegSocial] [bigint] NOT NULL,
	[Puesto_ID] [int] NOT NULL,
	[Pto_ID] [int] NOT NULL,
	[Turno_ID] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Empleado_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Empleado] ([Empleado_ID], [Nombre1], [Nombre2], [Apellido1], [Apellido2], [Edad], [Correo], [Calle], [Colonia], [Ciudad], [Estado], [Pais], [SegSocial], [Puesto_ID], [Pto_ID], [Turno_ID]) VALUES (1, N'Fernando', N'Alberto', N'Fernandez', N'Gonzales', 44, N'Fer@hotmail.com', N'Gonzalitos', N'Truncas', N'Monterrey', N'Nuevo Leon', N'México', 152684, 1, 2, 1)
INSERT [dbo].[Empleado] ([Empleado_ID], [Nombre1], [Nombre2], [Apellido1], [Apellido2], [Edad], [Correo], [Calle], [Colonia], [Ciudad], [Estado], [Pais], [SegSocial], [Puesto_ID], [Pto_ID], [Turno_ID]) VALUES (2, N'Francisco', N'Gino', N'Boca', N'Valdez', 21, N'boca@hotmail.com', N'sho', N'the', N'San Nicolas', N'Nuevo Leon', N'México', 215698, 3, 4, 1)
INSERT [dbo].[Empleado] ([Empleado_ID], [Nombre1], [Nombre2], [Apellido1], [Apellido2], [Edad], [Correo], [Calle], [Colonia], [Ciudad], [Estado], [Pais], [SegSocial], [Puesto_ID], [Pto_ID], [Turno_ID]) VALUES (3, N'Francis', N'Gio', N'Boca', N'Valdez', 32, N'boca@hotmail.com', N'sho', N'the', N'Monterrey', N'Nuevo Leon', N'México', 215678, 3, 9, 1)
INSERT [dbo].[Empleado] ([Empleado_ID], [Nombre1], [Nombre2], [Apellido1], [Apellido2], [Edad], [Correo], [Calle], [Colonia], [Ciudad], [Estado], [Pais], [SegSocial], [Puesto_ID], [Pto_ID], [Turno_ID]) VALUES (4, N'Fracis', N'Gio', N'Boca', N'Valdez', 32, N'boca@hotmail.com', N'sho', N'the', N'Monterrey', N'Nuevo Leon', N'México', 285678, 8, 7, 2)
INSERT [dbo].[Empleado] ([Empleado_ID], [Nombre1], [Nombre2], [Apellido1], [Apellido2], [Edad], [Correo], [Calle], [Colonia], [Ciudad], [Estado], [Pais], [SegSocial], [Puesto_ID], [Pto_ID], [Turno_ID]) VALUES (5, N'Francis', N'Javier', N'Boca', N'Valdez', 32, N'boca@hotmail.com', N'sho', N'Santiago', N'Apodaca', N'Nuevo Leon', N'México', 215478, 3, 10, 1)
INSERT [dbo].[Empleado] ([Empleado_ID], [Nombre1], [Nombre2], [Apellido1], [Apellido2], [Edad], [Correo], [Calle], [Colonia], [Ciudad], [Estado], [Pais], [SegSocial], [Puesto_ID], [Pto_ID], [Turno_ID]) VALUES (6, N'Frida', N'Alejandra', N'Tita', N'Americia', 45, N'shi@hotmail.com', N'sho', N'the', N'Saltillo', N'Coahuila', N'México', 214878, 10, 4, 2)
INSERT [dbo].[Empleado] ([Empleado_ID], [Nombre1], [Nombre2], [Apellido1], [Apellido2], [Edad], [Correo], [Calle], [Colonia], [Ciudad], [Estado], [Pais], [SegSocial], [Puesto_ID], [Pto_ID], [Turno_ID]) VALUES (7, N'Alexis', N'Jorge', N'Cora', N'Carason', 22, N'AleCo@hotmail.com', N'djjkd', N'poliddf', N'San Pedro', N'Nuevo Leon', N'México', 226578, 2, 5, 2)
INSERT [dbo].[Empleado] ([Empleado_ID], [Nombre1], [Nombre2], [Apellido1], [Apellido2], [Edad], [Correo], [Calle], [Colonia], [Ciudad], [Estado], [Pais], [SegSocial], [Puesto_ID], [Pto_ID], [Turno_ID]) VALUES (8, N'Coral', N'Alejandri', N'Cabo', N'Ortiz', 30, N'OrtCabo@hotmail.com', N'svjhsjo', N'ksieydbf', N'Virginia beach', N'Virginia', N'Estados Unidos', 598642, 6, 8, 2)
INSERT [dbo].[Empleado] ([Empleado_ID], [Nombre1], [Nombre2], [Apellido1], [Apellido2], [Edad], [Correo], [Calle], [Colonia], [Ciudad], [Estado], [Pais], [SegSocial], [Puesto_ID], [Pto_ID], [Turno_ID]) VALUES (9, N'Francisqui', N'Goma', N'Lorenzo', N'Glorietto', 26, N'Lore@hotmail.com', N'losdkhgit', N'abnsfhir', N'gical', N'Brizia', N'Italia', 548963, 10, 10, 2)
INSERT [dbo].[Empleado] ([Empleado_ID], [Nombre1], [Nombre2], [Apellido1], [Apellido2], [Edad], [Correo], [Calle], [Colonia], [Ciudad], [Estado], [Pais], [SegSocial], [Puesto_ID], [Pto_ID], [Turno_ID]) VALUES (10, N'Sirra', N'Magdalena', N'Hernandez', N'Vol', 36, N'Magda@hotmail.com', N'fjgiout', N'lodjkye', N'Monterrey', N'kolsiski', N'Austria', 548896, 3, 6, 1)
INSERT [dbo].[Empleado] ([Empleado_ID], [Nombre1], [Nombre2], [Apellido1], [Apellido2], [Edad], [Correo], [Calle], [Colonia], [Ciudad], [Estado], [Pais], [SegSocial], [Puesto_ID], [Pto_ID], [Turno_ID]) VALUES (11, N'Rodrigo', N'Emilio', N'Perez', N'Fernandez', 30, N'RoPe@hotmail.com', N'sho', N'the', N'Monterrey', N'Nuevo Leon', N'México', 256987, 1, 6, 1)
INSERT [dbo].[Empleado] ([Empleado_ID], [Nombre1], [Nombre2], [Apellido1], [Apellido2], [Edad], [Correo], [Calle], [Colonia], [Ciudad], [Estado], [Pais], [SegSocial], [Puesto_ID], [Pto_ID], [Turno_ID]) VALUES (12, N'Festin', N'Rodri', N'Coba', N'Lore', 30, N'Fes@hotmail.com', N'sho', N'the', N'Monterrey', N'Nuevo Leon', N'México', 256987, 2, 8, 2)
INSERT [dbo].[Empleado] ([Empleado_ID], [Nombre1], [Nombre2], [Apellido1], [Apellido2], [Edad], [Correo], [Calle], [Colonia], [Ciudad], [Estado], [Pais], [SegSocial], [Puesto_ID], [Pto_ID], [Turno_ID]) VALUES (13, N'Emilio', N'Emilio', N'Emilioson', N'Wainas', 30, N'EmiEmi@hotmail.com', N'sho', N'the', N'Monterrey', N'Nuevo Leon', N'México', 256987, 3, 7, 1)
INSERT [dbo].[Empleado] ([Empleado_ID], [Nombre1], [Nombre2], [Apellido1], [Apellido2], [Edad], [Correo], [Calle], [Colonia], [Ciudad], [Estado], [Pais], [SegSocial], [Puesto_ID], [Pto_ID], [Turno_ID]) VALUES (14, N'Daniel', N'Sancho', N'Perez', N'Fernandez', 30, N'Ripo@hotmail.com', N'sho', N'the', N'Monterrey', N'Nuevo Leon', N'México', 256987, 6, 7, 2)
INSERT [dbo].[Empleado] ([Empleado_ID], [Nombre1], [Nombre2], [Apellido1], [Apellido2], [Edad], [Correo], [Calle], [Colonia], [Ciudad], [Estado], [Pais], [SegSocial], [Puesto_ID], [Pto_ID], [Turno_ID]) VALUES (15, N'Rafael', N'James', N'Rafelson', N'Jameson', 30, N'SonJame@hotmail.com', N'sho', N'the', N'Monterrey', N'Nuevo Leon', N'México', 256987, 10, 6, 2)
/****** Object:  Table [dbo].[Marca]    Script Date: 11/01/2019 15:04:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Marca](
	[Marca_ID] [int] NOT NULL,
	[Nombre] [varchar](30) NOT NULL,
	[Proovedor_ID] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Marca_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Marca] ([Marca_ID], [Nombre], [Proovedor_ID]) VALUES (1, N'Barcel', 1)
INSERT [dbo].[Marca] ([Marca_ID], [Nombre], [Proovedor_ID]) VALUES (2, N'Wonka', 4)
INSERT [dbo].[Marca] ([Marca_ID], [Nombre], [Proovedor_ID]) VALUES (3, N'Marinela', 1)
INSERT [dbo].[Marca] ([Marca_ID], [Nombre], [Proovedor_ID]) VALUES (4, N'Gamesa', 3)
INSERT [dbo].[Marca] ([Marca_ID], [Nombre], [Proovedor_ID]) VALUES (5, N'MyM´s', 7)
INSERT [dbo].[Marca] ([Marca_ID], [Nombre], [Proovedor_ID]) VALUES (6, N'Snickers', 7)
INSERT [dbo].[Marca] ([Marca_ID], [Nombre], [Proovedor_ID]) VALUES (7, N'Milky-way', 7)
INSERT [dbo].[Marca] ([Marca_ID], [Nombre], [Proovedor_ID]) VALUES (8, N'Skittles', 7)
INSERT [dbo].[Marca] ([Marca_ID], [Nombre], [Proovedor_ID]) VALUES (9, N'Tridents', 8)
INSERT [dbo].[Marca] ([Marca_ID], [Nombre], [Proovedor_ID]) VALUES (10, N'halls', 8)
INSERT [dbo].[Marca] ([Marca_ID], [Nombre], [Proovedor_ID]) VALUES (11, N'Pepsi', 3)
/****** Object:  Table [dbo].[Producto]    Script Date: 11/01/2019 15:04:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Producto](
	[Producto_ID] [int] NOT NULL,
	[Nombre] [varchar](20) NOT NULL,
	[Marca_ID] [int] NOT NULL,
	[CantidadProducto] [int] NOT NULL,
	[Medida_ID] [int] NOT NULL,
	[Precio] [int] NOT NULL,
	[MesCadu] [int] NOT NULL,
	[AñoCadu] [int] NOT NULL,
	[Tamaño_ID] [int] NOT NULL,
	[Categoria_ID] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Producto_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Producto] ([Producto_ID], [Nombre], [Marca_ID], [CantidadProducto], [Medida_ID], [Precio], [MesCadu], [AñoCadu], [Tamaño_ID], [Categoria_ID]) VALUES (1, N'Takis Fuego', 1, 350, 4, 15, 6, 2020, 1, 1)
INSERT [dbo].[Producto] ([Producto_ID], [Nombre], [Marca_ID], [CantidadProducto], [Medida_ID], [Precio], [MesCadu], [AñoCadu], [Tamaño_ID], [Categoria_ID]) VALUES (2, N'MyM´s', 5, 200, 4, 15, 7, 2020, 1, 4)
INSERT [dbo].[Producto] ([Producto_ID], [Nombre], [Marca_ID], [CantidadProducto], [Medida_ID], [Precio], [MesCadu], [AñoCadu], [Tamaño_ID], [Categoria_ID]) VALUES (3, N'Pepsi', 11, 500, 2, 14, 9, 2020, 2, 2)
INSERT [dbo].[Producto] ([Producto_ID], [Nombre], [Marca_ID], [CantidadProducto], [Medida_ID], [Precio], [MesCadu], [AñoCadu], [Tamaño_ID], [Categoria_ID]) VALUES (4, N'Galletas Emperador', 4, 100, 4, 14, 12, 2020, 2, 4)
INSERT [dbo].[Producto] ([Producto_ID], [Nombre], [Marca_ID], [CantidadProducto], [Medida_ID], [Precio], [MesCadu], [AñoCadu], [Tamaño_ID], [Categoria_ID]) VALUES (5, N'Nerds', 2, 50, 4, 10, 11, 2021, 1, 3)
INSERT [dbo].[Producto] ([Producto_ID], [Nombre], [Marca_ID], [CantidadProducto], [Medida_ID], [Precio], [MesCadu], [AñoCadu], [Tamaño_ID], [Categoria_ID]) VALUES (6, N'Runners', 1, 400, 4, 12, 10, 2021, 2, 1)
INSERT [dbo].[Producto] ([Producto_ID], [Nombre], [Marca_ID], [CantidadProducto], [Medida_ID], [Precio], [MesCadu], [AñoCadu], [Tamaño_ID], [Categoria_ID]) VALUES (7, N'Gamesa clasicas', 4, 100, 4, 15, 4, 2020, 2, 3)
INSERT [dbo].[Producto] ([Producto_ID], [Nombre], [Marca_ID], [CantidadProducto], [Medida_ID], [Precio], [MesCadu], [AñoCadu], [Tamaño_ID], [Categoria_ID]) VALUES (8, N'Caja Emperador', 4, 8, 6, 20, 12, 2022, 3, 4)
INSERT [dbo].[Producto] ([Producto_ID], [Nombre], [Marca_ID], [CantidadProducto], [Medida_ID], [Precio], [MesCadu], [AñoCadu], [Tamaño_ID], [Categoria_ID]) VALUES (9, N'Pepsi Light', 11, 500, 2, 13, 6, 2019, 2, 2)
/****** Object:  Table [dbo].[Ticket]    Script Date: 11/01/2019 15:04:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ticket](
	[TicketNum] [int] NOT NULL,
	[Pto_ID] [int] NOT NULL,
	[Empleado_ID] [int] NOT NULL,
	[Producto_ID] [int] NOT NULL,
	[Precio] [int] NOT NULL,
	[Cantidad] [int] NOT NULL,
	[Total]  AS ([Precio]*[Cantidad]),
	[TotalPagado] [int] NOT NULL,
	[TipoPago_ID] [int] NOT NULL,
	[Fecha] [datetime] NOT NULL,
	[Tarjeta_ID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[TicketNum] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Ticket] ([TicketNum], [Pto_ID], [Empleado_ID], [Producto_ID], [Precio], [Cantidad], [TotalPagado], [TipoPago_ID], [Fecha], [Tarjeta_ID]) VALUES (1, 2, 1, 7, 15, 2, 50, 2, CAST(0x0000000000000000 AS DateTime), NULL)
INSERT [dbo].[Ticket] ([TicketNum], [Pto_ID], [Empleado_ID], [Producto_ID], [Precio], [Cantidad], [TotalPagado], [TipoPago_ID], [Fecha], [Tarjeta_ID]) VALUES (2, 5, 2, 5, 10, 2, 20, 1, CAST(0x0000000000000000 AS DateTime), 2)
INSERT [dbo].[Ticket] ([TicketNum], [Pto_ID], [Empleado_ID], [Producto_ID], [Precio], [Cantidad], [TotalPagado], [TipoPago_ID], [Fecha], [Tarjeta_ID]) VALUES (3, 5, 2, 5, 10, 2, 20, 1, CAST(0x0000000000000000 AS DateTime), 2)
INSERT [dbo].[Ticket] ([TicketNum], [Pto_ID], [Empleado_ID], [Producto_ID], [Precio], [Cantidad], [TotalPagado], [TipoPago_ID], [Fecha], [Tarjeta_ID]) VALUES (4, 5, 1, 5, 10, 2, 20, 1, CAST(0x0000000000000000 AS DateTime), 2)
INSERT [dbo].[Ticket] ([TicketNum], [Pto_ID], [Empleado_ID], [Producto_ID], [Precio], [Cantidad], [TotalPagado], [TipoPago_ID], [Fecha], [Tarjeta_ID]) VALUES (5, 5, 4, 5, 10, 2, 20, 1, CAST(0x0000000000000000 AS DateTime), 2)
INSERT [dbo].[Ticket] ([TicketNum], [Pto_ID], [Empleado_ID], [Producto_ID], [Precio], [Cantidad], [TotalPagado], [TipoPago_ID], [Fecha], [Tarjeta_ID]) VALUES (6, 5, 4, 5, 10, 2, 20, 1, CAST(0x0000000000000000 AS DateTime), 2)
INSERT [dbo].[Ticket] ([TicketNum], [Pto_ID], [Empleado_ID], [Producto_ID], [Precio], [Cantidad], [TotalPagado], [TipoPago_ID], [Fecha], [Tarjeta_ID]) VALUES (7, 8, 6, 9, 13, 2, 26, 1, CAST(0x0000000000000000 AS DateTime), 5)
INSERT [dbo].[Ticket] ([TicketNum], [Pto_ID], [Empleado_ID], [Producto_ID], [Precio], [Cantidad], [TotalPagado], [TipoPago_ID], [Fecha], [Tarjeta_ID]) VALUES (8, 9, 6, 9, 13, 4, 52, 1, CAST(0x0000000000000000 AS DateTime), 5)
/****** Object:  Table [dbo].[Reabasto]    Script Date: 11/01/2019 15:04:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Reabasto](
	[ReabastoNum] [bigint] NOT NULL,
	[Almacen_ID] [int] NOT NULL,
	[Proovedor_ID] [int] NOT NULL,
	[Producto_ID] [int] NOT NULL,
	[CostoXCanti] [int] NOT NULL,
	[Canti] [int] NOT NULL,
	[Total]  AS ([CostoXCanti]*[Canti]),
	[Pago] [int] NOT NULL,
	[Fecha] [datetime] NOT NULL,
	[Medida_ID] [int] NOT NULL,
	[Marca_ID] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ReabastoNum] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Reabasto] ([ReabastoNum], [Almacen_ID], [Proovedor_ID], [Producto_ID], [CostoXCanti], [Canti], [Pago], [Fecha], [Medida_ID], [Marca_ID]) VALUES (1, 5, 3, 3, 500, 15, 8000, CAST(0x0000000000000000 AS DateTime), 5, 9)
INSERT [dbo].[Reabasto] ([ReabastoNum], [Almacen_ID], [Proovedor_ID], [Producto_ID], [CostoXCanti], [Canti], [Pago], [Fecha], [Medida_ID], [Marca_ID]) VALUES (2, 4, 7, 2, 500, 15, 8000, CAST(0x0000000000000000 AS DateTime), 5, 5)
INSERT [dbo].[Reabasto] ([ReabastoNum], [Almacen_ID], [Proovedor_ID], [Producto_ID], [CostoXCanti], [Canti], [Pago], [Fecha], [Medida_ID], [Marca_ID]) VALUES (3, 4, 7, 2, 500, 15, 8000, CAST(0x0000000000000000 AS DateTime), 5, 5)
INSERT [dbo].[Reabasto] ([ReabastoNum], [Almacen_ID], [Proovedor_ID], [Producto_ID], [CostoXCanti], [Canti], [Pago], [Fecha], [Medida_ID], [Marca_ID]) VALUES (4, 4, 7, 2, 500, 15, 8000, CAST(0x0000000000000000 AS DateTime), 5, 5)
INSERT [dbo].[Reabasto] ([ReabastoNum], [Almacen_ID], [Proovedor_ID], [Producto_ID], [CostoXCanti], [Canti], [Pago], [Fecha], [Medida_ID], [Marca_ID]) VALUES (5, 8, 7, 2, 500, 20, 15000, CAST(0x0000000000000000 AS DateTime), 5, 5)
/****** Object:  Table [dbo].[Inventario]    Script Date: 11/01/2019 15:04:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Inventario](
	[Producto_ID] [int] NOT NULL,
	[Almacen_ID] [int] NOT NULL,
	[Cantidad] [int] NOT NULL,
	[Medida_ID] [int] NOT NULL
) ON [PRIMARY]
GO
INSERT [dbo].[Inventario] ([Producto_ID], [Almacen_ID], [Cantidad], [Medida_ID]) VALUES (2, 9, 100, 5)
/****** Object:  ForeignKey [FK_Pto]    Script Date: 11/01/2019 15:04:41 ******/
ALTER TABLE [dbo].[Empleado]  WITH CHECK ADD  CONSTRAINT [FK_Pto] FOREIGN KEY([Pto_ID])
REFERENCES [dbo].[PtoDeVenta] ([Pto_ID])
GO
ALTER TABLE [dbo].[Empleado] CHECK CONSTRAINT [FK_Pto]
GO
/****** Object:  ForeignKey [FK_Puesto]    Script Date: 11/01/2019 15:04:41 ******/
ALTER TABLE [dbo].[Empleado]  WITH CHECK ADD  CONSTRAINT [FK_Puesto] FOREIGN KEY([Puesto_ID])
REFERENCES [dbo].[Puesto] ([Puesto_ID])
GO
ALTER TABLE [dbo].[Empleado] CHECK CONSTRAINT [FK_Puesto]
GO
/****** Object:  ForeignKey [FK_Turno]    Script Date: 11/01/2019 15:04:41 ******/
ALTER TABLE [dbo].[Empleado]  WITH CHECK ADD  CONSTRAINT [FK_Turno] FOREIGN KEY([Turno_ID])
REFERENCES [dbo].[Turno] ([Turno_ID])
GO
ALTER TABLE [dbo].[Empleado] CHECK CONSTRAINT [FK_Turno]
GO
/****** Object:  ForeignKey [FK_Proovedor]    Script Date: 11/01/2019 15:04:41 ******/
ALTER TABLE [dbo].[Marca]  WITH CHECK ADD  CONSTRAINT [FK_Proovedor] FOREIGN KEY([Proovedor_ID])
REFERENCES [dbo].[Proovedor] ([Proovedor_ID])
GO
ALTER TABLE [dbo].[Marca] CHECK CONSTRAINT [FK_Proovedor]
GO
/****** Object:  ForeignKey [FK_Categoria]    Script Date: 11/01/2019 15:04:41 ******/
ALTER TABLE [dbo].[Producto]  WITH CHECK ADD  CONSTRAINT [FK_Categoria] FOREIGN KEY([Categoria_ID])
REFERENCES [dbo].[Categoria] ([Categoria_ID])
GO
ALTER TABLE [dbo].[Producto] CHECK CONSTRAINT [FK_Categoria]
GO
/****** Object:  ForeignKey [FK_Marca]    Script Date: 11/01/2019 15:04:41 ******/
ALTER TABLE [dbo].[Producto]  WITH CHECK ADD  CONSTRAINT [FK_Marca] FOREIGN KEY([Marca_ID])
REFERENCES [dbo].[Marca] ([Marca_ID])
GO
ALTER TABLE [dbo].[Producto] CHECK CONSTRAINT [FK_Marca]
GO
/****** Object:  ForeignKey [FK_Medida]    Script Date: 11/01/2019 15:04:41 ******/
ALTER TABLE [dbo].[Producto]  WITH CHECK ADD  CONSTRAINT [FK_Medida] FOREIGN KEY([Medida_ID])
REFERENCES [dbo].[Medida] ([Medida_ID])
GO
ALTER TABLE [dbo].[Producto] CHECK CONSTRAINT [FK_Medida]
GO
/****** Object:  ForeignKey [FK_Mes]    Script Date: 11/01/2019 15:04:41 ******/
ALTER TABLE [dbo].[Producto]  WITH CHECK ADD  CONSTRAINT [FK_Mes] FOREIGN KEY([MesCadu])
REFERENCES [dbo].[Meses] ([Mes_ID])
GO
ALTER TABLE [dbo].[Producto] CHECK CONSTRAINT [FK_Mes]
GO
/****** Object:  ForeignKey [FK_Tamaño]    Script Date: 11/01/2019 15:04:41 ******/
ALTER TABLE [dbo].[Producto]  WITH CHECK ADD  CONSTRAINT [FK_Tamaño] FOREIGN KEY([Tamaño_ID])
REFERENCES [dbo].[Tamaño] ([Tamaño_ID])
GO
ALTER TABLE [dbo].[Producto] CHECK CONSTRAINT [FK_Tamaño]
GO
/****** Object:  ForeignKey [FK_Empleado]    Script Date: 11/01/2019 15:04:41 ******/
ALTER TABLE [dbo].[Ticket]  WITH CHECK ADD  CONSTRAINT [FK_Empleado] FOREIGN KEY([Empleado_ID])
REFERENCES [dbo].[Empleado] ([Empleado_ID])
GO
ALTER TABLE [dbo].[Ticket] CHECK CONSTRAINT [FK_Empleado]
GO
/****** Object:  ForeignKey [FK_Producto]    Script Date: 11/01/2019 15:04:41 ******/
ALTER TABLE [dbo].[Ticket]  WITH CHECK ADD  CONSTRAINT [FK_Producto] FOREIGN KEY([Producto_ID])
REFERENCES [dbo].[Producto] ([Producto_ID])
GO
ALTER TABLE [dbo].[Ticket] CHECK CONSTRAINT [FK_Producto]
GO
/****** Object:  ForeignKey [FK_PtoTicket]    Script Date: 11/01/2019 15:04:41 ******/
ALTER TABLE [dbo].[Ticket]  WITH CHECK ADD  CONSTRAINT [FK_PtoTicket] FOREIGN KEY([Pto_ID])
REFERENCES [dbo].[PtoDeVenta] ([Pto_ID])
GO
ALTER TABLE [dbo].[Ticket] CHECK CONSTRAINT [FK_PtoTicket]
GO
/****** Object:  ForeignKey [FK_Tarjeta]    Script Date: 11/01/2019 15:04:41 ******/
ALTER TABLE [dbo].[Ticket]  WITH CHECK ADD  CONSTRAINT [FK_Tarjeta] FOREIGN KEY([Tarjeta_ID])
REFERENCES [dbo].[Tarjeta] ([Tarjeta_ID])
GO
ALTER TABLE [dbo].[Ticket] CHECK CONSTRAINT [FK_Tarjeta]
GO
/****** Object:  ForeignKey [FK_TipPago]    Script Date: 11/01/2019 15:04:41 ******/
ALTER TABLE [dbo].[Ticket]  WITH CHECK ADD  CONSTRAINT [FK_TipPago] FOREIGN KEY([TipoPago_ID])
REFERENCES [dbo].[TipoPago] ([TipoPago_ID])
GO
ALTER TABLE [dbo].[Ticket] CHECK CONSTRAINT [FK_TipPago]
GO
/****** Object:  ForeignKey [FK_Almacen]    Script Date: 11/01/2019 15:04:41 ******/
ALTER TABLE [dbo].[Reabasto]  WITH CHECK ADD  CONSTRAINT [FK_Almacen] FOREIGN KEY([Almacen_ID])
REFERENCES [dbo].[Almacen] ([Almacen_ID])
GO
ALTER TABLE [dbo].[Reabasto] CHECK CONSTRAINT [FK_Almacen]
GO
/****** Object:  ForeignKey [FK_Marc]    Script Date: 11/01/2019 15:04:41 ******/
ALTER TABLE [dbo].[Reabasto]  WITH CHECK ADD  CONSTRAINT [FK_Marc] FOREIGN KEY([Marca_ID])
REFERENCES [dbo].[Marca] ([Marca_ID])
GO
ALTER TABLE [dbo].[Reabasto] CHECK CONSTRAINT [FK_Marc]
GO
/****** Object:  ForeignKey [FK_Medid]    Script Date: 11/01/2019 15:04:41 ******/
ALTER TABLE [dbo].[Reabasto]  WITH CHECK ADD  CONSTRAINT [FK_Medid] FOREIGN KEY([Medida_ID])
REFERENCES [dbo].[Medida] ([Medida_ID])
GO
ALTER TABLE [dbo].[Reabasto] CHECK CONSTRAINT [FK_Medid]
GO
/****** Object:  ForeignKey [FK_Prod]    Script Date: 11/01/2019 15:04:41 ******/
ALTER TABLE [dbo].[Reabasto]  WITH CHECK ADD  CONSTRAINT [FK_Prod] FOREIGN KEY([Producto_ID])
REFERENCES [dbo].[Producto] ([Producto_ID])
GO
ALTER TABLE [dbo].[Reabasto] CHECK CONSTRAINT [FK_Prod]
GO
/****** Object:  ForeignKey [FK_Proo]    Script Date: 11/01/2019 15:04:41 ******/
ALTER TABLE [dbo].[Reabasto]  WITH CHECK ADD  CONSTRAINT [FK_Proo] FOREIGN KEY([Proovedor_ID])
REFERENCES [dbo].[Proovedor] ([Proovedor_ID])
GO
ALTER TABLE [dbo].[Reabasto] CHECK CONSTRAINT [FK_Proo]
GO
/****** Object:  ForeignKey [FK_AlmInv]    Script Date: 11/01/2019 15:04:41 ******/
ALTER TABLE [dbo].[Inventario]  WITH CHECK ADD  CONSTRAINT [FK_AlmInv] FOREIGN KEY([Almacen_ID])
REFERENCES [dbo].[Almacen] ([Almacen_ID])
GO
ALTER TABLE [dbo].[Inventario] CHECK CONSTRAINT [FK_AlmInv]
GO
/****** Object:  ForeignKey [FK_MedInv]    Script Date: 11/01/2019 15:04:41 ******/
ALTER TABLE [dbo].[Inventario]  WITH CHECK ADD  CONSTRAINT [FK_MedInv] FOREIGN KEY([Medida_ID])
REFERENCES [dbo].[Medida] ([Medida_ID])
GO
ALTER TABLE [dbo].[Inventario] CHECK CONSTRAINT [FK_MedInv]
GO
/****** Object:  ForeignKey [FK_ProInv]    Script Date: 11/01/2019 15:04:41 ******/
ALTER TABLE [dbo].[Inventario]  WITH CHECK ADD  CONSTRAINT [FK_ProInv] FOREIGN KEY([Producto_ID])
REFERENCES [dbo].[Producto] ([Producto_ID])
GO
ALTER TABLE [dbo].[Inventario] CHECK CONSTRAINT [FK_ProInv]
GO
