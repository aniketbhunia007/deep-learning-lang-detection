﻿USE [master]
GO
/****** Object:  Database [Multek_ZH_New]    Script Date: 11/06/2014 15:50:18 ******/
CREATE DATABASE [Multek_ZH_New] ON  PRIMARY 
( NAME = N'Muktek_ZH_New', FILENAME = N'D:\Multek_Database\Multek_ZH_New.mdf' , SIZE = 34227200KB , MAXSIZE = UNLIMITED, FILEGROWTH = 102400KB )
 LOG ON 
( NAME = N'Muktek_ZH_New_log', FILENAME = N'D:\Multek_Database\Multek_ZH_New_log.ldf' , SIZE = 65955200KB , MAXSIZE = 2048GB , FILEGROWTH = 102400KB )
GO
ALTER DATABASE [Multek_ZH_New] SET COMPATIBILITY_LEVEL = 80
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Multek_ZH_New].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Multek_ZH_New] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [Multek_ZH_New] SET ANSI_NULLS OFF
GO
ALTER DATABASE [Multek_ZH_New] SET ANSI_PADDING OFF
GO
ALTER DATABASE [Multek_ZH_New] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [Multek_ZH_New] SET ARITHABORT OFF
GO
ALTER DATABASE [Multek_ZH_New] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [Multek_ZH_New] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [Multek_ZH_New] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [Multek_ZH_New] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [Multek_ZH_New] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [Multek_ZH_New] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [Multek_ZH_New] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [Multek_ZH_New] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [Multek_ZH_New] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [Multek_ZH_New] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [Multek_ZH_New] SET  DISABLE_BROKER
GO
ALTER DATABASE [Multek_ZH_New] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [Multek_ZH_New] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [Multek_ZH_New] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [Multek_ZH_New] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [Multek_ZH_New] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [Multek_ZH_New] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [Multek_ZH_New] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [Multek_ZH_New] SET  READ_WRITE
GO
ALTER DATABASE [Multek_ZH_New] SET RECOVERY FULL
GO
ALTER DATABASE [Multek_ZH_New] SET  MULTI_USER
GO
ALTER DATABASE [Multek_ZH_New] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [Multek_ZH_New] SET DB_CHAINING OFF
GO
EXEC sys.sp_db_vardecimal_storage_format N'Multek_ZH_New', N'ON'
GO
