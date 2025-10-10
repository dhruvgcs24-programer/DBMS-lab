create database IF NOT exists 1BF24CS097;
show databases;
use 1BF24CS097;

CREATE TABLE person1 (
    driver_id varchar(4),
    name VARCHAR(100),
    place VARCHAR(50),
    primary key(driver_id)
   );
insert into person1 values('A01',"Richard",'Srinivas nagar');
insert into person1 values('A02',"Pradeep",'Rajaji nagar');
insert into person1 values('A03',"Smith",'Ashok nagar');
insert into person1 values('A04',"Venu",'N R Colony');
insert into person1 values('A05',"Jhon",'Hanumanth nagar');
select * from person1;