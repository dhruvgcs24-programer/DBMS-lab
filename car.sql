create database IF NOT exists 1BF24CS097;
show databases;
use 1BF24CS097;


CREATE TABLE car (
    registration_no varchar(10),
    carname varchar(100),
    year1 year ,
    primary key(registration_no)
    
);

insert into car values('KA052250','Indica','1990');
insert into car values('KA031181','Lancer','1957');
insert into car values('KA095477','Toyota','1998');
insert into car values('KA053408','Honda','2008');
insert into car values('KA041702','Audi','2005');
select * from car;