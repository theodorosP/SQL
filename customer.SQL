DROP TABLE customer;
CREATE TABLE customer(
    customer_id INT,
    cust_name VARCHAR(225),
    city VARCHAR(225),
    grade INT,
    salesman_id INT
);
DESC customer;
    
INSERT INTO customer VALUES (3002, "Nick Rimando", "New York", 100, 5001);
INSERT INTO customer VALUES (3007, "Brad Davis", "New York", 200, 5001);
INSERT INTO customer VALUES (3005, "Graham Zusi", "California", 200, 5002);
INSERT INTO customer VALUES (3008, "Julian Green", "London", 300, 5002);
INSERT INTO customer VALUES (3004, "Fabian Johnson", "Paris", 300, 5006);
INSERT INTO customer VALUES (3009, "Geoff Cameron", "Berlin", 100, 5003);
INSERT INTO customer VALUES (3003, "Jozy Altidor", "Moscow", 200, 5007);
INSERT INTO customer VALUES ( 3001, "Brad Guzan", "London",  ,5005);

SELECT * FROM customer;

SELECT cust_name, grade FROM customer WHERE grade = 200;
