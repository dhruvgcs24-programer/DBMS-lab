create database IF NOT exists 1BF24CS097;
show databases;
use 1BF24CS097;

create table branch(
  branch_name varchar(100) primary key,
  branchcity varchar(100),
assets decimal(15,2)
);

insert into branch values("SBI_CHAMRAJPET","Bangalore",50000);
insert into branch values("SBI_RESIDENCYROAD","Bangalore",10000);
insert into branch values("SBI_SHIVAJIROAD","Bombay",20000);
insert into branch values("SBI_PARLIMENTROAD","Delhi",10000);
insert into branch values("SBI_JANTARMANTAR","Delhi",20000);
select * from branch;
