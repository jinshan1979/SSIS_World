USE [master]
GO
CREATE DATABASE [CaseStudy] ON PRIMARY
(NAME = N'CaseStudy', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\CaseStudy.mdf', SIZE = 3072KB, MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB ) 
LOG ON
( NAME = N'CaseStudy_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\CaseStudy_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
COLLATE Latin1_General_CI_AI
GO
EXEC dbo.sp_dbcmptlevel @dbname=N'CaseStudy', @new_cmptlevel=110
GO

