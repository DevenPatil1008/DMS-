CREATE TABLE Movie
(
	Id INT PRIMARY KEY,
    Movie_name VARCHAR(100) NOT NULL,
    Rating INT DEFAULT 1,
    Movie_Date DATETIME DEFAULT NOW(),
    Ticket_Cost DECIMAL(10,2) NOT NULL
);

SELECT * FROM Movie;

INSERT INTO Movie(Id,Movie_name,Rating,Movie_Date,Ticket_Cost) 
VALUES
(01,'Spider-Man',9,'2021-09-28 12:36:52',225.00),
(02,'Avengers:Endgame',5,'2018-11-13 10:05:02',135.00),
(03,'The Avengers',10,'2024-05-22 09:59:32',350.00),
(04,'Guardians of Galaxy',2,'2021-07-31 16:46:56',650.00),
(05,'Men in Black',3,'2021-08-10 19:57:22',450.00);

SELECT * FROM Movie;

SELECT * FROM Movie WHERE Movie_name LIKE'%A%' AND Movie_name LIKE'%M%';

SELECT * FROM Movie WHERE Rating=(SELECT MIN(Rating) FROM Movie);

SELECT * FROM Movie WHERE Ticket_Cost=(SELECT Max(Ticket_Cost) FROM Movie);