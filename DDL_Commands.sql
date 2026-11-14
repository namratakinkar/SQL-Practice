-- ============================
--  DDL
-- ============================

-- ================================================
-- DDL (Data Definition Language) commands 
-- ================================================



-- DDL(Data Definition language)

-- ==> it is column related
-- ==> it is used to manipulate column data of any table 

-- ======================
-- DDL Commands :- 

-- 1.CREATE :-
--    ==> It is used to create a new table in the database.
--    ==> Syntax:  

--        CREATE TABLE table_name (
--            column1 datatype,
--            column2 datatype,
--            ...
--          ); 

-- 2. ALTER :-
--    ==> It is used to modify an existing table in the database.
--    ==> Syntax:  

--        ALTER TABLE table_name
--        ADD column_name datatype;

--        ALTER TABLE table_name
--        DROP COLUMN column_name;

--        ALTER TABLE table_name
--        MODIFY COLUMN column_name datatype;

-- 3. DROP :-
--    ==> It is used to delete an existing table from the database.
--    ==> Syntax:  

--        DROP TABLE table_name;

-- 4. TRUNCATE :-
--    ==> It is used to delete all the records from a table, but not the table itself.
--    ==> Syntax:  

--        TRUNCATE TABLE table_name;

-- 5. RENAME :-
--    ==> It is used to rename an existing table in the database.
--    ==> Syntax:  

--        RENAME TABLE old_table_name TO new_table_name;

-- ______________________________________________________________________________________________

-- ============================
--  Examples :-
-- ============================


-- -- Example 1: SCHOOL TABLE

CREATE TABLE school (
    school_id INT,
    school_name VARCHAR(50),
    city VARCHAR(50)
);

ALTER TABLE school
ADD COLUMN pincode INT;

ALTER TABLE school
RENAME COLUMN city TO school_city;

ALTER TABLE school
ALTER COLUMN school_name TYPE VARCHAR(100);

ALTER TABLE school
DROP COLUMN pincode;

ALTER TABLE school
RENAME TO school_details;

TRUNCATE TABLE school_details;

DROP TABLE school_details;

-- _____________________________________________________________________________________________



-- -- Example 2: STUDENT TABLE

CREATE TABLE student (
    student_id INT,
    student_name VARCHAR(50),
    course VARCHAR(50)
);

ALTER TABLE student
ADD COLUMN age INT;

ALTER TABLE student
RENAME COLUMN course TO course_name;

ALTER TABLE student
ALTER COLUMN student_name TYPE VARCHAR(100);

ALTER TABLE student
DROP COLUMN age;

ALTER TABLE student
RENAME TO student_details;

TRUNCATE TABLE student_details;

DROP TABLE student_details;

-- ______________________________________________________________________________________________


-- Example 3 :- TEACHER TABLE

CREATE TABLE teacher(
    teacher_id INT,
    teacher_name VARCHAR(50),
    subject  VARCHAR(50)
);

ALTER TABLE teacher
ADD COLUMN city VARCHAR(50);

ALTER TABLE teacher
RENAME COLUMN subject TO teacher_subject;

ALTER TABLE teacher
ALTER COLUMN teacher_name TYPE VARCHAR(100);

ALTER TABLE teacher
DROP COLUMN city;

ALTER TABLE teacher
RENAME to teacher_details;

TRUNCATE TABLE teacher_details;

DROP TABLE teacher_details;

-- ____________________________________________________________________________________________________


-- Example 4 :- WORKER TABLE

CREATE TABLE worker(
    worker_id INT,
    worker_name VARCHAR(50),
    city VARCHAR(50)
);

ALTER TABLE worker
ADD COLUMN salary INT;

ALTER TABLE worker
RENAME COLUMN city TO worker_city;

ALTER TABLE worker
ALTER COLUMN worker_name TYPE VARCHAR(100);

ALTER TABLE worker
DROP COLUMN salary;

ALTER TABLE worker
RENAME TO worker_details;

TRUNCATE TABLE worker_details;

DROP TABLE worker_details;

-- _________________________________________________________________________________________________


-- Example 5 :- EMPLOYEE TABLE

CREATE TABLE employee(
    employee_id INT,
    employee_name VARCHAR(50),
    city VARCHAR(50)
);

ALTER TABLE employee
ADD COLUMN salary INT;

ALTER TABLE employee
RENAME COLUMN city TO employee_city;

ALTER TABLE employee
ALTER COLUMN employee_name TYPE VARCHAR(100);

ALTER TABLE employee
DROP COLUMN salary;

ALTER TABLE employee
RENAME TO employee_details;

TRUNCATE TABLE employee_details;

DROP TABLE employee_details;

-- ________________________________________________________________________________________________


-- Example 6 :- CUSTOMER TABLE


CREATE TABLE customer(
    customer_id INT,
    customer_name VARCHAR(50),
     city VARCHAR(50)
);

ALTER TABLE customer
ADD COLUMN email VARCHAR(100);

ALTER TABLE customer
RENAME COLUMN city TO customer_city;

ALTER TABLE customer
ALTER COLUMN customer_name TYPE VARCHAR(100);

ALTER TABLE customer
DROP COLUMN email;

ALTER TABLE customer
RENAME TO customer_details;

TRUNCATE TABLE customer_details;

DROP TABLE customer_details;

_________________________________________________________________________________________________


--  Example 7 :- BANK TABLE


CREATE TABLE book(
   book_id INT,
   book_name VARCHAR(50),
   author VARCHAR(50)
);

ALTER TABLE book
ADD COLUMN price INT;

ALTER TABLE book
RENAME COLUMN author TO book_author;

ALTER TABLE book
ALTER COLUMN book_name TYPE VARCHAR(100);

ALTER TABLE book
DROP COLUMN price;

ALTER TABLE book
RENAME TO book_details;

TRUNCATE TABLE book_details;

DROP TABLE book_details;

-- ______________________________________________________________________________________________
