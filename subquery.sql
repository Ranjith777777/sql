
CREATE DATABASE company_db;
USE company_db;


CREATE TABLE employees (
    emp_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50),
    department VARCHAR(50),
    job_title VARCHAR(50),
    salary INT
);

INSERT INTO employees (name, department, job_title, salary) VALUES
('Ranjith', 'IT', 'Developer', 65000),
('Harini', 'HR', 'HR Executive', 45000),
('Kumar', 'Finance', 'Accountant', 58000),
('Priya', 'IT', 'Tester', 52000),
('Vikram', 'Sales', 'Sales Manager', 70000),
('Siva', 'IT', 'Developer', 90000),
('John', 'Marketing', 'SEO Analyst', 56000),
('Deepa', 'Finance', 'Accountant', 61000),
('Ragul', 'IT', 'Support Engineer', 48000),
('Sneha', 'Sales', 'Sales Executive', 40000),
('Arun', 'IT', 'Developer', 75000),
('Rohit', 'IT', 'Developer', 82000);

SELECT department, COUNT(*) AS total_employees
FROM employees
GROUP BY department
HAVING COUNT(*) > 10;
SELECT department, AVG(salary) AS avg_salary
FROM employees
GROUP BY department
HAVING AVG(salary) > 60000;
SELECT job_title, MAX(salary) AS max_salary
FROM employees
GROUP BY job_title
HAVING MAX(salary) > 80000;

SELECT department, SUM(salary) AS total_salary
FROM employees
GROUP BY department
HAVING SUM(salary) > 500000;

SELECT *
FROM employees;

SELECT name, department, salary
FROM employees;


SELECT 
    name AS employee_name,
    department AS dept,
    salary AS monthly_salary
FROM employees;
SELECT name, salary
FROM employees
WHERE salary > 55000;

SELECT name, department
FROM employees
WHERE department = 'IT';


SELECT name, department, salary
FROM employees
WHERE department = 'IT'
  AND salary > 60000;

SELECT name
FROM employees
WHERE name LIKE 'A%';

SELECT name
FROM employees
WHERE name LIKE '%an%';


SELECT name
FROM employees
WHERE name LIKE '%a';
