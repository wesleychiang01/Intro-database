/*Select
SELECT column1, column2, ...
FROM table_name;*/

/*Create Connection
*/
CREATE DATABASE sql_table;
DROP DATABASE sql_table;


/*
INT            -- Integer
DECIMAL(3,2)   -- Decimal Eg. 2.22
VARCHAR(n)     -- Number of character
BLOB           -- (Binary Large Object) -video, image..
DATE           -- 'YYYY-MM-DD'
TIMESTAMP      -- 'YYYY-MM-DD HH:MM:SS'
*/

-- CONSTRAINTS
USE sql_table;
CREATE TABLE students(
    id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(50),
    course VARCHAR(50),
    PRIMARY KEY (id)
);

-- show all details in the selected table
SELECT * FROM students; 

-- insert data into the table
INSERT INTO students VALUES (1, 'aLI','Electronics'); /*need to follow the arrangement in the table*/
INSERT INTO students (name, course, id) VALUES ('Abu','Mechatronics',2);
INSERT INTO students (name, course) VALUES ('Abu','Mechatronics');

-- DELETE TABLE
DROP TABLE 'students';

-- UPDATE TABLE

UPDATE students
SET course = 'Civil', name = 'Wong'
WHERE id = 1;

SELECT * FROM students;

DELETE FROM students
WHERE id = 2 AND name = 'Abu';

-- SELECT DATA
USE test_db;
SELECT * FROM students;
SELECT name FROM students;
SELECT name FROM students LIMIT 3;
SELECT name, score FROM students ORDER BY score;
SELECT name, course, score FROM students WHERE course = 'Mechatronics' AND score >= 50 ORDER BY score;





