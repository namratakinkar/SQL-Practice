
-- =====================================================
-- SQL PRACTICE
-- DDL AND DML COMMANDS
-- =====================================================

-- =========================================================================
-- DML :- (DATA MANIPULATION LANGUAGE)
-- DML COMMANDS MANIPULATE ROW DATA OF ANY TABLE.
-- DML CPMMANDS :- UPDATE, INSERT, SELECT, DELETE
-- =========================================================================

-- =========================================================================
-- DDL :- (DATA DEFINATION LANGUAGE)
-- DDL COMMANDS MANIPULATE COLUMN DATA OF ANY TABLE.
-- DDL COMMANDS :- CREATE, ALTER, DROP, TRUNCATE, RENAME
-- =========================================================================


-- Example 1 :- WORKER TABLE


-- STEP 1 :- CREATE TABLE (DDL)

CREATE TABLE worker (
    worker_id INT,
    name VARCHAR(50),
    department VARCHAR(50)
);


-- STEP 2 :- INSERT DATA (DML)

INSERT INTO worker (worker_id, name, department)
VALUES
(1, 'Rahul', 'HR'),
(3, 'Amit', 'Sales'),
(4, 'Neha', 'Finance'),
(5, 'Rohit', 'Marketing');


-- STEP 3 :- DISPLAY DATA (DQL)

SELECT * FROM worker;


-- STEP 4 :- UPDATE DATA (DML)

UPDATE worker
SET department = 'IT'
WHERE name = 'Neha';

SELECT * FROM worker;


-- STEP 5 :- DELETE DATA (DML)

DELETE FROM worker
WHERE name = 'Neha';

SELECT * FROM worker;


-- STEP 6 :- ADD COLUMN (DDL)

ALTER TABLE worker
ADD COLUMN city VARCHAR(50);


-- STEP 7 :- UPDATE CITY (DML)

UPDATE worker
SET city = 'Pune'
WHERE name = 'Rahul';

SELECT * FROM worker;


-- STEP 8 :- RENAME COLUMN (DDL)

ALTER TABLE worker
RENAME COLUMN city TO worker_city;


-- STEP 9 :- RENAME TABLE (DDL)

ALTER TABLE worker
RENAME TO worker_details;


-- STEP 10 :- ALTER COLUMN TYPE (DDL)

ALTER TABLE worker_details
ALTER COLUMN name TYPE VARCHAR(100);


-- STEP 11 :- DROP COLUMN (DDL)

ALTER TABLE worker_details
DROP COLUMN worker_city;


-- STEP 12 :- TRUNCATE TABLE (DDL)

TRUNCATE TABLE worker_details;


-- STEP 13 :- CHECK TABLE (DQL)

SELECT * FROM worker_details;


-- STEP 14 :- DROP TABLE (DDL)

DROP TABLE worker_details;


-- ___________________________________________________________________________________________



-- =====================================================
-- Example 2 :- EMPLOYEE TABLE
-- DDL, DML AND DQL COMMANDS
-- =====================================================


-- STEP 1 :- CREATE TABLE (DDL)

CREATE TABLE employee(
    employee_id INT,
    employee_name VARCHAR(50),
    city VARCHAR(50)
);


-- STEP 2 :- DISPLAY TABLE DATA (DQL)

SELECT * FROM employee;


-- STEP 3 :- INSERT DATA (DML)

INSERT INTO employee(employee_id, employee_name, city)
VALUES
(1, 'Riya', 'Bhopal'),
(2, 'Priya', 'Indore'),
(3, 'Pari', 'Pune'),
(4, 'Sakshi', 'Mumbai'),
(5, 'Sonam', 'Delhi');


-- STEP 4 :- DISPLAY INSERTED DATA (DQL)

SELECT * FROM employee;


-- STEP 5 :- UPDATE DATA (DML)

UPDATE employee
SET city = 'Pune'
WHERE employee_id = 1;


-- STEP 6 :- DISPLAY UPDATED DATA (DQL)

SELECT * FROM employee;


-- STEP 7 :- DELETE DATA (DML)

DELETE FROM employee
WHERE employee_id = 3;


-- STEP 8 :- DISPLAY FINAL DATA (DQL)

SELECT * FROM employee;


-- STEP 9 :- ADD COLUMN (DDL)

ALTER TABLE employee
ADD COLUMN salary INT;


-- STEP 10 :- DISPLAY TABLE WITH NEW COLUMN (DQL)

SELECT * FROM employee;


-- STEP 11 :- UPDATE SALARY (DML)

UPDATE employee
SET salary = 200000
WHERE employee_id = 4;


-- STEP 12 :- DISPLAY UPDATED SALARY (DQL)

SELECT * FROM employee;


-- STEP 13 :- RENAME COLUMN (DDL)

ALTER TABLE employee
RENAME COLUMN salary TO employee_salary;


-- STEP 14 :- DISPLAY RENAMED COLUMN (DQL)

SELECT * FROM employee;


-- STEP 15 :- ALTER COLUMN DATATYPE (DDL)

ALTER TABLE employee
ALTER COLUMN employee_name TYPE VARCHAR(100);


-- STEP 16 :- DISPLAY UPDATED TABLE (DQL)

SELECT * FROM employee;


-- STEP 17 :- DROP COLUMN (DDL)

ALTER TABLE employee
DROP COLUMN employee_salary;


-- STEP 18 :- DISPLAY TABLE (DQL)

SELECT * FROM employee;


-- STEP 19 :- RENAME TABLE (DDL)

ALTER TABLE employee
RENAME TO employee_details;


-- STEP 20 :- DISPLAY RENAMED TABLE (DQL)

SELECT * FROM employee_details;


-- STEP 21 :- TRUNCATE TABLE (DDL)

TRUNCATE TABLE employee_details;


-- STEP 22 :- DISPLAY EMPTY TABLE (DQL)

SELECT * FROM employee_details;


-- STEP 23 :- DROP TABLE (DDL)

DROP TABLE employee_details;

-- ________________________________________________________________________________________________


-- =====================================================
-- Example 3 :- STUDENT TABLE
-- DDL, DML AND DQL COMMANDS
-- =====================================================


-- STEP 1 :- CREATE TABLE (DDL)

CREATE TABLE student(
    student_id INT,
    student_name VARCHAR(50),
    course VARCHAR(50)
);


-- STEP 2 :- DISPLAY TABLE DATA (DQL)

SELECT * FROM student;


-- STEP 3 :- INSERT DATA (DML)

INSERT INTO student(student_id, student_name, course)
VALUES
(1, 'Anjali', 'Python'),
(2, 'Rahul', 'Java'),
(3, 'Neha', 'SQL'),
(4, 'Amit', 'Python'),
(5, 'Priya', 'Web Development');


-- STEP 4 :- DISPLAY INSERTED DATA (DQL)

SELECT * FROM student;


-- STEP 5 :- UPDATE DATA (DML)

UPDATE student
SET course = 'Data Science'
WHERE student_id = 3;


-- STEP 6 :- DISPLAY UPDATED DATA (DQL)

SELECT * FROM student;


-- STEP 7 :- DELETE DATA (DML)

DELETE FROM student
WHERE student_id = 5;


-- STEP 8 :- DISPLAY FINAL DATA (DQL)

SELECT * FROM student;


-- STEP 9 :- ADD COLUMN (DDL)

ALTER TABLE student
ADD COLUMN marks INT;


-- STEP 10 :- DISPLAY TABLE WITH NEW COLUMN (DQL)

SELECT * FROM student;


-- STEP 11 :- UPDATE MARKS (DML)

UPDATE student
SET marks = 85
WHERE student_id = 1;


-- STEP 12 :- DISPLAY UPDATED MARKS (DQL)

SELECT * FROM student;


-- STEP 13 :- RENAME COLUMN (DDL)

ALTER TABLE student
RENAME COLUMN course TO student_course;


-- STEP 14 :- DISPLAY RENAMED COLUMN (DQL)

SELECT * FROM student;


-- STEP 15 :- ALTER COLUMN DATATYPE (DDL)

ALTER TABLE student
ALTER COLUMN student_name TYPE VARCHAR(100);


-- STEP 16 :- DISPLAY UPDATED TABLE (DQL)

SELECT * FROM student;


-- STEP 17 :- DROP COLUMN (DDL)

ALTER TABLE student
DROP COLUMN marks;


-- STEP 18 :- DISPLAY TABLE (DQL)

SELECT * FROM student;


-- STEP 19 :- RENAME TABLE (DDL)

ALTER TABLE student
RENAME TO student_details;


-- STEP 20 :- DISPLAY RENAMED TABLE (DQL)

SELECT * FROM student_details;


-- STEP 21 :- TRUNCATE TABLE (DDL)

TRUNCATE TABLE student_details;


-- STEP 22 :- DISPLAY EMPTY TABLE (DQL)

SELECT * FROM student_details;


-- STEP 23 :- DROP TABLE (DDL)

DROP TABLE student_details;

-- __________________________________________________________________________________________________



-- =====================================================
-- Example 4 :- SCHOOL TABLE
-- DDL, DML AND DQL COMMANDS
-- =====================================================


-- STEP 1 :- CREATE TABLE (DDL)

CREATE TABLE school(
    school_id INT,
    school_name VARCHAR(50),
    city VARCHAR(50)
);


-- STEP 2 :- DISPLAY TABLE DATA (DQL)

SELECT * FROM school;


-- STEP 3 :- INSERT DATA (DML)

INSERT INTO school(school_id, school_name, city)
VALUES
(1, 'Sunrise School', 'Bhopal'),
(2, 'Bright Future School', 'Indore'),
(3, 'Green Valley School', 'Pune'),
(4, 'Royal Public School', 'Mumbai'),
(5, 'City Star School', 'Delhi');


-- STEP 4 :- DISPLAY INSERTED DATA (DQL)

SELECT * FROM school;


-- STEP 5 :- UPDATE DATA (DML)

UPDATE school
SET city = 'Bhopal'
WHERE school_id = 3;


-- STEP 6 :- DISPLAY UPDATED DATA (DQL)

SELECT * FROM school;


-- STEP 7 :- DELETE DATA (DML)

DELETE FROM school
WHERE school_id = 3;


-- STEP 8 :- DISPLAY REMAINING DATA (DQL)

SELECT * FROM school;


-- STEP 9 :- ADD COLUMN (DDL)

ALTER TABLE school
ADD COLUMN total_students INT;


-- STEP 10 :- DISPLAY TABLE WITH NEW COLUMN (DQL)

SELECT * FROM school;


-- STEP 11 :- UPDATE STUDENT COUNT (DML)

UPDATE school
SET total_students = 150
WHERE school_id = 4;


-- STEP 12 :- DISPLAY UPDATED STUDENT COUNT (DQL)

SELECT * FROM school;


-- STEP 13 :- RENAME COLUMN (DDL)

ALTER TABLE school
RENAME COLUMN city TO school_city;


-- STEP 14 :- DISPLAY RENAMED COLUMN (DQL)

SELECT * FROM school;


-- STEP 15 :- ALTER COLUMN TYPE (DDL)

ALTER TABLE school
ALTER COLUMN school_name TYPE VARCHAR(100);


-- STEP 16 :- DISPLAY UPDATED TABLE (DQL)

SELECT * FROM school;


-- STEP 17 :- DROP COLUMN (DDL)

ALTER TABLE school
DROP COLUMN school_city;


-- STEP 18 :- DISPLAY TABLE (DQL)

SELECT * FROM school;


-- STEP 19 :- RENAME TABLE (DDL)

ALTER TABLE school
RENAME TO school_details;


-- STEP 20 :- DISPLAY RENAMED TABLE (DQL)

SELECT * FROM school_details;


-- STEP 21 :- TRUNCATE TABLE (DDL)

TRUNCATE TABLE school_details;


-- STEP 22 :- DISPLAY EMPTY TABLE (DQL)

SELECT * FROM school_details;


-- STEP 23 :- DROP TABLE (DDL)

DROP TABLE school_details;



-- =====================================================
-- END OF EMPLOYEE TABLE PRACTICE
-- =====================================================
