select * from actors;

select * from actors order by first_name asc,date_of_birth DESC ;

--calculate length of actor

select first_name as name,Length(first_name) as len from actors order by len;


select 2*10 as multiply;

--column number instead of column name for sorting

select first_name,last_name,date_of_birth from actors order by 1 asc,3 desc;

create table demo_null( num int);
select * from demo_null;

insert into demo_null (num) values(1),(2),(null),(3);

select * from demo_null order by num NULLS first;


