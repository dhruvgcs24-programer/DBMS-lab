create database IF NOT exists 1BF24CS097;
show databases;
use 1BF24CS097;
create table borrow(
customer_name varchar(50),
loan_number int,
foreign key (customer_name) references bank_customer(customer_name),
foreign key (loan_number) references loan(loan_number)
);

insert into borrow values("Avinash",1);
insert into borrow values("Dinesh",2);
insert into borrow values('Mohan',3);
insert into borrow values('Nikil',4);
insert into borrow values('Ravi',5);