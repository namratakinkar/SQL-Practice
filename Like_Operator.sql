-- ============================================
--  LIKE OPERATOR
-- ============================================


-- The LIKE operator is used in SQL to search for a specific pattern in a column.

-- % (Percent): Represents zero, one, or multiple characters.
-- _ (Underscore): Represents exactly one character.

-- A%  = STARTS WITH A

-- %A =  ENDS WITH A

-- %AB% = SUBSTRING 

-- ===================
--  EXAMPLES
-- ===================
-- =============================
--   Example 1 :- 
-- =============================
-- =====================================
-- 1. CREATE TABLE (DDL)
-- =====================================

CREATE TABLE student (
    student_id INT,
    student_name VARCHAR(50),
    marks INT
);


-- =====================================
-- 2. INSERT DATA (DML)
-- =====================================

INSERT INTO student (student_id, student_name, marks)
VALUES
(1, 'Aarav', 85),
(2, 'Abhishek', 90),
(3, 'Ananya', 78),
(4, 'Amit', 88),
(5, 'Akash', 75),
(6, 'Neha', 92),
(7, 'Priya', 80),
(8, 'Riya', 89),
(9, 'Saba', 84),
(10, 'Nisha', 73),
(11, 'Abdul', 76),
(12, 'Abbas', 91),
(13, 'Kabir', 87),
(14, 'Shabana', 82),
(15, 'Zabir', 95);


-- =====================================
-- 3. SELECT ALL DATA (DQL)
-- =====================================

SELECT * FROM student;


-- =====================================
-- 4. LIKE OPERATOR (A%)
-- Names starting with A
-- =====================================

-- Example 1
SELECT * FROM student
WHERE student_name LIKE 'A%';

-- Example 2
SELECT * FROM student
WHERE student_name LIKE 'Aa%';

-- Example 3
SELECT * FROM student
WHERE student_name LIKE 'Ab%';

-- Example 4
SELECT * FROM student
WHERE student_name LIKE 'An%';

-- Example 5
SELECT * FROM student
WHERE student_name LIKE 'Ak%';


-- =====================================
-- 5. LIKE OPERATOR (%a)
-- Names ending with a
-- =====================================

-- Example 1
SELECT * FROM student
WHERE student_name LIKE '%a';

-- Example 2
SELECT * FROM student
WHERE student_name LIKE '%ha';

-- Example 3
SELECT * FROM student
WHERE student_name LIKE '%ya';

-- Example 4
SELECT * FROM student
WHERE student_name LIKE '%ba';

-- Example 5
SELECT * FROM student
WHERE student_name LIKE '%na';


-- =====================================
-- 6. LIKE OPERATOR (%ab%)
-- Names containing ab
-- =====================================

-- Example 1
SELECT * FROM student
WHERE student_name LIKE '%ab%';

-- Example 2
SELECT * FROM student
WHERE student_name LIKE 'Ab%';

-- Example 3
SELECT * FROM student
WHERE student_name LIKE '%ab';

-- Example 4
SELECT * FROM student
WHERE student_name LIKE '%aba%';

-- Example 5
SELECT * FROM student
WHERE student_name LIKE '%abi%';

-- ___________________________________________________________________


-- ==================================
--    Example 2 :- 
-- ==================================

-- =====================================
-- 1. CREATE TABLE (DDL)
-- =====================================

CREATE TABLE employee (
    employee_id INT,
    employee_name VARCHAR(50),
    salary INT
);


-- =====================================
-- 2. INSERT DATA (DML)
-- =====================================

INSERT INTO employee (employee_id, employee_name, salary)
VALUES
(1, 'Aarav', 25000),
(2, 'Abhishek', 30000),
(3, 'Ananya', 28000),
(4, 'Aakash', 35000),
(5, 'Akash', 32000),
(6, 'Neha', 27000),
(7, 'Priya', 29000),
(8, 'Riya', 31000),
(9, 'Kavya', 26000),
(10, 'Pooja', 33000),
(11, 'Abdul', 40000),
(12, 'Abbas', 38000),
(13, 'Kabir', 36000),
(14, 'Zabir', 34000),
(15, 'Shabana', 37000);


-- =====================================
-- 3. SELECT ALL DATA (DQL)
-- =====================================

SELECT * FROM employee;


-- =====================================
-- 4. LIKE OPERATOR (A%)
-- Names starting with A
-- =====================================

-- Example 1
SELECT * FROM employee
WHERE employee_name LIKE 'A%';

-- Example 2
SELECT * FROM employee
WHERE employee_name LIKE 'Aa%';

-- Example 3
SELECT * FROM employee
WHERE employee_name LIKE 'Ab%';

-- Example 4
SELECT * FROM employee
WHERE employee_name LIKE 'An%';

-- Example 5
SELECT * FROM employee
WHERE employee_name LIKE 'Ak%';


-- =====================================
-- 5. LIKE OPERATOR (%a)
-- Names ending with a
-- =====================================

-- Example 1
SELECT * FROM employee
WHERE employee_name LIKE '%a';

-- Example 2
SELECT * FROM employee
WHERE employee_name LIKE '%ya';

-- Example 3
SELECT * FROM employee
WHERE employee_name LIKE '%ha';

-- Example 4
SELECT * FROM employee
WHERE employee_name LIKE '%na';

-- Example 5
SELECT * FROM employee
WHERE employee_name LIKE '%ja';


-- =====================================
-- 6. LIKE OPERATOR (%ab%)
-- Names containing ab
-- =====================================

-- Example 1
SELECT * FROM employee
WHERE employee_name LIKE '%ab%';

-- Example 2
SELECT * FROM employee
WHERE employee_name LIKE 'Ab%';

-- Example 3
SELECT * FROM employee
WHERE employee_name LIKE '%ab';

-- Example 4
SELECT * FROM employee
WHERE employee_name LIKE '%aba%';

-- Example 5
SELECT * FROM employee
WHERE employee_name LIKE '%abi%';

-- __________________________________________________________________


--  ================================
--    Example 3 :-
-- =====================================
-- 1. CREATE TABLE (DDL)
-- =====================================

CREATE TABLE product (
    product_id INT,
    product_name VARCHAR(50),
    price INT
);


-- =====================================
-- 2. INSERT DATA (DML)
-- =====================================

INSERT INTO product (product_id, product_name, price)
VALUES
(1, 'Apple', 50000),
(2, 'Android', 25000),
(3, 'Airpods', 12000),
(4, 'Adapter', 800),
(5, 'Acer Laptop', 45000),
(6, 'Mobile', 15000),
(7, 'Camera', 30000),
(8, 'Speaker', 5000),
(9, 'Printer', 10000),
(10, 'Charger', 700),
(11, 'Tablet', 18000),
(12, 'Cable', 300),
(13, 'Keyboard', 1200),
(14, 'Powerbank', 2000),
(15, 'Headphone', 2500);


-- =====================================
-- 3. SELECT ALL DATA (DQL)
-- =====================================

SELECT * FROM product;


-- =====================================
-- 4. LIKE OPERATOR (A%)
-- Product names starting with A
-- =====================================

-- Example 1
SELECT * FROM product
WHERE product_name LIKE 'A%';

-- Example 2
SELECT * FROM product
WHERE product_name LIKE 'Ap%';

-- Example 3
SELECT * FROM product
WHERE product_name LIKE 'Ad%';

-- Example 4
SELECT * FROM product
WHERE product_name LIKE 'An%';

-- Example 5
SELECT * FROM product
WHERE product_name LIKE 'Ac%';


-- =====================================
-- 5. LIKE OPERATOR (%e)
-- Product names ending with e
-- =====================================

-- Example 1
SELECT * FROM product
WHERE product_name LIKE '%e';

-- Example 2
SELECT * FROM product
WHERE product_name LIKE '%le';

-- Example 3
SELECT * FROM product
WHERE product_name LIKE '%le';

-- Example 4
SELECT * FROM product
WHERE product_name LIKE '%one';

-- Example 5
SELECT * FROM product
WHERE product_name LIKE '%ble';


-- =====================================
-- 6. LIKE OPERATOR (%ab%)
-- Product names containing ab
-- =====================================

-- Example 1
SELECT * FROM product
WHERE product_name LIKE '%ab%';

-- Example 2
SELECT * FROM product
WHERE product_name LIKE 'Tab%';

-- Example 3
SELECT * FROM product
WHERE product_name LIKE '%ab';

-- Example 4
SELECT * FROM product
WHERE product_name LIKE '%able%';

-- Example 5
SELECT * FROM product
WHERE product_name LIKE '%board%';

-- ________________________________________________________________________

--  ================================
--    Example 4 :-
-- =====================================
-- 1. CREATE TABLE (DDL)
-- =====================================

CREATE TABLE college (
    college_id INT,
    college_name VARCHAR(50),
    city VARCHAR(50)
);


-- =====================================
-- 2. INSERT DATA (DML)
-- =====================================

INSERT INTO college (college_id, college_name, city)
VALUES
(1, 'ABC College', 'Bhopal'),
(2, 'Apex College', 'Indore'),
(3, 'Amity College', 'Delhi'),
(4, 'Aryan College', 'Mumbai'),
(5, 'Anand College', 'Jaipur'),
(6, 'Modern College', 'Pune'),
(7, 'National College', 'Bhopal'),
(8, 'Royal College', 'Indore'),
(9, 'Global College', 'Delhi'),
(10, 'Sunrise College', 'Mumbai'),
(11, 'Abbas College', 'Bhopal'),
(12, 'Abdul College', 'Jaipur'),
(13, 'Kabir College', 'Pune'),
(14, 'Zabir College', 'Delhi'),
(15, 'Shabana College', 'Mumbai');


-- =====================================
-- 3. SELECT ALL DATA (DQL)
-- =====================================

SELECT * FROM college;


-- =====================================
-- 4. LIKE OPERATOR (A%)
-- College names starting with A
-- =====================================

-- Example 1
SELECT * FROM college
WHERE college_name LIKE 'A%';

-- Example 2
SELECT * FROM college
WHERE college_name LIKE 'Ab%';

-- Example 3
SELECT * FROM college
WHERE college_name LIKE 'Ap%';

-- Example 4
SELECT * FROM college
WHERE college_name LIKE 'Am%';

-- Example 5
SELECT * FROM college
WHERE college_name LIKE 'Ar%';


-- =====================================
-- 5. LIKE OPERATOR (%e)
-- College names ending with e
-- =====================================

-- Example 1
SELECT * FROM college
WHERE college_name LIKE '%e';

-- Example 2
SELECT * FROM college
WHERE college_name LIKE '%ge';

-- Example 3
SELECT * FROM college
WHERE college_name LIKE '%lege';

-- Example 4
SELECT * FROM college
WHERE college_name LIKE '%College';

-- Example 5
SELECT * FROM college
WHERE college_name LIKE '%rise';


-- =====================================
-- 6. LIKE OPERATOR (%ab%)
-- College names containing ab
-- =====================================

-- Example 1
SELECT * FROM college
WHERE college_name LIKE '%ab%';

-- Example 2
SELECT * FROM college
WHERE college_name LIKE 'Ab%';

-- Example 3
SELECT * FROM college
WHERE college_name LIKE '%ab';

-- Example 4
SELECT * FROM college
WHERE college_name LIKE '%aba%';

-- Example 5
SELECT * FROM college
WHERE college_name LIKE '%abi%';

-- ________________________________________________________________________


