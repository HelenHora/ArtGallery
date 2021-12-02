CREATE TRIGGER TRIMNAMES ON Artists
FOR INSERT
AS
UPDATE Artists
SET Firstname = LTRIM(RTRIM(inserted.Firstname))
	,Lastname = LTRIM(RTRIM(inserted.Lastname))
FROM Artists
JOIN inserted ON Artists.ID = inserted.ID
WHERE Artists.ID = inserted.ID;

INSERT INTO Artists (
	Firstname
	,Lastname
	,ID_Birthplace
	)
VALUES (
	'   Claude'
	,' Monet   '
	,4
	);
