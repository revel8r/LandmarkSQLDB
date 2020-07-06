USE [Landmark]
GO

/****** Object:  Table [dbo].[Hits]    Script Date: 10/21/2017 5:00:25 PM ******/
DROP TABLE [dbo].[Hits]
GO

/****** Object:  Table [dbo].[Hits]    Script Date: 10/21/2017 5:00:25 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Hits](
	[HitId] [int] NOT NULL,
	[LandmarkId] [bigint] NOT NULL,
	[Created] [datetime] NOT NULL,
 CONSTRAINT [PK_Hits] PRIMARY KEY CLUSTERED 
(
	[HitId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO


