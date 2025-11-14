create database IF NOT exists 1BF24CS097;
show databases;
use 1BF24CS097;

create table catalog(
   s_id INT ,
   foreign key(s_id)references supplier(s_id),
   p_id int,
   foreign key(p_id)references parts(p_id),
   cost INT  
);

insert into catalog values(10001,20001,10);
insert into catalog values(10001,20002,10);
insert into catalog values(10001,20003,30);
insert into catalog values(10001,20004,10);
insert into catalog values(10001,20005,10);
insert into catalog values(10002,20001,10);
insert into catalog values(10002,20002,20);
insert into catalog values(10003,20003,30);
insert into catalog values(10004,20003,40);
