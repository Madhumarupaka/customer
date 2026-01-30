CREATE DATABASE company_db;
USE company_db;

CREATE TABLE companies (
    company_id INT PRIMARY KEY,
    company_name VARCHAR(255) NOT NULL
);

CREATE TABLE departments (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(255) NOT NULL,
    company_id INT,
    FOREIGN KEY (company_id) REFERENCES companies(company_id)
);

CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    first_name VARCHAR(255) NOT NULL,
    last_name VARCHAR(255) NOT NULL,
    department_id INT,
    salary DECIMAL(15,2) NOT NULL,
    hire_date DATE NOT NULL,
    manager_id INT,
    job_title VARCHAR(255) NOT NULL,
    FOREIGN KEY (department_id) REFERENCES departments(department_id)
);

INSERT INTO companies (company_id, company_name)
VALUES
(1, 'TechCorp Solutions'),
(2, 'GreenLeaf Industries');

INSERT INTO departments (department_id, department_name, company_id)
VALUES
(101, 'Human Resources', 1),
(102, 'Finance', 1),
(103, 'Engineering', 1),
(201, 'Operations', 2),
(202, 'Sales', 2);

INSERT INTO employees (employee_id, first_name, last_name, department_id, salary, hire_date, manager_id, job_title)
VALUES
(1, 'Alice', 'Johnson', 103, 120000.00, '2019-03-15', NULL, 'Engineering Manager'),
(2, 'Michael', 'Green', 202, 90000.00, '2020-07-10', NULL, 'Sales Manager'),
(3, 'John', 'Doe', 103, 70000.00, '2021-01-12', 1, 'Software Engineer'),
(4, 'Emma', 'Davis', 103, 75000.00, '2022-04-20', 1, 'QA Engineer'),
(5, 'Sophia', 'Miller', 101, 65000.00, '2020-06-25', NULL, 'HR Specialist'),
(6, 'David', 'Wilson', 102, 80000.00, '2021-10-05', NULL, 'Financial Analyst'),
(7, 'Olivia', 'Taylor', 202, 55000.00, '2023-05-14', 2, 'Sales Executive'),
(8, 'Ethan', 'Brown', 201, 60000.00, '2022-09-10', NULL, 'Operations Coordinator');
