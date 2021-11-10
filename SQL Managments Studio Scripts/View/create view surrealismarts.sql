CREATE VIEW SurrealismArts
AS
SELECT ID
	,Title
	,YearOfWork
	,ID_Period
FROM Artworks
WHERE ID_Period = 4;

SELECT *
FROM [SurrealismArts];
