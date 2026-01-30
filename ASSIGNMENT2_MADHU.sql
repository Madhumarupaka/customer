show databases;
use company_db;
show tables;
select * from employees;
SELECT * FROM DEPARTMENTS;
select * from companies;

#2nd solution
SELECT E.FIRST_NAME,E.LAST_NAME 
FROM EMPLOYEES AS E
JOIN DEPARTMENTS AS D
ON D.DEPARTMENT_ID =E.DEPARTMENT_ID
WHERE DEPARTMENT_NAME="Sales";

# 3rd query
select distinct(job_title)
from employees;

# 4TH Query
select employee_id,first_name,salary from employees
order by salary desc;

# 5th solution
SELECT COUNT(*) AS Total_no_employees 
from employees;

# 6TH SOLUTION
SELECT D.DEPARTMENT_NAME ,ROUND(AVG(E.SALARY),1) AS AVG_SALARY 
FROM EMPLOYEES AS E
JOIN DEPARTMENTS AS D
ON D.DEPARTMENT_ID=E.DEPARTMENT_ID
GROUP BY DEPARTMENT_NAME;

# 7 TH SOLUTION
SELECT E.FIRST_NAME AS EMPLOYEE_NAME,D.DEPARTMENT_NAME 
FROM EMPLOYEES AS E
JOIN DEPARTMENTS AS D
ON D.DEPARTMENT_ID=E.DEPARTMENT_ID;
