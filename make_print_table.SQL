DROP TABLE sailsman;
CREATE TABLE sailsman(
    salesman_id int,
    name varchar(225),
    city varchar(225),
    commision varchar(225)
);
DESC sailsman;

SELECT * FROM sailsman;
INSERT INTO sailsman VALUES (5001, "James Hoog", "New York", 0.15);
INSERT INTO sailsman VALUES (5002, "Nail Knite", "Paris", 0.13);
INSERT INTO sailsman VALUES (5005, "Pit Alex", "London", 0.11);
INSERT INTO sailsman VALUES (5006,  "Mc Lyon", "Paris", 0.14);
INSERT INTO sailsman VALUES (5007, "Paul Adam", "Rome", 0.13);
INSERT INTO sailsman VALUES (5003, "Lauson Hen", "San Jose", 0.12);
SELECT * FROM sailsman;

SELECT name, commision FROM sailsman;
SELECT name, city FROM sailsman WHERE city = "PARIS";
