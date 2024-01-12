create table array_table (id serial primary key,name varchar(120) not null,phone_no text[2]);
select * from array_table;

insert into array_table (name,phone_no) values('saran',array['9876554321','23456789q762']);

insert into array_table (name,phone_no) values('sanj',array['6543123456','234568764323']);


select * from array_table where phone_no[2] is not null;
select name,phone_no[1],phone_no[2] from array_table;

select * from array_table where phone_no[2]<>'23456789q762';
