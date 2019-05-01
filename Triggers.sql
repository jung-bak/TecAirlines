use TecAirlines

Create Trigger Promoted
	ON TRIP
AFTER INSERT, DELETE
AS
BEGIN
    SET NOCOUNT ON;
    INSERT INTO CREDIT_CARD(
        CREDIT_CARD_ID
    )
    SELECT
        Credit_Card_ID
    FROM
        PASSENGER
    SELECT
        d.product_id,
        product_name,
        brand_id,
        category_id,
        model_year,
        d.list_price,
        GETDATE(),
        'DEL'
    FROM
        deleted d;
END