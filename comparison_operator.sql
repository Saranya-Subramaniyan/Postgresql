select * from actors;


select distinct date_of_birth from actors order by 1;


--operators
--1.comparison <,>,<=,>=,==,<>
--2arthmetic +,-,*,%,/
--3,logical and,or,like,in ,between


---logical

--and
select * from actors where gender='F' and date_of_birth > '11-03-2000';

--or
select * from actors where gender='M' or first_name like 's%';

--and + or

select * from actors where gender='F' and date_of_birth > '11-03-2000' or date_of_birth <'1986-04-11';

---like (case -sensitive)
--full character search
select 'hello' like 'hello'; --true
select 'hello' like 'Hello'; --false

-----partial charater
select 'hello' like '';  --false
select 'hello' like 'h_'; ---false
select 'hello' like 'h%';  --true
select 'hello' like '___'; --false
select 'hello' like '%o';--true
select 'hello' like '%l_';--true
select 'hello' like '_e%'; --true

select * from actors where first_name like '_____';

---ilike (case -insensitive)
select 'hello' ilike 'hello'; --true
select 'hello' ilike 'Hello'; --true

--between
select * from actors where date_of_birth between '1987-01-01' and '2002-12-31'

--not between
select * from actors where date_of_birth not between '1987-01-01' and '2002-12-31'

--in
select * from actors where first_name in ('saran','aijth','jay');

--not in
select * from actors where first_name not in ('saran','aijth','jay');

--is null
select * from demo_null where num is null;

---is not null
select * from demo_null where num is not null;


--concat

select first_name || ' '|| last_name  full_name from actors;

select concat(first_name,' ',last_name) as full_name from actors;


--fist_name,last_name,dob separated by comma

select concat_ws(', ',first_name,last_name,date_of_birth) as full_name from actors;
