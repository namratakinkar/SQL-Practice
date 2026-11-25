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

-- _________________________________________________________________________________________________


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



-- Example 8: HOSPITAL TABLE

CREATE TABLE hospital (
    hospital_id INT,
    hospital_name VARCHAR(50),
    city VARCHAR(50)
);

ALTER TABLE hospital
ADD COLUMN beds INT;

ALTER TABLE hospital
RENAME COLUMN city TO hospital_city;

ALTER TABLE hospital
ALTER COLUMN hospital_name TYPE VARCHAR(100);

ALTER TABLE hospital
DROP COLUMN beds;

ALTER TABLE hospital
RENAME TO hospital_details;

TRUNCATE TABLE hospital_details;

DROP TABLE hospital_details;


-- _______________________________________________________________________________________________



-- Example 9: PRODUCT TABLE

CREATE TABLE product (
    product_id INT,
    product_name VARCHAR(50),
    category VARCHAR(50)
);

ALTER TABLE product
ADD COLUMN price INT;

ALTER TABLE product
RENAME COLUMN category TO category_name;

ALTER TABLE product
ALTER COLUMN product_name TYPE VARCHAR(100);

ALTER TABLE product
DROP COLUMN price;

ALTER TABLE product
RENAME TO product_details;

TRUNCATE TABLE product_details;

DROP TABLE product_details;


-- ______________________________________________________________________________________________



-- Example 10: BANK TABLE

CREATE TABLE bank (
    account_id INT,
    customer_name VARCHAR(50),
    bank_name VARCHAR(50)
);

ALTER TABLE bank
ADD COLUMN branch VARCHAR(50);

ALTER TABLE bank
RENAME COLUMN bank_name TO bank_name_details;

ALTER TABLE bank
ALTER COLUMN customer_name TYPE VARCHAR(100);

ALTER TABLE bank
DROP COLUMN branch;

ALTER TABLE bank
RENAME TO bank_details;

TRUNCATE TABLE bank_details;

DROP TABLE bank_details;


-- _____________________________________________________________________________________________


-- Example 11 :- PRODUCT TABLE

CREATE TABLE product (
    product_id INT,
    product_name VARCHAR(50),
    price INT,
    category VARCHAR(50)
);

ALTER TABLE product
ADD COLUMN brand VARCHAR(50);

ALTER TABLE product
RENAME COLUMN brand TO company_name;

ALTER TABLE product
ALTER COLUMN product_name TYPE VARCHAR(100);

ALTER TABLE product
DROP COLUMN company_name;

ALTER TABLE product
RENAME TO product_details;

TRUNCATE TABLE product_details;

DROP TABLE product_details;

-- _____________________________________________________________________________________________

-- Example 12 :- COLLEGE TABLE

CREATE TABLE college (
    college_id INT,
    college_name VARCHAR(50),
    city VARCHAR(50),
    course VARCHAR(50)
);

ALTER TABLE college
ADD COLUMN fees INT;

ALTER TABLE college
RENAME COLUMN city TO location;

ALTER TABLE college
ALTER COLUMN college_name TYPE VARCHAR(100);

ALTER TABLE college
DROP COLUMN fees;

ALTER TABLE college
RENAME TO college_details;

TRUNCATE TABLE college_details;

DROP TABLE college_details;

-- ______________________________________________________________________________________________

-- Example 13 :- LIBRARY TABLE

CREATE TABLE library (
    book_id INT,
    book_name VARCHAR(50),
    author_name VARCHAR(50),
    price INT
);

ALTER TABLE library
ADD COLUMN publication_year INT;

ALTER TABLE library
RENAME COLUMN author_name TO writer_name;

ALTER TABLE library
ALTER COLUMN book_name TYPE VARCHAR(100);

ALTER TABLE library
DROP COLUMN publication_year;

ALTER TABLE library
RENAME TO library_books;

TRUNCATE TABLE library_books;

DROP TABLE library_books;

-- ________________________________________________________________________________________________

-- Example 14 :- HOTEL TABLE

CREATE TABLE hotel (
    hotel_id INT,
    hotel_name VARCHAR(50),
    city VARCHAR(50),
    room_price INT
);

ALTER TABLE hotel
ADD COLUMN hotel_type VARCHAR(50);

ALTER TABLE hotel
RENAME COLUMN city TO location;

ALTER TABLE hotel
ALTER COLUMN hotel_name TYPE VARCHAR(100);

ALTER TABLE hotel
DROP COLUMN hotel_type;

ALTER TABLE hotel
RENAME TO hotel_details;

TRUNCATE TABLE hotel_details;

DROP TABLE hotel_details;

-- __________________________________________________________________________________________________

-- Example 15 :- INSTITUTE TABLE

CREATE TABLE institute(
    institute_id INT,
    institute_name VARCHAR(50),
    course_name VARCHAR(50),
    city VARCHAR(50),
    fees INT,
    duration VARCHAR(50)
);

ALTER TABLE institute
ADD COLUMN trainer_name VARCHAR(50);

ALTER TABLE institute
RENAME COLUMN city TO institute_city;

ALTER TABLE institute
RENAME COLUMN fees TO course_fees;

ALTER TABLE institute
RENAME COLUMN duration TO course_duration;

ALTER TABLE institute
ALTER COLUMN institute_name TYPE VARCHAR(100);

ALTER TABLE institute
DROP COLUMN trainer_name;

ALTER TABLE institute
RENAME TO institute_details;

TRUNCATE TABLE institute_details;

DROP TABLE institute_details;

-- ___________________________________________________________________________________________________

-- Example 16 :- STORE TABLE

CREATE TABLE store(
    store_id INT,
    store_name VARCHAR(50),
    city VARCHAR(50),
    owner_name VARCHAR(50),
    contact_number VARCHAR(15)
);

ALTER TABLE store
ADD COLUMN pincode INT;

ALTER TABLE store
RENAME COLUMN city TO store_city;

ALTER TABLE store
RENAME COLUMN owner_name TO owner;

ALTER TABLE store
ALTER COLUMN store_name TYPE VARCHAR(100);

ALTER TABLE store
ALTER COLUMN owner TYPE VARCHAR(100);

ALTER TABLE store
DROP COLUMN pincode;

ALTER TABLE store
RENAME TO store_details;

TRUNCATE TABLE store_details;

DROP TABLE store_details;

-- __________________________________________________________________________________________________


-- Example 17 :-LABOROTORY TABLE

CREATE TABLE laboratory(
    lab_id INT,
    lab_name VARCHAR(50),
    test_name VARCHAR(50),
    city VARCHAR(50),
    test_fees INT,
    test_duration VARCHAR(50)
);

ALTER TABLE laboratory
ADD COLUMN technician_name VARCHAR(50);

ALTER TABLE laboratory
RENAME COLUMN city TO lab_city;

ALTER TABLE laboratory
RENAME COLUMN test_fees TO test_charges;

ALTER TABLE laboratory
RENAME COLUMN test_duration TO test_time;

ALTER TABLE laboratory
ALTER COLUMN lab_name TYPE VARCHAR(100);

ALTER TABLE laboratory
DROP COLUMN technician_name;

ALTER TABLE laboratory
RENAME TO laboratory_details;

TRUNCATE TABLE laboratory_details;

DROP TABLE laboratory_details;

-- _______________________________________________________________________________________________

-- Example 18 :- PATIENT TABLE

CREATE TABLE patient(
    patient_id INT,
    patient_name VARCHAR(50),
    age INT,
    gender VARCHAR(20),
    city VARCHAR(50),
    doctor_name VARCHAR(50)
);

ALTER TABLE patient
ADD COLUMN disease_name VARCHAR(50);

ALTER TABLE patient
RENAME COLUMN city TO patient_city;

ALTER TABLE patient
RENAME COLUMN doctor_name TO consulting_doctor;

ALTER TABLE patient
ALTER COLUMN patient_name TYPE VARCHAR(100);

ALTER TABLE patient
DROP COLUMN disease_name;

ALTER TABLE patient
RENAME TO patient_details;

TRUNCATE TABLE patient_details;

DROP TABLE patient_details;

-- ____________________________________________________________________________________________________

-- Example 19 :- HOUSE TABLE

CREATE TABLE house(
     house_number INT,
     house_name VARCHAR(50),
     village_name VARCHAR(50),
     address VARCHAR(50),
     pincode INT
);

SELECT * FROM house;

ALTER TABLE house
ADD COLUMN city VARCHAR(50);

SELECT * FROM house;

ALTER TABLE house
RENAME COLUMN village_name TO village;

SELECT * FROM house;

ALTER TABLE house
RENAME COLUMN address to house_address;

SELECT * FROM house;

ALTER TABLE house
ALTER COLUMN house_name TYPE VARCHAR(100);

SELECT * FROM house;

ALTER TABLE house
ALTER COLUMN house_address TYPE VARCHAR(100);

SELECT * FROM house;

ALTER TABLE house
ALTER COLUMN village TYPE VARCHAR(100);

SELECT * FROM house;

ALTER TABLE house
DROP COLUMN city;

SELECT * FROM house;

AITER TABLE house
DROP COLUMN pincode;

SELECT * FROM house;

ALTER TABLE house
RENAME TO house_details;

SELECT * FROM house_details;

TRUNCATE TABLE house_details;

SELECT * FROM house_details;

DROP TABLE house_details;

-- ______________________________________________________________________________________________________

-- Example 20 :- LONE TABLE

CREATE TABLE loan_demo(
    loan_id INT,
    customer_name VARCHAR(50),
    loan_amount INT,
    loan_date DATE,
    loan_status VARCHAR(50)
);

SELECT * FROM loan_demo;

ALTER TABLE loan_demo
ADD COLUMN loan_type VARCHAR(50);

ALTER TABLE loan_demo
RENAME COLUMN loan_amount TO amount;

ALTER TABLE loan_demo
RENAME COLUMN loan_date TO application_date;

ALTER TABLE loan_demo
RENAME COLUMN loan_status TO status;

ALTER TABLE loan_demo
ALTER COLUMN customer_name TYPE VARCHAR(100);

ALTER TABLE loan_demo
ALTER COLUMN status TYPE VARCHAR(100);

ALTER TABLE loan_demo
DROP COLUMN loan_type;

ALTER TABLE loan_demo
RENAME TO loan_details;

SELECT * FROM loan_details;

TRUNCATE TABLE loan_details;

SELECT * FROM loan_details;

DROP TABLE loan_details;

-- ____________________________________________________________________________________________________

-- Example 21 :- SUBJECT TABLE

CREATE TABLE subject(
    subject_id INT,
    subject_name VARCHAR(50),
    subject_code INT,
    teacher_name VARCHAR(50),
    subject_fee INT
);

SELECT * FROM subject;

ALTER TABLE subject
ADD COLUMN subject_duration VARCHAR(50);

ALTER TABLE subject
RENAME COLUMN subject_fee TO fee;

ALTER TABLE subject
RENAME COLUMN teacher_name TO faculty_name;

ALTER TABLE subject
RENAME COLUMN subject_code TO code;

ALTER TABLE subject
ALTER COLUMN subject_name TYPE VARCHAR(100);

ALTER TABLE subject
ALTER COLUMN faculty_name TYPE VARCHAR(100);

ALTER TABLE subject
DROP COLUMN subject_duration;

ALTER TABLE subject
RENAME TO subject_details;

SELECT * FROM subject_details;

TRUNCATE TABLE subject_details;

SELECT * FROM subject_details;

DROP TABLE subject_details;

-- ________________________________________________________________________________________________________-

-- Example 22 :- SHOP TABLE

CREATE TABLE shop(
    shop_id INT,
    shop_name VARCHAR(50),
    owner_name VARCHAR(50),
    shop_type VARCHAR(50),
    shop_mobile BIGINT,
    shop_address VARCHAR(100),
    shop_income INT
);

SELECT * FROM shop;

ALTER TABLE shop
ADD COLUMN shop_email VARCHAR(100);

ALTER TABLE shop
RENAME COLUMN shop_income TO income;

ALTER TABLE shop
RENAME COLUMN owner_name TO shop_owner;

ALTER TABLE shop
RENAME COLUMN shop_type TO category;

ALTER TABLE shop
ALTER COLUMN shop_name TYPE VARCHAR(100);

ALTER TABLE shop
ALTER COLUMN shop_owner TYPE VARCHAR(100);

ALTER TABLE shop
DROP COLUMN shop_email;

ALTER TABLE shop
RENAME TO shop_details;

SELECT * FROM shop_details;

TRUNCATE TABLE shop_details;

SELECT * FROM shop_details;

DROP TABLE shop_details;

-- ________________________________________________________________________________________________________


CREATE TABLE hospital_doctor(
    doctor_id INT,
    doctor_name VARCHAR(50),
    specialization VARCHAR(50),
    doctor_mobile BIGINT,
    doctor_address VARCHAR(100),
    doctor_salary INT
);

SELECT * FROM hospital_doctor;

ALTER TABLE hospital_doctor
ADD COLUMN doctor_email VARCHAR(100);

ALTER TABLE hospital_doctor
RENAME COLUMN doctor_salary TO salary;

ALTER TABLE hospital_doctor
RENAME COLUMN doctor_name TO doctor_full_name;

ALTER TABLE hospital_doctor
RENAME COLUMN specialization TO department;

ALTER TABLE hospital_doctor
ALTER COLUMN doctor_full_name TYPE VARCHAR(100);

ALTER TABLE hospital_doctor
ALTER COLUMN department TYPE VARCHAR(100);

ALTER TABLE hospital_doctor
ALTER COLUMN doctor_address TYPE VARCHAR(150);

ALTER TABLE hospital_doctor
DROP COLUMN doctor_email;

ALTER TABLE hospital_doctor
RENAME TO hospital_doctor_details;

SELECT * FROM hospital_doctor_details;

TRUNCATE TABLE hospital_doctor_details;

SELECT * FROM hospital_doctor_details;

DROP TABLE hospital_doctor_details;

-- _______________________________________________________________________________________________________