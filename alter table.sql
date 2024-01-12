create table users(id serial primary key,name varchar(100) not null,dob Date not null);

--rename a tablename
alter table users rename to persons;


select * from persons;
--rename a column
alter table persons Rename column name to persons_name;

--drop a column
alter table persons drop column dob;


--add column
alter table persons add column age varchar(2);
alter table persons add column is_enable varchar(1);



--change data type of col
alter table persons alter column age type int using age::integer;

---default values set

alter table persons
alter column is_enable set default 'y';

insert into persons(persons_name,age) values('saran','21');


--add constraint 
alter table persons add constraint valueage unique (age);

--add check constraint

alter table persons add check (is_enable in('n','y'));
