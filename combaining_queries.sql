select * from products;

select product_id, product_name from products
union all
select product_id,product_name from products

select * from customers;

select * from employees


select first_name,last_name from employees where city in('london','seattle')
union 
select first_name,last_name from employees where reports=2;
