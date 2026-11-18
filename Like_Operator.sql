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


--  ================================
--    Example 5 :-
-- =====================================
-- 1. CREATE TABLE (DDL)
-- =====================================

CREATE TABLE library (
    book_id INT,
    book_name VARCHAR(50),
    author_name VARCHAR(50)
);


-- =====================================
-- 2. INSERT DATA (DML)
-- =====================================

INSERT INTO library (book_id, book_name, author_name)
VALUES
(1, 'Apple Story', 'Rahul Sharma'),
(2, 'Amazing World', 'Amit Verma'),
(3, 'Adventure Book', 'Neha Gupta'),
(4, 'Animal Kingdom', 'Priya Singh'),
(5, 'Art of Coding', 'Ankit Jain'),
(6, 'Python Basics', 'Rohit Mehta'),
(7, 'Java Guide', 'Kavita Sharma'),
(8, 'Science World', 'Vikas Patel'),
(9, 'History Book', 'Pooja Verma'),
(10, 'Geography Guide', 'Nisha Gupta'),
(11, 'Abacus Learning', 'Abdul Khan'),
(12, 'Abbreviation Guide', 'Abbas Ali'),
(13, 'Kabir Dohe', 'Kabir Das'),
(14, 'Zabir Stories', 'Zabir Khan'),
(15, 'Shabana Diary', 'Shabana Khan');


-- =====================================
-- 3. SELECT ALL DATA (DQL)
-- =====================================

SELECT * FROM library;


-- =====================================
-- 4. LIKE OPERATOR (A%)
-- Book names starting with A
-- =====================================

-- Example 1
SELECT * FROM library
WHERE book_name LIKE 'A%';

-- Example 2
SELECT * FROM library
WHERE book_name LIKE 'Ap%';

-- Example 3
SELECT * FROM library
WHERE book_name LIKE 'Ab%';

-- Example 4
SELECT * FROM library
WHERE book_name LIKE 'Ad%';

-- Example 5
SELECT * FROM library
WHERE book_name LIKE 'An%';


-- =====================================
-- 5. LIKE OPERATOR (%e)
-- Book names ending with e
-- =====================================

-- Example 1
SELECT * FROM library
WHERE book_name LIKE '%e';

-- Example 2
SELECT * FROM library
WHERE book_name LIKE '%de';

-- Example 3
SELECT * FROM library
WHERE book_name LIKE '%ide';

-- Example 4
SELECT * FROM library
WHERE book_name LIKE '%Guide';

-- Example 5
SELECT * FROM library
WHERE book_name LIKE '%World';


-- =====================================
-- 6. LIKE OPERATOR (%ab%)
-- Book names containing ab
-- =====================================

-- Example 1
SELECT * FROM library
WHERE book_name LIKE '%ab%';

-- Example 2
SELECT * FROM library
WHERE book_name LIKE 'Ab%';

-- Example 3
SELECT * FROM library
WHERE book_name LIKE '%ab';

-- Example 4
SELECT * FROM library
WHERE book_name LIKE '%aba%';

-- Example 5
SELECT * FROM library
WHERE book_name LIKE '%abi%';

-- ________________________________________________________________________


-- =====================================================
-- Example 6 :- INSTITUTE TABLE
-- DDL, DML AND DQL COMMANDS
-- =====================================================


-- STEP 1 :- CREATE TABLE (DDL COMMAND)

CREATE TABLE institute(
    institute_id INT,
    institute_name VARCHAR(50),
    city VARCHAR(50),
    course_name VARCHAR(50),
    fees INT,
    duration VARCHAR(20)
);


-- STEP 2 :- DISPLAY TABLE DATA (DQL COMMAND)

SELECT * FROM institute;


-- STEP 3 :- INSERT DATA (DML COMMAND)

INSERT INTO institute(institute_id, institute_name, city, course_name, fees, duration)
VALUES
(1, 'Yunova Institute', 'Bhopal', 'Python', 8000, '3 Months'),
(2, 'Tech Academy', 'Indore', 'Web Development', 12000, '6 Months'),
(3, 'Bright Institute', 'Jabalpur', 'Tally', 5000, '2 Months'),
(4, 'Digital Learning Center', 'Delhi', 'Graphic Design', 7000, '4 Months'),
(5, 'Future Skills Academy', 'Mumbai', 'Data Science', 15000, '8 Months'),
(6, 'Smart Computer Institute', 'Pune', 'Java', 10000, '5 Months'),
(7, 'Global Education Center', 'Jaipur', 'C Programming', 4000, '2 Months'),
(8, 'Creative Learning Institute', 'Lucknow', 'Digital Marketing', 9000, '3 Months'),
(9, 'Advanced IT Academy', 'Nagpur', 'SQL Database', 6000, '3 Months'),
(10, 'Excel Training Center', 'Gwalior', 'Advanced Excel', 3500, '1 Month'),
(11, 'NextGen Institute', 'Chennai', 'Full Stack Development', 18000, '9 Months'),
(12, 'Career Point Academy', 'Kolkata', 'JavaScript', 7500, '4 Months'),
(13, 'Skill Development Center', 'Raipur', 'Python with Django', 11000, '5 Months'),
(14, 'Modern Computer Academy', 'Surat', 'MS Office', 3000, '2 Months'),
(15, 'Professional IT Institute', 'Hyderabad', 'Machine Learning', 20000, '10 Months');


-- STEP 4 :- DISPLAY INSERTED DATA (DQL COMMAND)

SELECT * FROM institute;


-- =====================================================
-- LIKE OPERATOR (A%) START WITH A
-- =====================================================

SELECT * FROM institute
WHERE institute_name LIKE 'A%';

SELECT * FROM institute
WHERE institute_name LIKE 'T%';

SELECT * FROM institute
WHERE institute_name LIKE 'M%';

SELECT * FROM institute
WHERE institute_name LIKE 'E%';

SELECT * FROM institute
WHERE institute_name LIKE 'G%';


-- =====================================================
-- LIKE OPERATOR (%a) ENDS WITH A
-- =====================================================

SELECT * FROM institute
WHERE institute_name LIKE '%a';

SELECT * FROM institute
WHERE institute_name LIKE '%e';

SELECT * FROM institute
WHERE institute_name LIKE '%r';

SELECT * FROM institute
WHERE institute_name LIKE '%y';

SELECT * FROM institute
WHERE institute_name LIKE '%g';


-- =====================================================
-- LIKE OPERATOR (%ab%) CONTAINS CHARACTERS
-- =====================================================

SELECT * FROM institute
WHERE institute_name LIKE '%ti%';

SELECT * FROM institute
WHERE institute_name LIKE '%rn%';

SELECT * FROM institute
WHERE institute_name LIKE '%ll%';

SELECT * FROM institute
WHERE institute_name LIKE '%oi%';

SELECT * FROM institute
WHERE institute_name LIKE '%ai%';

-- _______________________________________________________________________________


-- =====================================================
-- Example 7 :- STORE TABLE
-- DDL, DML AND DQL COMMANDS
-- =====================================================


-- STEP 1 :- CREATE TABLE (DDL COMMAND)

CREATE TABLE store(
    store_id INT,
    store_name VARCHAR(50),
    city VARCHAR(50),
    owner_name VARCHAR(50),
    contact_number VARCHAR(15),
    pincode INT
);


-- STEP 2 :- DISPLAY TABLE DATA (DQL COMMAND)

SELECT * FROM store;


-- STEP 3 :- INSERT DATA (DML COMMAND)

INSERT INTO store(store_id, store_name, city, owner_name, contact_number, pincode)
VALUES
(1, 'Apex General Store', 'Bhopal', 'Rahul Sharma', '9876543210', 462001),
(2, 'Tech Mart', 'Indore', 'Amit Verma', '9876543211', 452001),
(3, 'Modern Store', 'Jabalpur', 'Neha Patel', '9876543212', 482001),
(4, 'Evergreen Super Store', 'Delhi', 'Rohit Kumar', '9876543213', 110001),
(5, 'Global Shopping Center', 'Mumbai', 'Priya Singh', '9876543214', 400001),
(6, 'Royal General Store', 'Pune', 'Vikas Jain', '9876543215', 411001),
(7, 'Smart Mart', 'Jaipur', 'Ankit Gupta', '9876543216', 302001),
(8, 'Fresh Grocery Store', 'Lucknow', 'Pooja Verma', '9876543217', 226001),
(9, 'City Departmental Store', 'Nagpur', 'Suresh Patel', '9876543218', 440001),
(10, 'Elite Shopping Store', 'Gwalior', 'Karan Singh', '9876543219', 474001),
(11, 'Green Valley Store', 'Chennai', 'Ravi Kumar', '9876543220', 600001),
(12, 'Best Choice Store', 'Kolkata', 'Aman Khan', '9876543221', 700001),
(13, 'Daily Needs Store', 'Raipur', 'Nisha Sharma', '9876543222', 492001),
(14, 'Mega Mart', 'Surat', 'Deepak Shah', '9876543223', 395001),
(15, 'Fashion World Store', 'Hyderabad', 'Simran Kaur', '9876543224', 500001);


-- STEP 4 :- DISPLAY INSERTED DATA (DQL COMMAND)

SELECT * FROM store;


-- =====================================================
-- LIKE OPERATOR (A%) START WITH A
-- =====================================================

SELECT * FROM store
WHERE store_name LIKE 'A%';

SELECT * FROM store
WHERE store_name LIKE 'T%';

SELECT * FROM store
WHERE store_name LIKE 'M%';

SELECT * FROM store
WHERE store_name LIKE 'E%';

SELECT * FROM store
WHERE store_name LIKE 'G%';


-- =====================================================
-- LIKE OPERATOR (%a) ENDS WITH A
-- =====================================================

SELECT * FROM store
WHERE store_name LIKE '%a';

SELECT * FROM store
WHERE store_name LIKE '%e';

SELECT * FROM store
WHERE store_name LIKE '%r';

SELECT * FROM store
WHERE store_name LIKE '%y';

SELECT * FROM store
WHERE store_name LIKE '%t';


-- =====================================================
-- LIKE OPERATOR (%ab%) CONTAINS CHARACTERS
-- =====================================================

SELECT * FROM store
WHERE store_name LIKE '%ar%';

SELECT * FROM store
WHERE store_name LIKE '%or%';

SELECT * FROM store
WHERE store_name LIKE '%et%';

SELECT * FROM store
WHERE store_name LIKE '%en%';

SELECT * FROM store
WHERE store_name LIKE '%al%';

-- __________________________________________________________________________________________