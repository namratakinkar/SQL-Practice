

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





-- =====================================================
-- END OF SUBJECT TABLE EXAMPLE
-- =====================================================

