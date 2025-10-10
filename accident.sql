create database IF NOT exists 1BF24CS097;
show databases;
use 1BF24CS097;

CREATE TABLE accident (
    id INT,
    date1 date,
    road varchar(100)
);
insert into accident values(11,'2003-01-01','Mysore Road');
insert into accident values(12,'2004-02-02','South end Circle');
insert into accident values(13,'2003-01-21','Bull temple Road');
insert into accident values(14,'2008-02-17','Mysore Road');
insert into accident values(15,'2005-03-04','Kanakpura Road');
select * from accident;