-- ==============================================
--   SQL JOINTS
-- ==============================================

-- ==================================================
--  USE CASE OF JOIN
-- ==================================================

-- ==>whenever we need to display combined data of more than one table in that case we can join

-- ==> it is used to marge data of two table 

-- =======================================
-- TYPES OF JOIN :-
-- =======================================

-- 1. Left join 

-- ==> In this case left table data in can't be null

-- 2. Right join

-- ==> In this case right table data can be null

-- 3. Inner Join

-- ==> In this case out put be only matched data according to the given condition

-- ==> In this case we can't show null data 

-- 4. Outer Join

-- ==> If no matching record is found in either table, NULL values are returned for the missing side.

-- ==> FULL OUTER JOIN returns all records from both tables.

-- IMPORTANT POINTS

-- JOIN combines data from multiple tables.

-- A common column is generally used to connect two tables.

-- ON keyword is used to specify the joining condition.

-- JOIN helps to retrieve related information from different tables.

-- =======================================
--  EXAMPLES
-- =======================================

-- =====================================================
-- Example 1 :- EMPLOYEE AND EMPLOYEE_SALARY TABLE
-- JOIN COMMANDS
-- =====================================================


-- STEP 1 :- DISPLAY EMPLOYEE TABLE

SELECT * FROM employee;


-- STEP 2 :- CREATE EMPLOYEE_SALARY TABLE

CREATE TABLE employee_salary (
    employee_id INT,
    salary INT,
    city VARCHAR(50)
);


-- STEP 3 :- INSERT DATA INTO EMPLOYEE_SALARY TABLE

INSERT INTO employee_salary (employee_id, salary, city)
VALUES
(1, 25000, 'Bhopal'),
(3, 30000, 'Indore'),
(4, 35000, 'Jabalpur'),
(5, 40000, 'Delhi'),
(6, 45000, 'Mumbai'),
(7, 50000, 'Pune'),
(20, 55000, 'Nagpur');


-- STEP 4 :- DISPLAY EMPLOYEE_SALARY TABLE

SELECT * FROM employee_salary;


-- STEP 5 :- LEFT JOIN

SELECT
    employee.employee_id,
    employee.employee_name,
    employee.department,
    employee_salary.salary,
    employee_salary.city
FROM employee
LEFT JOIN employee_salary
ON employee.employee_id = employee_salary.employee_id;


-- STEP 6 :- RIGHT JOIN

SELECT
    employee.employee_id,
    employee.employee_name,
    employee.department,
    employee_salary.salary,
    employee_salary.city
FROM employee
RIGHT JOIN employee_salary
ON employee.employee_id = employee_salary.employee_id;


-- STEP 7 :- INNER JOIN

SELECT
    employee.employee_id,
    employee.employee_name,
    employee.department,
    employee_salary.salary,
    employee_salary.city
FROM employee
INNER JOIN employee_salary
ON employee.employee_id = employee_salary.employee_id;

-- ________________________________________________________________________________________________________

-- =====================================================
-- Example 2 :- STUDENT AND STUDENT_MARKS TABLE
-- JOIN COMMANDS
-- =====================================================


-- STEP 1 :- DISPLAY STUDENT TABLE

SELECT * FROM student;


-- STEP 2 :- CREATE STUDENT_MARKS TABLE

CREATE TABLE student_marks (
    student_id INT,
    marks INT,
    subject VARCHAR(50)
);


-- STEP 3 :- INSERT DATA INTO STUDENT_MARKS TABLE

INSERT INTO student_marks (student_id, marks, subject)
VALUES
(1, 85, 'English'),
(3, 90, 'Maths'),
(4, 75, 'Science'),
(5, 88, 'Hindi'),
(6, 95, 'Computer'),
(7, 80, 'English'),
(20, 70, 'Maths');


-- STEP 4 :- DISPLAY STUDENT_MARKS TABLE

SELECT * FROM student_marks;


-- STEP 5 :- LEFT JOIN

SELECT
    student.student_id,
    student.student_name,
    student.city,
    student_marks.marks,
    student_marks.subject
FROM student
LEFT JOIN student_marks
ON student.student_id = student_marks.student_id;


-- STEP 6 :- RIGHT JOIN

SELECT
    student.student_id,
    student.student_name,
    student.city,
    student_marks.marks,
    student_marks.subject
FROM student
RIGHT JOIN student_marks
ON student.student_id = student_marks.student_id;


-- STEP 7 :- INNER JOIN

SELECT
    student.student_id,
    student.student_name,
    student.city,
    student_marks.marks,
    student_marks.subject
FROM student
INNER JOIN student_marks
ON student.student_id = student_marks.student_id;

-- _________________________________________________________________________________________________________


-- =====================================================
-- Example 3 :- CUSTOMER AND CUSTOMER_ORDER TABLE
-- JOIN COMMANDS
-- =====================================================


-- STEP 1 :- DISPLAY CUSTOMER TABLE

SELECT * FROM customer;


-- STEP 2 :- CREATE CUSTOMER_ORDER TABLE

CREATE TABLE customer_order (
    customer_id INT,
    order_id INT,
    product_name VARCHAR(50),
    amount INT
);


-- STEP 3 :- INSERT DATA INTO CUSTOMER_ORDER TABLE

INSERT INTO customer_order (customer_id, order_id, product_name, amount)
VALUES
(1, 101, 'Laptop', 45000),
(3, 102, 'Mobile', 25000),
(4, 103, 'Keyboard', 1500),
(5, 104, 'Mouse', 800),
(6, 105, 'Monitor', 12000),
(7, 106, 'Printer', 15000),
(20, 107, 'Headphones', 2000);


-- STEP 4 :- DISPLAY CUSTOMER_ORDER TABLE

SELECT * FROM customer_order;


-- STEP 5 :- LEFT JOIN

SELECT
    customer.customer_id,
    customer.customer_name,
    customer.city,
    customer_order.order_id,
    customer_order.product_name,
    customer_order.amount
FROM customer
LEFT JOIN customer_order
ON customer.customer_id = customer_order.customer_id;


-- STEP 6 :- RIGHT JOIN

SELECT
    customer.customer_id,
    customer.customer_name,
    customer.city,
    customer_order.order_id,
    customer_order.product_name,
    customer_order.amount
FROM customer
RIGHT JOIN customer_order
ON customer.customer_id = customer_order.customer_id;


-- STEP 7 :- INNER JOIN

SELECT
    customer.customer_id,
    customer.customer_name,
    customer.city,
    customer_order.order_id,
    customer_order.product_name,
    customer_order.amount
FROM customer
INNER JOIN customer_order
ON customer.customer_id = customer_order.customer_id;

--______________________________________________________________________________________________________


-- =====================================================
-- Example 4 :- TEACHER AND TEACHER_SALARY TABLE
-- JOIN COMMANDS
-- =====================================================


-- STEP 1 :- DISPLAY TEACHER TABLE

SELECT * FROM teacher;


-- STEP 2 :- CREATE TEACHER_SALARY TABLE

CREATE TABLE teacher_salary (
    teacher_id INT,
    salary INT,
    subject VARCHAR(50)
);


-- STEP 3 :- INSERT DATA INTO TEACHER_SALARY TABLE

INSERT INTO teacher_salary (teacher_id, salary, subject)
VALUES
(1, 25000, 'English'),
(3, 30000, 'Maths'),
(4, 35000, 'Science'),
(5, 40000, 'Computer'),
(6, 45000, 'Hindi'),
(7, 50000, 'Physics'),
(20, 55000, 'Chemistry');


-- STEP 4 :- DISPLAY TEACHER_SALARY TABLE

SELECT * FROM teacher_salary;


-- STEP 5 :- LEFT JOIN

SELECT
    teacher.teacher_id,
    teacher.teacher_name,
    teacher.department,
    teacher_salary.salary,
    teacher_salary.subject
FROM teacher
LEFT JOIN teacher_salary
ON teacher.teacher_id = teacher_salary.teacher_id;


-- STEP 6 :- RIGHT JOIN

SELECT
    teacher.teacher_id,
    teacher.teacher_name,
    teacher.department,
    teacher_salary.salary,
    teacher_salary.subject
FROM teacher
RIGHT JOIN teacher_salary
ON teacher.teacher_id = teacher_salary.teacher_id;


-- STEP 7 :- INNER JOIN

SELECT
    teacher.teacher_id,
    teacher.teacher_name,
    teacher.department,
    teacher_salary.salary,
    teacher_salary.subject
FROM teacher
INNER JOIN teacher_salary
ON teacher.teacher_id = teacher_salary.teacher_id;

-- _________________________________________________________________________________________________________

-- =====================================================
-- Example 5 :- LOAN AND LOAN_CUSTOMER TABLE
-- JOIN COMMANDS
-- =====================================================

CREATE TABLE loan(
    loan_id INT,
    loan_type VARCHAR(50),
    loan_status VARCHAR(50)
);

SELECT * FROM loan;

INSERT INTO loan(loan_id, loan_type, loan_status)
VALUES
(1, 'Home Loan', 'Approved'),
(2, 'Car Loan', 'Pending'),
(3, 'Personal Loan', 'Approved'),
(4, 'Education Loan', 'Rejected'),
(5, 'Business Loan', 'Pending');

SELECT * FROM loan;

CREATE TABLE loan_customer(
    loan_id INT,
    customer_name VARCHAR(50),
    loan_amount INT
);

SELECT * FROM loan_customer;

INSERT INTO loan_customer(loan_id, customer_name, loan_amount)
VALUES
(1, 'Rahul Sharma', 50000),
(2, 'Priya Verma', 75000),
(3, 'Amit Patel', 100000),
(5, 'Neha Singh', 25000),
(6, 'Rohit Kumar', 150000);

SELECT * FROM loan_customer;

-- LEFT JOIN (ALL RECORDS FROM LEFT TABLE)

SELECT
    loan.loan_id,
    loan.loan_type,
    loan.loan_status,
    loan_customer.customer_name,
    loan_customer.loan_amount
FROM loan
LEFT JOIN loan_customer
ON loan.loan_id = loan_customer.loan_id;

-- RIGHT JOIN (ALL RECORDS FROM RIGHT TABLE)

SELECT
    loan.loan_id,
    loan.loan_type,
    loan.loan_status,
    loan_customer.customer_name,
    loan_customer.loan_amount
FROM loan
RIGHT JOIN loan_customer
ON loan.loan_id = loan_customer.loan_id;

-- INNER JOIN (ONLY MATCHED RECORDS)

SELECT
    loan.loan_id,
    loan.loan_type,
    loan.loan_status,
    loan_customer.customer_name,
    loan_customer.loan_amount
FROM loan
INNER JOIN loan_customer
ON loan.loan_id = loan_customer.loan_id;

-- FULL OUTER JOIN (ALL MATCHED AND UNMATCHED RECORDS)

SELECT
    loan.loan_id,
    loan.loan_type,
    loan.loan_status,
    loan_customer.customer_name,
    loan_customer.loan_amount
FROM loan
FULL OUTER JOIN loan_customer
ON loan.loan_id = loan_customer.loan_id;

-- ______________________________________________________________________________________________________

-- =====================================================
-- END OF CUSTOMER AND CUSTOMER_ORDER TABLE
-- =====================================================

-- =====================================================
-- Example 6 :- SUBJECT AND SUBJECT_TEACHER TABLE
-- JOIN COMMANDS
-- =====================================================

CREATE TABLE subject(
    subject_id INT,
    subject_name VARCHAR(50),
    subject_code INT
);

SELECT * FROM subject;

INSERT INTO subject(subject_id, subject_name, subject_code)
VALUES
(1, 'Python', 101),
(2, 'Java', 102),
(3, 'SQL', 103),
(4, 'C Programming', 104),
(5, 'Web Development', 105);

SELECT * FROM subject;

CREATE TABLE subject_teacher(
    subject_id INT,
    teacher_name VARCHAR(50),
    subject_fee INT
);

SELECT * FROM subject_teacher;

INSERT INTO subject_teacher(subject_id, teacher_name, subject_fee)
VALUES
(1, 'Amit Sharma', 5000),
(2, 'Priya Verma', 4500),
(3, 'Rahul Patel', 3000),
(5, 'Neha Singh', 6000),
(6, 'Rohit Kumar', 3500);

SELECT * FROM subject_teacher;


-- LEFT JOIN (ALL RECORDS FROM LEFT TABLE)

SELECT
    subject.subject_id,
    subject.subject_name,
    subject.subject_code,
    subject_teacher.teacher_name,
    subject_teacher.subject_fee
FROM subject
LEFT JOIN subject_teacher
ON subject.subject_id = subject_teacher.subject_id;


-- RIGHT JOIN (ALL RECORDS FROM RIGHT TABLE)

SELECT
    subject.subject_id,
    subject.subject_name,
    subject.subject_code,
    subject_teacher.teacher_name,
    subject_teacher.subject_fee
FROM subject
RIGHT JOIN subject_teacher
ON subject.subject_id = subject_teacher.subject_id;


-- INNER JOIN (ONLY MATCHED RECORDS)

SELECT
    subject.subject_id,
    subject.subject_name,
    subject.subject_code,
    subject_teacher.teacher_name,
    subject_teacher.subject_fee
FROM subject
INNER JOIN subject_teacher
ON subject.subject_id = subject_teacher.subject_id;


-- FULL OUTER JOIN (ALL MATCHED AND UNMATCHED RECORDS)

SELECT
    subject.subject_id,
    subject.subject_name,
    subject.subject_code,
    subject_teacher.teacher_name,
    subject_teacher.subject_fee
FROM subject
FULL OUTER JOIN subject_teacher
ON subject.subject_id = subject_teacher.subject_id;


-- ______________________________________________________________________________________________________