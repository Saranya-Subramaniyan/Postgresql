select * from customers


--sub query 
select
cust1.company_name,
cust1.contact_name
from customers cust1
where cust1.contact_name>(
select min(cust2.contact_name)
from customers cust2);


--sub query ->in

select company_name,contact_name,contact_title,country
from customers customers
where company_name in (select company_name from customers where country <> 'Germany' )


--subquery -> any

select company_name,contact_name,contact_title,country
from customers customers
where company_name = any(
select company_name from customers where country = 'Germany')



--subquery  ->  exists

select * from suppliers where exists(
select * from products where unit_price<100 
and products.supplier_id = suppliers.supplier_id)