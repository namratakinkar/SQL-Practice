

CREATE TABLE employee(
    employee_id INT,
    employee_name VARCHAR(50),
    city VARCHAR(50)
);

SELECT * FROM employee;

INSERT INTO employee(employee_id, employee_name, city)
VALUES
(1, 'Riya', 'Bhopal'),
(2, 'Priya', 'Indore'),
(3, 'Pari', 'Pune'),
(4, 'Sakshi', 'Mumbai'),
(5, 'Sonam', 'Delhi');

SELECT * FROM employee;

UPDATE employee
SET city = 'Pune'
WHERE employee_id = 1;

SELECT * FROM employee;

DELETE FROM employee
WHERE employee_id = 3;

SELECT * FROM employee;

ALTER TABLE employee
ADD COLUMN salary INT;

SELECT * FROM employee;

UPDATE employee
SET salary = 200000
WHERE employee_id = 4;

SELECT * FROM employee;

ALTER TABLE employee
RENAME COLUMN salary TO employee_salary;

SELECT * FROM employee;

ALTER TABLE employee
ALTER COLUMN employee_name TYPE VARCHAR(100);

SELECT * FROM employee;

ALTER TABLE employee
DROP COLUMN employee_salary;

SELECT * FROM employee;

ALTER TABLE employee
RENAME TO employee_details;

SELECT * FROM employee_details;

TRUNCATE TABLE employee_details;

SELECT * FROM employee_details;

DROP TABLE employee_details;