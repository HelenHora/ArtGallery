CREATE VIEW Several
AS
SELECT ID_artwork
	,Artworks.Title
FROM Purchases
INNER JOIN Artworks ON Purchases.ID_Artwork = Artworks.ID
GROUP BY ID_Artwork
	,Artworks.Title
HAVING COUNT(ID_Artwork) > 1;

SELECT *
FROM [Several];
