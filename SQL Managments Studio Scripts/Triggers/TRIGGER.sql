CREATE TRIGGER NameUnique ON Artworks
INSTEAD OF INSERT
AS
DECLARE @NID_Artist INT
	,@NTitle VARCHAR(60)
	,@NYearOfWork INT
	,@NID_Period INT
	,@NPrice INT

SELECT @NID_Artist = inserted.ID_Artist
	,@NTitle = inserted.Title
	,@NYearOfWork = inserted.YearOfWork
	,@NID_Period = inserted.ID_Period
	,@NPrice = inserted.Price
FROM inserted;

DECLARE @ExistingTitles TABLE (ArtTitle VARCHAR(60));

INSERT INTO @ExistingTitles
SELECT Title
FROM Artworks;

DECLARE @ExistingArtists TABLE (ArtistID INT);

INSERT INTO @ExistingArtists
SELECT ID
FROM Artists

IF @NTitle IN (
		SELECT *
		FROM @ExistingTitles
		)
BEGIN
	IF @NID_Artist IN (
			SELECT id_artist
			FROM Artworks
			WHERE Title = @NTitle
			)
	BEGIN
		INSERT INTO Artworks (
			ID_Artist
			,Title
			,YearOfWork
			,ID_Period
			,Price
			)
		VALUES (
			@NID_Artist
			,@NTitle
			,@NYearOfWork
			,@NID_Period
			,@NPrice
			)
	END
	ELSE
	BEGIN
		THROW 51000
			,'CHECK ARTIST'
			,1
	END
END
ELSE
BEGIN
	INSERT INTO Artworks (
		ID_Artist
		,Title
		,YearOfWork
		,ID_Period
		,Price
		)
	VALUES (
		@NID_Artist
		,@NTitle
		,@NYearOfWork
		,@NID_Period
		,@NPrice
		)
END;

INSERT INTO Artworks (
	ID_Artist
	,Title
	,YearOfWork
	,ID_Period
	,Price
	)
VALUES (
	6
	,'The Absinthe Drinker'
	,1901
	,3
	,345000
	);
	--VALUES (8, 'Puberty', 1931, 4, 90000);
