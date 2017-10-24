USE [master]
GO

/****** Object:  Database [TAL]    Script Date: 24/05/2016 11:55:23 a. m. ******/
CREATE DATABASE [TAL]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'TAL', FILENAME = N'E:\TRABAJO\proyectos\TramitesAlillo\DB\TAL.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
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

ALTER DATABASE [TAL] SET  READ_WRITE 
GO