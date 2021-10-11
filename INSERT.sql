USE ARTGALLERY

DELETE FROM Purchases
DELETE FROM Artworks
DELETE FROM Customers
DELETE FROM Artists
DELETE FROM Periods
DELETE FROM Birthplaces




INSERT INTO Customers (Firstname, Lastname) VALUES ('Paul', 'Lakoff')
INSERT INTO Customers (Firstname, Lastname) VALUES ('Marta', 'Vasylyk')
INSERT INTO Customers (Firstname, Lastname) VALUES ('Anna', 'Antipa')
INSERT INTO Customers (Firstname, Lastname) VALUES ('Karmen', 'Olsen')
INSERT INTO Customers (Firstname, Lastname) VALUES ('Christopher', 'Jonas')
INSERT INTO Customers (Firstname, Lastname) VALUES ('Sebastian', 'Lean')
INSERT INTO Customers (Firstname, Lastname) VALUES ('Stella', 'Rogers')
INSERT INTO Customers (Firstname, Lastname) VALUES ('Thomas', 'Vendi')
INSERT INTO Customers (Firstname, Lastname) VALUES ('Alice', 'Cooper')
INSERT INTO Customers (Firstname, Lastname) VALUES ('Daniela', 'Rodrigo');

INSERT INTO Periods (Name) VALUES('Baroque') 
INSERT INTO Periods (Name) VALUES('Neoclassicism')
INSERT INTO Periods (Name) VALUES('Expressionism')
INSERT INTO Periods (Name) VALUES('Surrealism');

INSERT INTO Birthplaces (Country, City) VALUES('Germany', 'Siegen')
INSERT INTO Birthplaces (Country, City) VALUES('Italy', 'Milan')
INSERT INTO Birthplaces (Country, City) VALUES('Dutch Republic', 'Leiden')
INSERT INTO Birthplaces (Country, City) VALUES('Kingdom of France', 'Paris')
INSERT INTO Birthplaces (Country, City) VALUES('France', 'Montauban')
INSERT INTO Birthplaces (Country, City) VALUES('Norway', 'Oslo')
INSERT INTO Birthplaces (Country, City) VALUES('Spain', 'Malaga')
INSERT INTO Birthplaces (Country, City) VALUES('Spain', 'Figueres')
INSERT INTO Birthplaces (Country, City) VALUES('Mexico', 'Mexico city');

INSERT INTO Artists (Firstname, Lastname, ID_Birthplace) VALUES('Pieter Paul','Rubens', 1)
INSERT INTO Artists (Firstname, Lastname, ID_Birthplace) VALUES('Michelangelo Merisi', 'da Caravaggio', 2)
INSERT INTO Artists (Firstname, Lastname, ID_Birthplace) VALUES('Rembrandt', 'an Rijn', 3)
INSERT INTO Artists (Firstname, Lastname, ID_Birthplace) VALUES('Jacques-Louis', 'David', 4)
INSERT INTO Artists (Firstname, Lastname, ID_Birthplace) VALUES('Jean-Auguste-Dominique', 'Ingres', 5)
INSERT INTO Artists (Firstname, Lastname, ID_Birthplace) VALUES('Edvard', 'Munch', 6)
INSERT INTO Artists (Firstname, Lastname, ID_Birthplace) VALUES('Pablo', 'Picasso', 7)
INSERT INTO Artists (Firstname, Lastname, ID_Birthplace) VALUES('Salvador', 'Dali', 8)
INSERT INTO Artists (Firstname, Lastname, ID_Birthplace) VALUES('Frida', 'Kahlo', 9);

INSERT INTO Artworks(ID_Artist, Title, YearOfWork, ID_Period, Price) VALUES(1, 'The Descent from the Cross', 1613, 1, 1000000)
INSERT INTO Artworks(ID_Artist, Title, YearOfWork, ID_Period, Price) VALUES(1, 'The Elevation of the Cross', 1611, 1, 20000)
INSERT INTO Artworks(ID_Artist, Title, YearOfWork, ID_Period, Price) VALUES(2, 'The Supper at Emmaus', 1601, 1, 800000)
INSERT INTO Artworks(ID_Artist, Title, YearOfWork, ID_Period, Price) VALUES(2, 'Death of the Virgin', 1606, 1, 30000)
INSERT INTO Artworks(ID_Artist, Title, YearOfWork, ID_Period, Price) VALUES(2, 'Basket of Fruit', 1599, 1, 40000)
INSERT INTO Artworks(ID_Artist, Title, YearOfWork, ID_Period, Price) VALUES(2, 'Saint Francis of Assisi in Ecstasy', 1595, 1, 6000000)
INSERT INTO Artworks(ID_Artist, Title, YearOfWork, ID_Period, Price) VALUES(3, 'The Return of the Prodigal Son', 1669, 1, 12000)
INSERT INTO Artworks(ID_Artist, Title, YearOfWork, ID_Period, Price) VALUES(3, 'The Anatomy Lesson of Dr. Nicolaes Tulp', 1632, 1, 89000)
INSERT INTO Artworks(ID_Artist, Title, YearOfWork, ID_Period, Price) VALUES(4, 'The Death of Marat', 1793, 2, 17000)
INSERT INTO Artworks(ID_Artist, Title, YearOfWork, ID_Period, Price) VALUES(4, 'The Death of Socrates', 1787, 2, 170000)
INSERT INTO Artworks(ID_Artist, Title, YearOfWork, ID_Period, Price) VALUES(4, 'Coronation of Napoleon', 1807, 2, 789000)
INSERT INTO Artworks(ID_Artist, Title, YearOfWork, ID_Period, Price) VALUES(5, 'Grande Odalisque', 1814, 2, 126000)
INSERT INTO Artworks(ID_Artist, Title, YearOfWork, ID_Period, Price) VALUES(5, 'The Valpinçon Bather', 1808, 2, 78000)
INSERT INTO Artworks(ID_Artist, Title, YearOfWork, ID_Period, Price) VALUES(6, 'The Scream', 1893, 3, 90000)
INSERT INTO Artworks(ID_Artist, Title, YearOfWork, ID_Period, Price) VALUES(6, 'Puberty', 1894, 3, 1450000)
INSERT INTO Artworks(ID_Artist, Title, YearOfWork, ID_Period, Price) VALUES(7, 'The Old Guitarist', 1904, 3, 909000)
INSERT INTO Artworks(ID_Artist, Title, YearOfWork, ID_Period, Price) VALUES(7, 'Portrait of Gertrude Stein', 1906, 3, 999000)
INSERT INTO Artworks(ID_Artist, Title, YearOfWork, ID_Period, Price) VALUES(7, 'The Absinthe Drinker', 1901, 3, 345000)
INSERT INTO Artworks(ID_Artist, Title, YearOfWork, ID_Period, Price) VALUES(8, 'The Persistence of Memory', 1931, 4, 90000)
INSERT INTO Artworks(ID_Artist, Title, YearOfWork, ID_Period, Price) VALUES(8, 'Guernica', 1937, 4, 9000000)
INSERT INTO Artworks(ID_Artist, Title, YearOfWork, ID_Period, Price) VALUES(8, 'The Disintegration of the Persistence of Memory', 1954, 4, 890000)
INSERT INTO Artworks(ID_Artist, Title, YearOfWork, ID_Period, Price) VALUES(9, 'The Broken Column', 1944, 4, 9000000)
INSERT INTO Artworks(ID_Artist, Title, YearOfWork, ID_Period, Price) VALUES(9, 'Girl with Death Mask (She Plays Alone)', 1938, 4, 345000)
INSERT INTO Artworks(ID_Artist, Title, YearOfWork, ID_Period, Price) VALUES(9, 'Henry Ford Hospital (The Flying Bed)', 1932, 4, 870000);


INSERT INTO Purchases(ID_Customer, ID_Artwork, DateOfPurchase) VALUES(2, 8, '12/01/2019')
INSERT INTO Purchases(ID_Customer, ID_Artwork, DateOfPurchase) VALUES(2, 22, '12/01/2019')
INSERT INTO Purchases(ID_Customer, ID_Artwork, DateOfPurchase) VALUES(3, 21, '03/05/2019')
INSERT INTO Purchases(ID_Customer, ID_Artwork, DateOfPurchase) VALUES(3, 5, '06/12/2020')
INSERT INTO Purchases(ID_Customer, ID_Artwork, DateOfPurchase) VALUES(4, 15, '10/13/2019')
INSERT INTO Purchases(ID_Customer, ID_Artwork, DateOfPurchase) VALUES(5, 24, '11/27/2020')
INSERT INTO Purchases(ID_Customer, ID_Artwork, DateOfPurchase) VALUES(6, 11, '09/30/2021')
INSERT INTO Purchases(ID_Customer, ID_Artwork, DateOfPurchase) VALUES(7, 1, '05/07/2018')
INSERT INTO Purchases(ID_Customer, ID_Artwork, DateOfPurchase) VALUES(9, 9, '09/09/2019')
INSERT INTO Purchases(ID_Customer, ID_Artwork, DateOfPurchase) VALUES(10, 7, '09/17/2021')
INSERT INTO Purchases(ID_Customer, ID_Artwork, DateOfPurchase) VALUES(10, 2, '09/17/2021')
INSERT INTO Purchases(ID_Customer, ID_Artwork, DateOfPurchase) VALUES(2, 24, '09/01/2021')
INSERT INTO Purchases(ID_Customer, ID_Artwork, DateOfPurchase) VALUES(5, 5, '07/16/2021')
INSERT INTO Purchases(ID_Customer, ID_Artwork, DateOfPurchase) VALUES(1, 1, '07/03/2020')
INSERT INTO Purchases(ID_Customer, ID_Artwork, DateOfPurchase) VALUES(4, 8, '03/16/2021');
