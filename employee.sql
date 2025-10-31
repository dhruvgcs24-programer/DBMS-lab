create database IF NOT exists 1BF24CS097;
show databases;
use 1BF24CS097;

create table employee(
 emp_no INT primary key,
 emp_name varchar(50),
 manager_no INT,
 hiredate date,
 salary decimal(10,2),
 dept_no INT,
 foreign key(dept_no) references department(dept_no) 
);

INSERT INTO employee (emp_no, emp_name, manager_no, hiredate, salary, dept_no)
VALUES
(1001, 'John Smith', NULL, '2020-01-15', 75000, 10),
(1002, 'Jane Doe', 1001, '2021-03-20', 62000, 20),
(1003, 'Michael Lee', 1001, '2021-07-11', 58000, 10),
(1004, 'Emma Brown', 1002, '2022-01-05', 54000, 30),
(1005, 'Olivia Green', 1001, '2023-04-17', 50000, 40);