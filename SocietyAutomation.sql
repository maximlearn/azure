USE [SocietyAutomation]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_UserRole_SystemUsers]') AND parent_object_id = OBJECT_ID(N'[dbo].[UserRole]'))
ALTER TABLE [dbo].[UserRole] DROP CONSTRAINT [FK_UserRole_SystemUsers]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_UserRole_Role]') AND parent_object_id = OBJECT_ID(N'[dbo].[UserRole]'))
ALTER TABLE [dbo].[UserRole] DROP CONSTRAINT [FK_UserRole_Role]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_UserModule_SystemUsers]') AND parent_object_id = OBJECT_ID(N'[dbo].[UserModule]'))
ALTER TABLE [dbo].[UserModule] DROP CONSTRAINT [FK_UserModule_SystemUsers]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_UserModule_Module]') AND parent_object_id = OBJECT_ID(N'[dbo].[UserModule]'))
ALTER TABLE [dbo].[UserModule] DROP CONSTRAINT [FK_UserModule_Module]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_SubCategory_Category]') AND parent_object_id = OBJECT_ID(N'[dbo].[SubCategory]'))
ALTER TABLE [dbo].[SubCategory] DROP CONSTRAINT [FK_SubCategory_Category]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_FlatRegistration_ResidentType]') AND parent_object_id = OBJECT_ID(N'[dbo].[FlatRegistration]'))
ALTER TABLE [dbo].[FlatRegistration] DROP CONSTRAINT [FK_FlatRegistration_ResidentType]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Employee_SubCategory]') AND parent_object_id = OBJECT_ID(N'[dbo].[Employee]'))
ALTER TABLE [dbo].[Employee] DROP CONSTRAINT [FK_Employee_SubCategory]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ComplaintRegister_SubCategory]') AND parent_object_id = OBJECT_ID(N'[dbo].[ComplaintRegister]'))
ALTER TABLE [dbo].[ComplaintRegister] DROP CONSTRAINT [FK_ComplaintRegister_SubCategory]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ComplaintRegister_Status]') AND parent_object_id = OBJECT_ID(N'[dbo].[ComplaintRegister]'))
ALTER TABLE [dbo].[ComplaintRegister] DROP CONSTRAINT [FK_ComplaintRegister_Status]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ComplaintRegister_FlatRegistration]') AND parent_object_id = OBJECT_ID(N'[dbo].[ComplaintRegister]'))
ALTER TABLE [dbo].[ComplaintRegister] DROP CONSTRAINT [FK_ComplaintRegister_FlatRegistration]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ComplaintRegister_ComplaintPriority1]') AND parent_object_id = OBJECT_ID(N'[dbo].[ComplaintRegister]'))
ALTER TABLE [dbo].[ComplaintRegister] DROP CONSTRAINT [FK_ComplaintRegister_ComplaintPriority1]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ComplaintRegister_ComplaintPriority]') AND parent_object_id = OBJECT_ID(N'[dbo].[ComplaintRegister]'))
ALTER TABLE [dbo].[ComplaintRegister] DROP CONSTRAINT [FK_ComplaintRegister_ComplaintPriority]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ComplaintRegister_Category]') AND parent_object_id = OBJECT_ID(N'[dbo].[ComplaintRegister]'))
ALTER TABLE [dbo].[ComplaintRegister] DROP CONSTRAINT [FK_ComplaintRegister_Category]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ComplaintActionRegister_Status1]') AND parent_object_id = OBJECT_ID(N'[dbo].[ComplaintActionRegister]'))
ALTER TABLE [dbo].[ComplaintActionRegister] DROP CONSTRAINT [FK_ComplaintActionRegister_Status1]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ComplaintActionRegister_Status]') AND parent_object_id = OBJECT_ID(N'[dbo].[ComplaintActionRegister]'))
ALTER TABLE [dbo].[ComplaintActionRegister] DROP CONSTRAINT [FK_ComplaintActionRegister_Status]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ComplaintActionRegister_Employee]') AND parent_object_id = OBJECT_ID(N'[dbo].[ComplaintActionRegister]'))
ALTER TABLE [dbo].[ComplaintActionRegister] DROP CONSTRAINT [FK_ComplaintActionRegister_Employee]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ComplaintActionRegister_ComplaintRegister]') AND parent_object_id = OBJECT_ID(N'[dbo].[ComplaintActionRegister]'))
ALTER TABLE [dbo].[ComplaintActionRegister] DROP CONSTRAINT [FK_ComplaintActionRegister_ComplaintRegister]
GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_SystemUsers_ModifiedOn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[SystemUsers] DROP CONSTRAINT [DF_SystemUsers_ModifiedOn]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_SystemUsers_CreatedOn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[SystemUsers] DROP CONSTRAINT [DF_SystemUsers_CreatedOn]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_SystemUsers_IsActive]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[SystemUsers] DROP CONSTRAINT [DF_SystemUsers_IsActive]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_SubCategory_ModifiedOn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[SubCategory] DROP CONSTRAINT [DF_SubCategory_ModifiedOn]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_SubCategory_CreatedOn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[SubCategory] DROP CONSTRAINT [DF_SubCategory_CreatedOn]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_SubCategory_IsActive]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[SubCategory] DROP CONSTRAINT [DF_SubCategory_IsActive]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_Status_ModifiedOn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Status] DROP CONSTRAINT [DF_Status_ModifiedOn]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_Status_CreatedOn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Status] DROP CONSTRAINT [DF_Status_CreatedOn]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_Status_IsActive]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Status] DROP CONSTRAINT [DF_Status_IsActive]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_Role_ModifiedOn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Role] DROP CONSTRAINT [DF_Role_ModifiedOn]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_Role_CreatedOn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Role] DROP CONSTRAINT [DF_Role_CreatedOn]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_Role_IsActive]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Role] DROP CONSTRAINT [DF_Role_IsActive]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_Role_RoleName]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Role] DROP CONSTRAINT [DF_Role_RoleName]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_Module_ModifiedOn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Module] DROP CONSTRAINT [DF_Module_ModifiedOn]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_Module_CreatedOn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Module] DROP CONSTRAINT [DF_Module_CreatedOn]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_Module_IsActive]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Module] DROP CONSTRAINT [DF_Module_IsActive]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_FlatRegistration_ModifiedOn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[FlatRegistration] DROP CONSTRAINT [DF_FlatRegistration_ModifiedOn]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_FlatRegistration_CreatedOn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[FlatRegistration] DROP CONSTRAINT [DF_FlatRegistration_CreatedOn]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_FlatRegistration_IsActive]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[FlatRegistration] DROP CONSTRAINT [DF_FlatRegistration_IsActive]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_Employee_ModifiedOn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Employee] DROP CONSTRAINT [DF_Employee_ModifiedOn]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_Employee_CreatedOn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Employee] DROP CONSTRAINT [DF_Employee_CreatedOn]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_Employee_IsActive]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Employee] DROP CONSTRAINT [DF_Employee_IsActive]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_ComplaintRegister_IsActive]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ComplaintRegister] DROP CONSTRAINT [DF_ComplaintRegister_IsActive]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_ComplaintPriority_ModifiedOn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ComplaintPriority] DROP CONSTRAINT [DF_ComplaintPriority_ModifiedOn]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_ComplaintPriority_CreatedOn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ComplaintPriority] DROP CONSTRAINT [DF_ComplaintPriority_CreatedOn]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_ComplaintPriority_IsActive]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ComplaintPriority] DROP CONSTRAINT [DF_ComplaintPriority_IsActive]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_ComplaintActionRegister_CreatedOn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ComplaintActionRegister] DROP CONSTRAINT [DF_ComplaintActionRegister_CreatedOn]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_Category_ModifiedOn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Category] DROP CONSTRAINT [DF_Category_ModifiedOn]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_Category_CreatedOn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Category] DROP CONSTRAINT [DF_Category_CreatedOn]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_Category_IsActive]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Category] DROP CONSTRAINT [DF_Category_IsActive]
END

GO
/****** Object:  Table [dbo].[UserRole]    Script Date: 30/04/2020 8:42:55 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[UserRole]') AND type in (N'U'))
DROP TABLE [dbo].[UserRole]
GO
/****** Object:  Table [dbo].[UserModule]    Script Date: 30/04/2020 8:42:55 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[UserModule]') AND type in (N'U'))
DROP TABLE [dbo].[UserModule]
GO
/****** Object:  Table [dbo].[SystemUsers]    Script Date: 30/04/2020 8:42:55 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SystemUsers]') AND type in (N'U'))
DROP TABLE [dbo].[SystemUsers]
GO
/****** Object:  Table [dbo].[SubCategory]    Script Date: 30/04/2020 8:42:55 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SubCategory]') AND type in (N'U'))
DROP TABLE [dbo].[SubCategory]
GO
/****** Object:  Table [dbo].[Status]    Script Date: 30/04/2020 8:42:55 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Status]') AND type in (N'U'))
DROP TABLE [dbo].[Status]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 30/04/2020 8:42:55 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Role]') AND type in (N'U'))
DROP TABLE [dbo].[Role]
GO
/****** Object:  Table [dbo].[ResidentType]    Script Date: 30/04/2020 8:42:55 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ResidentType]') AND type in (N'U'))
DROP TABLE [dbo].[ResidentType]
GO
/****** Object:  Table [dbo].[Module]    Script Date: 30/04/2020 8:42:55 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Module]') AND type in (N'U'))
DROP TABLE [dbo].[Module]
GO
/****** Object:  Table [dbo].[FlatRegistration]    Script Date: 30/04/2020 8:42:55 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[FlatRegistration]') AND type in (N'U'))
DROP TABLE [dbo].[FlatRegistration]
GO
/****** Object:  Table [dbo].[Employee]    Script Date: 30/04/2020 8:42:55 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Employee]') AND type in (N'U'))
DROP TABLE [dbo].[Employee]
GO
/****** Object:  Table [dbo].[ComplaintRegister]    Script Date: 30/04/2020 8:42:55 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ComplaintRegister]') AND type in (N'U'))
DROP TABLE [dbo].[ComplaintRegister]
GO
/****** Object:  Table [dbo].[ComplaintPriority]    Script Date: 30/04/2020 8:42:55 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ComplaintPriority]') AND type in (N'U'))
DROP TABLE [dbo].[ComplaintPriority]
GO
/****** Object:  Table [dbo].[ComplaintActionRegister]    Script Date: 30/04/2020 8:42:55 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ComplaintActionRegister]') AND type in (N'U'))
DROP TABLE [dbo].[ComplaintActionRegister]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 30/04/2020 8:42:55 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Category]') AND type in (N'U'))
DROP TABLE [dbo].[Category]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 30/04/2020 8:42:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Category]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Category](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CategoryName] [nvarchar](max) NOT NULL,
	[IsActive] [bit] NULL,
	[CreatedOn] [datetime] NULL,
	[CreatedBy] [int] NULL,
	[ModifiedOn] [datetime] NULL,
	[ModifiedBy] [int] NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[ComplaintActionRegister]    Script Date: 30/04/2020 8:42:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ComplaintActionRegister]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ComplaintActionRegister](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[ComplaintId] [bigint] NOT NULL,
	[AssignToEmployeeId] [bigint] NULL,
	[CloseStatusByUser] [int] NULL,
	[CloseStatusByAdmin] [int] NULL,
	[ResolveImageURL] [nvarchar](max) NULL,
	[CloseCommentByAdmin] [nvarchar](max) NULL,
	[CreatedOn] [datetime] NULL,
	[CreatedBy] [bigint] NULL,
	[ModifiedOn] [datetime] NULL,
	[ModifiedBy] [bigint] NULL,
 CONSTRAINT [PK_ComplaintActionRegister] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[ComplaintPriority]    Script Date: 30/04/2020 8:42:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ComplaintPriority]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ComplaintPriority](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Priority] [nvarchar](max) NOT NULL,
	[IsActive] [bit] NULL,
	[CreatedOn] [datetime] NULL,
	[CreatedBy] [int] NULL,
	[ModifiedOn] [datetime] NULL,
	[ModifiedBy] [int] NULL,
 CONSTRAINT [PK_ComplaintPriority] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[ComplaintRegister]    Script Date: 30/04/2020 8:42:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ComplaintRegister]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ComplaintRegister](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[CategoryId] [int] NOT NULL,
	[SubCategoryId] [int] NOT NULL,
	[FlatId] [bigint] NOT NULL,
	[RequesterPriorityId] [int] NULL,
	[AdminPriorityId] [int] NULL,
	[ComplaintDetail] [nvarchar](max) NOT NULL,
	[ImageURL] [nvarchar](max) NULL,
	[ComplaintStatus] [int] NULL,
	[IsActive] [bit] NULL,
 CONSTRAINT [PK_ComplaintRegister] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Employee]    Script Date: 30/04/2020 8:42:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Employee]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Employee](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[DepartmentId] [int] NOT NULL,
	[EmployeeName] [nvarchar](100) NOT NULL,
	[Contact] [nvarchar](50) NOT NULL,
	[IsActive] [bit] NULL,
	[CreatedOn] [datetime] NULL,
	[CreatedBy] [int] NULL,
	[ModifiedOn] [datetime] NULL,
	[ModifiedBy] [int] NULL,
 CONSTRAINT [PK_Employee] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[FlatRegistration]    Script Date: 30/04/2020 8:42:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[FlatRegistration]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[FlatRegistration](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[FlatId] [varchar](10) NOT NULL,
	[OwnerName] [nvarchar](max) NOT NULL,
	[ResidentType] [int] NOT NULL,
	[CurrentResidentName] [nchar](10) NOT NULL,
	[ContactNumber] [varchar](15) NOT NULL,
	[Email] [nvarchar](max) NULL,
	[Password] [varchar](10) NOT NULL,
	[IsActive] [bit] NULL,
	[CreatedOn] [datetime] NULL,
	[CreatedBy] [int] NULL,
	[ModifiedOn] [datetime] NULL,
	[ModifiedBy] [int] NULL,
 CONSTRAINT [PK_FlatRegistration] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Module]    Script Date: 30/04/2020 8:42:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Module]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Module](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ModuleName] [nvarchar](100) NOT NULL,
	[IsActive] [bit] NULL,
	[CreatedOn] [datetime] NULL,
	[CreatedBy] [int] NULL,
	[ModifiedOn] [datetime] NULL,
	[ModifiedBy] [int] NULL,
 CONSTRAINT [PK_Module] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[ResidentType]    Script Date: 30/04/2020 8:42:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ResidentType]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ResidentType](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ResidentType] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_ResidentType] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Role]    Script Date: 30/04/2020 8:42:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Role]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Role](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleName] [nvarchar](50) NOT NULL,
	[IsActive] [bit] NULL,
	[CreatedOn] [datetime] NULL,
	[CreatedBy] [int] NULL,
	[ModifiedOn] [datetime] NULL,
	[ModifiedBy] [int] NULL,
 CONSTRAINT [PK_Role] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Status]    Script Date: 30/04/2020 8:42:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Status]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Status](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Status] [nvarchar](max) NOT NULL,
	[IsActive] [bit] NULL,
	[CreatedOn] [datetime] NULL,
	[CreatedBy] [int] NULL,
	[ModifiedOn] [datetime] NULL,
	[ModifiedBy] [int] NULL,
 CONSTRAINT [PK_CurrentStatus] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[SubCategory]    Script Date: 30/04/2020 8:42:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SubCategory]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[SubCategory](
	[Id] [int] NOT NULL,
	[CategoryId] [int] NOT NULL,
	[SubCategoryName] [nvarchar](max) NOT NULL,
	[IsActive] [bit] NULL,
	[CreatedOn] [datetime] NULL,
	[CreatedBy] [int] NULL,
	[ModifiedOn] [datetime] NULL,
	[ModifiedBy] [int] NULL,
 CONSTRAINT [PK_SubCategory] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[SystemUsers]    Script Date: 30/04/2020 8:42:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SystemUsers]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[SystemUsers](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [nvarchar](max) NOT NULL,
	[Contact] [varchar](15) NOT NULL,
	[Password] [varchar](10) NOT NULL,
	[IsActive] [bit] NULL,
	[CreatedOn] [datetime] NULL,
	[CreatedBy] [int] NULL,
	[ModifiedOn] [datetime] NULL,
	[ModifiedBy] [int] NULL,
 CONSTRAINT [PK_SystemUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[UserModule]    Script Date: 30/04/2020 8:42:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[UserModule]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[UserModule](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ModuleId] [int] NOT NULL,
	[UserId] [int] NOT NULL,
 CONSTRAINT [PK_UserModule] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[UserRole]    Script Date: 30/04/2020 8:42:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[UserRole]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[UserRole](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [int] NOT NULL,
	[UserId] [int] NOT NULL,
 CONSTRAINT [PK_UserRole] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_Category_IsActive]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Category] ADD  CONSTRAINT [DF_Category_IsActive]  DEFAULT ((1)) FOR [IsActive]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_Category_CreatedOn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Category] ADD  CONSTRAINT [DF_Category_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_Category_ModifiedOn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Category] ADD  CONSTRAINT [DF_Category_ModifiedOn]  DEFAULT (getdate()) FOR [ModifiedOn]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_ComplaintActionRegister_CreatedOn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ComplaintActionRegister] ADD  CONSTRAINT [DF_ComplaintActionRegister_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_ComplaintPriority_IsActive]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ComplaintPriority] ADD  CONSTRAINT [DF_ComplaintPriority_IsActive]  DEFAULT ((1)) FOR [IsActive]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_ComplaintPriority_CreatedOn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ComplaintPriority] ADD  CONSTRAINT [DF_ComplaintPriority_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_ComplaintPriority_ModifiedOn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ComplaintPriority] ADD  CONSTRAINT [DF_ComplaintPriority_ModifiedOn]  DEFAULT (getdate()) FOR [ModifiedOn]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_ComplaintRegister_IsActive]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ComplaintRegister] ADD  CONSTRAINT [DF_ComplaintRegister_IsActive]  DEFAULT ((1)) FOR [IsActive]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_Employee_IsActive]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Employee] ADD  CONSTRAINT [DF_Employee_IsActive]  DEFAULT ((1)) FOR [IsActive]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_Employee_CreatedOn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Employee] ADD  CONSTRAINT [DF_Employee_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_Employee_ModifiedOn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Employee] ADD  CONSTRAINT [DF_Employee_ModifiedOn]  DEFAULT (getdate()) FOR [ModifiedOn]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_FlatRegistration_IsActive]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[FlatRegistration] ADD  CONSTRAINT [DF_FlatRegistration_IsActive]  DEFAULT ((1)) FOR [IsActive]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_FlatRegistration_CreatedOn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[FlatRegistration] ADD  CONSTRAINT [DF_FlatRegistration_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_FlatRegistration_ModifiedOn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[FlatRegistration] ADD  CONSTRAINT [DF_FlatRegistration_ModifiedOn]  DEFAULT (getdate()) FOR [ModifiedOn]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_Module_IsActive]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Module] ADD  CONSTRAINT [DF_Module_IsActive]  DEFAULT ((1)) FOR [IsActive]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_Module_CreatedOn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Module] ADD  CONSTRAINT [DF_Module_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_Module_ModifiedOn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Module] ADD  CONSTRAINT [DF_Module_ModifiedOn]  DEFAULT (getdate()) FOR [ModifiedOn]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_Role_RoleName]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Role] ADD  CONSTRAINT [DF_Role_RoleName]  DEFAULT ((1)) FOR [RoleName]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_Role_IsActive]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Role] ADD  CONSTRAINT [DF_Role_IsActive]  DEFAULT ((1)) FOR [IsActive]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_Role_CreatedOn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Role] ADD  CONSTRAINT [DF_Role_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_Role_ModifiedOn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Role] ADD  CONSTRAINT [DF_Role_ModifiedOn]  DEFAULT (getdate()) FOR [ModifiedOn]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_Status_IsActive]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Status] ADD  CONSTRAINT [DF_Status_IsActive]  DEFAULT ((1)) FOR [IsActive]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_Status_CreatedOn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Status] ADD  CONSTRAINT [DF_Status_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_Status_ModifiedOn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Status] ADD  CONSTRAINT [DF_Status_ModifiedOn]  DEFAULT (getdate()) FOR [ModifiedOn]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_SubCategory_IsActive]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[SubCategory] ADD  CONSTRAINT [DF_SubCategory_IsActive]  DEFAULT ((1)) FOR [IsActive]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_SubCategory_CreatedOn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[SubCategory] ADD  CONSTRAINT [DF_SubCategory_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_SubCategory_ModifiedOn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[SubCategory] ADD  CONSTRAINT [DF_SubCategory_ModifiedOn]  DEFAULT (getdate()) FOR [ModifiedOn]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_SystemUsers_IsActive]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[SystemUsers] ADD  CONSTRAINT [DF_SystemUsers_IsActive]  DEFAULT ((1)) FOR [IsActive]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_SystemUsers_CreatedOn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[SystemUsers] ADD  CONSTRAINT [DF_SystemUsers_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_SystemUsers_ModifiedOn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[SystemUsers] ADD  CONSTRAINT [DF_SystemUsers_ModifiedOn]  DEFAULT (getdate()) FOR [ModifiedOn]
END

GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ComplaintActionRegister_ComplaintRegister]') AND parent_object_id = OBJECT_ID(N'[dbo].[ComplaintActionRegister]'))
ALTER TABLE [dbo].[ComplaintActionRegister]  WITH CHECK ADD  CONSTRAINT [FK_ComplaintActionRegister_ComplaintRegister] FOREIGN KEY([ComplaintId])
REFERENCES [dbo].[ComplaintRegister] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ComplaintActionRegister_ComplaintRegister]') AND parent_object_id = OBJECT_ID(N'[dbo].[ComplaintActionRegister]'))
ALTER TABLE [dbo].[ComplaintActionRegister] CHECK CONSTRAINT [FK_ComplaintActionRegister_ComplaintRegister]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ComplaintActionRegister_Employee]') AND parent_object_id = OBJECT_ID(N'[dbo].[ComplaintActionRegister]'))
ALTER TABLE [dbo].[ComplaintActionRegister]  WITH CHECK ADD  CONSTRAINT [FK_ComplaintActionRegister_Employee] FOREIGN KEY([AssignToEmployeeId])
REFERENCES [dbo].[Employee] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ComplaintActionRegister_Employee]') AND parent_object_id = OBJECT_ID(N'[dbo].[ComplaintActionRegister]'))
ALTER TABLE [dbo].[ComplaintActionRegister] CHECK CONSTRAINT [FK_ComplaintActionRegister_Employee]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ComplaintActionRegister_Status]') AND parent_object_id = OBJECT_ID(N'[dbo].[ComplaintActionRegister]'))
ALTER TABLE [dbo].[ComplaintActionRegister]  WITH CHECK ADD  CONSTRAINT [FK_ComplaintActionRegister_Status] FOREIGN KEY([CloseStatusByUser])
REFERENCES [dbo].[Status] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ComplaintActionRegister_Status]') AND parent_object_id = OBJECT_ID(N'[dbo].[ComplaintActionRegister]'))
ALTER TABLE [dbo].[ComplaintActionRegister] CHECK CONSTRAINT [FK_ComplaintActionRegister_Status]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ComplaintActionRegister_Status1]') AND parent_object_id = OBJECT_ID(N'[dbo].[ComplaintActionRegister]'))
ALTER TABLE [dbo].[ComplaintActionRegister]  WITH CHECK ADD  CONSTRAINT [FK_ComplaintActionRegister_Status1] FOREIGN KEY([CloseStatusByAdmin])
REFERENCES [dbo].[Status] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ComplaintActionRegister_Status1]') AND parent_object_id = OBJECT_ID(N'[dbo].[ComplaintActionRegister]'))
ALTER TABLE [dbo].[ComplaintActionRegister] CHECK CONSTRAINT [FK_ComplaintActionRegister_Status1]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ComplaintRegister_Category]') AND parent_object_id = OBJECT_ID(N'[dbo].[ComplaintRegister]'))
ALTER TABLE [dbo].[ComplaintRegister]  WITH CHECK ADD  CONSTRAINT [FK_ComplaintRegister_Category] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Category] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ComplaintRegister_Category]') AND parent_object_id = OBJECT_ID(N'[dbo].[ComplaintRegister]'))
ALTER TABLE [dbo].[ComplaintRegister] CHECK CONSTRAINT [FK_ComplaintRegister_Category]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ComplaintRegister_ComplaintPriority]') AND parent_object_id = OBJECT_ID(N'[dbo].[ComplaintRegister]'))
ALTER TABLE [dbo].[ComplaintRegister]  WITH CHECK ADD  CONSTRAINT [FK_ComplaintRegister_ComplaintPriority] FOREIGN KEY([AdminPriorityId])
REFERENCES [dbo].[ComplaintPriority] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ComplaintRegister_ComplaintPriority]') AND parent_object_id = OBJECT_ID(N'[dbo].[ComplaintRegister]'))
ALTER TABLE [dbo].[ComplaintRegister] CHECK CONSTRAINT [FK_ComplaintRegister_ComplaintPriority]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ComplaintRegister_ComplaintPriority1]') AND parent_object_id = OBJECT_ID(N'[dbo].[ComplaintRegister]'))
ALTER TABLE [dbo].[ComplaintRegister]  WITH CHECK ADD  CONSTRAINT [FK_ComplaintRegister_ComplaintPriority1] FOREIGN KEY([RequesterPriorityId])
REFERENCES [dbo].[ComplaintPriority] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ComplaintRegister_ComplaintPriority1]') AND parent_object_id = OBJECT_ID(N'[dbo].[ComplaintRegister]'))
ALTER TABLE [dbo].[ComplaintRegister] CHECK CONSTRAINT [FK_ComplaintRegister_ComplaintPriority1]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ComplaintRegister_FlatRegistration]') AND parent_object_id = OBJECT_ID(N'[dbo].[ComplaintRegister]'))
ALTER TABLE [dbo].[ComplaintRegister]  WITH CHECK ADD  CONSTRAINT [FK_ComplaintRegister_FlatRegistration] FOREIGN KEY([FlatId])
REFERENCES [dbo].[FlatRegistration] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ComplaintRegister_FlatRegistration]') AND parent_object_id = OBJECT_ID(N'[dbo].[ComplaintRegister]'))
ALTER TABLE [dbo].[ComplaintRegister] CHECK CONSTRAINT [FK_ComplaintRegister_FlatRegistration]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ComplaintRegister_Status]') AND parent_object_id = OBJECT_ID(N'[dbo].[ComplaintRegister]'))
ALTER TABLE [dbo].[ComplaintRegister]  WITH CHECK ADD  CONSTRAINT [FK_ComplaintRegister_Status] FOREIGN KEY([ComplaintStatus])
REFERENCES [dbo].[Status] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ComplaintRegister_Status]') AND parent_object_id = OBJECT_ID(N'[dbo].[ComplaintRegister]'))
ALTER TABLE [dbo].[ComplaintRegister] CHECK CONSTRAINT [FK_ComplaintRegister_Status]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ComplaintRegister_SubCategory]') AND parent_object_id = OBJECT_ID(N'[dbo].[ComplaintRegister]'))
ALTER TABLE [dbo].[ComplaintRegister]  WITH CHECK ADD  CONSTRAINT [FK_ComplaintRegister_SubCategory] FOREIGN KEY([SubCategoryId])
REFERENCES [dbo].[SubCategory] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ComplaintRegister_SubCategory]') AND parent_object_id = OBJECT_ID(N'[dbo].[ComplaintRegister]'))
ALTER TABLE [dbo].[ComplaintRegister] CHECK CONSTRAINT [FK_ComplaintRegister_SubCategory]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Employee_SubCategory]') AND parent_object_id = OBJECT_ID(N'[dbo].[Employee]'))
ALTER TABLE [dbo].[Employee]  WITH CHECK ADD  CONSTRAINT [FK_Employee_SubCategory] FOREIGN KEY([DepartmentId])
REFERENCES [dbo].[SubCategory] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Employee_SubCategory]') AND parent_object_id = OBJECT_ID(N'[dbo].[Employee]'))
ALTER TABLE [dbo].[Employee] CHECK CONSTRAINT [FK_Employee_SubCategory]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_FlatRegistration_ResidentType]') AND parent_object_id = OBJECT_ID(N'[dbo].[FlatRegistration]'))
ALTER TABLE [dbo].[FlatRegistration]  WITH CHECK ADD  CONSTRAINT [FK_FlatRegistration_ResidentType] FOREIGN KEY([ResidentType])
REFERENCES [dbo].[ResidentType] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_FlatRegistration_ResidentType]') AND parent_object_id = OBJECT_ID(N'[dbo].[FlatRegistration]'))
ALTER TABLE [dbo].[FlatRegistration] CHECK CONSTRAINT [FK_FlatRegistration_ResidentType]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_SubCategory_Category]') AND parent_object_id = OBJECT_ID(N'[dbo].[SubCategory]'))
ALTER TABLE [dbo].[SubCategory]  WITH CHECK ADD  CONSTRAINT [FK_SubCategory_Category] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Category] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_SubCategory_Category]') AND parent_object_id = OBJECT_ID(N'[dbo].[SubCategory]'))
ALTER TABLE [dbo].[SubCategory] CHECK CONSTRAINT [FK_SubCategory_Category]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_UserModule_Module]') AND parent_object_id = OBJECT_ID(N'[dbo].[UserModule]'))
ALTER TABLE [dbo].[UserModule]  WITH CHECK ADD  CONSTRAINT [FK_UserModule_Module] FOREIGN KEY([ModuleId])
REFERENCES [dbo].[Module] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_UserModule_Module]') AND parent_object_id = OBJECT_ID(N'[dbo].[UserModule]'))
ALTER TABLE [dbo].[UserModule] CHECK CONSTRAINT [FK_UserModule_Module]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_UserModule_SystemUsers]') AND parent_object_id = OBJECT_ID(N'[dbo].[UserModule]'))
ALTER TABLE [dbo].[UserModule]  WITH CHECK ADD  CONSTRAINT [FK_UserModule_SystemUsers] FOREIGN KEY([UserId])
REFERENCES [dbo].[SystemUsers] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_UserModule_SystemUsers]') AND parent_object_id = OBJECT_ID(N'[dbo].[UserModule]'))
ALTER TABLE [dbo].[UserModule] CHECK CONSTRAINT [FK_UserModule_SystemUsers]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_UserRole_Role]') AND parent_object_id = OBJECT_ID(N'[dbo].[UserRole]'))
ALTER TABLE [dbo].[UserRole]  WITH CHECK ADD  CONSTRAINT [FK_UserRole_Role] FOREIGN KEY([RoleId])
REFERENCES [dbo].[Role] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_UserRole_Role]') AND parent_object_id = OBJECT_ID(N'[dbo].[UserRole]'))
ALTER TABLE [dbo].[UserRole] CHECK CONSTRAINT [FK_UserRole_Role]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_UserRole_SystemUsers]') AND parent_object_id = OBJECT_ID(N'[dbo].[UserRole]'))
ALTER TABLE [dbo].[UserRole]  WITH CHECK ADD  CONSTRAINT [FK_UserRole_SystemUsers] FOREIGN KEY([UserId])
REFERENCES [dbo].[SystemUsers] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_UserRole_SystemUsers]') AND parent_object_id = OBJECT_ID(N'[dbo].[UserRole]'))
ALTER TABLE [dbo].[UserRole] CHECK CONSTRAINT [FK_UserRole_SystemUsers]
GO
