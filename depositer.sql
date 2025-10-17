create database IF NOT exists 1BF24CS097;
show databases;
use 1BF24CS097;
create table depositer(
     customer_name varchar(100) ,
     acc_no INT(100),
     foreign key(acc_no) references bank_account(account_num),
     foreign key(customer_name) references bank_customer(customer_name)
);

insert into depositer values("Avinash",1);
insert into depositer values("Dinesh",2);
insert into depositer values("Nikil",4);
insert into depositer values("Ravi",5);
insert into depositer values("Avinash",8);
insert into depositer values("Nikil",9);
insert into depositer values("Dinesh",10);
insert into depositer values("Nikil",11);

select * from depositer;