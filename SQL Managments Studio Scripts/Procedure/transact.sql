CREATE PROCEDURE InsertInto (@PPYearOfPurchases INT)
AS
IF @PPYearOfPurchases IN (
		SELECT PYearOfPurchases
		FROM PurchStat
		)
BEGIN
	THROW 51000
		,'this year statistic already exists'
		,1
END
ELSE
BEGIN
	DECLARE @PYearOfPurchases INT
		,@PYearOfWork INT
		,@PName VARCHAR(40)
		,@PPurchPrice INT
		,@ACountry VARCHAR(30)
		,@CCountry VARCHAR(30)

	DECLARE testcursor CURSOR
	FOR
	SELECT YEAR(DateOfPurchase) AS YearOfPurch
		,W.YearOfWork
		,D.Name
		,P.PurchPrice
		,B.Country
		,C.country
	FROM Artworks W
	INNER JOIN Periods D ON W.ID_Period = D.ID
	INNER JOIN Purchases P ON W.id = P.ID_Artwork
	INNER JOIN Customers C ON P.ID_Customer = C.ID
	INNER JOIN Artists A ON W.ID_Artist = A.ID
	INNER JOIN Birthplaces B ON A.ID_Birthplace = B.ID
	WHERE YEAR(DateOfPurchase) = @PPYearOfPurchases
	ORDER BY P.DateOFPurchase
		,W.YearOfWork

	BEGIN TRAN

	OPEN testcursor

	FETCH NEXT
	FROM testcursor
	INTO @PYearOfPurchases
		,@PYearOfWork
		,@PName
		,@PPurchPrice
		,@ACountry
		,@CCountry

	WHILE @@FETCH_STATUS = 0
	BEGIN
		INSERT INTO PurchStat
		VALUES (
			@PYearOfPurchases
			,@PYearOfWork
			,@PName
			,@PPurchPrice
			,@ACountry
			,@CCountry
			)

		FETCH NEXT
		FROM testcursor
		INTO @PYearOfPurchases
			,@PYearOfWork
			,@PName
			,@PPurchPrice
			,@ACountry
			,@CCountry
	END
END

COMMIT TRAN;

CLOSE testcursor;

DEALLOCATE testcursor;

EXEC InsertInto @PPYearOfPurchases = 2020
