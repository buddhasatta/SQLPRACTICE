
use bank;

show tables;

create table person(
person_id smallint unsigned,
fname varchar(20),
lname varchar(20),
gender char(1),
birth_date DATE,
street varchar(20),
city varchar(20),
state varchar(20),
country varchar(20),
postal_code varchar(20),
constraint pk_person primary key (person_id)
);

show tables;
