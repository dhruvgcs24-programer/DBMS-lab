create database IF NOT exists 1BF24CS097;
show databases;
use 1BF24CS097;

SELECT DISTINCT a.emp_no
FROM assigned_to a
JOIN project p ON a.project_no = p.project_no
WHERE p.project_loc IN ('Bengaluru', 'Hyderabad', 'Mysuru');

SELECT e.emp_no
FROM employee e
LEFT JOIN incentives i ON e.emp_no = i.emp_no
WHERE i.emp_no IS NULL;


SELECT e.emp_no,
       e.emp_name,
       d.dept_name,
       a.job_role,
       d.dept_location,
       p.project_loc
FROM employee e
JOIN department d ON e.dept_no = d.dept_no
JOIN assigned_to a ON e.emp_no = a.emp_no
JOIN project p ON a.project_no = p.project_no
WHERE d.dept_location = p.project_loc;