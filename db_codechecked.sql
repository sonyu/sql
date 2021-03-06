USE [master]
GO
/****** Object:  Database [db_codechecked]    Script Date: 02/16/2017 13:48:45 ******/
CREATE DATABASE [db_codechecked] ON  PRIMARY 
( NAME = N'db_codechecked', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\db_codechecked.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'db_codechecked_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\db_codechecked_log.LDF' , SIZE = 5696KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [db_codechecked] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [db_codechecked].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [db_codechecked] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [db_codechecked] SET ANSI_NULLS OFF
GO
ALTER DATABASE [db_codechecked] SET ANSI_PADDING OFF
GO
ALTER DATABASE [db_codechecked] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [db_codechecked] SET ARITHABORT OFF
GO
ALTER DATABASE [db_codechecked] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [db_codechecked] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [db_codechecked] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [db_codechecked] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [db_codechecked] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [db_codechecked] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [db_codechecked] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [db_codechecked] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [db_codechecked] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [db_codechecked] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [db_codechecked] SET  DISABLE_BROKER
GO
ALTER DATABASE [db_codechecked] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [db_codechecked] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [db_codechecked] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [db_codechecked] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [db_codechecked] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [db_codechecked] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [db_codechecked] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [db_codechecked] SET  READ_WRITE
GO
ALTER DATABASE [db_codechecked] SET RECOVERY FULL
GO
ALTER DATABASE [db_codechecked] SET  RESTRICTED_USER
GO
ALTER DATABASE [db_codechecked] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [db_codechecked] SET DB_CHAINING OFF
GO
USE [db_codechecked]
GO
/****** Object:  Table [dbo].[SerialKey]    Script Date: 02/16/2017 13:48:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SerialKey](
	[KeyValues] [nchar](20) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DataChecked]    Script Date: 02/16/2017 13:48:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DataChecked](
	[cmpcode] [nchar](2) NOT NULL,
	[bizdiv] [nchar](3) NOT NULL,
	[keydata] [nvarchar](50) NOT NULL,
	[indate] [nchar](8) NOT NULL,
	[wodate] [nchar](8) NOT NULL,
	[empname] [nvarchar](50) NOT NULL,
	[assyline] [nvarchar](50) NOT NULL,
	[shift] [nchar](2) NOT NULL,
	[codeset] [nvarchar](30) NOT NULL,
	[codecheck] [nvarchar](30) NOT NULL,
	[checktime] [datetime] NOT NULL,
	[status] [nvarchar](10) NOT NULL,
	[insempcode] [nvarchar](10) NULL,
	[insdt] [datetime] NULL,
	[updempcode] [nvarchar](10) NULL,
	[upddt] [datetime] NULL,
 CONSTRAINT [PK_DataChecked] PRIMARY KEY CLUSTERED 
(
	[cmpcode] ASC,
	[bizdiv] ASC,
	[keydata] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tSysLanguageSet]    Script Date: 02/16/2017 13:48:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tSysLanguageSet](
	[wid] [nvarchar](100) NOT NULL,
	[obj_name] [nvarchar](100) NOT NULL,
	[col_name] [nvarchar](100) NOT NULL,
	[parent_obj] [nvarchar](100) NOT NULL,
	[obj_type] [nvarchar](50) NULL,
	[word_rep] [nvarchar](255) NULL,
	[word_eng] [nvarchar](255) NULL,
	[word_kor] [nvarchar](255) NULL,
	[word_loc] [nvarchar](255) NULL,
	[regdate] [datetime] NULL,
	[reguser] [varchar](30) NULL,
 CONSTRAINT [PK_tSysLanguageSet] PRIMARY KEY CLUSTERED 
(
	[wid] ASC,
	[obj_name] ASC,
	[col_name] ASC,
	[parent_obj] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tmwidt]    Script Date: 02/16/2017 13:48:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmwidt](
	[cmpcode] [nchar](2) NOT NULL,
	[bizdiv] [nchar](3) NOT NULL,
	[idno] [nvarchar](20) NOT NULL,
	[macno] [nvarchar](10) NULL,
	[wodt] [nchar](8) NULL,
	[process] [nchar](4) NULL,
	[workcode] [nchar](8) NULL,
	[prdno] [nvarchar](30) NULL,
	[lotno] [nvarchar](30) NULL,
	[prdno_child1] [nvarchar](30) NULL,
	[lotno_child1] [nvarchar](30) NULL,
	[prdno_child2] [nvarchar](30) NULL,
	[lotno_child2] [nvarchar](30) NULL,
	[prdno_child3] [nvarchar](30) NULL,
	[lotno_child3] [nvarchar](30) NULL,
	[prdno_child4] [nvarchar](30) NULL,
	[lotno_child4] [nvarchar](30) NULL,
	[prdno_child5] [nvarchar](30) NULL,
	[lotno_child5] [nvarchar](30) NULL,
	[prdno_child6] [nvarchar](30) NULL,
	[lotno_child6] [nvarchar](30) NULL,
	[prdno_child7] [nvarchar](30) NULL,
	[lotno_child7] [nvarchar](30) NULL,
	[prdno_child8] [nvarchar](30) NULL,
	[lotno_child8] [nvarchar](30) NULL,
	[sampleyn] [nchar](1) NULL,
	[bsideyn] [nchar](1) NULL,
	[mixyn] [nchar](1) NULL,
	[prdqty] [numeric](12, 0) NULL,
	[unit] [nvarchar](2) NULL,
	[fmtcnt] [numeric](2, 0) NULL,
	[packtype] [nchar](3) NULL,
	[pltqty] [numeric](2, 0) NULL,
	[pltsts] [nvarchar](2) NULL,
	[worker] [nvarchar](30) NULL,
	[nextprocess] [nchar](4) NULL,
	[nextworkcode] [nchar](8) NULL,
	[prddt] [datetime] NULL,
	[prdshift] [nvarchar](2) NULL,
	[remark] [nvarchar](200) NULL,
	[insdt] [datetime] NULL,
	[upddt] [datetime] NULL,
	[insemp] [nvarchar](30) NULL,
	[updemp] [nvarchar](30) NULL,
 CONSTRAINT [PK_tmwidt] PRIMARY KEY CLUSTERED 
(
	[cmpcode] ASC,
	[bizdiv] ASC,
	[idno] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmstworkmac]    Script Date: 02/16/2017 13:48:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmstworkmac](
	[cmpcode] [nchar](2) NOT NULL,
	[bizdiv] [nchar](3) NOT NULL,
	[workcode] [nchar](8) NOT NULL,
	[macno] [nchar](10) NOT NULL,
	[etc] [nvarchar](10) NULL,
	[insempcode] [nchar](8) NULL,
	[insdt] [datetime] NULL,
	[updempcode] [nchar](8) NULL,
	[upddt] [datetime] NULL,
 CONSTRAINT [PK_tmstworkmac] PRIMARY KEY CLUSTERED 
(
	[cmpcode] ASC,
	[bizdiv] ASC,
	[workcode] ASC,
	[macno] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmstprocwork]    Script Date: 02/16/2017 13:48:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmstprocwork](
	[cmpcode] [nchar](2) NOT NULL,
	[bizdiv] [nchar](3) NOT NULL,
	[processcode] [nchar](4) NOT NULL,
	[workcode] [nchar](8) NOT NULL,
	[workcodename_eng] [nvarchar](120) NULL,
	[workcodename_kor] [nvarchar](120) NULL,
	[workcodename_loc] [nvarchar](120) NULL,
	[appunit] [nvarchar](6) NULL,
	[useflag] [nchar](1) NULL,
	[remark] [nvarchar](200) NULL,
	[etc] [nvarchar](200) NULL,
	[insempcode] [nchar](8) NULL,
	[insdt] [datetime] NULL,
	[updempcode] [nchar](8) NULL,
	[upddt] [datetime] NULL,
 CONSTRAINT [PK_tmstprocwork] PRIMARY KEY CLUSTERED 
(
	[cmpcode] ASC,
	[bizdiv] ASC,
	[processcode] ASC,
	[workcode] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmstprocmac]    Script Date: 02/16/2017 13:48:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmstprocmac](
	[cmpcode] [nchar](2) NOT NULL,
	[bizdiv] [nchar](3) NOT NULL,
	[macno] [nchar](10) NOT NULL,
	[macname_eng] [nvarchar](60) NULL,
	[macname_kor] [nvarchar](60) NULL,
	[macname_loc] [nvarchar](60) NULL,
	[processcode] [nchar](4) NULL,
	[useflag] [nchar](1) NULL,
	[remark] [nvarchar](200) NULL,
	[etc] [nvarchar](200) NULL,
	[insempcode] [nchar](8) NULL,
	[insdt] [datetime] NULL,
	[updempcode] [nchar](8) NULL,
	[upddt] [datetime] NULL,
 CONSTRAINT [PK_tmstprocmac] PRIMARY KEY CLUSTERED 
(
	[cmpcode] ASC,
	[bizdiv] ASC,
	[macno] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmstprocess]    Script Date: 02/16/2017 13:48:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmstprocess](
	[cmpcode] [nchar](2) NOT NULL,
	[bizdiv] [nchar](3) NOT NULL,
	[processcode] [nchar](4) NOT NULL,
	[processname_eng] [nvarchar](60) NULL,
	[processname_kor] [nvarchar](60) NULL,
	[processname_loc] [nvarchar](60) NULL,
	[processid] [nchar](2) NULL,
	[appunit] [nvarchar](6) NULL,
	[useflag] [nchar](1) NULL,
	[remark] [nvarchar](200) NULL,
	[etc] [nvarchar](200) NULL,
	[insempcode] [nchar](8) NULL,
	[insdt] [datetime] NULL,
	[updempcode] [nchar](8) NULL,
	[upddt] [datetime] NULL,
 CONSTRAINT [PK_tmstprocess] PRIMARY KEY CLUSTERED 
(
	[cmpcode] ASC,
	[bizdiv] ASC,
	[processcode] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmstmac]    Script Date: 02/16/2017 13:48:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmstmac](
	[cmpcode] [nchar](2) NOT NULL,
	[bizdiv] [nchar](3) NOT NULL,
	[macno] [nvarchar](10) NOT NULL,
	[macname] [nvarchar](30) NULL,
	[process] [nvarchar](10) NULL,
 CONSTRAINT [PK_tmstmac] PRIMARY KEY CLUSTERED 
(
	[cmpcode] ASC,
	[bizdiv] ASC,
	[macno] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_User]    Script Date: 02/16/2017 13:48:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_User](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[UserCode] [nvarchar](10) NULL,
	[Password] [nvarchar](20) NULL,
 CONSTRAINT [PK_tb_User] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_language]    Script Date: 02/16/2017 13:48:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_language](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[obj_name] [nvarchar](50) NOT NULL,
	[control_name] [nvarchar](50) NOT NULL,
	[control_type] [nvarchar](50) NULL,
	[word_def] [nvarchar](255) NULL,
	[word_eng] [nvarchar](255) NULL,
	[word_loc] [nvarchar](255) NULL,
	[word_korea] [nvarchar](255) NULL,
 CONSTRAINT [PK_db_language] PRIMARY KEY CLUSTERED 
(
	[id] ASC,
	[obj_name] ASC,
	[control_name] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_datamix]    Script Date: 02/16/2017 13:48:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_datamix](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[keycode] [nchar](13) NOT NULL,
	[indate] [nchar](8) NULL,
	[wodate] [nchar](10) NULL,
	[linecode] [nvarchar](10) NULL,
	[linename] [nvarchar](60) NULL,
	[shift] [nchar](2) NULL,
	[empname] [nvarchar](60) NULL,
	[modelcode] [nvarchar](100) NULL,
	[modelcheck] [nvarchar](100) NULL,
	[checktime] [datetime] NULL,
	[insempcode] [nvarchar](10) NULL,
	[insdt] [datetime] NULL,
 CONSTRAINT [PK_tb_datamix] PRIMARY KEY CLUSTERED 
(
	[id] ASC,
	[keycode] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_datachecked]    Script Date: 02/16/2017 13:48:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_datachecked](
	[keycode] [nchar](13) NOT NULL,
	[indate] [nchar](8) NULL,
	[wodate] [nchar](8) NULL,
	[linecode] [nvarchar](10) NULL,
	[linename] [nvarchar](60) NULL,
	[shift] [nchar](2) NULL,
	[empname] [nvarchar](60) NULL,
	[modelcode] [nvarchar](100) NULL,
	[total] [numeric](12, 0) NULL,
	[goodqty] [numeric](12, 0) NULL,
	[mixqty] [numeric](12, 0) NULL,
	[defqty] [numeric](12, 0) NULL,
	[starttime] [datetime] NULL,
	[endtime] [datetime] NULL,
	[insempcode] [nvarchar](10) NULL,
	[insdt] [datetime] NULL,
	[updemcode] [nvarchar](10) NULL,
	[upddt] [datetime] NULL,
 CONSTRAINT [PK_tb_datachecked] PRIMARY KEY CLUSTERED 
(
	[keycode] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[sp_sys_tablelayout_report]    Script Date: 02/16/2017 13:48:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- exec [sp_sys_tablelayout_report] 'tfgslip_head' 

create   Procedure [dbo].[sp_sys_tablelayout_report] (

		@as_tablename     nvarchar(30) 
	 
)

As
Set nocount on

Begin



CREATE TABLE #Temp (
	colid			int,
	columnname		NVARCHAR(100),
	idtname         nvarchar(30),
	lenght			NVARCHAR(5),
	scale		    NVARCHAR(5),
	keyseq			NVARCHAR(5),
	nullyn			nvarchar(10),
	descr			nvarchar(100)
)

-- select * from sys.sql_expression_dependencies 

DECLARE        @is_YN      int,
               @f_xtype    nvarchar(5)
 

-- select * from  sys.extended_properties

    select @f_xtype = XTYPE  from sysobjects
	where  name = @as_tablename
	
	if @f_xtype ='U'
	begin


			insert into #Temp(colid,columnname,idtname ,lenght,scale,nullyn)
			select	colid,
					b.name,
					c.name,
					b.prec,
					b.scale,
					(case when isnullable  ='1' then 'Y' else '' end) 
			 from	sysobjects  a,
					syscolumns  b,
					systypes    c
			where a.id = b.id   
			and   b.xtype = c.xusertype
			and  a.id = object_id(@as_tablename)
			order by colid


			update #Temp
			set keyseq = keyno
			from  #Temp  a,
				  sysindexkeys b
			where a.colid = b.colid
			and   b.id = object_id(@as_tablename)
			and   indid = '1'

			-- select * from   sysindexkeys
			update #Temp
			set descr = convert(nvarchar(100),value)
			from  #Temp						a,
				  sys.extended_properties   b
			where a.colid = b.minor_id
			and   b.major_id = object_id(@as_tablename) 

		end

SELECT	colid,
		columnname,
		idtname,
	
		(case when idtname = 'nvarchar' then ISNULL(lenght,'') 
		     when idtname = 'nchar' then ISNULL(lenght,'')
		     when idtname = 'char' then ISNULL(lenght,'')
		     when idtname = 'varchar' then ISNULL(lenght,'')
		     when idtname = 'numeric' then ISNULL(lenght,'')+','+ISNULL(scale,'')
		     else '' end) size,
		--lenght,
		--ISNULL(scale,'') scale,
		ISNULL(keyseq,'') keyseq,
		nullyn,
		ISNULL(descr,'') descr
FROM	#Temp


DROP TABLE #Temp


Return
End
GO
/****** Object:  StoredProcedure [dbo].[sp_SynData]    Script Date: 02/16/2017 13:48:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Tuân
-- Create date: 2016-12-12
-- Description:	Syn Data db_codechecked
-- =============================================
CREATE PROCEDURE [dbo].[sp_SynData]
AS
BEGIN
--CREATE TABLE #Temp (
--	cmpcode nchar(2) ,
--	bizdiv nchar(3) ,
--	processcode nchar(4) ,
--	processname_eng nvarchar(60) ,
--	processname_kor nvarchar(60) ,
--	processname_loc nvarchar(60) ,
--	processid nchar(2) ,
--	appunit nvarchar(6) ,
--	useflag nchar(1) ,
--	remark nvarchar(200) ,
--	etc nvarchar(200) ,
--	insempcode nchar(8) ,
--	insdt datetime ,
--	updempcode nchar(8) ,
--	upddt datetime 
--)
--tmstprocess
insert into tmstprocess
	select 
	   cmpcode
      ,bizdiv
      ,processcode
      ,processname_eng
      ,processname_kor
      ,processname_loc
      ,processid
      ,appunit
      ,useflag
      ,remark
      ,etc
      ,insempcode
      ,insdt
      ,updempcode
      ,upddt
    from [192.168.4.250].db_codechecked.dbo.tmstprocess where processcode not in (select processcode COLLATE SQL_Latin1_General_CP1_CI_AS from tmstprocess)

--tmstprocwork    
insert into tmstprocwork
	select 
	   cmpcode
      ,bizdiv
      ,processcode
      ,workcode
      ,workcodename_eng
      ,workcodename_kor
      ,workcodename_loc
      ,appunit
      ,useflag
      ,remark
      ,etc
      ,insempcode
      ,insdt
      ,updempcode
      ,upddt
    from [192.168.4.250].db_codechecked.dbo.tmstprocwork where processcode not in (select processcode COLLATE SQL_Latin1_General_CP1_CI_AS from tmstprocwork)

--tmstprocwork       
insert into tmstworkmac
	select 
	   cmpcode
      ,bizdiv
      ,workcode
      ,macno
      ,etc
      ,insempcode
      ,insdt
      ,updempcode
      ,upddt
    from [192.168.4.250].db_codechecked.dbo.tmstworkmac where (workcode+macno) not in (select workcode COLLATE SQL_Latin1_General_CP1_CI_AS + macno COLLATE SQL_Latin1_General_CP1_CI_AS from tmstworkmac)
          
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Search]    Script Date: 02/16/2017 13:48:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_Search]
(
	@from nchar(8),
	@to nchar(8),
	@shift nchar(2),
	@model nvarchar(30)
)
as
begin
Select 
	keydata as [Key],
	indate as [Input Date],
	empname as [Employee Name],
	assyline as [Assy Line], 
	shift as [Shift],
	codeset as [Code Setting],
	codecheck as [Code Checked],
	CONVERT(nvarchar(20),checktime,120) as [Checked Time],
	status as [Status] 
from DataChecked 
where wodate between @from and @to and shift like '%'+@shift+'%' and codeset like '%'+@model+'%'
return
end
GO
/****** Object:  StoredProcedure [dbo].[sp_LoadDataList]    Script Date: 02/16/2017 13:48:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_LoadDataList]
	-- Add the parameters for the stored procedure here
	(
		@from nchar(8),
		@to nchar(8),
		@code nvarchar(50),
		@lotgroup nvarchar(3),	
		@shift nchar(2)
	)
AS
BEGIN
    select lotgroup,keycode,wodate,linename,shift,empname,modelcode,modelcheck,status,checktime 
	from tb_datachecked (nolock) 
	where 
		wodate between @from and @to and modelcode like '%'+@code+'%' and lotgroup like '%'+@lotgroup+'%' and shift  like '%%'+@shift+'%%'
return
END
GO
/****** Object:  Default [DF__tSysLangu__regda__023D5A04]    Script Date: 02/16/2017 13:48:46 ******/
ALTER TABLE [dbo].[tSysLanguageSet] ADD  CONSTRAINT [DF__tSysLangu__regda__023D5A04]  DEFAULT (getdate()) FOR [regdate]
GO
