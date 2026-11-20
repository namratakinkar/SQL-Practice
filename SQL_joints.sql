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
-- END OF CUSTOMER AND CUSTOMER_ORDER TABLE
-- =====================================================
