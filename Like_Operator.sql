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
--   Example :- 1
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
--    Example :- 2
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