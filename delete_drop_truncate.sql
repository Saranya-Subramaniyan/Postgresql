create table customer(id serial primary key, name varchar(100) not null);

insert into customer(name) values('saran'),('sanj'),('sruthi'),('swathi');

select * from customer;

delete from customer; --delete all data


insert into customer(name) values('saran'),('sanj'),('sruthi'),('swathi');

truncate customer

drop table customer