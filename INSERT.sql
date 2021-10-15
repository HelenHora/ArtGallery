USE ARTGALLERY

DELETE FROM Purchases
DELETE FROM Artworks
DELETE FROM Customers
DELETE FROM Artists
DELETE FROM Periods
DELETE FROM Birthplaces




INSERT INTO Customers (Firstname, Lastname)
VALUES 
('Paul', 'Lakoff'),
('Marta', 'Vasylyk'),
('Anna', 'Antipa'),
('Karmen', 'Olsen'),
('Christopher', 'Jonas'),
('Sebastian', 'Lean'),
('Stella', 'Rogers'),
('Thomas', 'Vendi'),
('Alice', 'Cooper'),
('Daniela', 'Rodrigo');

INSERT INTO Periods (Name) 
VALUES
('Baroque'), 
('Neoclassicism'),
('Expressionism'),
('Surrealism');

INSERT INTO Birthplaces (Country, City) 
VALUES
('Germany', 'Siegen'),
('Italy', 'Milan'),
('Dutch Republic', 'Leiden'),
('Kingdom of France', 'Paris'),
('France', 'Montauban'),
('Norway', 'Oslo'),
('Spain', 'Malaga'),
('Spain', 'Figueres'),
('Mexico', 'Mexico city');

INSERT INTO Artists (Firstname, Lastname, ID_Birthplace)
VALUES
('Pieter Paul','Rubens', 1),
('Michelangelo Merisi', 'da Caravaggio', 2),
('Rembrandt', 'an Rijn', 3),
('Jacques-Louis', 'David', 4),
('Jean-Auguste-Dominique', 'Ingres', 5),
('Edvard', 'Munch', 6),
('Pablo', 'Picasso', 7),
('Salvador', 'Dali', 8),
('Frida', 'Kahlo', 9);

INSERT INTO Artworks(ID_Artist, Title, YearOfWork, ID_Period, Price)
VALUES
(1, 'The Descent from the Cross', 1613, 1, 1000000),
(1, 'The Elevation of the Cross', 1611, 1, 20000),
(2, 'The Supper at Emmaus', 1601, 1, 800000),
(2, 'Death of the Virgin', 1606, 1, 30000),
(2, 'Basket of Fruit', 1599, 1, 40000),
(2, 'Saint Francis of Assisi in Ecstasy', 1595, 1, 6000000),
(3, 'The Return of the Prodigal Son', 1669, 1, 12000),
(3, 'The Anatomy Lesson of Dr. Nicolaes Tulp', 1632, 1, 89000),
(4, 'The Death of Marat', 1793, 2, 17000),
(4, 'The Death of Socrates', 1787, 2, 170000),
(4, 'Coronation of Napoleon', 1807, 2, 789000),
(5, 'Grande Odalisque', 1814, 2, 126000),
(5, 'The Valpinçon Bather', 1808, 2, 78000),
(6, 'The Scream', 1893, 3, 90000),
(6, 'Puberty', 1894, 3, 1450000),
(7, 'The Old Guitarist', 1904, 3, 909000),
(7, 'Portrait of Gertrude Stein', 1906, 3, 999000),
(7, 'The Absinthe Drinker', 1901, 3, 345000),
(8, 'The Persistence of Memory', 1931, 4, 90000),
(8, 'Guernica', 1937, 4, 9000000),
(8, 'The Disintegration of the Persistence of Memory', 1954, 4, 890000),
(9, 'The Broken Column', 1944, 4, 9000000),
(9, 'Girl with Death Mask (She Plays Alone)', 1938, 4, 345000),
(9, 'Henry Ford Hospital (The Flying Bed)', 1932, 4, 870000);


INSERT INTO Purchases(ID_Customer, ID_Artwork, DateOfPurchase) 
VALUES
(2, 8, '12/01/2019'),
(2, 22, '12/01/2019'),
(3, 21, '03/05/2019'),
(3, 5, '06/12/2020'),
(4, 15, '10/13/2019'),
(5, 24, '11/27/2020'),
(6, 11, '09/30/2021'),
(7, 1, '05/07/2018'),
(9, 9, '09/09/2019'),
(10, 7, '09/17/2021'),
(10, 2, '09/17/2021'),
(2, 24, '09/01/2021'),
(5, 5, '07/16/2021'),
(1, 1, '07/03/2020'),
(4, 8, '03/16/2021');
