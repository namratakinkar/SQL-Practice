
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

-- _________________________________________________________________________________________________


-- =====================================================
-- Example 5 :- BANK TABLE
-- DDL, DML AND DQL COMMANDS
-- =====================================================


-- STEP 1 :- CREATE TABLE (DDL)

CREATE TABLE bank(
    account_id INT,
    customer_name VARCHAR(50),
    bank_name VARCHAR(50)
);


-- STEP 2 :- DISPLAY TABLE DATA (DQL)

SELECT * FROM bank;


-- STEP 3 :- INSERT DATA (DML)

INSERT INTO bank(account_id, customer_name, bank_name)
VALUES
(1, 'Radhika', 'BOB'),
(2, 'Neharika', 'SBI'),
(3, 'Sakshi', 'HDFC'),
(4, 'Siya', 'ICICI');


-- STEP 4 :- DISPLAY INSERTED DATA (DQL)

SELECT * FROM bank;


-- STEP 5 :- UPDATE DATA (DML)

UPDATE bank
SET bank_name = 'BOB'
WHERE account_id = 3;


-- STEP 6 :- DISPLAY UPDATED DATA (DQL)

SELECT * FROM bank;


-- STEP 7 :- DELETE DATA (DML)

DELETE FROM bank
WHERE account_id = 3;


-- STEP 8 :- DISPLAY REMAINING DATA (DQL)

SELECT * FROM bank;


-- STEP 9 :- ADD COLUMN (DDL)

ALTER TABLE bank
ADD COLUMN branch VARCHAR(100);


-- STEP 10 :- DISPLAY TABLE WITH NEW COLUMN (DQL)

SELECT * FROM bank;


-- STEP 11 :- RENAME COLUMN (DDL)

ALTER TABLE bank
RENAME COLUMN bank_name TO bank;


-- STEP 12 :- DISPLAY RENAMED COLUMN (DQL)

SELECT * FROM bank;


-- STEP 13 :- ALTER COLUMN TYPE (DDL)

ALTER TABLE bank
ALTER COLUMN customer_name TYPE VARCHAR(100);


-- STEP 14 :- DISPLAY UPDATED TABLE (DQL)

SELECT * FROM bank;


-- STEP 15 :- DROP COLUMN (DDL)

ALTER TABLE bank
DROP COLUMN branch;


-- STEP 16 :- DISPLAY TABLE (DQL)

SELECT * FROM bank;


-- STEP 17 :- RENAME TABLE (DDL)

ALTER TABLE bank
RENAME TO bank_details;


-- STEP 18 :- DISPLAY RENAMED TABLE (DQL)

SELECT * FROM bank_details;


-- STEP 19 :- TRUNCATE TABLE (DDL)

TRUNCATE TABLE bank_details;


-- STEP 20 :- DISPLAY EMPTY TABLE (DQL)

SELECT * FROM bank_details;


-- STEP 21 :- DROP TABLE (DDL)

DROP TABLE bank_details;

-- _____________________________________________________________________________________________________



-- =====================================================
-- Example 6 :- PRODUCT TABLE
-- DDL, DML AND DQL COMMANDS
-- =====================================================


-- STEP 1 :- CREATE TABLE (DDL)

CREATE TABLE product(
    product_id INT,
    product_name VARCHAR(50),
    category VARCHAR(50)
);


-- STEP 2 :- DISPLAY TABLE DATA (DQL)

SELECT * FROM product;


-- STEP 3 :- INSERT DATA (DML)

INSERT INTO product(product_id, product_name, category)
VALUES
(1, 'Laptop', 'Electronics'),
(2, 'Mobile', 'Electronics'),
(3, 'Chair', 'Furniture'),
(4, 'Table', 'Furniture'),
(5, 'Shoes', 'Fashion');


-- STEP 4 :- DISPLAY INSERTED DATA (DQL)

SELECT * FROM product;


-- STEP 5 :- UPDATE DATA (DML)

UPDATE product
SET category = 'Technology'
WHERE product_id = 1;


-- STEP 6 :- DISPLAY UPDATED DATA (DQL)

SELECT * FROM product;


-- STEP 7 :- DELETE DATA (DML)

DELETE FROM product
WHERE product_id = 3;


-- STEP 8 :- DISPLAY REMAINING DATA (DQL)

SELECT * FROM product;


-- STEP 9 :- ADD COLUMN (DDL)

ALTER TABLE product
ADD COLUMN price INT;


-- STEP 10 :- DISPLAY TABLE WITH NEW COLUMN (DQL)

SELECT * FROM product;


-- STEP 11 :- UPDATE PRODUCT PRICE (DML)

UPDATE product
SET price = 25000
WHERE product_id = 1;


-- STEP 12 :- DISPLAY UPDATED PRODUCT PRICE (DQL)

SELECT * FROM product;


-- STEP 13 :- RENAME COLUMN (DDL)

ALTER TABLE product
RENAME COLUMN category TO product_category;


-- STEP 14 :- DISPLAY RENAMED COLUMN (DQL)

SELECT * FROM product;


-- STEP 15 :- ALTER COLUMN TYPE (DDL)

ALTER TABLE product
ALTER COLUMN product_name TYPE VARCHAR(100);


-- STEP 16 :- DISPLAY UPDATED TABLE (DQL)

SELECT * FROM product;


-- STEP 17 :- DROP COLUMN (DDL)

ALTER TABLE product
DROP COLUMN price;


-- STEP 18 :- DISPLAY TABLE (DQL)

SELECT * FROM product;


-- STEP 19 :- RENAME TABLE (DDL)

ALTER TABLE product
RENAME TO product_details;


-- STEP 20 :- DISPLAY RENAMED TABLE (DQL)

SELECT * FROM product_details;


-- STEP 21 :- TRUNCATE TABLE (DDL)

TRUNCATE TABLE product_details;


-- STEP 22 :- DISPLAY EMPTY TABLE (DQL)

SELECT * FROM product_details;


-- STEP 23 :- DROP TABLE (DDL)

DROP TABLE product_details;

-- ____________________________________________________________________________________________________


-- =====================================================
-- Example 7 :- HOSPITAL TABLE
-- DDL, DML AND DQL COMMANDS
-- =====================================================


-- STEP 1 :- CREATE TABLE (DDL)

CREATE TABLE hospital(
    patient_id INT,
    patient_name VARCHAR(50),
    doctor_name VARCHAR(50)
);


-- STEP 2 :- DISPLAY TABLE DATA (DQL)

SELECT * FROM hospital;


-- STEP 3 :- INSERT DATA (DML)

INSERT INTO hospital(patient_id, patient_name, doctor_name)
VALUES
(1, 'Rahul', 'Dr. Sharma'),
(2, 'Amit', 'Dr. Verma'),
(3, 'Neha', 'Dr. Gupta'),
(4, 'Priya', 'Dr. Singh');


-- STEP 4 :- DISPLAY INSERTED DATA (DQL)

SELECT * FROM hospital;


-- STEP 5 :- UPDATE DATA (DML)

UPDATE hospital
SET doctor_name = 'Dr. Mehta'
WHERE patient_id = 3;


-- STEP 6 :- DISPLAY UPDATED DATA (DQL)

SELECT * FROM hospital;


-- STEP 7 :- DELETE DATA (DML)

DELETE FROM hospital
WHERE patient_id = 2;


-- STEP 8 :- DISPLAY REMAINING DATA (DQL)

SELECT * FROM hospital;


-- STEP 9 :- ADD COLUMN (DDL)

ALTER TABLE hospital
ADD COLUMN disease VARCHAR(100);


-- STEP 10 :- DISPLAY TABLE WITH NEW COLUMN (DQL)

SELECT * FROM hospital;


-- STEP 11 :- RENAME COLUMN (DDL)

ALTER TABLE hospital
RENAME COLUMN doctor_name TO assigned_doctor;


-- STEP 12 :- DISPLAY RENAMED COLUMN (DQL)

SELECT * FROM hospital;


-- STEP 13 :- ALTER COLUMN TYPE (DDL)

ALTER TABLE hospital
ALTER COLUMN patient_name TYPE VARCHAR(100);


-- STEP 14 :- DISPLAY UPDATED TABLE (DQL)

SELECT * FROM hospital;


-- STEP 15 :- DROP COLUMN (DDL)

ALTER TABLE hospital
DROP COLUMN disease;


-- STEP 16 :- DISPLAY TABLE (DQL)

SELECT * FROM hospital;


-- STEP 17 :- RENAME TABLE (DDL)

ALTER TABLE hospital
RENAME TO hospital_records;


-- STEP 18 :- DISPLAY RENAMED TABLE (DQL)

SELECT * FROM hospital_records;


-- STEP 19 :- TRUNCATE TABLE (DDL)

TRUNCATE TABLE hospital_records;


-- STEP 20 :- DISPLAY EMPTY TABLE (DQL)

SELECT * FROM hospital_records;


-- STEP 21 :- DROP TABLE (DDL)

DROP TABLE hospital_records;

-- ____________________________________________________________________________________________________


- =====================================================
-- Example 8 :- LIBRARY TABLE
-- DDL, DML AND DQL COMMANDS
-- ====================================================


-- STEP 1 :- CREATE TABLE (DDL)

CREATE TABLE library(
    book_id INT,
    book_name VARCHAR(50),
    author_name VARCHAR(50)
);


-- STEP 2 :- DISPLAY TABLE DATA (DQL)

SELECT * FROM library;


-- STEP 3 :- INSERT DATA (DML)

INSERT INTO library(book_id, book_name, author_name)
VALUES
(1, 'Python Basics', 'Rahul Sharma'),
(2, 'SQL Guide', 'Amit Verma'),
(3, 'Java Programming', 'Neha Gupta'),
(4, 'Data Science', 'Priya Singh');


-- STEP 4 :- DISPLAY INSERTED DATA (DQL)

SELECT * FROM library;


-- STEP 5 :- UPDATE DATA (DML)

UPDATE library
SET author_name = 'Rohit Mehta'
WHERE book_id = 3;


-- STEP 6 :- DISPLAY UPDATED DATA (DQL)

SELECT * FROM library;


-- STEP 7 :- DELETE DATA (DML)

DELETE FROM library
WHERE book_id = 2;


-- STEP 8 :- DISPLAY REMAINING DATA (DQL)

SELECT * FROM library;


-- STEP 9 :- ADD COLUMN (DDL)

ALTER TABLE library
ADD COLUMN price INT;


-- STEP 10 :- DISPLAY TABLE WITH NEW COLUMN (DQL)

SELECT * FROM library;


-- STEP 11 :- RENAME COLUMN (DDL)

ALTER TABLE library
RENAME COLUMN author_name TO writer_name;


-- STEP 12 :- DISPLAY RENAMED COLUMN (DQL)

SELECT * FROM library;


-- STEP 13 :- ALTER COLUMN TYPE (DDL)

ALTER TABLE library
ALTER COLUMN book_name TYPE VARCHAR(100);


-- STEP 14 :- DISPLAY UPDATED TABLE (DQL)

SELECT * FROM library;


-- STEP 15 :- DROP COLUMN (DDL)

ALTER TABLE library
DROP COLUMN price;


-- STEP 16 :- DISPLAY TABLE (DQL)

SELECT * FROM library;


-- STEP 17 :- RENAME TABLE (DDL)

ALTER TABLE library
RENAME TO library_books;


-- STEP 18 :- DISPLAY RENAMED TABLE (DQL)

SELECT * FROM library_books;


-- STEP 19 :- TRUNCATE TABLE (DDL)

TRUNCATE TABLE library_books;


-- STEP 20 :- DISPLAY EMPTY TABLE (DQL)

SELECT * FROM library_books;


-- STEP 21 :- DROP TABLE (DDL)

DROP TABLE library_books;

-- ______________________________________________________________________________________________________