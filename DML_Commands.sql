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

-- Example 13: LIBRARY TABLE

INSERT INTO library (book_id, book_name, author_name)
VALUES
(1, 'Python Basics', 'Rahul Sharma'),
(2, 'SQL Guide', 'Amit Verma'),
(3, 'Java Programming', 'Neha Gupta'),
(4, 'Data Science', 'Priya Singh'),
(5, 'Web Development', 'Rohit Mehta');

SELECT * FROM library;

UPDATE library
SET author_name = 'Rohit Mehta'
WHERE book_id = 3;

SELECT * FROM library;

DELETE FROM library
WHERE book_id = 4;

SELECT * FROM library;

-- _______________________________________________________________________________________________

-- Example 14: COLLEGE TABLE

INSERT INTO college (college_id, college_name, city, course)
VALUES
(1, 'ABC College', 'Bhopal', 'BCA'),
(2, 'XYZ College', 'Indore', 'BBA'),
(3, 'PQR College', 'Delhi', 'BTech'),
(4, 'LMN College', 'Mumbai', 'MBA'),
(5, 'DEF College', 'Jaipur', 'MCA');

SELECT * FROM college;

UPDATE college
SET course = 'MCA'
WHERE college_id = 3;

SELECT * FROM college;

DELETE FROM college
WHERE college_id = 4;

SELECT * FROM college;

-- ________________________________________________________________________________________________


-- Example 15 :- INSTITUTE TABLE

INSERT INTO institute(institute_id, institute_name, city, course_name, fees, duration)
VALUES
(1, 'Yunova Institute', 'Bhopal', 'Python', 8000, '3 Months'),
(2, 'Tech Academy', 'Indore', 'Web Development', 12000, '6 Months'),
(3, 'Bright Institute', 'Jabalpur', 'Tally', 5000, '2 Months'),
(4, 'Digital Learning Center', 'Delhi', 'Graphic Design', 7000, '4 Months'),
(5, 'Future Skills Academy', 'Mumbai', 'Data Science', 15000, '8 Months');

SELECT * FROM institute;

UPDATE institute
SET city = 'Nagpur'
WHERE institute_id = 3;

SELECT * FROM institute;

UPDATE institute
SET course_name = 'Video Editing'
WHERE institute_id = 3;

SELECT * FROM institute;

UPDATE institute
SET fees = 6000
WHERE institute_id = 3;

SELECT * FROM institute;

UPDATE institute
SET duration = '3 Months'
WHERE institute_id = 3;

SELECT * FROM institute;

DELETE FROM institute
WHERE institute_id = 5;

SELECT * FROM institute;

DELETE FROM institute
WHERE institute_id = 4;

SELECT * FROM institute;

-- ________________________________________________________________________________________________

-- Example 16 :- STORE TABLE

INSERT INTO store(store_id, store_name, city, owner_name, contact_number, pincode)
VALUES
(1, 'Sharma General Store', 'Bhopal', 'Rahul Sharma', '9876543210', 462001),
(2, 'Fresh Mart', 'Indore', 'Amit Verma', '9876543211', 452001),
(3, 'City Super Store', 'Jabalpur', 'Neha Patel', '9876543212', 482001),
(4, 'Smart Shopping Center', 'Delhi', 'Rohit Kumar', '9876543213', 110001),
(5, 'Royal Departmental Store', 'Mumbai', 'Priya Singh', '9876543214', 400001);

SELECT * FROM store;

UPDATE store
SET city = 'Pune'
WHERE store_id = 2;

SELECT * FROM store;

UPDATE store
SET owner_name = 'Gitanjali Patel'
WHERE store_id = 4;

SELECT * FROM store;

UPDATE store
SET contact_number = '7639451267'
WHERE store_id = 5;

SELECT * FROM store;

UPDATE store
SET pincode = 425786
WHERE store_id = 3;

SELECT * FROM store;

DELETE FROM store
WHERE store_id = 3;

SELECT * FROM store;

DELETE FROM store
WHERE store_id = 5;

SELECT * FROM store;

-- ______________________________________________________________________________________________________

--Example 17 :- LABORATORY TABLE

INSERT INTO laboratory(lab_id, lab_name, test_name, lab_city, test_charges, test_time)
VALUES
(1, 'Life Care Laboratory', 'Blood Test', 'Bhopal', 500, '30 Minutes'),
(2, 'City Diagnostic Center', 'Sugar Test', 'Indore', 300, '20 Minutes'),
(3, 'Health Plus Lab', 'Thyroid Test', 'Jabalpur', 700, '45 Minutes'),
(4, 'Modern Pathology Lab', 'Urine Test', 'Delhi', 400, '25 Minutes'),
(5, 'Shree Diagnostic Lab', 'CBC Test', 'Mumbai', 600, '35 Minutes');

SELECT * FROM laboratory;

UPDATE laboratory
SET lab_city = 'Pune'
WHERE lab_id = 2;

SELECT * FROM laboratory;

UPDATE laboratory
SET lab_name = 'Royal Diagnostic Center'
WHERE lab_id = 4;

SELECT * FROM laboratory;

UPDATE laboratory
SET test_charges = 800
WHERE lab_id = 5;

SELECT * FROM laboratory;

UPDATE laboratory
SET test_time = '50 Minutes'
WHERE lab_id = 3;

SELECT * FROM laboratory;

DELETE FROM laboratory
WHERE lab_id = 3;

SELECT * FROM laboratory;

DELETE FROM laboratory
WHERE lab_id = 5;

SELECT * FROM laboratory;

-- ___________________________________________________________________________________________________

-- Example 18 :- PATIENT TABLE


INSERT INTO patient(patient_id, patient_name, age, gender, patient_city, consulting_doctor)
VALUES
(1, 'Rahul Sharma', 25, 'Male', 'Bhopal', 'Dr. Amit Verma'),
(2, 'Priya Singh', 30, 'Female', 'Indore', 'Dr. Neha Patel'),
(3, 'Rohit Kumar', 45, 'Male', 'Jabalpur', 'Dr. Rajesh Gupta'),
(4, 'Neha Sharma', 35, 'Female', 'Delhi', 'Dr. Pooja Mehta'),
(5, 'Amit Patel', 50, 'Male', 'Mumbai', 'Dr. Suresh Jain');

SELECT * FROM patient;

UPDATE patient
SET patient_city = 'Pune'
WHERE patient_id = 2;

SELECT * FROM patient;

UPDATE patient
SET patient_name = 'Gitanjali Patel'
WHERE patient_id = 4;

SELECT * FROM patient;

UPDATE patient
SET age = 28
WHERE patient_id = 5;

SELECT * FROM patient;

UPDATE patient
SET consulting_doctor = 'Dr. Anjali Sharma'
WHERE patient_id = 3;

SELECT * FROM patient;

DELETE FROM patient
WHERE patient_id = 3;

SELECT * FROM patient;

DELETE FROM patient
WHERE patient_id = 5;

SELECT * FROM patient;

-- ____________________________________________________________________________________________________

-- Example 19 :- HOUSE TABLE

INSERT INTO house(house_number, house_name, village_name, address, city, pincode)
VALUES
(1, 'Sharma House', 'Rampur', 'Near Hanuman Temple', 'Bhopal', 462001),
(2, 'Verma House', 'Sundarpur', 'Near Government School', 'Indore', 452001),
(3, 'Patel House', 'Rajpur', 'Main Road', 'Jabalpur', 482001),
(4, 'Kumar House', 'Shivpur', 'Near Bus Stand', 'Gwalior', 474001),
(5, 'Singh House', 'Krishnapur', 'Near Railway Station', 'Delhi', 110001);

SELECT * FROM house;

UPDATE house
SET city = 'Pune'
WHERE house_number = 2;

SELECT * FROM house;

UPDATE house
SET village_name = 'Govindpur'
WHERE house_number = 4;

SELECT * FROM house;

UPDATE house
SET house_name = 'Thakur House'
WHERE house_number = 3;

SELECT * FROM house;

UPDATE house
SET address = 'Main Road'
WHERE house_number = 5;

SELECT * FROM house;

UPDATE house
SET pincode = 470336
WHERE house_number = 1;

SELECT * FROM house;

DELETE FROM house
WHERE house_number = 4;

SELECT * FROM house;

DELETE FROM house
WHERE house_number = 5;

SELECT * FROM house;

DELETE FROM house
WHERE house_number = 2;

SELECT * FROM house;

-- __________________________________________________________________________________________

--  Example 20 :- LONE TABLE

INSERT INTO loan(loan_id, customer_name, loan_ammount, loan_date, loan_status)
VALUES
(1, 'Rahul Sharma', 50000, '2025-01-10', 'Approved'),
(2, 'Priya Verma', 75000, '2025-01-15', 'Pending'),
(3, 'Amit Patel', 100000, '2025-02-05', 'Approved'),
(4, 'Neha Singh', 25000, '2025-02-12', 'Rejected'),
(5, 'Rohit Kumar', 150000, '2025-03-01', 'Approved');

SELECT * FROM loan;

UPDATE loan
SET loan_ammount = 250000
WHERE loan_id = 2;

SELECT * FROM loan;

UPDATE loan
SET loan_status = 'pending'
WHERE loan_id = 1;

SELECT * FROM loan;

DELETE FROM loan
WHERE loan_id = 1;

SELECT * FROM loan;

-- _________________________________________________________________________________________________

-- Example 21 :- SUBJECT TABLE

INSERT INTO subject(subject_id, subject_name, subject_code, teacher_name, subject_fee)
VALUES
(1, 'Python', 101, 'Amit Sharma', 5000),
(2, 'Java', 102, 'Neha Verma', 4500),
(3, 'SQL', 103, 'Rahul Patel', 3000),
(4, 'C Programming', 104, 'Priya Singh', 3500),
(5, 'Web Development', 105, 'Ankit Kumar', 6000);

SELECT * FROM subject;

UPDATE subject
SET subject_name = 'Advanced Python'
WHERE subject_id = 1;

SELECT * FROM subject;

UPDATE subject
SET teacher_name = 'Pooja Verma'
WHERE subject_id = 2;

SELECT * FROM subject;

UPDATE subject
SET subject_code = 110
WHERE subject_id = 3;

SELECT * FROM subject;

UPDATE subject
SET subject_fee = 4000
WHERE subject_id = 4;

SELECT * FROM subject;

UPDATE subject
SET subject_fee = 7000
WHERE subject_id = 5;

SELECT * FROM subject;

DELETE FROM subject
WHERE subject_id = 4;

SELECT * FROM subject;

DELETE FROM subject
WHERE subject_id = 5;

SELECT * FROM subject;

DELETE FROM subject
WHERE subject_id = 2;

SELECT * FROM subject;

-- ______________________________________________________________________________________________________

-- Example 22 :- SHOP TABLE

INSERT INTO shop(shop_id, shop_name, owner_name, shop_type, shop_mobile, shop_address, shop_income)
VALUES
(1, 'Fashion Store', 'Rahul Sharma', 'Clothing', 9876543210, 'Bhopal', 50000),
(2, 'Fresh Mart', 'Amit Verma', 'Grocery', 9876543211, 'Indore', 40000),
(3, 'Mobile World', 'Neha Singh', 'Electronics', 9876543212, 'Delhi', 75000),
(4, 'Book House', 'Priya Patel', 'Books', 9876543213, 'Mumbai', 30000),
(5, 'Royal Footwear', 'Ankit Kumar', 'Footwear', 9876543214, 'Pune', 60000);

SELECT * FROM shop;

UPDATE shop
SET shop_name = 'New Fashion Store'
WHERE shop_id = 1;

SELECT * FROM shop;

UPDATE shop
SET owner_name = 'Pooja Verma'
WHERE shop_id = 2;

SELECT * FROM shop;

UPDATE shop
SET shop_type = 'Mobile Accessories'
WHERE shop_id = 3;

SELECT * FROM shop;

UPDATE shop
SET shop_income = 35000
WHERE shop_id = 4;

SELECT * FROM shop;

UPDATE shop
SET shop_income = 80000
WHERE shop_id = 5;

SELECT * FROM shop;

DELETE FROM shop
WHERE shop_id = 4;

SELECT * FROM shop;

DELETE FROM shop
WHERE shop_id = 5;

SELECT * FROM shop;

DELETE FROM shop
WHERE shop_id = 2;

SELECT * FROM shop;

-- ______________________________________________________________________________________________________