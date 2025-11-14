create database IF NOT exists 1BF24CS097;
show databases;
use 1BF24CS097;

create table parts(
  p_id INT primary key,
  p_name varchar(50),
  colour varchar(50)
);

insert into parts values(20001,"Book","Red");
insert into parts values(20002,"Pen","Red");
insert into parts values(20003,"Pencil","Green");
insert into parts values(20004,"Mobile","Green");
insert into parts values(20005,"Charger","Black");