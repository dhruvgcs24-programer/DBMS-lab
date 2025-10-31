create database IF NOT exists 1BF24CS097;
show databases;
use 1BF24CS097;

create table incentives(
 emp_no int,
 incentive_date date primary key,
 incentive_ammount decimal(10,2),
 foreign key(emp_no) references employee(emp_no)
);

INSERT INTO incentives (emp_no, incentive_date, incentive_ammount)
VALUES
(1001, '2024-12-20', 2000),
(1002, '2024-11-10', 1200),
(1003, '2024-10-15', 1000),
(1004, '2024-09-05', 800),
(1005, '2024-08-25', 900)