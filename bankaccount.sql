create database IF NOT exists 1BF24CS097;
show databases;
use 1BF24CS097;

create table bank_account(
     account_num INT primary key ,
     branch_name varchar(100),
     balance decimal(15,2),
     foreign key(branch_name) references branch(branch_name)
);

insert into bank_account values(1,"SBI_CHAMRAJPET",2000);
insert into bank_account values(2,"SBI_RESIDENCYROAD",5000);
insert into bank_account values(3,"SBI_SHIVAJIROAD",6000);
insert into bank_account values(4,"SBI_PARLIMENTROAD",9000);
insert into bank_account values(5,"SBI_JANTARMANTAR",8000);
insert into bank_account values(6,"SBI_SHIVAJIROAD",4000);
insert into bank_account values(8,"SBI_RESIDENCYROAD",4000);
insert into bank_account values(9,"SBI_PARLIMENTROAD",3000);
insert into bank_account values(10,"SBI_RESIDENCYROAD",5000);
insert into bank_account values(11,"SBI_JANTARMANTAR",2000);

select *from bank_account;