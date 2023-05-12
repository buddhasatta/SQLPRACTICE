
use bank;
select * from corporation;
show tables;
select * from account order by avail_balance desc;
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
SET FOREIGN_KEY_CHECKS = 0;

/* DO WHAT YOU NEED HERE */

SET FOREIGN_KEY_CHECKS = 1;

create table favourite_food(
  person_id smallint unsigned,
  fav_food varchar(20),
  constraint pk_personid_fav_food primary key (person_id, fav_food),
  constraint fk_person_id foreign key (person_id) references  person (person_id)
);
describe person;
alter table favourite_food modify person_id smallint unsigned auto_increment;
alter table person modify person_id smallint unsigned auto_increment;

Insert into person(person_id,fname,lname,gender,birth_date)
values(null,'Sudeb','roy','M','1947-08-01');

insert into person(street ,city ,country ,postal_code)
values('sb lane','howrah','india','711102') ;

select person_id,fname,lname,gender,birth_date from person
where lname ='satta';
select * from person;
insert into favourite_food (person_id,fav_food)
values(1,'chochos');

select * from favourite_food where person_id =1 order by fav_food;


select * from person ;
update person set 
street='sb lane',
city='howrah',
state='west bengal',
country='india',
postal_code='711103'
where person_id =2 ;
