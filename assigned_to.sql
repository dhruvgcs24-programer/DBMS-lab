create database IF NOT exists 1BF24CS097;
show databases;
use 1BF24CS097;

create table assigned_to(
emp_no INT,
foreign key (emp_no) references employee(emp_no),
project_no INT, 
foreign key(project_no) references project(project_no),
job_role varchar(50)

);

INSERT INTO assigned_to (emp_no, project_no, job_role)
VALUES
(1001, 501, 'Project Manager'),
(1002, 503, 'HR Specialist'),
(1003, 501, 'Software Developer'),
(1004, 502, 'Financial Analyst'),
(1005, 504, 'Marketing Coordinator');