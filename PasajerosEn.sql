SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Ricardo Molina>
-- Create date: <29/4/2019,,>
-- Description:	<Cuenta la cantidad de pasajeros de un vuelo>
-- =============================================
CREATE PROCEDURE ustp_Pasajeros 
	-- Add the parameters for the stored procedure here
	@nVuelo int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT count(*)
		from PASSENGER P join BOARDINGPASS B ON P.BoardingPass_ID=B.BOARDINGPASS_ID
		JOIN FLIGHT F ON F.FLIGHT_ID=B.Flight_ID
		where F.FLIGHT_ID= @nVuelo;
END
GO
