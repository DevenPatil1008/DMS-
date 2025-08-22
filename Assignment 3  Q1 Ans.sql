CREATE TABLE Airport
(
	Id INT PRIMARY KEY,
    City VARCHAR(100) UNIQUE
);

SELECT * FROM Airport;
CREATE TABLE Flight
(
	Flight_Id INT PRIMARY KEY,
    Flight_Name VARCHAR(100) UNIQUE,
    Airport_Id INT NOT NULL,
    FOREIGN KEY(Airport_Id) REFERENCES Airport(Id)
);

SELECT * FROM Flight;

INSERT INTO Airport(Id,City)
VALUES
(001,'Kolhapur'),
(002,'Pune'),
(003,'Mumbai'),
(004,'Nagpur'),
(005,'Satara');

SELECT * FROM Airport;

INSERT INTO Flight(Flight_Id,Flight_Name,Airport_Id)
VALUES
(0011,'Air India',002),
(0022,'Vistara',004),
(0033,'Indigo',002),
(0044,'Emirates',003);

SELECT * FROM Flight;

SELECT * FROM Airport;
SELECT * FROM Flight;
