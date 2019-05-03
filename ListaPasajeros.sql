
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Ricardo Molina>
-- Create date: <30/4/2019>
-- Description:	<Lista de pasajeros de un vuelo(Nombre y apellido)>
-- =============================================
CREATE PROCEDURE ustp_ListaPasajeros 
	-- Add the parameters for the stored procedure here
	@NumVuelo int

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT FirstName, LastName
	from PASSENGER P JOIN BOARDINGPASS B ON P.BoardingPass_ID=B.BOARDINGPASS_ID
	JOIN FLIGHT F ON F.FLIGHT_ID=B.Flight_ID
	where F.FLIGHT_ID=@NumVuelo
END
GO
