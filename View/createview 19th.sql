CREATE VIEW nineteenthCenturyArts AS
SELECT ID, Title, YearOfWork
FROM Artworks
Where YearOfWork BETWEEN 1801 AND 1900;

SELECT * FROM [NineteenthCenturyArts];
