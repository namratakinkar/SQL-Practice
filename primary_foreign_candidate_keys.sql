

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
