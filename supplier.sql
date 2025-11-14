create database IF NOT exists 1BF24CS097;
show databases;
use 1BF24CS097;

create table supplier(
     s_id INT primary key,
    s_name varchar(50),
    city varchar(50)
);

insert into supplier values(10001,"Acme Widget","Bangalore");
insert into supplier values(10002,"Johns","Kolkata");
insert into supplier values(10003,"Vimal","Mumbai");
insert into supplier values(10004,"Reliance","Delhi");

