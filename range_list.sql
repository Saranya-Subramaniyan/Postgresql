---partitions

create table employee_range
(id bigserial,
	birth_date Date not null,
    country_code varchar(2) not null
) partition by range (birth_date);
	
create table employees_range_y2000 partition of employee_range
for values from ('2020-01-01') to ('2021-01-01');

select * from employee_range;

insert into employee_range (birth_date,country_code)
values('2020-01-01','us'),('2020-04-22','us'),('2020-07-11','us'),
('2020-03-12','us')

select * from only employees_range_y2000;

create table employees_range_y2001 partition of employee_range
for values from ('2020-03-01') to ('2021-01-01');
select * from employees_range_y2001;
