create database IF NOT exists 1BF24CS097;
show databases;
use 1BF24CS097;


CREATE TABLE details (
    registration_no varchar(10),
    carnumber varchar(20),
    primary key(registration_no,carnumber),
    foreign key(registration_no) references person1(driver_id),
    foreign key(carnumber) references car(registration_no)
    
);
insert into details values('A01',"KA052250");
insert into details values('A02',"KA053408");
insert into details values('A03',"KA031181");
insert into details values('A04',"KA095477");
insert into details values('A05',"KA041702");
select*from details;