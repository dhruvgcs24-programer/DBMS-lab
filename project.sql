create database IF NOT exists 1BF24CS097;
show databases;
use 1BF24CS097;

create table project(
project_no INT primary key,
project_loc varchar(50),
project_name varchar(50)
);

INSERT INTO project (project_no, project_loc, project_name)
VALUES
(501, 'New York', 'ERP Implementation'),
(502, 'Boston', 'Payroll System'),
(503, 'Chicago', 'Recruitment Portal'),
(504, 'San Francisco', 'Digital Marketing'),
(505, 'Dallas', 'Logistics Optimization');