USE [TecAirlines]
GO
/****** Object:  StoredProcedure [dbo].[ustp_FlightDesc]    Script Date: 5/2/2019 2:35:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Ricardo Molina>
-- Create date: <29/4/2019>
-- Description:	<Buscador de ruta de un vuelo a partir de un boarding pass de un pasajero>
-- =============================================
ALTER PROCEDURE [dbo].[ustp_FlightDesc]
	-- Add the parameters for the stored procedure here
	@BoardingPass int 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT B.FLIGHT_ID, CityName
	from BOARDINGPASS B
	join FLIGHT F on B.Flight_ID=F.FLIGHT_ID
	JOIN SOURCE_RELATION S ON S.Flight_ID=F.FLIGHT_ID
	join AIRPORT A on A.AIRPORT_ID=S.Airport_ID
	join CITY C ON C.CITY_ID=A.City_ID
	where B.BOARDINGPASS_ID=@BoardingPass

	SELECT B.FLIGHT_ID, CityName
	from BOARDINGPASS B
	join FLIGHT F on B.Flight_ID=F.FLIGHT_ID
	JOIN DESTINATION_RELATION D ON D.Flight_ID=F.FLIGHT_ID
	join AIRPORT A on A.AIRPORT_ID=D.Airport_ID
	join CITY C ON C.CITY_ID=A.City_ID
	where B.BOARDINGPASS_ID=@BoardingPass
END
