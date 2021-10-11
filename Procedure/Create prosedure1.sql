CREATE PROCEDURE SelectPeriod @ID_Period int
AS
BEGIN
SELECT *
FROM Artworks
Where ID_Period = @ID_Period
END;
