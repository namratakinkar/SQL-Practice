

-- =====================================================
-- STUDENT TABLE
-- =====================================================

CREATE TABLE student(
    student_id INT PRIMARY KEY,
    name VARCHAR(50),
    roll_no INT,
    mobile_no VARCHAR(10)
);

-- INSERT DATA INTO STUDENT TABLE

INSERT INTO student(student_id, name, roll_no, mobile_no)
VALUES
(101, 'Rahul', 20, '8172262622'),
(102, 'Amit', 21, '9272726253');

-- DISPLAY STUDENT TABLE

SELECT * FROM student;


-- =====================================================
-- LIBRARY TABLE
-- =====================================================

CREATE TABLE library(
    student_id INT,
    book_name VARCHAR(100),
    book_issue_date DATE,
    FOREIGN KEY (student_id) REFERENCES student(student_id)
);

-- INSERT DATA INTO LIBRARY TABLE

INSERT INTO library(student_id, book_name, book_issue_date)
VALUES
(101, 'Harry Potter', '2026-11-12'),
(102, 'Hobbit', '2026-11-14');

-- DISPLAY LIBRARY TABLE

SELECT * FROM library;


-- =====================================================
-- PRIMARY KEY
-- =====================================================

-- 1. It is always UNIQUE.
-- 2. It cannot contain NULL values.
-- 3. Only one PRIMARY KEY constraint can exist in a table.
-- 4. A PRIMARY KEY can contain multiple columns (Composite Primary Key).


-- =====================================================
-- CANDIDATE KEY
-- =====================================================

-- 1. It is always UNIQUE.
-- 2. It cannot contain NULL values.
-- 3. A table can have multiple CANDIDATE KEYS.
-- 4. Any candidate key can be selected as a PRIMARY KEY.


-- =====================================================
-- FOREIGN KEY
-- =====================================================

-- 1. It is used to create a relationship between two tables.
-- 2. It references a PRIMARY KEY or UNIQUE key in another table.
-- 3. It helps maintain referential integrity.
-- 4. Duplicate values can exist in a FOREIGN KEY.
-- 5. NULL values are allowed in a FOREIGN KEY unless NOT NULL is specified.



-- =====================================================
-- SUBJECT TABLE
-- PRIMARY KEY, CANDIDATE KEY AND FOREIGN KEY
-- =====================================================


-- =====================================================
-- STEP 1 :- SUBJECT TABLE
-- =====================================================

CREATE TABLE subject(
    subject_id INT PRIMARY KEY,
    subject_code INT UNIQUE,
    subject_name VARCHAR(50),
    subject_fee INT
);

-- subject_id IS PRIMARY KEY
-- subject_id IS ALSO A CANDIDATE KEY
-- subject_code IS CANDIDATE KEY
-- subject_code IS ALSO AN ALTERNATE KEY
-- subject_code IS UNIQUE KEY


-- INSERT DATA INTO SUBJECT TABLE

INSERT INTO subject(subject_id, subject_code, subject_name, subject_fee)
VALUES
(101, 1001, 'Python', 5000),
(102, 1002, 'Java', 4500),
(103, 1003, 'SQL', 3000),
(104, 1004, 'C Programming', 3500),
(105, 1005, 'Web Development', 6000);


-- DISPLAY SUBJECT TABLE

SELECT * FROM subject;


-- =====================================================
-- STEP 2 :- SUBJECT_TEACHER TABLE
-- =====================================================

CREATE TABLE subject_teacher(
    teacher_id INT PRIMARY KEY,
    teacher_name VARCHAR(50),
    subject_id INT,
    teacher_mobile VARCHAR(10) UNIQUE,
    FOREIGN KEY (subject_id) REFERENCES subject(subject_id)
);

-- teacher_id IS PRIMARY KEY
-- teacher_id IS ALSO A CANDIDATE KEY
-- teacher_mobile IS CANDIDATE KEY
-- teacher_mobile IS ALSO AN ALTERNATE KEY
-- teacher_mobile IS UNIQUE KEY
-- subject_id IS FOREIGN KEY
-- subject_id REFERENCES subject_id OF SUBJECT TABLE


-- INSERT DATA INTO SUBJECT_TEACHER TABLE

INSERT INTO subject_teacher(teacher_id, teacher_name, subject_id, teacher_mobile)
VALUES
(201, 'Amit Sharma', 101, '8172262622'),
(202, 'Priya Verma', 102, '9272726253'),
(203, 'Rahul Patel', 103, '8172262623'),
(204, 'Neha Singh', 104, '9272726254'),
(205, 'Rohit Kumar', 105, '8172262624');


-- DISPLAY SUBJECT_TEACHER TABLE

SELECT * FROM subject_teacher;


-- =====================================================
-- STEP 3 :- JOIN BOTH TABLES
-- =====================================================

SELECT
    subject.subject_id,
    subject.subject_name,
    subject.subject_code,
    subject.subject_fee,
    subject_teacher.teacher_id,
    subject_teacher.teacher_name,
    subject_teacher.teacher_mobile
FROM subject
INNER JOIN subject_teacher
ON subject.subject_id = subject_teacher.subject_id;

-- ___________________________________________________________________________________________________________


-- =====================================================
-- SHOP TABLE
-- PRIMARY KEY, CANDIDATE KEY AND FOREIGN KEY
-- =====================================================


-- =====================================================
-- STEP 1 :- SHOP TABLE
-- =====================================================

CREATE TABLE shop(
    product_id INT PRIMARY KEY,
    product_code INT UNIQUE,
    product_name VARCHAR(50),
    product_price INT
);

-- product_id IS PRIMARY KEY
-- product_id IS ALSO A CANDIDATE KEY
-- product_code IS CANDIDATE KEY
-- product_code IS ALSO AN ALTERNATE KEY
-- product_code IS UNIQUE KEY


-- INSERT DATA INTO SHOP TABLE

INSERT INTO shop(product_id, product_code, product_name, product_price)
VALUES
(101, 1001, 'Laptop', 45000),
(102, 1002, 'Mobile', 15000),
(103, 1003, 'Keyboard', 1200),
(104, 1004, 'Mouse', 500),
(105, 1005, 'Monitor', 12000);


-- DISPLAY SHOP TABLE

SELECT * FROM shop;


-- =====================================================
-- STEP 2 :- SHOP_CUSTOMER TABLE
-- =====================================================

CREATE TABLE shop_customer(
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(50),
    product_id INT,
    customer_mobile VARCHAR(10) UNIQUE,
    FOREIGN KEY (product_id) REFERENCES shop(product_id)
);

-- customer_id IS PRIMARY KEY
-- customer_id IS ALSO A CANDIDATE KEY
-- customer_mobile IS CANDIDATE KEY
-- customer_mobile IS ALSO AN ALTERNATE KEY
-- customer_mobile IS UNIQUE KEY
-- product_id IS FOREIGN KEY
-- product_id REFERENCES product_id OF SHOP TABLE


-- INSERT DATA INTO SHOP_CUSTOMER TABLE

INSERT INTO shop_customer(customer_id, customer_name, product_id, customer_mobile)
VALUES
(201, 'Amit Sharma', 101, '8172262622'),
(202, 'Priya Verma', 102, '9272726253'),
(203, 'Rahul Patel', 103, '8172262623'),
(204, 'Neha Singh', 104, '9272726254'),
(205, 'Rohit Kumar', 105, '8172262624');


-- DISPLAY SHOP_CUSTOMER TABLE

SELECT * FROM shop_customer;


-- =====================================================
-- STEP 3 :- JOIN BOTH TABLES
-- =====================================================

SELECT
    shop.product_id,
    shop.product_name,
    shop.product_code,
    shop.product_price,
    shop_customer.customer_id,
    shop_customer.customer_name,
    shop_customer.customer_mobile
FROM shop
INNER JOIN shop_customer
ON shop.product_id = shop_customer.product_id;


-- _____________________________________________________________________________________________________


-- =====================================================
-- HOSPITAL TABLE
-- PRIMARY KEY, CANDIDATE KEY AND FOREIGN KEY
-- =====================================================


-- =====================================================
-- STEP 1 :- HOSPITAL TABLE
-- =====================================================

CREATE TABLE hospital(
    hospital_id INT PRIMARY KEY,
    hospital_code INT UNIQUE,
    hospital_name VARCHAR(100),
    hospital_city VARCHAR(50)
);

-- hospital_id IS PRIMARY KEY
-- hospital_id IS ALSO A CANDIDATE KEY
-- hospital_code IS CANDIDATE KEY
-- hospital_code IS ALSO AN ALTERNATE KEY
-- hospital_code IS UNIQUE KEY


-- INSERT DATA INTO HOSPITAL TABLE

INSERT INTO hospital(hospital_id, hospital_code, hospital_name, hospital_city)
VALUES
(101, 1001, 'City Hospital', 'Gwalior'),
(102, 1002, 'Life Care Hospital', 'Delhi'),
(103, 1003, 'Sunrise Hospital', 'Mumbai'),
(104, 1004, 'Apex Hospital', 'Bhopal'),
(105, 1005, 'Medicare Hospital', 'Jaipur');


-- DISPLAY HOSPITAL TABLE

SELECT * FROM hospital;


-- =====================================================
-- STEP 2 :- HOSPITAL_PATIENT TABLE
-- =====================================================

CREATE TABLE hospital_patient(
    patient_id INT PRIMARY KEY,
    patient_name VARCHAR(50),
    hospital_id INT,
    patient_mobile VARCHAR(10) UNIQUE,
    FOREIGN KEY (hospital_id) REFERENCES hospital(hospital_id)
);

-- patient_id IS PRIMARY KEY
-- patient_id IS ALSO A CANDIDATE KEY
-- patient_mobile IS CANDIDATE KEY
-- patient_mobile IS ALSO AN ALTERNATE KEY
-- patient_mobile IS UNIQUE KEY
-- hospital_id IS FOREIGN KEY
-- hospital_id REFERENCES hospital_id OF HOSPITAL TABLE


-- INSERT DATA INTO HOSPITAL_PATIENT TABLE

INSERT INTO hospital_patient(patient_id, patient_name, hospital_id, patient_mobile)
VALUES
(201, 'Amit Sharma', 101, '8172262622'),
(202, 'Priya Verma', 102, '9272726253'),
(203, 'Rahul Patel', 101, '8172262623'),
(204, 'Neha Singh', 103, '9272726254'),
(205, 'Rohit Kumar', 104, '8172262624'),
(206, 'Pooja Gupta', 105, '8172262625'),
(207, 'Anjali Mehta', 102, '9272726256');


-- DISPLAY HOSPITAL_PATIENT TABLE

SELECT * FROM hospital_patient;


-- =====================================================
-- STEP 3 :- JOIN BOTH TABLES
-- =====================================================

SELECT
    hospital.hospital_id,
    hospital.hospital_code,
    hospital.hospital_name,
    hospital.hospital_city,
    hospital_patient.patient_id,
    hospital_patient.patient_name,
    hospital_patient.patient_mobile
FROM hospital
INNER JOIN hospital_patient
ON hospital.hospital_id = hospital_patient.hospital_id;

--___________________________________________________________________________________


-- =====================================================
-- Example :- MANAGER AND DEPARTMENT TABLE
-- PRIMARY KEY, FOREIGN KEY AND INNER JOIN
-- =====================================================


-- STEP 1 :- CREATE MANAGER TABLE

CREATE TABLE Manager_Table(
    Manager_Id INT PRIMARY KEY,          -- PRIMARY KEY
    Manager_Name VARCHAR(50),
    Age INT,
    Department_Id INT,                   -- FOREIGN KEY
    Salary INT,
    City VARCHAR(50)
);

-- Manager_Id :- Primary Key
-- Department_Id :- Foreign Key
-- Manager_Id uniquely identifies each manager.


-- STEP 2 :- DISPLAY MANAGER TABLE

SELECT * FROM Manager_Table;


-- STEP 3 :- INSERT VALUES INTO MANAGER TABLE

INSERT INTO Manager_Table
(Manager_Id, Manager_Name, Age, Department_Id, Salary, City)
VALUES
(101, 'Rohit', 28, 102, 55000, 'Indore'),
(102, 'Amit', 35, 101, 50000, 'Bhopal'),
(103, 'Priya', 27, 103, 40000, 'Delhi'),
(104, 'Sneha', 32, 104, 45000, 'Mumbai'),
(105, 'Shubham', 38, 105, 60000, 'Pune'),
(106, 'David', 27, 104, 50000, 'Delhi');


-- STEP 4 :- DISPLAY MANAGER RECORDS

SELECT * FROM Manager_Table;


-- STEP 5 :- CREATE DEPARTMENT TABLE

CREATE TABLE Department_Table(
    Department_Id INT PRIMARY KEY,       -- PRIMARY KEY
    Department_Name VARCHAR(50),
    Department_Location VARCHAR(50),
    Department_Budget BIGINT,
    Department_Head VARCHAR(50)
);

-- Department_Id :- Primary Key
-- It uniquely identifies each department.


-- STEP 6 :- DISPLAY DEPARTMENT TABLE

SELECT * FROM Department_Table;


-- STEP 7 :- INSERT VALUES INTO DEPARTMENT TABLE

INSERT INTO Department_Table
(Department_Id, Department_Name, Department_Location,
 Department_Budget, Department_Head)
VALUES
(101, 'HR', 'Delhi', 500000, 'Anjali'),
(102, 'IT', 'Mumbai', 800000, 'Rohit'),
(103, 'Finance', 'Patna', 600000, 'Sneha'),
(104, 'Marketing', 'Pune', 700000, 'Aman'),
(105, 'Sales', 'Noida', 400000, 'Priya');


-- STEP 8 :- DISPLAY DEPARTMENT RECORDS

SELECT * FROM Department_Table;


-- STEP 9 :- ADD FOREIGN KEY CONSTRAINT

ALTER TABLE Manager_Table
ADD CONSTRAINT fk_department
FOREIGN KEY (Department_Id)
REFERENCES Department_Table(Department_Id);

-- Department_Id in Manager_Table :- Foreign Key
-- Department_Id in Department_Table :- Primary Key
-- Foreign Key connects both tables.


-- STEP 10 :- INNER JOIN

SELECT
    Manager_Table.Manager_Id,
    Manager_Table.Manager_Name,
    Manager_Table.Age,
    Manager_Table.Department_Id,
    Manager_Table.Salary,
    Manager_Table.City,
    Department_Table.Department_Id,
    Department_Table.Department_Name,
    Department_Table.Department_Location,
    Department_Table.Department_Budget,
    Department_Table.Department_Head

FROM Manager_Table

INNER JOIN Department_Table

ON Manager_Table.Department_Id =
   Department_Table.Department_Id;


-- =====================================================
-- END OF MANAGER AND DEPARTMENT TABLE
-- =====================================================




-- =====================================================
-- END OF SUBJECT TABLE EXAMPLE
-- =====================================================

