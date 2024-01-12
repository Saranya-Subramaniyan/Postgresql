--type conversion
select * from actors where actor_id=integer'1';

--in postgres cast
select cast('2024-01-11' as date),
cast('01-may-2024'as date);

select '10 minutes'::interval;

select 20 ! as "result"

select round(10,4) as "result";
select substr('2345678',3) as "result"

select substr('23567',2) as "implicit",
substr(cast('12345678' as text), 2) as "explicit"; -- "3567" |"2345678"


create table ratings (rating_id serial primary key,rating varchar(1) not null);

insert into ratings(rating) values('1'),('2'),('A'),('B');


select rating_id,
case
 when rating~E'^\\d+$' then
 cast(rating as integer)
 else
 0
 
 end as rating
 from ratings;
 
 
 ---to_char
 select to_char(97,'99999');
 
 select * from actors;
 
 select date_of_birth, to_char(date_of_birth,'DD-Mon-yyyy') from actors;
 
 
 --to_number
 
 select to_number('1235.09','9999.');
 
 --to_date
 select to_date('09-sep-2002','DD-mon-YYYY');
 
 --to_timestamp
 
 select to_timestamp('2020-10-28 10:10:25','yyyy-mm-dd hh:mm:ss');
 
 