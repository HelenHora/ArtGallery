CREATE TRIGGER NameUnique on Artworks
INSTEAD OF INSERT 
AS 
DECLARE @NID_Artist INT, @NTitle VARCHAR(60), @NYearOfWork INT, @NID_Period INT, @NPrice INT
SELECT @NID_Artist=inserted.ID_Artist, @NTitle=inserted.Title, @NYearOfWork=inserted.YearOfWork, 
@NID_Period=inserted.ID_Period, @NPrice=inserted.Price From inserted;
DECLARE @ExistingTitles Table (ArtTitle varchar(60));
INSERT INTO @ExistingTitles SELECT Title from Artworks;
DECLARE @ExistingArtists Table (ArtistID INT);
INSERT INTO @ExistingArtists SELECT ID FROM Artists

IF @NTitle IN (select * from @ExistingTitles )
BEGIN 
  IF  @NID_Artist  IN (select id_artist from Artworks where Title = @NTitle)
    BEGIN 
      INSERT INTO Artworks  (ID_Artist, Title, YearOfWork, ID_Period, Price)
      Values (@NID_Artist, @NTitle, @NYearOfWork, @NID_Period, @NPrice)
    End
  ELSE 
    BEGIN
      PRINT 'CHECK ARTIST'
    END
END
ELSE 
BEGIN
INSERT INTO Artworks  (ID_Artist, Title, YearOfWork, ID_Period, Price)
      Values (@NID_Artist, @NTitle, @NYearOfWork, @NID_Period, @NPrice)
END



 throw 51000, 'CHECK ARTIST', 1
 
 
 INSERT INTO Artworks  (ID_Artist, Title, YearOfWork, ID_Period, Price)
--VALUES (4, 'The Anatomy Lesson of Dr. Nicolaes Tulp', 1632, 1, 89000);

--VALUES(5, 'Coronation of Napoleon', 1814, 2, 126000);


VALUES(6, 'The Absinthe Drinker', 1901, 3, 345000);
--VALUES (8, 'Puberty', 1931, 4, 90000);
