
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


-- =====================================================
-- Example 9 :- STORE TABLE
-- DDL AND DML COMMANDS
-- =====================================================


-- STEP 1 :- CREATE TABLE (DDL COMMAND)

CREATE TABLE store(
    store_id INT,
    store_name VARCHAR(50),
    city VARCHAR(50),
    owner_name VARCHAR(50),
    contact_number VARCHAR(15)
);


-- STEP 2 :- DISPLAY TABLE DATA (DQL COMMAND)

SELECT * FROM store;


-- STEP 3 :- INSERT DATA (DML COMMAND)

INSERT INTO store(store_id, store_name, city, owner_name, contact_number)
VALUES
(1, 'Sharma General Store', 'Bhopal', 'Rahul Sharma', '9876543210'),
(2, 'Fresh Mart', 'Indore', 'Amit Verma', '9876543211'),
(3, 'City Super Store', 'Jabalpur', 'Neha Patel', '9876543212'),
(4, 'Smart Shopping Center', 'Delhi', 'Rohit Kumar', '9876543213'),
(5, 'Royal Departmental Store', 'Mumbai', 'Priya Singh', '9876543214');


-- STEP 4 :- DISPLAY INSERTED DATA (DQL COMMAND)

SELECT * FROM store;


-- STEP 5 :- UPDATE CITY (DML COMMAND)

UPDATE store
SET city = 'Pune'
WHERE store_id = 2;

SELECT * FROM store;


-- STEP 6 :- UPDATE OWNER NAME (DML COMMAND)

UPDATE store
SET owner_name = 'Gitanjali Patel'
WHERE store_id = 4;

SELECT * FROM store;


-- STEP 7 :- UPDATE CONTACT NUMBER (DML COMMAND)

UPDATE store
SET contact_number = '7639451267'
WHERE store_id = 5;

SELECT * FROM store;


-- STEP 8 :- UPDATE STORE NAME (DML COMMAND)

UPDATE store
SET store_name = 'Shilpa General Store'
WHERE store_id = 3;

SELECT * FROM store;


-- STEP 9 :- DELETE STORE RECORD (DML COMMAND)

DELETE FROM store
WHERE store_id = 3;

SELECT * FROM store;


-- STEP 10 :- DELETE ANOTHER STORE RECORD (DML COMMAND)

DELETE FROM store
WHERE store_id = 5;

SELECT * FROM store;


-- STEP 11 :- ADD NEW COLUMN (DDL COMMAND)

ALTER TABLE store
ADD COLUMN pincode INT;

SELECT * FROM store;


-- STEP 12 :- RENAME CITY COLUMN (DDL COMMAND)

ALTER TABLE store
RENAME COLUMN city TO store_city;

SELECT * FROM store;


-- STEP 13 :- RENAME OWNER_NAME COLUMN (DDL COMMAND)

ALTER TABLE store
RENAME COLUMN owner_name TO owner;

SELECT * FROM store;


-- STEP 14 :- CHANGE STORE_NAME DATA TYPE (DDL COMMAND)

ALTER TABLE store
ALTER COLUMN store_name TYPE VARCHAR(100);

SELECT * FROM store;


-- STEP 15 :- CHANGE OWNER DATA TYPE (DDL COMMAND)

ALTER TABLE store
ALTER COLUMN owner TYPE VARCHAR(100);

SELECT * FROM store;


-- STEP 16 :- DROP PINCODE COLUMN (DDL COMMAND)

ALTER TABLE store
DROP COLUMN pincode;

SELECT * FROM store;


-- STEP 17 :- RENAME TABLE (DDL COMMAND)

ALTER TABLE store
RENAME TO store_details;

SELECT * FROM store_details;


-- STEP 18 :- DELETE ALL TABLE RECORDS (DDL COMMAND)

TRUNCATE TABLE store_details;

SELECT * FROM store_details;


-- STEP 19 :- DROP TABLE (DDL COMMAND)

DROP TABLE store_details;

-- _______________________________________________________________________________________________________


-- =====================================================
-- Example 10 :- INSTITUTE TABLE
-- DDL AND DML COMMANDS
-- =====================================================


-- STEP 1 :- CREATE TABLE (DDL COMMAND)

CREATE TABLE institute(
    institute_id INT,
    institute_name VARCHAR(50),
    course_name VARCHAR(50),
    city VARCHAR(50),
    fees INT,
    duration VARCHAR(20)
);


-- STEP 2 :- DISPLAY TABLE DATA (DQL COMMAND)

SELECT * FROM institute;


-- STEP 3 :- INSERT DATA (DML COMMAND)

INSERT INTO institute(institute_id, institute_name, course_name, city, fees, duration)
VALUES
(1, 'Yunova Institute', 'Python', 'Bhopal', 8000, '3 Months'),
(2, 'Tech Academy', 'Web Development', 'Indore', 12000, '6 Months'),
(3, 'Bright Institute', 'Tally', 'Jabalpur', 5000, '2 Months'),
(4, 'Digital Learning Center', 'Graphic Design', 'Delhi', 7000, '4 Months'),
(5, 'Future Skills Academy', 'Data Science', 'Mumbai', 15000, '8 Months');


-- STEP 4 :- DISPLAY INSERTED DATA (DQL COMMAND)

SELECT * FROM institute;


-- STEP 5 :- UPDATE CITY (DML COMMAND)

UPDATE institute
SET city = 'Nagpur'
WHERE institute_id = 3;

SELECT * FROM institute;


-- STEP 6 :- UPDATE COURSE NAME (DML COMMAND)

UPDATE institute
SET course_name = 'Video Editing'
WHERE institute_id = 3;

SELECT * FROM institute;


-- STEP 7 :- UPDATE COURSE FEES (DML COMMAND)

UPDATE institute
SET fees = 6000
WHERE institute_id = 3;

SELECT * FROM institute;


-- STEP 8 :- UPDATE COURSE DURATION (DML COMMAND)

UPDATE institute
SET duration = '3 Months'
WHERE institute_id = 3;

SELECT * FROM institute;


-- STEP 9 :- DELETE INSTITUTE RECORD (DML COMMAND)

DELETE FROM institute
WHERE institute_id = 5;

SELECT * FROM institute;


-- STEP 10 :- DELETE ANOTHER INSTITUTE RECORD (DML COMMAND)

DELETE FROM institute
WHERE institute_id = 4;

SELECT * FROM institute;


-- STEP 11 :- ADD NEW COLUMN (DDL COMMAND)

ALTER TABLE institute
ADD COLUMN trainer_name VARCHAR(50);

SELECT * FROM institute;


-- STEP 12 :- RENAME CITY COLUMN (DDL COMMAND)

ALTER TABLE institute
RENAME COLUMN city TO institute_city;

SELECT * FROM institute;


-- STEP 13 :- RENAME FEES COLUMN (DDL COMMAND)

ALTER TABLE institute
RENAME COLUMN fees TO course_fees;

SELECT * FROM institute;


-- STEP 14 :- RENAME DURATION COLUMN (DDL COMMAND)

ALTER TABLE institute
RENAME COLUMN duration TO course_duration;

SELECT * FROM institute;


-- STEP 15 :- CHANGE INSTITUTE_NAME DATA TYPE (DDL COMMAND)

ALTER TABLE institute
ALTER COLUMN institute_name TYPE VARCHAR(100);

SELECT * FROM institute;


-- STEP 16 :- DROP TRAINER_NAME COLUMN (DDL COMMAND)

ALTER TABLE institute
DROP COLUMN trainer_name;

SELECT * FROM institute;


-- STEP 17 :- RENAME TABLE (DDL COMMAND)

ALTER TABLE institute
RENAME TO institute_details;

SELECT * FROM institute_details;


-- STEP 18 :- DELETE ALL TABLE RECORDS (DDL COMMAND)

TRUNCATE TABLE institute_details;

SELECT * FROM institute_details;


-- STEP 19 :- DROP TABLE (DDL COMMAND)

DROP TABLE institute_details;

-- _______________________________________________________________________________________________________


-- =====================================================
-- Example 11 :- LABORATORY TABLE
-- DDL AND DML COMMANDS
-- =====================================================


-- STEP 1 :- CREATE TABLE (DDL COMMAND)

CREATE TABLE laboratory(
    lab_id INT,
    lab_name VARCHAR(50),
    test_name VARCHAR(50),
    city VARCHAR(50),
    test_fees INT,
    test_duration VARCHAR(20)
);


-- STEP 2 :- DISPLAY TABLE DATA (DQL COMMAND)

SELECT * FROM laboratory;


-- STEP 3 :- INSERT DATA (DML COMMAND)

INSERT INTO laboratory(lab_id, lab_name, test_name, city, test_fees, test_duration)
VALUES
(1, 'Life Care Laboratory', 'Blood Test', 'Bhopal', 500, '30 Minutes'),
(2, 'City Diagnostic Center', 'Sugar Test', 'Indore', 300, '20 Minutes'),
(3, 'Health Plus Lab', 'Thyroid Test', 'Jabalpur', 700, '45 Minutes'),
(4, 'Modern Pathology Lab', 'Urine Test', 'Delhi', 400, '25 Minutes'),
(5, 'Shree Diagnostic Lab', 'CBC Test', 'Mumbai', 600, '35 Minutes');


-- STEP 4 :- DISPLAY INSERTED DATA (DQL COMMAND)

SELECT * FROM laboratory;


-- STEP 5 :- UPDATE CITY (DML COMMAND)

UPDATE laboratory
SET city = 'Nagpur'
WHERE lab_id = 3;

SELECT * FROM laboratory;


-- STEP 6 :- UPDATE TEST NAME (DML COMMAND)

UPDATE laboratory
SET test_name = 'Liver Function Test'
WHERE lab_id = 3;

SELECT * FROM laboratory;


-- STEP 7 :- UPDATE TEST FEES (DML COMMAND)

UPDATE laboratory
SET test_fees = 800
WHERE lab_id = 3;

SELECT * FROM laboratory;


-- STEP 8 :- UPDATE TEST DURATION (DML COMMAND)

UPDATE laboratory
SET test_duration = '60 Minutes'
WHERE lab_id = 3;

SELECT * FROM laboratory;


-- STEP 9 :- DELETE LABORATORY RECORD (DML COMMAND)

DELETE FROM laboratory
WHERE lab_id = 5;

SELECT * FROM laboratory;


-- STEP 10 :- DELETE ANOTHER LABORATORY RECORD (DML COMMAND)

DELETE FROM laboratory
WHERE lab_id = 4;

SELECT * FROM laboratory;


-- STEP 11 :- ADD NEW COLUMN (DDL COMMAND)

ALTER TABLE laboratory
ADD COLUMN technician_name VARCHAR(50);

SELECT * FROM laboratory;


-- STEP 12 :- RENAME CITY COLUMN (DDL COMMAND)

ALTER TABLE laboratory
RENAME COLUMN city TO lab_city;

SELECT * FROM laboratory;


-- STEP 13 :- RENAME TEST FEES COLUMN (DDL COMMAND)

ALTER TABLE laboratory
RENAME COLUMN test_fees TO test_charges;

SELECT * FROM laboratory;


-- STEP 14 :- RENAME TEST DURATION COLUMN (DDL COMMAND)

ALTER TABLE laboratory
RENAME COLUMN test_duration TO test_time;

SELECT * FROM laboratory;


-- STEP 15 :- CHANGE LAB_NAME DATA TYPE (DDL COMMAND)

ALTER TABLE laboratory
ALTER COLUMN lab_name TYPE VARCHAR(100);

SELECT * FROM laboratory;


-- STEP 16 :- DROP TECHNICIAN_NAME COLUMN (DDL COMMAND)

ALTER TABLE laboratory
DROP COLUMN technician_name;

SELECT * FROM laboratory;


-- STEP 17 :- RENAME TABLE (DDL COMMAND)

ALTER TABLE laboratory
RENAME TO laboratory_details;

SELECT * FROM laboratory_details;


-- STEP 18 :- DELETE ALL TABLE RECORDS (DDL COMMAND)

TRUNCATE TABLE laboratory_details;

SELECT * FROM laboratory_details;


-- STEP 19 :- DROP TABLE (DDL COMMAND)

DROP TABLE laboratory_details;

-- ____________________________________________________________________________________________________

-- =====================================================
-- Example 12 :- HOUSE TABLE
-- DDL AND DML COMMANDS
-- =====================================================


-- STEP 1 :- CREATE TABLE (DDL COMMAND)

CREATE TABLE house(
    house_number INT,
    house_name VARCHAR(50),
    village_name VARCHAR(50),
    address VARCHAR(50),
    pincode INT
);


-- STEP 2 :- DISPLAY TABLE DATA (DQL COMMAND)

SELECT * FROM house;


-- STEP 3 :- INSERT DATA (DML COMMAND)

INSERT INTO house(house_number, house_name, village_name, address, pincode)
VALUES
(1, 'Sharma House', 'Rampur', 'Near Hanuman Temple', 462001),
(2, 'Verma House', 'Sundarpur', 'Near Government School', 452001),
(3, 'Patel House', 'Rajpur', 'Main Road', 482001),
(4, 'Kumar House', 'Shivpur', 'Near Bus Stand', 474001),
(5, 'Singh House', 'Krishnapur', 'Near Railway Station', 110001);


-- STEP 4 :- DISPLAY INSERTED DATA (DQL COMMAND)

SELECT * FROM house;


-- STEP 5 :- UPDATE VILLAGE NAME (DML COMMAND)

UPDATE house
SET village_name = 'Govindpur'
WHERE house_number = 4;

SELECT * FROM house;


-- STEP 6 :- UPDATE HOUSE NAME (DML COMMAND)

UPDATE house
SET house_name = 'Thakur House'
WHERE house_number = 3;

SELECT * FROM house;


-- STEP 7 :- UPDATE HOUSE ADDRESS (DML COMMAND)

UPDATE house
SET address = 'Main Road'
WHERE house_number = 5;

SELECT * FROM house;


-- STEP 8 :- UPDATE PINCODE (DML COMMAND)

UPDATE house
SET pincode = 470336
WHERE house_number = 1;

SELECT * FROM house;


-- STEP 9 :- DELETE HOUSE RECORD (DML COMMAND)

DELETE FROM house
WHERE house_number = 4;

SELECT * FROM house;


-- STEP 10 :- DELETE ANOTHER HOUSE RECORD (DML COMMAND)

DELETE FROM house
WHERE house_number = 5;

SELECT * FROM house;


-- STEP 11 :- ADD NEW COLUMN (DDL COMMAND)

ALTER TABLE house
ADD COLUMN city VARCHAR(50);

SELECT * FROM house;


-- STEP 12 :- UPDATE CITY (DML COMMAND)

UPDATE house
SET city = 'Bhopal'
WHERE house_number = 1;

SELECT * FROM house;


-- STEP 13 :- UPDATE CITY (DML COMMAND)

UPDATE house
SET city = 'Indore'
WHERE house_number = 2;

SELECT * FROM house;


-- STEP 14 :- UPDATE CITY (DML COMMAND)

UPDATE house
SET city = 'Pune'
WHERE house_number = 3;

SELECT * FROM house;


-- STEP 15 :- RENAME VILLAGE_NAME COLUMN (DDL COMMAND)

ALTER TABLE house
RENAME COLUMN village_name TO village;

SELECT * FROM house;


-- STEP 16 :- RENAME ADDRESS COLUMN (DDL COMMAND)

ALTER TABLE house
RENAME COLUMN address TO house_address;

SELECT * FROM house;


-- STEP 17 :- RENAME CITY COLUMN (DDL COMMAND)

ALTER TABLE house
RENAME COLUMN city TO house_city;

SELECT * FROM house;


-- STEP 18 :- CHANGE HOUSE_NAME DATA TYPE (DDL COMMAND)

ALTER TABLE house
ALTER COLUMN house_name TYPE VARCHAR(100);

SELECT * FROM house;


-- STEP 19 :- CHANGE HOUSE_ADDRESS DATA TYPE (DDL COMMAND)

ALTER TABLE house
ALTER COLUMN house_address TYPE VARCHAR(100);

SELECT * FROM house;


-- STEP 20 :- CHANGE VILLAGE DATA TYPE (DDL COMMAND)

ALTER TABLE house
ALTER COLUMN village TYPE VARCHAR(100);

SELECT * FROM house;


-- STEP 21 :- DROP HOUSE_CITY COLUMN (DDL COMMAND)

ALTER TABLE house
DROP COLUMN house_city;

SELECT * FROM house;


-- STEP 22 :- DROP PINCODE COLUMN (DDL COMMAND)

ALTER TABLE house
DROP COLUMN pincode;

SELECT * FROM house;


-- STEP 23 :- RENAME TABLE (DDL COMMAND)

ALTER TABLE house
RENAME TO house_details;

SELECT * FROM house_details;


-- STEP 24 :- DELETE ALL TABLE RECORDS (DDL COMMAND)

TRUNCATE TABLE house_details;

SELECT * FROM house_details;


-- STEP 25 :- DROP TABLE (DDL COMMAND)

DROP TABLE house_details;

--____________________________________________________________________________________________________

-- =====================================================
-- Example 13 :- LOAN TABLE
-- DDL AND DML COMMANDS
-- =====================================================

-- CREATE TABLE (DDL COMMAND)

CREATE TABLE loan(
    loan_id INT,
    customer_name VARCHAR(100),
    loan_amount INT,
    loan_date DATE,
    loan_status VARCHAR(50),
    loan_type VARCHAR(50)
);

-- INSERT DATA (DML COMMAND)

INSERT INTO loan(loan_id, customer_name, loan_amount, loan_date, loan_status, loan_type)
VALUES
(1, 'Rahul Sharma', 50000, '2025-01-10', 'Approved', 'Home Loan'),
(2, 'Priya Verma', 75000, '2025-01-15', 'Pending', 'Car Loan'),
(3, 'Amit Patel', 100000, '2025-02-05', 'Approved', 'Personal Loan'),
(4, 'Neha Singh', 25000, '2025-02-12', 'Rejected', 'Education Loan'),
(5, 'Rohit Kumar', 150000, '2025-03-01', 'Approved', 'Business Loan'),
(6, 'Pooja Gupta', 60000, '2025-03-10', 'Pending', 'Home Loan'),
(7, 'Vikas Yadav', 90000, '2025-03-18', 'Approved', 'Car Loan'),
(8, 'Anjali Mehta', 40000, '2025-04-02', 'Rejected', 'Personal Loan'),
(9, 'Suresh Jain', 200000, '2025-04-15', 'Approved', 'Home Loan'),
(10, 'Kavita Joshi', 85000, '2025-05-05', 'Pending', 'Car Loan'),
(11, 'Deepak Verma', 120000, '2025-05-20', 'Approved', 'Business Loan'),
(12, 'Sneha Patel', 55000, '2025-06-01', 'Rejected', 'Education Loan'),
(13, 'Manish Sharma', 175000, '2025-06-15', 'Approved', 'Personal Loan'),
(14, 'Riya Agarwal', 30000, '2025-07-10', 'Pending', 'Home Loan'),
(15, 'Karan Malhotra', 95000, '2025-07-25', 'Approved', 'Car Loan');

-- DISPLAY DATA (DQL COMMAND)

SELECT * FROM loan;

-- UPDATE DATA (DML COMMAND)

UPDATE loan
SET loan_amount = 250000
WHERE loan_id = 2;

SELECT * FROM loan;

UPDATE loan
SET loan_status = 'Pending'
WHERE loan_id = 1;

SELECT * FROM loan;

-- DELETE DATA (DML COMMAND)

DELETE FROM loan
WHERE loan_id = 1;

SELECT * FROM loan;

-- ADD NEW COLUMN (DDL COMMAND)

ALTER TABLE loan
ADD COLUMN branch_name VARCHAR(50);

SELECT * FROM loan;

-- RENAME COLUMN (DDL COMMAND)

ALTER TABLE loan
RENAME COLUMN loan_amount TO amount;

SELECT * FROM loan;

-- CHANGE COLUMN DATA TYPE (DDL COMMAND)

ALTER TABLE loan
ALTER COLUMN customer_name TYPE VARCHAR(150);

SELECT * FROM loan;

-- DROP COLUMN (DDL COMMAND)

ALTER TABLE loan
RENAME TO loan_details;

-- RENAME TABLE (DDL COMMAND)

SELECT * FROM loan_details;

-- DELETE ALL TABLE RECORDS (DDL COMMAND)

TRUNCATE TABLE loan_details;

SELECT * FROM loan_details;


-- DROP TABLE (DDL COMMAND)

DROP TABLE loan_details;

-- ___________________________________________________________________________________________________
