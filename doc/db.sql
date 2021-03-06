/****** Object:  ForeignKey [FK_UserTable_RoleTable]    Script Date: 01/27/2016 00:43:43 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_UserTable_RoleTable]') AND parent_object_id = OBJECT_ID(N'[dbo].[UserTable]'))
ALTER TABLE [dbo].[UserTable] DROP CONSTRAINT [FK_UserTable_RoleTable]
GO
/****** Object:  Table [dbo].[UserTable]    Script Date: 01/27/2016 00:43:43 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[UserTable]') AND type in (N'U'))
DROP TABLE [dbo].[UserTable]
GO
/****** Object:  Table [dbo].[AreaTable]    Script Date: 01/27/2016 00:43:43 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AreaTable]') AND type in (N'U'))
DROP TABLE [dbo].[AreaTable]
GO
/****** Object:  Table [dbo].[ListTable]    Script Date: 01/27/2016 00:43:43 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ListTable]') AND type in (N'U'))
DROP TABLE [dbo].[ListTable]
GO
/****** Object:  Table [dbo].[RoleTable]    Script Date: 01/27/2016 00:43:43 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[RoleTable]') AND type in (N'U'))
DROP TABLE [dbo].[RoleTable]
GO
/****** Object:  Table [dbo].[RoleTable]    Script Date: 01/27/2016 00:43:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[RoleTable]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[RoleTable](
	[id] [numeric](18, 0) NOT NULL,
	[role] [nvarchar](50) COLLATE Cyrillic_General_CI_AS NOT NULL,
 CONSTRAINT [PK_RoleTable] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
INSERT [dbo].[RoleTable] ([id], [role]) VALUES (CAST(1 AS Numeric(18, 0)), N'admin')
INSERT [dbo].[RoleTable] ([id], [role]) VALUES (CAST(2 AS Numeric(18, 0)), N'operator')
INSERT [dbo].[RoleTable] ([id], [role]) VALUES (CAST(3 AS Numeric(18, 0)), N'mechanik')
INSERT [dbo].[RoleTable] ([id], [role]) VALUES (CAST(4 AS Numeric(18, 0)), N'director')
/****** Object:  Table [dbo].[ListTable]    Script Date: 01/27/2016 00:43:43 ******/
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
/****** Object:  Table [dbo].[AreaTable]    Script Date: 01/27/2016 00:43:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AreaTable]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[AreaTable](
	[ID] [int] NOT NULL,
	[Name] [nvarchar](50) COLLATE Cyrillic_General_CI_AS NULL,
 CONSTRAINT [PK_AreaTable] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
INSERT [dbo].[AreaTable] ([ID], [Name]) VALUES (1, N'участок1')
INSERT [dbo].[AreaTable] ([ID], [Name]) VALUES (2, N'участок 2')
INSERT [dbo].[AreaTable] ([ID], [Name]) VALUES (3, N'участок 3')
INSERT [dbo].[AreaTable] ([ID], [Name]) VALUES (4, N'участок 4')
INSERT [dbo].[AreaTable] ([ID], [Name]) VALUES (5, N'новый участок')
INSERT [dbo].[AreaTable] ([ID], [Name]) VALUES (6, N'участок 6')
INSERT [dbo].[AreaTable] ([ID], [Name]) VALUES (7, N'участок 7')
INSERT [dbo].[AreaTable] ([ID], [Name]) VALUES (8, N'участок 8')
INSERT [dbo].[AreaTable] ([ID], [Name]) VALUES (9, N'участок 9')
INSERT [dbo].[AreaTable] ([ID], [Name]) VALUES (10, N'участок 10')
INSERT [dbo].[AreaTable] ([ID], [Name]) VALUES (11, N'test')
INSERT [dbo].[AreaTable] ([ID], [Name]) VALUES (12, N'ww')
INSERT [dbo].[AreaTable] ([ID], [Name]) VALUES (13, N'ee')
INSERT [dbo].[AreaTable] ([ID], [Name]) VALUES (14, N'р')
INSERT [dbo].[AreaTable] ([ID], [Name]) VALUES (15, N'3333')
INSERT [dbo].[AreaTable] ([ID], [Name]) VALUES (16, N'rrr5')
INSERT [dbo].[AreaTable] ([ID], [Name]) VALUES (17, N't6666555')
INSERT [dbo].[AreaTable] ([ID], [Name]) VALUES (18, N'zzzz')
/****** Object:  Table [dbo].[UserTable]    Script Date: 01/27/2016 00:43:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[UserTable]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[UserTable](
	[id] [numeric](18, 0) NOT NULL,
	[name] [nvarchar](50) COLLATE Cyrillic_General_CI_AS NOT NULL,
	[password] [nvarchar](50) COLLATE Cyrillic_General_CI_AS NOT NULL,
	[mail] [nvarchar](50) COLLATE Cyrillic_General_CI_AS NULL,
	[roleId] [numeric](18, 0) NULL,
 CONSTRAINT [PK_UserTable] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
INSERT [dbo].[UserTable] ([id], [name], [password], [mail], [roleId]) VALUES (CAST(1 AS Numeric(18, 0)), N'admin', N'admin', N'el.al.sm@gmail.com', CAST(1 AS Numeric(18, 0)))
/****** Object:  ForeignKey [FK_UserTable_RoleTable]    Script Date: 01/27/2016 00:43:43 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_UserTable_RoleTable]') AND parent_object_id = OBJECT_ID(N'[dbo].[UserTable]'))
ALTER TABLE [dbo].[UserTable]  WITH CHECK ADD  CONSTRAINT [FK_UserTable_RoleTable] FOREIGN KEY([roleId])
REFERENCES [dbo].[RoleTable] ([id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_UserTable_RoleTable]') AND parent_object_id = OBJECT_ID(N'[dbo].[UserTable]'))
ALTER TABLE [dbo].[UserTable] CHECK CONSTRAINT [FK_UserTable_RoleTable]
GO
