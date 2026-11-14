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