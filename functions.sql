create or replace function fn_add(int,int) returns int as
'
select $1+$2;
' language sql

select fn_add(4,2); --6

call procedure_name();

select 'I''m a string constant';


create or replace function fn_done() returns void as
$$
 update employees set country ='N/A'
 where country is null
$$
language sql

select fn_done();
select * from employees
select fn_done();


create or replace function fn_product_min_price() returns integer as
$$
select min(unit_price) from products
$$
language sql
select fn_product_min_price();

select * from employees


-----


select count(*) from customers


create or replace function fn_customer_count() returns integer as
$$
select count(*) from customers
$$
language sql

select fn_customer_count();


----using parameters


create or replace function fn_customer_count() returns integer as
$$
select count(*) from customers
$$
language sql


----

create or replace function fn_my_sum(integer,integer) returns integer as
$body$
declare
ret integer;
 x alias for $1;
 y alias for $2;
begin
ret:= x+y;
return ret;
end;
$body$
language plpgsql;

select fn_my_sum(1000,876);


 
