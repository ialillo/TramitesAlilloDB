USE [master]
GO
/****** Object:  Database [TAL]    Script Date: 09/11/2017 05:47:27 a. m. ******/
CREATE DATABASE [TAL]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'TAL', FILENAME = N'E:\TRABAJO\proyectos\TramitesAlillo\DB\TAL.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'TAL_log', FILENAME = N'E:\TRABAJO\proyectos\TramitesAlillo\DB\TAL_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [TAL] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [TAL].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [TAL] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [TAL] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [TAL] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [TAL] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [TAL] SET ARITHABORT OFF 
GO
ALTER DATABASE [TAL] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [TAL] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [TAL] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [TAL] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [TAL] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [TAL] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [TAL] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [TAL] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [TAL] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [TAL] SET  DISABLE_BROKER 
GO
ALTER DATABASE [TAL] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [TAL] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [TAL] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [TAL] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [TAL] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [TAL] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [TAL] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [TAL] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [TAL] SET  MULTI_USER 
GO
ALTER DATABASE [TAL] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [TAL] SET DB_CHAINING OFF 
GO
ALTER DATABASE [TAL] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [TAL] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [TAL] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [TAL] SET QUERY_STORE = OFF
GO
USE [TAL]
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
USE [TAL]
GO
/****** Object:  Schema [Catalogos]    Script Date: 09/11/2017 05:47:27 a. m. ******/
CREATE SCHEMA [Catalogos]
GO
/****** Object:  Schema [Configuracion]    Script Date: 09/11/2017 05:47:27 a. m. ******/
CREATE SCHEMA [Configuracion]
GO
/****** Object:  Schema [Herramientas]    Script Date: 09/11/2017 05:47:27 a. m. ******/
CREATE SCHEMA [Herramientas]
GO
/****** Object:  Schema [Navegacion]    Script Date: 09/11/2017 05:47:27 a. m. ******/
CREATE SCHEMA [Navegacion]
GO
/****** Object:  Schema [Seguridad]    Script Date: 09/11/2017 05:47:27 a. m. ******/
CREATE SCHEMA [Seguridad]
GO
/****** Object:  Schema [Servicios]    Script Date: 09/11/2017 05:47:27 a. m. ******/
CREATE SCHEMA [Servicios]
GO
/****** Object:  Schema [Tramites]    Script Date: 09/11/2017 05:47:27 a. m. ******/
CREATE SCHEMA [Tramites]
GO
/****** Object:  Table [Catalogos].[AdicionalesTramite]    Script Date: 09/11/2017 05:47:27 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Catalogos].[AdicionalesTramite](
	[id] [smallint] IDENTITY(1,1) NOT NULL,
	[nombreAdicional] [varchar](100) NULL,
	[activo] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [Catalogos].[ColoresEngomado]    Script Date: 09/11/2017 05:47:27 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Catalogos].[ColoresEngomado](
	[id] [tinyint] IDENTITY(1,1) NOT NULL,
	[dia] [varchar](10) NULL,
	[color] [varchar](10) NULL,
	[terminacionPlaca] [varchar](10) NULL,
	[activo] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [Catalogos].[EntidadTramite]    Script Date: 09/11/2017 05:47:27 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Catalogos].[EntidadTramite](
	[id] [smallint] IDENTITY(1,1) NOT NULL,
	[nombreEntidad] [varchar](100) NULL,
	[activo] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [Catalogos].[RequerimientoTramite]    Script Date: 09/11/2017 05:47:27 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Catalogos].[RequerimientoTramite](
	[id] [smallint] IDENTITY(1,1) NOT NULL,
	[requerimientoTramite] [varchar](150) NULL,
	[activo] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [Catalogos].[RequerimientoTramiteStatus]    Script Date: 09/11/2017 05:47:27 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Catalogos].[RequerimientoTramiteStatus](
	[id] [tinyint] IDENTITY(1,1) NOT NULL,
	[nombreStatus] [varchar](100) NULL,
	[activo] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [Catalogos].[RequerimientoTramiteTipoEntrega]    Script Date: 09/11/2017 05:47:27 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Catalogos].[RequerimientoTramiteTipoEntrega](
	[id] [tinyint] IDENTITY(1,1) NOT NULL,
	[nombreTipoEntrega] [varchar](100) NULL,
	[activo] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [Catalogos].[TipoTramite]    Script Date: 09/11/2017 05:47:27 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Catalogos].[TipoTramite](
	[id] [smallint] IDENTITY(1,1) NOT NULL,
	[tipoTramite] [varchar](100) NULL,
	[activo] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [Catalogos].[TramiteStatus]    Script Date: 09/11/2017 05:47:27 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Catalogos].[TramiteStatus](
	[id] [smallint] IDENTITY(1,1) NOT NULL,
	[nombreStatus] [char](80) NULL,
	[descStatus] [varchar](200) NULL,
	[activo] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [Configuracion].[AgenciaAdicionalesTramite]    Script Date: 09/11/2017 05:47:27 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Configuracion].[AgenciaAdicionalesTramite](
	[idAgencia] [smallint] NULL,
	[idTipoTramite] [smallint] NULL,
	[idAdicionalTramite] [smallint] NULL,
	[reembolsable] [bit] NULL,
	[facturable] [bit] NULL,
	[monto] [numeric](10, 2) NULL,
	[fechaInicioVigencia] [datetime] NULL,
	[fechaFinVigencia] [datetime] NULL,
UNIQUE NONCLUSTERED 
(
	[idAgencia] ASC,
	[idTipoTramite] ASC,
	[idAdicionalTramite] ASC,
	[fechaInicioVigencia] ASC,
	[fechaFinVigencia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [Configuracion].[AgenciaIva]    Script Date: 09/11/2017 05:47:27 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Configuracion].[AgenciaIva](
	[idAgencia] [smallint] NULL,
	[montoIva] [float] NULL,
	[fechaInicioVigencia] [datetime] NULL,
	[fechaFinVigencia] [datetime] NULL,
UNIQUE NONCLUSTERED 
(
	[idAgencia] ASC,
	[montoIva] ASC,
	[fechaInicioVigencia] ASC,
	[fechaFinVigencia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [Configuracion].[PerfilesEntidadTramite]    Script Date: 09/11/2017 05:47:27 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Configuracion].[PerfilesEntidadTramite](
	[idPerfil] [tinyint] NULL,
	[idEntidadTramite] [smallint] NULL,
UNIQUE NONCLUSTERED 
(
	[idPerfil] ASC,
	[idEntidadTramite] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [Configuracion].[PerfilesSubmodulos]    Script Date: 09/11/2017 05:47:27 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Configuracion].[PerfilesSubmodulos](
	[idPerfil] [tinyint] NOT NULL,
	[idSubmodulo] [tinyint] NOT NULL,
	[activo] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[idPerfil] ASC,
	[idSubmodulo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [Configuracion].[TramiteEspecificacion]    Script Date: 09/11/2017 05:47:27 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Configuracion].[TramiteEspecificacion](
	[idEntidadTramite] [smallint] NULL,
	[idTipoTramite] [smallint] NULL,
	[idRequerimientoTramite] [smallint] NULL,
	[idRequerimientoTramiteTipoEntrega] [tinyint] NULL,
	[personaMoral] [bit] NULL,
	[carga] [bit] NULL,
	[fechaInicioVigencia] [datetime] NULL,
	[fechaFinVigencia] [datetime] NULL,
UNIQUE NONCLUSTERED 
(
	[idEntidadTramite] ASC,
	[idTipoTramite] ASC,
	[idRequerimientoTramite] ASC,
	[fechaInicioVigencia] ASC,
	[fechaFinVigencia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [Configuracion].[TramiteHonorarios]    Script Date: 09/11/2017 05:47:27 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Configuracion].[TramiteHonorarios](
	[idAgencia] [smallint] NULL,
	[idEntidadTramite] [smallint] NULL,
	[idTipoTramite] [smallint] NULL,
	[monto] [numeric](10, 2) NULL,
	[montoCarga] [numeric](10, 2) NULL,
	[fechaInicioVigencia] [datetime] NULL,
	[fechaFinVigencia] [datetime] NULL,
UNIQUE NONCLUSTERED 
(
	[idAgencia] ASC,
	[idEntidadTramite] ASC,
	[idTipoTramite] ASC,
	[monto] ASC,
	[fechaInicioVigencia] ASC,
	[fechaFinVigencia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Agencias]    Script Date: 09/11/2017 05:47:27 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Agencias](
	[id] [smallint] IDENTITY(1,1) NOT NULL,
	[razonSocial] [char](250) NULL,
	[alias] [char](200) NULL,
	[rfc] [char](13) NULL,
	[calle] [char](250) NULL,
	[numExt] [char](50) NULL,
	[numInt] [char](50) NULL,
	[colonia] [char](250) NULL,
	[municipio] [char](250) NULL,
	[localidad] [char](250) NULL,
	[estado] [char](200) NULL,
	[codigoPostal] [char](5) NULL,
	[email] [char](80) NULL,
	[telefono] [char](20) NULL,
	[ctaContable] [char](80) NULL,
	[ctaDeposito] [char](80) NULL,
	[activo] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Comunicados]    Script Date: 09/11/2017 05:47:27 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Comunicados](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[idUsuario] [smallint] NULL,
	[idAgencia] [smallint] NULL,
	[fechaInicio] [datetime] NULL,
	[fechaFin] [datetime] NULL,
	[mensaje] [varchar](1500) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [Herramientas].[Mail]    Script Date: 09/11/2017 05:47:27 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Herramientas].[Mail](
	[id] [smallint] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](50) NULL,
	[from] [varchar](150) NULL,
	[to] [varchar](150) NULL,
	[subject] [varchar](100) NULL,
	[body] [varchar](1000) NULL,
	[bodyIsHtml] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [Navegacion].[Modulos]    Script Date: 09/11/2017 05:47:27 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Navegacion].[Modulos](
	[id] [tinyint] IDENTITY(1,1) NOT NULL,
	[modulo] [varchar](50) NULL,
	[activo] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [Navegacion].[Submodulos]    Script Date: 09/11/2017 05:47:27 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Navegacion].[Submodulos](
	[id] [tinyint] IDENTITY(1,1) NOT NULL,
	[idModulo] [tinyint] NULL,
	[submodulo] [varchar](80) NULL,
	[url] [varchar](200) NULL,
	[activo] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [Seguridad].[Perfiles]    Script Date: 09/11/2017 05:47:27 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Seguridad].[Perfiles](
	[id] [tinyint] IDENTITY(1,1) NOT NULL,
	[perfil] [varchar](50) NULL,
	[activo] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [Seguridad].[UsuarioAgencias]    Script Date: 09/11/2017 05:47:27 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Seguridad].[UsuarioAgencias](
	[idUsuario] [smallint] NOT NULL,
	[idAgencia] [smallint] NOT NULL,
	[activo] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[idUsuario] ASC,
	[idAgencia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [Seguridad].[Usuarios]    Script Date: 09/11/2017 05:47:27 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Seguridad].[Usuarios](
	[id] [smallint] IDENTITY(1,1) NOT NULL,
	[usuario] [varchar](20) NULL,
	[password] [varchar](50) NULL,
	[nombre] [varchar](80) NULL,
	[apellidoPat] [varchar](80) NULL,
	[apellidoMat] [varchar](80) NULL,
	[email] [varchar](30) NULL,
	[idPerfil] [tinyint] NULL,
	[intentosFallidosDeLogin] [tinyint] NULL,
	[passwordRestaurado] [bit] NULL,
	[activo] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[usuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [Tramites].[Tramite]    Script Date: 09/11/2017 05:47:27 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Tramites].[Tramite](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[idUsuario] [smallint] NULL,
	[idAgencia] [smallint] NULL,
	[idTipoTramite] [smallint] NULL,
	[idEntidadTramite] [smallint] NULL,
	[idTramiteStatus] [smallint] NULL,
	[nombre] [char](200) NOT NULL,
	[apellidoPaterno] [char](80) NULL,
	[apellidoMaterno] [char](80) NULL,
	[anioModelo] [int] NULL,
	[noFactura] [char](15) NULL,
	[serie] [char](17) NULL,
	[placa] [char](8) NULL,
	[personaMoral] [bit] NULL,
	[montoFormatoPago] [numeric](10, 2) NULL,
	[facturable] [bit] NULL,
	[carga] [bit] NULL,
	[conceptoCarga] [char](200) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [Tramites].[TramiteColorEngomado]    Script Date: 09/11/2017 05:47:27 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Tramites].[TramiteColorEngomado](
	[idUsuario] [smallint] NULL,
	[idTramite] [bigint] NULL,
	[idColorEngomado] [tinyint] NULL,
	[fecha] [datetime] NULL,
UNIQUE NONCLUSTERED 
(
	[idUsuario] ASC,
	[idTramite] ASC,
	[idColorEngomado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [Tramites].[TramiteFeedBack]    Script Date: 09/11/2017 05:47:27 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Tramites].[TramiteFeedBack](
	[idTramiteFeedback] [bigint] IDENTITY(1,1) NOT NULL,
	[idTramite] [bigint] NULL,
	[idUsuario] [smallint] NULL,
	[fecha] [datetime] NULL,
	[mensaje] [varchar](1000) NULL,
	[leido] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[idTramiteFeedback] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [Catalogos].[AdicionalesTramite] ADD  DEFAULT ((1)) FOR [activo]
GO
ALTER TABLE [Catalogos].[ColoresEngomado] ADD  DEFAULT ((1)) FOR [activo]
GO
ALTER TABLE [Catalogos].[EntidadTramite] ADD  DEFAULT ((1)) FOR [activo]
GO
ALTER TABLE [Catalogos].[RequerimientoTramite] ADD  DEFAULT ((1)) FOR [activo]
GO
ALTER TABLE [Catalogos].[RequerimientoTramiteStatus] ADD  DEFAULT ((1)) FOR [activo]
GO
ALTER TABLE [Catalogos].[RequerimientoTramiteTipoEntrega] ADD  DEFAULT ((1)) FOR [activo]
GO
ALTER TABLE [Catalogos].[TipoTramite] ADD  DEFAULT ((1)) FOR [activo]
GO
ALTER TABLE [Catalogos].[TramiteStatus] ADD  DEFAULT ((1)) FOR [activo]
GO
ALTER TABLE [Configuracion].[PerfilesSubmodulos] ADD  DEFAULT ((1)) FOR [activo]
GO
ALTER TABLE [dbo].[Agencias] ADD  DEFAULT ((1)) FOR [activo]
GO
ALTER TABLE [Navegacion].[Modulos] ADD  DEFAULT ((1)) FOR [activo]
GO
ALTER TABLE [Navegacion].[Submodulos] ADD  DEFAULT ((1)) FOR [activo]
GO
ALTER TABLE [Seguridad].[Perfiles] ADD  DEFAULT ((1)) FOR [activo]
GO
ALTER TABLE [Seguridad].[UsuarioAgencias] ADD  DEFAULT ((1)) FOR [activo]
GO
ALTER TABLE [Seguridad].[Usuarios] ADD  DEFAULT ((0)) FOR [intentosFallidosDeLogin]
GO
ALTER TABLE [Seguridad].[Usuarios] ADD  DEFAULT ((0)) FOR [passwordRestaurado]
GO
ALTER TABLE [Seguridad].[Usuarios] ADD  DEFAULT ((1)) FOR [activo]
GO
ALTER TABLE [Tramites].[Tramite] ADD  DEFAULT ((0)) FOR [personaMoral]
GO
ALTER TABLE [Tramites].[Tramite] ADD  DEFAULT ((1)) FOR [facturable]
GO
ALTER TABLE [Tramites].[Tramite] ADD  DEFAULT ((0)) FOR [carga]
GO
ALTER TABLE [Tramites].[TramiteFeedBack] ADD  DEFAULT (getdate()) FOR [fecha]
GO
ALTER TABLE [Configuracion].[AgenciaAdicionalesTramite]  WITH CHECK ADD FOREIGN KEY([idAdicionalTramite])
REFERENCES [Catalogos].[AdicionalesTramite] ([id])
GO
ALTER TABLE [Configuracion].[AgenciaAdicionalesTramite]  WITH CHECK ADD FOREIGN KEY([idAgencia])
REFERENCES [dbo].[Agencias] ([id])
GO
ALTER TABLE [Configuracion].[AgenciaAdicionalesTramite]  WITH CHECK ADD FOREIGN KEY([idTipoTramite])
REFERENCES [Catalogos].[TipoTramite] ([id])
GO
ALTER TABLE [Configuracion].[AgenciaIva]  WITH CHECK ADD FOREIGN KEY([idAgencia])
REFERENCES [dbo].[Agencias] ([id])
GO
ALTER TABLE [Configuracion].[PerfilesEntidadTramite]  WITH CHECK ADD FOREIGN KEY([idEntidadTramite])
REFERENCES [Catalogos].[EntidadTramite] ([id])
GO
ALTER TABLE [Configuracion].[PerfilesEntidadTramite]  WITH CHECK ADD FOREIGN KEY([idPerfil])
REFERENCES [Seguridad].[Perfiles] ([id])
GO
ALTER TABLE [Configuracion].[PerfilesSubmodulos]  WITH CHECK ADD FOREIGN KEY([idPerfil])
REFERENCES [Seguridad].[Perfiles] ([id])
GO
ALTER TABLE [Configuracion].[PerfilesSubmodulos]  WITH CHECK ADD FOREIGN KEY([idSubmodulo])
REFERENCES [Navegacion].[Submodulos] ([id])
GO
ALTER TABLE [Configuracion].[TramiteEspecificacion]  WITH CHECK ADD FOREIGN KEY([idEntidadTramite])
REFERENCES [Catalogos].[EntidadTramite] ([id])
GO
ALTER TABLE [Configuracion].[TramiteEspecificacion]  WITH CHECK ADD FOREIGN KEY([idRequerimientoTramite])
REFERENCES [Catalogos].[RequerimientoTramite] ([id])
GO
ALTER TABLE [Configuracion].[TramiteEspecificacion]  WITH CHECK ADD FOREIGN KEY([idRequerimientoTramiteTipoEntrega])
REFERENCES [Catalogos].[RequerimientoTramiteTipoEntrega] ([id])
GO
ALTER TABLE [Configuracion].[TramiteEspecificacion]  WITH CHECK ADD FOREIGN KEY([idTipoTramite])
REFERENCES [Catalogos].[TipoTramite] ([id])
GO
ALTER TABLE [Configuracion].[TramiteHonorarios]  WITH CHECK ADD FOREIGN KEY([idAgencia])
REFERENCES [dbo].[Agencias] ([id])
GO
ALTER TABLE [Configuracion].[TramiteHonorarios]  WITH CHECK ADD FOREIGN KEY([idEntidadTramite])
REFERENCES [Catalogos].[EntidadTramite] ([id])
GO
ALTER TABLE [Configuracion].[TramiteHonorarios]  WITH CHECK ADD FOREIGN KEY([idTipoTramite])
REFERENCES [Catalogos].[TipoTramite] ([id])
GO
ALTER TABLE [dbo].[Comunicados]  WITH CHECK ADD FOREIGN KEY([idAgencia])
REFERENCES [dbo].[Agencias] ([id])
GO
ALTER TABLE [dbo].[Comunicados]  WITH CHECK ADD FOREIGN KEY([idUsuario])
REFERENCES [Seguridad].[Usuarios] ([id])
GO
ALTER TABLE [Navegacion].[Submodulos]  WITH CHECK ADD FOREIGN KEY([idModulo])
REFERENCES [Navegacion].[Modulos] ([id])
GO
ALTER TABLE [Seguridad].[UsuarioAgencias]  WITH CHECK ADD FOREIGN KEY([idAgencia])
REFERENCES [dbo].[Agencias] ([id])
GO
ALTER TABLE [Seguridad].[UsuarioAgencias]  WITH CHECK ADD FOREIGN KEY([idUsuario])
REFERENCES [Seguridad].[Usuarios] ([id])
GO
ALTER TABLE [Seguridad].[Usuarios]  WITH CHECK ADD FOREIGN KEY([idPerfil])
REFERENCES [Seguridad].[Perfiles] ([id])
GO
ALTER TABLE [Tramites].[Tramite]  WITH CHECK ADD FOREIGN KEY([idAgencia])
REFERENCES [dbo].[Agencias] ([id])
GO
ALTER TABLE [Tramites].[Tramite]  WITH CHECK ADD FOREIGN KEY([idEntidadTramite])
REFERENCES [Catalogos].[EntidadTramite] ([id])
GO
ALTER TABLE [Tramites].[Tramite]  WITH CHECK ADD FOREIGN KEY([idTipoTramite])
REFERENCES [Catalogos].[TipoTramite] ([id])
GO
ALTER TABLE [Tramites].[Tramite]  WITH CHECK ADD FOREIGN KEY([idTramiteStatus])
REFERENCES [Catalogos].[TramiteStatus] ([id])
GO
ALTER TABLE [Tramites].[Tramite]  WITH CHECK ADD FOREIGN KEY([idUsuario])
REFERENCES [Seguridad].[Usuarios] ([id])
GO
ALTER TABLE [Tramites].[TramiteColorEngomado]  WITH CHECK ADD FOREIGN KEY([idColorEngomado])
REFERENCES [Catalogos].[ColoresEngomado] ([id])
GO
ALTER TABLE [Tramites].[TramiteColorEngomado]  WITH CHECK ADD FOREIGN KEY([idTramite])
REFERENCES [Tramites].[Tramite] ([id])
GO
ALTER TABLE [Tramites].[TramiteColorEngomado]  WITH CHECK ADD FOREIGN KEY([idUsuario])
REFERENCES [Seguridad].[Usuarios] ([id])
GO
ALTER TABLE [Tramites].[TramiteFeedBack]  WITH CHECK ADD FOREIGN KEY([idTramite])
REFERENCES [Tramites].[Tramite] ([id])
GO
ALTER TABLE [Tramites].[TramiteFeedBack]  WITH CHECK ADD FOREIGN KEY([idUsuario])
REFERENCES [Seguridad].[Usuarios] ([id])
GO
/****** Object:  StoredProcedure [Catalogos].[EntidadTramiteManagement]    Script Date: 09/11/2017 05:47:27 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [Catalogos].[EntidadTramiteManagement]
	@opcion			INT = 3,
	@idUsuario		SMALLINT = 0,
	@id				INT = 0,
	@nombreEntidad	CHAR(100) = '',
	@activo			BIT = 1
AS
BEGIN
	-- INSERTAMOS UN NUEVO REGISTRO
	IF @opcion = 1
	BEGIN
		INSERT	INTO Catalogos.EntidadTramite(nombreEntidad)
		SELECT	LTRIM(RTRIM(UPPER(@nombreEntidad)))
	END
	-- DESACTIVAMOS UN REGISTRO
	IF @opcion = 2
	BEGIN
		UPDATE	Catalogos.EntidadTramite
		SET		activo = 0
		WHERE	id = @id
	END
	-- TRAEMOS LA LISTA DE ELEMENTOS
	IF @opcion = 3
	BEGIN
		SELECT	et.id AS Id, LTRIM(RTRIM(UPPER(et.nombreEntidad))) AS NombreEntidad, et.activo AS Activo
		FROM	Catalogos.EntidadTramite et INNER JOIN Configuracion.PerfilesEntidadTramite pet ON
					et.id = pet.idEntidadTramite
				INNER JOIN Seguridad.Usuarios usr ON
					pet.idPerfil = usr.idPerfil
		WHERE	(et.id = @id OR @id = 0)
				AND (et.nombreEntidad = @nombreEntidad OR @nombreEntidad = '')
				AND (et.activo = @activo OR @activo = 1)
				AND	usr.id = @idUsuario
		FOR	XML RAW('EntidadTramite'), ROOT('Catalogos'), ELEMENTS
	END
	-- EDITAMOS UN ELEMENTO
	IF @opcion = 4
	BEGIN
		UPDATE	Catalogos.EntidadTramite
		SET		nombreEntidad = LTRIM(RTRIM(UPPER(@nombreEntidad)))
		WHERE	id = @id
	END
	-- TRAEMOS LA LISTA DE ELEMENTOS PARA UN SELECT
	IF @opcion = 5
	BEGIN
		SELECT	et.id AS [Value], LTRIM(RTRIM(UPPER(et.nombreEntidad))) AS [Description]
		FROM	Catalogos.EntidadTramite et INNER JOIN Configuracion.PerfilesEntidadTramite pet ON
					et.id = pet.idEntidadTramite
				INNER JOIN Seguridad.Usuarios usr ON
					pet.idPerfil = usr.idPerfil
		WHERE	et.activo = 1
				AND	usr.id = @idUsuario
		FOR XML RAW('SelectItems'), ROOT('SelectCatalogs'), ELEMENTS
	END
END
GO
/****** Object:  StoredProcedure [Catalogos].[RequerimientoTramiteManagement]    Script Date: 09/11/2017 05:47:27 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [Catalogos].[RequerimientoTramiteManagement]
	@opcion			INT = 3,
	@id				INT = 0,
	@reqTramite		CHAR(100) = '',
	@activo			BIT = 1
AS
BEGIN
	-- INSERTAMOS UN NUEVO REGISTRO
	IF @opcion = 1
	BEGIN
		INSERT	INTO Catalogos.RequerimientoTramite(requerimientoTramite)
		SELECT	@reqTramite
	END
	-- DESACTIVAMOS UN REGISTRO
	IF @opcion = 2
	BEGIN
		UPDATE	Catalogos.RequerimientoTramite
		SET		activo = 0
		WHERE	id = @id
	END
	-- TRAEMOS LA LISTA DE ELEMENTOS
	IF @opcion = 3
	BEGIN
		SELECT	id AS Id, LTRIM(RTRIM(UPPER(requerimientoTramite))) AS NombreTipoTramite, activo AS Activo
		FROM	Catalogos.RequerimientoTramite
		WHERE	(id = @id OR @id = 0)
				AND (requerimientoTramite = @reqTramite OR @reqTramite = '')
				AND (activo = @activo OR @activo = 1)
		FOR XML RAW('RequerimientoTramite'), ROOT('Catalogos'), ELEMENTS
	END
	-- EDITAMOS UN ELEMENTO
	IF @opcion = 4
	BEGIN
		UPDATE	Catalogos.RequerimientoTramite
		SET		requerimientoTramite = LTRIM(RTRIM(UPPER(@reqTramite)))
		WHERE	id = @id
	END
	-- TRAEMOS LA LISTA DE ELEMENTOS PARA UN SELECT
	IF @opcion = 5
	BEGIN
		SELECT	id AS [Value], LTRIM(RTRIM(UPPER(requerimientoTramite))) AS [Description]
		FROM	Catalogos.RequerimientoTramite
		WHERE	activo = 1
		FOR	XML RAW('SelectItems'), ROOT('SelectCatalogs'), ELEMENTS
	END
END
GO
/****** Object:  StoredProcedure [Catalogos].[RequerimientoTramiteTipoEntregaManagement]    Script Date: 09/11/2017 05:47:27 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [Catalogos].[RequerimientoTramiteTipoEntregaManagement]
	@opcion				INT = 3,
	@id					INT = 0,
	@nomTipoEntrega		CHAR(100) = '',
	@activo				BIT = 1
AS
BEGIN
	-- INSERTAMOS UN NUEVO REGISTRO
	IF @opcion = 1
	BEGIN
		INSERT	INTO Catalogos.RequerimientoTramiteTipoEntrega(nombreTipoEntrega)
		SELECT	@nomTipoEntrega
	END
	-- DESACTIVAMOS UN REGISTRO
	IF @opcion = 2
	BEGIN
		UPDATE	Catalogos.RequerimientoTramiteTipoEntrega
		SET		activo = 0
		WHERE	id = @id
	END
	-- TRAEMOS LA LISTA DE ELEMENTOS
	IF @opcion = 3
	BEGIN
		SELECT	id AS Id, LTRIM(RTRIM(UPPER(nombreTipoEntrega))) AS NombreTipoTramite, activo AS Activo
		FROM	Catalogos.RequerimientoTramiteTipoEntrega
		WHERE	(id = @id OR @id = 0)
				AND (nombreTipoEntrega = @nomTipoEntrega OR @nomTipoEntrega = '')
				AND (activo = @activo OR @activo = 1)
		FOR XML RAW('RequerimientoTramiteTipoEntrega'), ROOT('Catalogos'), ELEMENTS
	END
	-- EDITAMOS UN ELEMENTO
	IF @opcion = 4
	BEGIN
		UPDATE	Catalogos.RequerimientoTramiteTipoEntrega
		SET		nombreTipoEntrega = LTRIM(RTRIM(UPPER(@nomTipoEntrega)))
		WHERE	id = @id
	END
	-- TRAEMOS LA LISTA DE ELEMENTOS PARA UN SELECT
	IF @opcion = 5
	BEGIN
		SELECT	id AS [Value], LTRIM(RTRIM(UPPER(nombreTipoEntrega))) AS [Description]
		FROM	Catalogos.RequerimientoTramiteTipoEntrega
		WHERE	activo = 1
		FOR	XML RAW('SelectItems'), ROOT('SelectCatalogs'), ELEMENTS
	END
END
GO
/****** Object:  StoredProcedure [Catalogos].[TipoTramiteManagement]    Script Date: 09/11/2017 05:47:27 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [Catalogos].[TipoTramiteManagement]
	@opcion			INT = 3,
	@id				INT = 0,
	@tipoTramite	CHAR(100) = '',
	@activo			BIT = 1
AS
BEGIN
	-- INSERTAMOS UN NUEVO REGISTRO
	IF @opcion = 1
	BEGIN
		INSERT	INTO Catalogos.TipoTramite(tipoTramite)
		SELECT	@tipoTramite
	END
	-- DESACTIVAMOS UN REGISTRO
	IF @opcion = 2
	BEGIN
		UPDATE	Catalogos.TipoTramite
		SET		activo = 0
		WHERE	id = @id
	END
	-- TRAEMOS LA LISTA DE ELEMENTOS
	IF @opcion = 3
	BEGIN
		SELECT	id AS Id, LTRIM(RTRIM(UPPER(tipoTramite))) AS NombreTipoTramite, activo AS Activo
		FROM	Catalogos.TipoTramite
		WHERE	(id = @id OR @id = 0)
				AND (tipoTramite = @tipoTramite OR @tipoTramite = '')
				AND (activo = @activo OR @activo = 1)
		FOR XML RAW('TipoTramite'), ROOT('Catalogos'), ELEMENTS
	END
	-- EDITAMOS UN ELEMENTO
	IF @opcion = 4
	BEGIN
		UPDATE	Catalogos.TipoTramite
		SET		tipoTramite = LTRIM(RTRIM(UPPER(@tipoTramite)))
		WHERE	id = @id
	END
	-- TRAEMOS LA LISTA DE ELEMENTOS PARA UN SELECT
	IF @opcion = 5
	BEGIN
		SELECT	id AS [Value], LTRIM(RTRIM(UPPER(tipoTramite))) AS [Description]
		FROM	Catalogos.TipoTramite
		WHERE	activo = 1
		FOR	XML RAW('SelectItems'), ROOT('SelectCatalogs'), ELEMENTS
	END
END
GO
/****** Object:  StoredProcedure [Configuracion].[TramiteEspecificacionManagement]    Script Date: 09/11/2017 05:47:27 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [Configuracion].[TramiteEspecificacionManagement]
	@opcion								SMALLINT = 3,
	@idEntidadTramite					SMALLINT = 0,
	@idTipoTramite						SMALLINT = 0,
	@idRequerimientoTramite				SMALLINT = 0,
	@idRequerimientoTramiteTipoEntrega	TINYINT = 0,
	@personaMoral						BIT = 0,
	@carga								BIT = 0,
	@fechaInicioVigencia				DATETIME = '1900-01-01',
	@fechaFinVigencia					DATETIME = '9999-12-31'
AS
BEGIN
	-- INSERTAMOS UN NUEVO REGISTRO
	IF @opcion = 1
	BEGIN
		INSERT	INTO Configuracion.TramiteEspecificacion
				(
						idEntidadTramite, idTipoTramite, idRequerimientoTramite, idRequerimientoTramiteTipoEntrega, 
						personaMoral, carga, fechaInicioVigencia, fechaFinVigencia
				)
		SELECT	@idEntidadTramite, @idTipoTramite, @idRequerimientoTramite, @idRequerimientoTramiteTipoEntrega,
				@personaMoral, @carga, GETDATE(), @fechaFinVigencia
	END
	-- DESACTIVAMOS UN REGISTRO
	IF @opcion = 2
	BEGIN
		UPDATE	Configuracion.TramiteEspecificacion
		SET		@fechaFinVigencia = '1900-01-01'
		WHERE	idEntidadTramite = @idEntidadTramite
				AND idTipoTramite = @idTipoTramite
				AND idRequerimientoTramite = @idRequerimientoTramite
				AND idRequerimientoTramiteTipoEntrega = @idRequerimientoTramiteTipoEntrega
				AND personaMoral = @personaMoral
				AND carga = @carga
	END
	-- TRAEMOS LA LISTA DE ESPECIFICACIONES DE TRAMITES VIGENTES
	IF @opcion = 3
	BEGIN
		SELECT	te.idEntidadTramite AS IdEntidadTramite, LTRIM(RTRIM(UPPER(et.nombreEntidad))) AS NombreEntidadTramite,
				te.idTipoTramite AS IdTipoTramite, LTRIM(RTRIM(UPPER(tt.tipoTramite))) AS NombreTipoTramite,
				te.idRequerimientoTramite AS IdRequerimientoTramite, LTRIM(RTRIM(UPPER(rt.requerimientoTramite))) AS NombreRequerimientoTramite,
				te.idRequerimientoTramiteTipoEntrega AS IdRequerimientoTramiteTipoEntrega,
				LTRIM(RTRIM(UPPER( rtte.nombreTipoEntrega))) AS NombreRequerimientoTramiteTipoEntrega,
				te.personaMoral AS PersonaMoral, te.carga AS Carga, CONVERT(VARCHAR(10), te.fechaInicioVigencia, 103) AS FechaInicioVigencia,
				CONVERT(VARCHAR(10), te.fechaFinVigencia, 103) AS FechaFinVigencia
		FROM	Configuracion.TramiteEspecificacion te INNER JOIN Catalogos.EntidadTramite et ON
					et.id = te.idEntidadTramite
				INNER JOIN Catalogos.TipoTramite tt ON
					tt.id = te.idTipoTramite
				INNER JOIN Catalogos.RequerimientoTramite rt ON
					rt.id = te.idRequerimientoTramite
				INNER JOIN Catalogos.RequerimientoTramiteTipoEntrega rtte ON
					rtte.id = te.idRequerimientoTramiteTipoEntrega
		WHERE	DATEDIFF(d, te.fechaFinVigencia, '9999-12-31') = 0
		FOR XML RAW('TramiteEspecificacion'), ROOT('TramiteConfiguracion'), ELEMENTS
	END
END
GO
/****** Object:  StoredProcedure [Navegacion].[ObtenMenu]    Script Date: 09/11/2017 05:47:27 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE	PROCEDURE [Navegacion].[ObtenMenu]
	@idUsuario	INT
AS
BEGIN
	SELECT	Modulo.id AS IdModulo, LTRIM(RTRIM(Modulo.modulo)) AS DescModulo, SubModulo.id AS IdSubmodulo,
			LTRIM(RTRIM(SubModulo.submodulo)) AS DescSubmodulo, SubModulo.[url] as [Url]
	FROM	Seguridad.Usuarios usr INNER JOIN Configuracion.PerfilesSubmodulos ps ON
				ps.idPerfil = usr.idPerfil
			INNER JOIN Navegacion.Submodulos SubModulo ON
				SubModulo.id = ps.idSubmodulo
			INNER JOIN Navegacion.Modulos Modulo ON
				Modulo.id = SubModulo.idModulo
	WHERE	usr.id = @idUsuario
			AND SubModulo.activo = 1
	FOR		XML AUTO, ROOT('Menu'), ELEMENTS
END
GO
/****** Object:  StoredProcedure [Seguridad].[Autenticar]    Script Date: 09/11/2017 05:47:27 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [Seguridad].[Autenticar]
	@usuario VARCHAR(20),
	@password VARCHAR(100)
AS
BEGIN
	-- VERIFICAMOS SI EXISTE EL USUARIO EN LA BASE DE DATOS
	IF	(
			SELECT	COUNT(1)
			FROM	Seguridad.Usuarios
			WHERE	usuario = @usuario
		) > 0
	BEGIN
		-- VERIFICAMOS SI LAS CREDENCIALES PROPORCIONADAS SON CORRECTAS Y QUE EL USUARIO ESTE ACTIVO
		IF	(
				SELECT	COUNT(1)
				FROM	Seguridad.Usuarios
				WHERE	usuario = @usuario
						AND [password] = @password
						AND activo = 1
			) > 0
		BEGIN
			-- RESETEAMOS LOS INTENTOS FALLIDOS DE LOGIN
			UPDATE	Seguridad.Usuarios
			SET		intentosFallidosDeLogin = 0
			WHERE	usuario = @usuario
					AND [password] = [password]
			
			-- REGRESAMOS EL OBJETO DE USUARIO LOGEADO
			SELECT	usr.id AS Id, usr.usuario AS Usuario, ISNULL(usr.nombre, '') AS Nombre, ISNULL(usr.apellidoPat, '') AS ApellidoPaterno, 
					ISNULL(usr.apellidoMat, '') AS ApellidoMaterno, ISNULL(per.id, 0) AS IdPerfil, 
					ISNULL(per.perfil, 'NO ASIGNADO') AS Perfil, ISNULL(usr.email, 'NO ASIGNADO') AS Email, 
					usr.intentosFallidosDeLogin AS IntentosFallidosDeLogin,
					usr.passwordRestaurado AS PasswordRestaurado, usr.activo AS Activo
			FROM	Seguridad.Usuarios usr LEFT OUTER JOIN Seguridad.Perfiles per ON
						usr.idPerfil = per.id
			WHERE	usr.usuario = @usuario
					AND usr.password = @password
			FOR XML RAW('LoggedUser'), ELEMENTS
		END
		ELSE
		BEGIN
			-- SI LAS CREDENCIALES SON INCORRECTAS SE AUMENTA EN UNO EL CONTADOR DE INTENTOS FALLIDOS
			UPDATE	Seguridad.Usuarios
			SET		intentosFallidosDeLogin = intentosFallidosDeLogin + 1
			WHERE	usuario = @usuario

			-- SI EL USUARIO HA FALLADO 6 VECES EN LOGEARSE, SE DESACTIVA LA CUENTA
			IF	(
					SELECT	COUNT(1)
					FROM	Seguridad.Usuarios
					WHERE	usuario = @usuario
							AND intentosFallidosDeLogin >= 6
							AND activo = 1
				) > 0
			BEGIN
				UPDATE	Seguridad.Usuarios
				SET		activo = 0
				WHERE	usuario = @usuario
			END

			-- REGRESAMOS EL USUARIO CON LA INFORMACION DE LAS VECES ERRONEAS DE LOGIN Y SI ESTA ACTIVO
			SELECT	0 as Id, '' AS Usuario, '' AS Nombre, '' AS ApellidoPaterno, '' AS ApellidoMaterno, 0 AS IdPerfil, 
					'' AS Perfil, '' AS Email, usr.intentosFallidosDeLogin AS IntentosFallidosDeLogin, 
					0 AS PasswordRestaurado, usr.activo AS Activo
			FROM	Seguridad.Usuarios usr
			WHERE	usr.usuario = @usuario
			FOR XML RAW('LoggedUser'), ELEMENTS
		END
	END
	ELSE
	BEGIN
		-- SI NO EXISTE EL USUARIO NO REGRESA NADA
		SELECT	0, '' AS Usuario, '' AS Nombre, '' AS ApellidoPaterno, ''AS ApellidoMaterno, 0 AS IdPerfil, 
				'NO ASIGNADO' AS Perfil, 'NO ASIGNADO' AS Email
		FROM	Seguridad.Usuarios
		WHERE	usuario = @usuario
		FOR XML RAW('LoggedUser'), ELEMENTS
	END
END
GO
/****** Object:  StoredProcedure [Seguridad].[CambiaPassword]    Script Date: 09/11/2017 05:47:27 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [Seguridad].[CambiaPassword]
	@usuario	VARCHAR(20),
	@oldPwd		VARCHAR(50),
	@newPwd		VARCHAR(50)
AS
BEGIN
	DECLARE	@mensajeRegreso VARCHAR(10)

	IF	(
			SELECT	COUNT(1)
			FROM	Seguridad.Usuarios
			WHERE	usuario = @usuario
					AND [password] = @oldPwd
		) > 0
	BEGIN
		UPDATE	Seguridad.Usuarios
		SET		[password] = @newPwd, passwordRestaurado = 0
		WHERE	usuario = @usuario
				AND	[password] = @oldPwd

		SELECT	@mensajeRegreso = 'OK'
	END
	ELSE
	BEGIN
		SELECT	@mensajeRegreso = 'ERROR'
	END

	SELECT @mensajeRegreso AS mensaje
END
GO
USE [master]
GO
ALTER DATABASE [TAL] SET  READ_WRITE 
GO
