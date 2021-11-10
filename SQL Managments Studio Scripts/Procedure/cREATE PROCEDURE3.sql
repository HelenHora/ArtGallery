CREATE PROCEDURE BiggerPrice (@Price int,
			      @Period int)
AS
BEGIN
SELECT 
	W.Id, 
	W.Title, 
	W.Price, 
	W.Title, 
	W.ID_Period, 
	W.ID_Artist, 
	A.ID, 
	A.Lastname, 
	A.Firstname
FROM Artworks W
INNER JOIN Artists A
ON
W.ID_Artist=A.ID
WHERE W.Price > @Price AND
	  W.ID_Period = @Period
END;

EXECUTE BiggerPrice 870000, 4;
