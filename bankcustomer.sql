create database IF NOT exists 1BF24CS097;
show databases;
use 1BF24CS097;
create table bank_customer(
   customer_name varchar(100) primary key,
   customer_street varchar(100),
   customer_city varchar(100)
);

insert into bank_customer values("Avinash","Bull_Temple_Road","Bangalore");
insert into bank_customer values("Dinesh","Bannergatta_Road","Bangalore");
insert into bank_customer values("Mohan","NationalCollege_Road","Bangalore");
insert into bank_customer values("Nikil","Akbar_Road","Delhi");
insert into bank_customer values("Ravi","Prithviraj_Road","Delhi");
select *from bank_customer;