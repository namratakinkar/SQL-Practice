--  ========================
--  DML
--  =======================


--  =============================================
--  DML(Data manipulation language ) :-
--  =============================================

--  ==> It is row related 
-- ==> it is used to manipulate to data of any table 
-- ==>it is used to manipulate row data of any table

-- ==============================
-- DML COMMANDS
-- ==============================
-- 1. INSERT :- 
--    => It is used to insert the data into the table.

-- 2. UPDATE :- 
--    => It is used to update the data of any table.

-- 3. DELETE :-
--    => It is used to delete the data of any table.

-- 4. SELECT :- 
--    => It is used to select the data of any table.

-- Select is a DQL (Data Query Language) command.

-- _________________________________________________________________________________________

-- ===================
-- Examples :-
-- ===================

-- -- Example 1: SCHOOL TABLE

INSERT INTO school (school_id, school_name, city)
VALUES
(1, 'ABC School', 'Pune'),
(2, 'XYZ School', 'Bhopal'),
(3, 'New School', 'Indore'),
(4, 'Bright School', 'Delhi'),
(5, 'Smart School', 'Mumbai');

-- DQL Command
SELECT * FROM school;

-- DML Command
UPDATE school
SET city = 'Nagpur'
WHERE school_id = 1;

SELECT * FROM school;

-- DML Command
DELETE FROM school
WHERE school_id = 2;

SELECT * FROM school;

-- ___________________________________________________________________________________________

-- -- Example 2: STUDENT TABLE

INSERT INTO student (student_id, student_name, course)
VALUES
(1, 'Rahul', 'B.Tech'),
(2, 'Amit', 'BCA'),
(3, 'Neha', 'B.Sc'),
(4, 'Rohit', 'MCA'),
(5, 'Priya', 'B.Tech');

SELECT * FROM student;

UPDATE student
SET course = 'MCA'
WHERE student_id = 3;

SELECT * FROM student;

DELETE FROM student
WHERE student_id = 2;

SELECT * FROM student;

-- ___________________________________________________________________________________


-- -- Example 3: TEACHER TABLE

INSERT INTO teacher (teacher_id, teacher_name, subject)
VALUES
(1, 'Ramesh', 'Maths'),
(2, 'Suresh', 'English'),
(3, 'Pooja', 'Science'),
(4, 'Anita', 'Hindi'),
(5, 'Rajesh', 'Computer');

SELECT * FROM teacher;

UPDATE teacher
SET subject = 'Physics'
WHERE teacher_id = 3;

SELECT * FROM teacher;

DELETE FROM teacher
WHERE teacher_id = 2;

SELECT * FROM teacher;

-- ____________________________________________________________________________________



-- -- Example 4: WORKER TABLE

INSERT INTO worker (worker_id, worker_name, department)
VALUES
(1, 'Rahul', 'HR'),
(2, 'Amit', 'Sales'),
(3, 'Neha', 'Finance'),
(4, 'Rohit', 'Marketing'),
(5, 'Priya', 'IT');

SELECT * FROM worker;

UPDATE worker
SET department = 'IT'
WHERE worker_id = 3;

SELECT * FROM worker;

DELETE FROM worker
WHERE worker_id = 2;

SELECT * FROM worker;


-- ______________________________________________________________________________________



-- -- Example 5: EMPLOYEE TABLE

INSERT INTO employee (employee_id, employee_name, department)
VALUES
(1, 'Karan', 'IT'),
(2, 'Mohit', 'HR'),
(3, 'Simran', 'Sales'),
(4, 'Riya', 'Finance'),
(5, 'Arjun', 'Marketing');

SELECT * FROM employee;

UPDATE employee
SET department = 'IT'
WHERE employee_id = 2;

SELECT * FROM employee;

DELETE FROM employee
WHERE employee_id = 3;

SELECT * FROM employee;


-- _______________________________________________________________________________________


-- Example 6 :- CUSTOMER TABLE

INSERT INTO customer(customer_id, customer_name, city)
VALUES
(1, 'Neha', 'Bhopal'),
(2, 'Ravi', 'Indore'),
(3, 'Karan', 'Pune'),
(4, 'Priya', 'Delhi'),
(5, 'Pari', 'Mumbai');

SELECT * FROM customer;

UPDATE customer
SET city = 'Bhopal'
WHERE customer_id = 3;

SELECT * FROM customer;

DELETE FROM customer
WHERE customer_id = 3;

SELECT * FROM customer;

-- ________________________________________________________________________________________


--  Example 7 :- BOOK TABLE

INSERT INTO book(book_id, book_name, author)
VALUES
(1, 'Python Basic', 'John'),
(2, 'SQL Guide', 'Robert'),
(3, 'Java Basic', 'David'),
(4, 'C Programming', 'Peter'),
(5, 'AI Learning', 'Smith');

SELECT * FROM book;

UPDATE book
SET author = 'Amit'
WHERE book_id = 5;

SELECT * FROM book;

DELETE FROM book
WHERE book_id = 4;

SELECT * FROM book;

-- ________________________________________________________________________________________


-- Example 8:- HOSPITAL TABLE

INSERT INTO hospital(hospital_id, hospital_name, city)
VALUES
(1, 'City Hospital', 'Bhopal'),
(2, 'Care Hospital', 'Pune'),
(3, 'Life Hospital', 'Delhi'),
(4, 'Health Hospital', 'Mumbai'),
(5, 'Sun Hospital', 'Indore');

UPDATE hospital
SET city = 'Nagpur'
WHERE hospital_id = 3;

SELECT * FROM hospital;

DELETE FROM hospital
WHERE hospital_id = 4;


-- _____________________________________________________________________________________________


-- Example 9:- PRODUCT TABLE

INSERT INTO product(product_id, product_name, category)
VALUES
(1, 'Laptop', 'Electronics'),
(2, 'Mobile', 'Electronics'),
(3, 'Chair', 'Furniture'),
(4, 'Table', 'Furniture'),
(5, 'Shoes', 'Fashion');

UPDATE product
SET category = 'Technology'
WHERE product_id = 1;

SELECT * FROM product;

DELETE FROM product
WHERE product_id = 3;


-- ____________________________________________________________________________________________


-- Example 10: BANK TABLE

INSERT INTO bank (account_id, customer_name, bank_name)
VALUES
(1, 'Rahul', 'SBI'),
(2, 'Amit', 'BOB'),
(3, 'Neha', 'HDFC'),
(4, 'Rohit', 'ICICI'),
(5, 'Priya', 'SBI');

SELECT * FROM bank;

UPDATE bank
SET bank_name = 'PNB'
WHERE account_id = 3;

SELECT * FROM bank;

DELETE FROM bank
WHERE account_id = 2;

SELECT * FROM bank;

-- ______________________________________________________________________________________________


-- Example 11: EMPLOYEE TABLE

INSERT INTO employee (employee_id, employee_name, salary, department)
VALUES
(1, 'Ankit', 25000, 'HR'),
(2, 'Sneha', 30000, 'IT'),
(3, 'Vikas', 28000, 'Sales'),
(4, 'Pooja', 35000, 'Finance'),
(5, 'Karan', 32000, 'IT');

SELECT * FROM employee;

UPDATE employee
SET salary = 40000
WHERE employee_id = 3;

SELECT * FROM employee;

DELETE FROM employee
WHERE employee_id = 5;

SELECT * FROM employee;

-- ______________________________________________________________________________________________


-- Example 12: PRODUCT TABLE

INSERT INTO product (product_id, product_name, price, category)
VALUES
(1, 'Laptop', 45000, 'Electronics'),
(2, 'Mouse', 500, 'Accessories'),
(3, 'Keyboard', 1200, 'Accessories'),
(4, 'Mobile', 20000, 'Electronics'),
(5, 'Headphone', 1500, 'Accessories');

SELECT * FROM product;

UPDATE product
SET price = 550
WHERE product_id = 2;

SELECT * FROM product;

DELETE FROM product
WHERE product_id = 4;

SELECT * FROM product;

-- _____________________________________________________________________________________________
