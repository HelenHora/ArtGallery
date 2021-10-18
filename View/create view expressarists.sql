CREATE VIEW ExpresionismArtists AS
SELECT Artists.Id, Artists.Firstname, Artists.Lastname, Artworks.ID_Period
FROM Artists Inner Join Artworks
ON Artists.Id=Artworks.ID_Artist 
WHERE Artworks.ID_Period=3;

SELECT * FROM [ExpresionismArtists];
