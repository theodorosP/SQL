DROP TABLE Persons;
CREATE TABLE Persons (
    CustomerID int,
    CustomerName varchar(255),
    ContactName varchar(255),
    Address varchar(255),
    City varchar(255),
    PostalCode varchar(255),
    Country varchar(255)
);
DESC Persons;
SELECT * FROM Persons;
insert into Persons values (5, 'gedr', 'Banana','Sale Price', 'ger', 'fwe', 'fwe');
SELECT * FROM Persons;
