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
RENAME COLUMN subject to teacher_subject;

ALTER TABLE teacher
ALTER COLUMN teacher_name type VARCHAR(100);

ALTER TABLE teacher
DROP COLUMN city;

ALTER TABLE teacher
RENAME to teacher_details;

TRUNCATE TABLE teacher_details;

DROP TABLE teacher_details;

-- ____________________________________________________________________________________________________






