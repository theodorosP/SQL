USE mysql;

DROP TABLE IF EXISTS People;

CREATE TABLE People (
    ID INT,
    FName VARCHAR(255),
    LName VARCHAR(255),
    city VARCHAR(255)
);

INSERT INTO People VALUES (10, 'Theodoros', 'Pan', 'Orlando');
INSERT INTO People VALUES (11, 'Aheodoros', 'Pan', 'Orlando');
INSERT INTO People VALUES (9, 'TheO', 'Pn', 'Orlando');
INSERT INTO People VALUES (50, 'T', 'Pan', 'Orlando');
INSERT INTO People VALUES (40, 'TO', 'Pan', 'NY');
INSERT INTO People VALUES (110, 'ThO', 'n', 'Orlando');
INSERT INTO People VALUES (60, 'Th', 'Pa', 'Orlando');
INSERT INTO People VALUES (7, 'A', 'Pan', 'Orlando');
INSERT INTO People VALUES (2, 'A', 'Pan', 'Orlando');
INSERT INTO People VALUES (90, 'A', 'Pan', 'Orlando');
INSERT INTO People VALUES (90, 'A', 'Pan', 'Orlando');
INSERT INTO People VALUES (190, 'A', 'Pan', 'Orlando');






SELECT * FROM People as A ORDER BY ID;

SET @row_index := 0;
SET @size := (SELECT COUNT(ID) FROM People);

DELIMITER //

DROP PROCEDURE IF EXISTS CompareNumbers; 
CREATE PROCEDURE CompareNumbers(IN num INT)
BEGIN
    IF num % 2 <> 0 THEN
        SET @odd = CONCAT('SELECT ID FROM People ORDER BY ID LIMIT ', CAST((@size + 1)/2 - 1 AS SIGNED) , ', 1');
        PREPARE stmt FROM @odd;
        EXECUTE stmt;
        DEALLOCATE PREPARE stmt;
    ELSE
        SET @even_1 = CONCAT('SELECT ID AS ID1 FROM People ORDER BY ID LIMIT ', CAST((@size)/2 AS SIGNED) , ', 1');
        SET @even_2 = CONCAT('SELECT ID AS ID2 FROM People ORDER BY ID LIMIT ', CAST((@size)/2 - 1 AS SIGNED) , ', 1');
		
		SET @sum_stmt = CONCAT('SELECT SUM(ID1 + ID2) FROM (', @even_1, ') AS subquery1, (', @even_2, ') AS subquery2');

        PREPARE stmt FROM @sum_stmt;
        EXECUTE stmt;
        DEALLOCATE PREPARE stmt;
    END IF;
END //

DELIMITER ;

CALL CompareNumbers(@size);

