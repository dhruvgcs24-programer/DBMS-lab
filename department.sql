create database IF NOT exists 1BF24CS097;
show databases;
use 1BF24CS097;

create table department(
dept_no INT primary key,
dept_name varchar(50),
dept_location varchar(50)
);

INSERT INTO department (dept_no, dept_name, dept_location)
VALUES
(10, 'IT', 'New York'),
(20, 'HR', 'Chicago'),
(30, 'Finance', 'Boston'),
(40, 'Marketing', 'San Francisco'),
(50, 'Operations', 'Dallas');