--boolean true--TRUE,true,t,y,yes,1---false ---FALSE,false,n,no,0

create table table_boolean (is_available boolean not null );

insert into table_boolean(is_available) values('0'),('1'),('true'),('n'),('yes'),('no'),('false'),('y');

select * from table_boolean;


--character

select 'saran'::char as name --[s]
select 'saran'::char(6) as name --[saran ]

--varchar
select 'saran'::varchar(6) as name --[saran]
select 'saran'::varchar as name --[saran]

--text
select 'saran'::text as name --unlimited length


--char,varchar,text

create table charac_tab (col_char char(5),col_varchar varchar(5),col_text text);
insert into charac_tab(col_char,col_varchar,col_text) values('abc','abc','abc');
select * from charac_tab; --"abc  " | "abc" |"abc"

--numeric [int,bigint,]


--decimals
---fixed-point number -> numeric(precision,scale) -->numeric(10,2)
--2 type--real and double
--decimal-point num --> decimal(precision)


--date and time

---date - date only
--time - time only
--timestamp -date and time
--timestamptz - date,time,timestamp  ---tz-timezone


create table table_dates(id serial primary key,emp_name varchar(20)
 not null,hire_date date not null, add_date date default current_date);
 insert into table_dates(emp_name,hire_date) values('saranya','2023-12-11');
 select * from table_dates;
 
 
 select now(); --"2024-01-12 12:59:37.157388+05:30"
 
 ------time
 
 create table table_time(id serial primary key,start_time time not null,end_time time not null);
 
 insert into table_time(start_time,end_time) values('08:00:00','09:30:00');
 select * from table_time;
 
 
 
 select current_time; --"13:03:00.223569+05:30"
 
 select current_time(2); --"13:03:37.220000+05:30"
 
 
 select current_time, localtime;