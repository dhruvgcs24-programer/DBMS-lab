create database IF NOT exists 1BF24CS097;
show databases;
use 1BF24CS097;
CREATE TABLE employees (
    id INT PRIMARY KEY,
    name VARCHAR(100),
    position VARCHAR(50),
    salary DECIMAL(10, 2)
);
 INSERT INTO employees (id, name, position, salary)
VALUES
    (1, 'Alice Smith', 'Manager', 75000.00),
    (2, 'Bob Johnson', 'Developer', 65000.00),
    (3, 'Charlie Brown', 'Designer', 60000.00);
SELECT * FROM employees;
