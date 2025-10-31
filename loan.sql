create database IF NOT exists 1BF24CS097;
show databases;
use 1BF24CS097;
create table loan(
loan_number INT primary key,
branch_name varchar(100),
ammount decimal(15,2),
foreign key(branch_name) references branch(branch_name) 
);
insert into loan values(1,"SBI_CHAMRAJPET",1000);
insert into loan values(2,"SBI_RESIDENCYROAD",2000);
insert into loan values(3,"SBI_SHIVAJIROAD",3000);
insert into loan values(4,"SBI_PARLIMENTROAD",4000);
insert into loan values(5,"SBI_JANTARMANTAR",5000);

select *from loan;
