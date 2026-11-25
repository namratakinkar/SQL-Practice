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

-- =====================================================
-- Example 8 :- LABORATORY TABLE
-- DDL, DML AND DQL COMMANDS
-- =====================================================


-- STEP 1 :- CREATE TABLE (DDL COMMAND)

CREATE TABLE laboratory(
    lab_id INT,
    lab_name VARCHAR(50),
    city VARCHAR(50),
    test_name VARCHAR(50),
    test_price INT,
    contact_number VARCHAR(15)
);


-- STEP 2 :- DISPLAY TABLE DATA (DQL COMMAND)

SELECT * FROM laboratory;


-- STEP 3 :- INSERT DATA (DML COMMAND)

INSERT INTO laboratory(lab_id, lab_name, city, test_name, test_price, contact_number)
VALUES
(1, 'Apollo Diagnostic Lab', 'Bhopal', 'Blood Test', 500, '9876543210'),
(2, 'Health Care Laboratory', 'Indore', 'Urine Test', 300, '9876543211'),
(3, 'Bright Pathology Lab', 'Jabalpur', 'Thyroid Test', 800, '9876543212'),
(4, 'City Diagnostic Center', 'Delhi', 'Sugar Test', 400, '9876543213'),
(5, 'Life Care Laboratory', 'Mumbai', 'Liver Test', 1200, '9876543214'),
(6, 'Advanced Testing Lab', 'Pune', 'Kidney Test', 1000, '9876543215'),
(7, 'Global Diagnostic Center', 'Jaipur', 'Vitamin Test', 900, '9876543216'),
(8, 'Modern Pathology Lab', 'Lucknow', 'CBC Test', 600, '9876543217'),
(9, 'National Health Lab', 'Nagpur', 'Cholesterol Test', 700, '9876543218'),
(10, 'Excel Diagnostic Lab', 'Gwalior', 'Malaria Test', 450, '9876543219'),
(11, 'NextGen Laboratory', 'Chennai', 'Dengue Test', 1100, '9876543220'),
(12, 'Care Point Lab', 'Kolkata', 'ECG Test', 500, '9876543221'),
(13, 'Smart Health Center', 'Raipur', 'Vitamin D Test', 1500, '9876543222'),
(14, 'Prime Diagnostic Lab', 'Surat', 'X-Ray Test', 800, '9876543223'),
(15, 'Royal Pathology Center', 'Hyderabad', 'Hemoglobin Test', 350, '9876543224');


-- STEP 4 :- DISPLAY INSERTED DATA (DQL COMMAND)

SELECT * FROM laboratory;


-- =====================================================
-- LIKE OPERATOR (A%) START WITH A
-- =====================================================

SELECT * FROM laboratory
WHERE lab_name LIKE 'A%';

SELECT * FROM laboratory
WHERE lab_name LIKE 'H%';

SELECT * FROM laboratory
WHERE lab_name LIKE 'B%';

SELECT * FROM laboratory
WHERE lab_name LIKE 'C%';

SELECT * FROM laboratory
WHERE lab_name LIKE 'M%';


-- =====================================================
-- LIKE OPERATOR (%a) ENDS WITH A
-- =====================================================

SELECT * FROM laboratory
WHERE lab_name LIKE '%a';

SELECT * FROM laboratory
WHERE lab_name LIKE '%r';

SELECT * FROM laboratory
WHERE lab_name LIKE '%y';

SELECT * FROM laboratory
WHERE lab_name LIKE '%t';

SELECT * FROM laboratory
WHERE lab_name LIKE '%n';


-- =====================================================
-- LIKE OPERATOR (%ab%) CONTAINS CHARACTERS
-- =====================================================

SELECT * FROM laboratory
WHERE lab_name LIKE '%ti%';

SELECT * FROM laboratory
WHERE lab_name LIKE '%ra%';

SELECT * FROM laboratory
WHERE lab_name LIKE '%th%';

SELECT * FROM laboratory
WHERE lab_name LIKE '%ca%';

SELECT * FROM laboratory
WHERE lab_name LIKE '%la%';

-- ________________________________________________________________________________________________

-- =====================================================
-- Example 9 :- HOUSE TABLE
-- DDL, DML AND DQL COMMANDS
-- =====================================================


-- STEP 1 :- CREATE TABLE (DDL COMMAND)

CREATE TABLE house(
    house_number INT,
    house_name VARCHAR(50),
    village_name VARCHAR(50),
    address VARCHAR(50),
    city VARCHAR(50),
    pincode INT
);


-- STEP 2 :- DISPLAY TABLE DATA (DQL COMMAND)

SELECT * FROM house;


-- STEP 3 :- INSERT DATA (DML COMMAND)

INSERT INTO house(house_number, house_name, village_name, address, city, pincode)
VALUES
(1, 'Sharma House', 'Rampur', 'Near Hanuman Temple', 'Bhopal', 462001),
(2, 'Verma House', 'Sundarpur', 'Near Government School', 'Indore', 452001),
(3, 'Patel House', 'Rajpur', 'Main Road', 'Jabalpur', 482001),
(4, 'Kumar House', 'Shivpur', 'Near Bus Stand', 'Gwalior', 474001),
(5, 'Singh House', 'Krishnapur', 'Near Railway Station', 'Delhi', 110001),
(6, 'Gupta House', 'Chandpur', 'Near School', 'Pune', 411001),
(7, 'Yadav House', 'Devgaon', 'Main Market Road', 'Nagpur', 440001),
(8, 'Patil House', 'Lakshmipur', 'Near Temple', 'Nashik', 422001),
(9, 'Mishra House', 'Madhopur', 'Near Panchayat Office', 'Kanpur', 208001),
(10, 'Thakur House', 'Govindpur', 'Near Water Tank', 'Jaipur', 302001);


-- STEP 4 :- DISPLAY INSERTED DATA (DQL COMMAND)

SELECT * FROM house;


-- STEP 5 :- LIKE OPERATOR (S%) STARTS WITH S

SELECT * FROM house
WHERE house_name LIKE 'S%';

SELECT * FROM house
WHERE house_name LIKE 'V%';

SELECT * FROM house
WHERE house_name LIKE 'P%';

SELECT * FROM house
WHERE house_name LIKE 'M%';

SELECT * FROM house
WHERE house_name LIKE 'Y%';


-- STEP 6 :- LIKE OPERATOR (%a) ENDS WITH a

SELECT * FROM house
WHERE house_name LIKE '%a';

SELECT * FROM house
WHERE house_name LIKE '%l';

SELECT * FROM house
WHERE house_name LIKE '%e';

SELECT * FROM house
WHERE house_name LIKE '%r';

SELECT * FROM house
WHERE house_name LIKE '%h';


-- STEP 7 :- LIKE OPERATOR (%ar%) SUBSTRING

SELECT * FROM house
WHERE house_name LIKE '%ar%';

SELECT * FROM house
WHERE house_name LIKE '%ate%';

SELECT * FROM house
WHERE house_name LIKE '%um%';

SELECT * FROM house
WHERE house_name LIKE '%in%';

SELECT * FROM house
WHERE house_name LIKE '%ish%';

-- ___________________________________________________________________________________________________

-- =====================================================
-- Example 10 :- loan TABLE
-- DDL, DML AND DQL COMMANDS
-- =====================================================

-- CREATE TABLE (DDL COMMAND)

CREATE TABLE loan(
    loan_id INT,
    customer_name VARCHAR(100),
    loan_amount INT,
    loan_date DATE,
    loan_status VARCHAR(50),
    loan_type VARCHAR(50)
);

-- INSERT DATA (DML COMMAND)

INSERT INTO loan(loan_id, customer_name, loan_amount, loan_date, loan_status, loan_type)
VALUES
(1, 'Rahul Sharma', 50000, '2025-01-10', 'Approved', 'Home Loan'),
(2, 'Priya Verma', 75000, '2025-01-15', 'Pending', 'Car Loan'),
(3, 'Amit Patel', 100000, '2025-02-05', 'Approved', 'Personal Loan'),
(4, 'Neha Singh', 25000, '2025-02-12', 'Rejected', 'Education Loan'),
(5, 'Rohit Kumar', 150000, '2025-03-01', 'Approved', 'Business Loan'),
(6, 'Pooja Gupta', 60000, '2025-03-10', 'Pending', 'Home Loan'),
(7, 'Vikas Yadav', 90000, '2025-03-18', 'Approved', 'Car Loan'),
(8, 'Anjali Mehta', 40000, '2025-04-02', 'Rejected', 'Personal Loan'),
(9, 'Suresh Jain', 200000, '2025-04-15', 'Approved', 'Home Loan'),
(10, 'Kavita Joshi', 85000, '2025-05-05', 'Pending', 'Car Loan'),
(11, 'Deepak Verma', 120000, '2025-05-20', 'Approved', 'Business Loan'),
(12, 'Sneha Patel', 55000, '2025-06-01', 'Rejected', 'Education Loan'),
(13, 'Manish Sharma', 175000, '2025-06-15', 'Approved', 'Personal Loan'),
(14, 'Riya Agarwal', 30000, '2025-07-10', 'Pending', 'Home Loan'),
(15, 'Karan Malhotra', 95000, '2025-07-25', 'Approved', 'Car Loan');

-- DISPLAY DATA (DQL COMMAND)

SELECT * FROM loan;

-- LIKE OPERATOR (A%) STARTS WITH A

SELECT * FROM loan
WHERE customer_name LIKE 'P%';

SELECT * FROM loan
WHERE customer_name LIKE 'S%';

SELECT * FROM loan
WHERE customer_name LIKE 'K%';

SELECT * FROM loan
WHERE customer_name LIKE 'V%';

SELECT * FROM loan
WHERE customer_name LIKE 'R%';


-- LIKE OPERATOR (%a) ENDS WITH A

SELECT * FROM loan
WHERE customer_name LIKE '%a';

SELECT * FROM loan
WHERE customer_name LIKE '%ma';

SELECT * FROM loan
WHERE customer_name LIKE '%al';

SELECT * FROM loan
WHERE customer_name LIKE '%il';

SELECT * FROM loan
WHERE customer_name LIKE '%ar';


-- LIKE OPERATOR (%ab%) SUBSTRING

SELECT * FROM loan
WHERE customer_name LIKE '%oo%';

SELECT * FROM loan
WHERE customer_name LIKE '%os%';

SELECT * FROM loan
WHERE customer_name LIKE '%ar%';

SELECT * FROM loan
WHERE customer_name LIKE '%er%';

SELECT * FROM loan
WHERE customer_name LIKE '%avit%';


-- =====================================================
-- END OF HOUSE TABLE EXAMPLE
-- =====================================================

-- =====================================================
-- Example 11 :- SUBJECT TABLE
-- DDL, DML AND DQL COMMANDS
-- =====================================================

-- CREATE TABLE (DDL COMMAND)

CREATE TABLE subject(
    subject_id INT,
    subject_name VARCHAR(100),
    subject_code INT,
    teacher_name VARCHAR(100),
    subject_fee INT,
    subject_type VARCHAR(50)
);

-- INSERT DATA (DML COMMAND)

INSERT INTO subject(subject_id, subject_name, subject_code, teacher_name, subject_fee, subject_type)
VALUES
(1, 'Python', 101, 'Amit Sharma', 5000, 'Programming'),
(2, 'Java', 102, 'Priya Verma', 4500, 'Programming'),
(3, 'SQL', 103, 'Rahul Patel', 3000, 'Database'),
(4, 'C Programming', 104, 'Neha Singh', 3500, 'Programming'),
(5, 'Web Development', 105, 'Rohit Kumar', 6000, 'Development'),
(6, 'HTML', 106, 'Pooja Gupta', 2000, 'Development'),
(7, 'CSS', 107, 'Vikas Yadav', 2500, 'Development'),
(8, 'JavaScript', 108, 'Anjali Mehta', 4000, 'Programming'),
(9, 'MySQL', 109, 'Suresh Jain', 3500, 'Database'),
(10, 'C++', 110, 'Kavita Joshi', 3000, 'Programming'),
(11, 'PHP', 111, 'Deepak Verma', 4500, 'Development'),
(12, 'Database', 112, 'Sneha Patel', 5000, 'Database'),
(13, 'Django', 113, 'Manish Sharma', 5500, 'Development'),
(14, 'React', 114, 'Riya Agarwal', 6000, 'Development'),
(15, 'Data Science', 115, 'Karan Malhotra', 7000, 'Technology');

-- DISPLAY DATA (DQL COMMAND)

SELECT * FROM subject;


-- LIKE OPERATOR (A%) STARTS WITH A

SELECT * FROM subject
WHERE subject_name LIKE 'P%';

SELECT * FROM subject
WHERE subject_name LIKE 'J%';

SELECT * FROM subject
WHERE subject_name LIKE 'C%';

SELECT * FROM subject
WHERE subject_name LIKE 'D%';

SELECT * FROM subject
WHERE subject_name LIKE 'M%';


-- LIKE OPERATOR (%a) ENDS WITH A

SELECT * FROM subject
WHERE subject_name LIKE '%a';

SELECT * FROM subject
WHERE subject_name LIKE '%n';

SELECT * FROM subject
WHERE subject_name LIKE '%L';

SELECT * FROM subject
WHERE subject_name LIKE '%t';

SELECT * FROM subject
WHERE subject_name LIKE '%e';


-- LIKE OPERATOR (%ab%) SUBSTRING

SELECT * FROM subject
WHERE subject_name LIKE '%oo%';

SELECT * FROM subject
WHERE subject_name LIKE '%av%';

SELECT * FROM subject
WHERE subject_name LIKE '%at%';

SELECT * FROM subject
WHERE subject_name LIKE '%en%';

SELECT * FROM subject
WHERE subject_name LIKE '%Sc%';


-- =====================================================
-- END OF SUBJECT TABLE EXAMPLE
-- =====================================================


-- =====================================================
-- Example 12 :- SHOP TABLE
-- DDL, DML AND DQL COMMANDS
-- =====================================================

-- CREATE TABLE (DDL COMMAND)

CREATE TABLE shop(
    product_id INT,
    product_name VARCHAR(100),
    product_code INT,
    shopkeeper_name VARCHAR(100),
    product_price INT,
    product_type VARCHAR(50)
);

-- INSERT DATA (DML COMMAND)

INSERT INTO shop(product_id, product_name, product_code, shopkeeper_name, product_price, product_type)
VALUES
(1, 'Laptop', 201, 'Amit Sharma', 45000, 'Electronics'),
(2, 'Mobile', 202, 'Priya Verma', 15000, 'Electronics'),
(3, 'Keyboard', 203, 'Rahul Patel', 1200, 'Accessories'),
(4, 'Mouse', 204, 'Neha Singh', 500, 'Accessories'),
(5, 'Monitor', 205, 'Rohit Kumar', 12000, 'Electronics'),
(6, 'Printer', 206, 'Pooja Gupta', 8000, 'Electronics'),
(7, 'Speaker', 207, 'Vikas Yadav', 2500, 'Accessories'),
(8, 'Headphone', 208, 'Anjali Mehta', 1800, 'Accessories'),
(9, 'Camera', 209, 'Suresh Jain', 25000, 'Electronics'),
(10, 'Tablet', 210, 'Kavita Joshi', 18000, 'Electronics'),
(11, 'Charger', 211, 'Deepak Verma', 700, 'Accessories'),
(12, 'Pen Drive', 212, 'Sneha Patel', 600, 'Storage'),
(13, 'Hard Disk', 213, 'Manish Sharma', 4500, 'Storage'),
(14, 'Smart Watch', 214, 'Riya Agarwal', 3500, 'Accessories'),
(15, 'Webcam', 215, 'Karan Malhotra', 2200, 'Electronics');

-- DISPLAY DATA (DQL COMMAND)

SELECT * FROM shop;


-- LIKE OPERATOR (A%) STARTS WITH A

SELECT * FROM shop
WHERE product_name LIKE 'L%';

SELECT * FROM shop
WHERE product_name LIKE 'M%';

SELECT * FROM shop
WHERE product_name LIKE 'C%';

SELECT * FROM shop
WHERE product_name LIKE 'S%';

SELECT * FROM shop
WHERE product_name LIKE 'H%';


-- LIKE OPERATOR (%a) ENDS WITH A

SELECT * FROM shop
WHERE product_name LIKE '%a';

SELECT * FROM shop
WHERE product_name LIKE '%e';

SELECT * FROM shop
WHERE product_name LIKE '%r';

SELECT * FROM shop
WHERE product_name LIKE '%y';

SELECT * FROM shop
WHERE product_name LIKE '%k';


-- LIKE OPERATOR (%ab%) SUBSTRING

SELECT * FROM shop
WHERE product_name LIKE '%to%';

SELECT * FROM shop
WHERE product_name LIKE '%ad%';

SELECT * FROM shop
WHERE product_name LIKE '%am%';

SELECT * FROM shop
WHERE product_name LIKE '%ar%';

SELECT * FROM shop
WHERE product_name LIKE '%en%';


-- =====================================================
-- END OF SHOP TABLE EXAMPLE
-- =====================================================
