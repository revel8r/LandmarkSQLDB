USE [Landmark]
GO

ALTER TABLE [dbo].[Landmarks] DROP CONSTRAINT [FK_Landmarks_Accounts]
GO

/****** Object:  Table [dbo].[Landmarks]    Script Date: 11/26/2019 3:39:35 PM ******/
DROP TABLE [dbo].[Landmarks]
GO

/****** Object:  Table [dbo].[Landmarks]    Script Date: 11/26/2019 3:39:35 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Landmarks](
	[LandmarkId] [bigint] IDENTITY(1,1) NOT NULL,
	[MarkerNumber] [varchar](10) NULL,
	[Title] [varchar](50) NOT NULL,
	[Description] [varchar](1500) NULL,
	[Country] [varchar](5) NOT NULL,
	[StateProvince] [varchar](50) NOT NULL,
	[GPSCoord] [geography] NULL,
	[CreatedBy] [bigint] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
 CONSTRAINT [PK_Landmarks] PRIMARY KEY CLUSTERED 
(
	[LandmarkId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

ALTER TABLE [dbo].[Landmarks]  WITH CHECK ADD  CONSTRAINT [FK_Landmarks_Accounts] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[Accounts] ([AccountId])
ON UPDATE CASCADE
ON DELETE CASCADE
GO

ALTER TABLE [dbo].[Landmarks] CHECK CONSTRAINT [FK_Landmarks_Accounts]
GO

