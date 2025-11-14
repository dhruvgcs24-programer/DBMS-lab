create database IF NOT exists 1BF24CS097;
show databases;
use 1BF24CS097;

SELECT manager_no, COUNT(*) AS EMP_NO 
FROM employee
WHERE manager_no IS NOT NULL
GROUP BY manager_no
ORDER BY COUNT(*) DESC
LIMIT 1;

SELECT m.emp_name
FROM employee m
JOIN employee e ON m.emp_no = e.manager_no
GROUP BY m.emp_name, m.salary
HAVING m.salary > AVG(e.salary);

SELECT emp_name
FROM employee
WHERE manager_no IN (
    SELECT emp_no FROM employee WHERE manager_no IS NULL
);

SELECT emp_no, incentive_ammount 
FROM incentives
WHERE incentive_date LIKE '2019-01%'
ORDER BY incentive_ammount DESC
LIMIT 1 OFFSET 1;

SELECT e.emp_name
FROM employee e
JOIN employee m ON e.manager_no = m.emp_no
WHERE e.dept_no = m.dept_no;

