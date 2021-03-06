/****** Object:  Table [dbo].[AreaTable]    Script Date: 12/24/2015 14:30:12 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AreaTable]') AND type in (N'U'))
DROP TABLE [dbo].[AreaTable]
GO
/****** Object:  Table [dbo].[ListTable]    Script Date: 12/24/2015 14:30:12 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ListTable]') AND type in (N'U'))
DROP TABLE [dbo].[ListTable]
GO
/****** Object:  Table [dbo].[ListTable]    Script Date: 12/24/2015 14:30:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ListTable]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ListTable](
	[ID] [nchar](10) COLLATE Cyrillic_General_CI_AS NULL,
	[AreaName] [nchar](10) COLLATE Cyrillic_General_CI_AS NULL,
	[Street] [nchar](10) COLLATE Cyrillic_General_CI_AS NULL,
	[HouseNumber] [nchar](10) COLLATE Cyrillic_General_CI_AS NULL,
	[Housing] [nchar](10) COLLATE Cyrillic_General_CI_AS NULL,
	[Front] [nchar](10) COLLATE Cyrillic_General_CI_AS NULL,
	[IDNumberOfElebator] [nchar](10) COLLATE Cyrillic_General_CI_AS NULL,
	[IDFactoryOfElevator] [nchar](10) COLLATE Cyrillic_General_CI_AS NULL,
	[ElevatorName] [nchar](10) COLLATE Cyrillic_General_CI_AS NULL,
	[Reason] [nchar](10) COLLATE Cyrillic_General_CI_AS NULL,
	[TimeOfRequest] [nchar](10) COLLATE Cyrillic_General_CI_AS NULL,
	[Time2] [nchar](10) COLLATE Cyrillic_General_CI_AS NULL,
	[NameOfMechanic] [nchar](10) COLLATE Cyrillic_General_CI_AS NULL,
	[Delay] [nchar](10) COLLATE Cyrillic_General_CI_AS NULL
)
END
GO
INSERT [dbo].[ListTable] ([ID], [AreaName], [Street], [HouseNumber], [Housing], [Front], [IDNumberOfElebator], [IDFactoryOfElevator], [ElevatorName], [Reason], [TimeOfRequest], [Time2], [NameOfMechanic], [Delay]) VALUES (N'1         ', N'exfcnjr   ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
/****** Object:  Table [dbo].[AreaTable]    Script Date: 12/24/2015 14:30:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AreaTable]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[AreaTable](
	[ID] [numeric](18, 0) NOT NULL,
	[Name] [char](50) COLLATE Cyrillic_General_CI_AS NOT NULL
)
END
GO
INSERT [dbo].[AreaTable] ([ID], [Name]) VALUES (CAST(1 AS Numeric(18, 0)), N'участок 1                                         ')
INSERT [dbo].[AreaTable] ([ID], [Name]) VALUES (CAST(2 AS Numeric(18, 0)), N'участок 2                                         ')
INSERT [dbo].[AreaTable] ([ID], [Name]) VALUES (CAST(3 AS Numeric(18, 0)), N'участок 3                                         ')
