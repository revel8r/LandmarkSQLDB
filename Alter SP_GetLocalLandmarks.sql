USE [Landmark]
GO
/****** Object:  StoredProcedure [dbo].[getLocalLandmarks]    Script Date: 1/2/2019 7:45:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		Christopher Choate, Revel8R Enterprises
-- Create date: 12.31.2018
-- Description:	Selects all landmraks that are within the requested distance from the given GPS coordinates.
-- =============================================
ALTER PROCEDURE [dbo].[getLocalLandmarks] 
	@longitude float,
	@latitude float, 
	@distance int = 5
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	declare @source geography = geography::Point(@longitude, @latitude, 4748);

	SELECT LandmarkId, MarkerNumber, Title, Description, Country, StateProvince, GPSCoord.ToString() as GPSCoord, CreatedBy, CreatedDate from landmarks where @source.STDistance(GPSCoord) < @distance * 5280
END
