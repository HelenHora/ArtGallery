CREATE TABLE Customers (
	ID INT NOT NULL IDENTITY PRIMARY KEY
	,Firstname VARCHAR(30) NOT NULL
	,Lastname VARCHAR(30) NOT NULL
	,Country VARCHAR(30) NOT NULL
	);

CREATE TABLE Periods (
	ID INT NOT NULL IDENTITY PRIMARY KEY
	,Name VARCHAR(40) NOT NULL
	);

CREATE TABLE Birthplaces (
	ID INT NOT NULL IDENTITY PRIMARY KEY
	,Country VARCHAR(30) NOT NULL
	,City VARCHAR(40) NOT NULL
	);

CREATE TABLE Artists (
	ID INT NOT NULL IDENTITY PRIMARY KEY
	,Firstname VARCHAR(50) NOT NULL
	,Lastname VARCHAR(50) NOT NULL
	,ID_Birthplace INT NOT NULL FOREIGN KEY REFERENCES Birthplaces(ID)
	);

CREATE TABLE Artworks (
	ID INT NOT NULL IDENTITY PRIMARY KEY
	,ID_Artist INT NOT NULL FOREIGN KEY REFERENCES ARTISTS(ID)
	,Title VARCHAR(60) NOT NULL
	,YearOfWork INT NOT NULL
	,ID_Period INT NOT NULL FOREIGN KEY REFERENCES Periods(ID)
	,Price INT NOT NULL
	);

CREATE TABLE Purchases (
	ID INT NOT NULL IDENTITY PRIMARY KEY
	,ID_Customer INT NOT NULL FOREIGN KEY REFERENCES Customers(ID)
	,ID_Artwork INT NOT NULL FOREIGN KEY REFERENCES Artworks(ID)
	,DateOfPurchase DATE NOT NULL
	,PurchPrice INT NOT NULL
	);

CREATE TABLE PurchStat (
	ID INT NOT NULL IDENTITY PRIMARY KEY
	,PYearOfPurchases INT NOT NULL
	,PYearOfWork INT NOT NULL
	,PName VARCHAR(40) NOT NULL
	,PPurchPrice INT NOT NULL
	,ACountry VARCHAR(30) NOT NULL
	,CCountry VARCHAR(30) NOT NULL
	);
