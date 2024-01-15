create domain addr varchar(100) not null;

create table locations(
address addr);

select * from locations;
insert into locations(address) values('123 london');


--other eg

create domain positive_numeric int not null check (value>0);

create table sample(
sample_id serial primary key,
value_num positive_numeric	
);

insert into sample(value_num) values(10);

select * from sample;

insert into sample(value_num) values(-19);

---postal code

create domain us_postal_code_format as text
check(
value ~'^\d{5}$'
or value ~'^\D{5}-\d{4}$'
);

create table address(
address_id serial primary key,
postal_code us_postal_code_format
);

insert into address(postal_code) values('10000~1000~1000');

select * from address;
insert into address(postal_code) values('11100');
