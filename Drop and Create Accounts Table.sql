USE [Landmark]
GO

/****** Object:  Table [dbo].[Accounts]    Script Date: 11/26/2019 3:39:03 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Accounts](
	[AccountId] [bigint] IDENTITY(1,1) NOT NULL,
	[FirstName] [varchar](50) NOT NULL,
	[LastName] [varchar](50) NOT NULL,
	[Email] [varchar](50) NULL,
	[Phone] [varbinary](15) NULL,
	[Over18] [bit] NOT NULL,
	[UserId] [varchar](50) NOT NULL,
	[Password] [varchar](50) NOT NULL,
	[PasswordKey] [varchar](50) NOT NULL,
	[PasswordIV] [varchar](50) NOT NULL,
	[LockedOut] [bit] NOT NULL,
	[FailureAttempts] [tinyint] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
 CONSTRAINT [PK_Accounts] PRIMARY KEY CLUSTERED 
(
	[AccountId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

