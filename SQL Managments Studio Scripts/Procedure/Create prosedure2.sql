CREATE PROCEDURE SelectBirthplace @Id_Birthplace INT
AS
BEGIN
SELECT Artists.Id, Artists.Firstname, Artists.Lastname, Artists.ID_Birthplace
FROM Artists
INNER JOIN Birthplaces
ON
Artists.Id_Birthplace=Birthplaces.ID
WHERE Id_Birthplace=@Id_Birthplace
END;
