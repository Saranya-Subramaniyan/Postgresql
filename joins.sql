select * from orders;
select * from order_details;
select * from products;

select count(order_id) from orders

select count(order_id) from order_details

--inner join
select * from orders join order_details on orders.order_id = order_details.order_id;

--left join
select * from orders left join order_details on orders.order_id = order_details.order_id;
--right join
select * from orders right join order_details on orders.order_id = order_details.order_id;
---cross join
select * from orders cross join order_details;

--full join
select * from orders full join order_details on orders.order_id = order_details.order_id;
--self join



----exists & not exists

select * from orders where exists (select ship_country from orders where ship_country='ger') --empty

select * from orders where exists (select ship_country from orders where ship_country='France') --return data

select * from orders where not exists (select ship_country from orders where ship_country='ger') --empty

select * from orders where not exists (select ship_country from orders where ship_country='France') --return data

--select o.order_id,m.product_id from order_details o, order_details m where o.order_id=m.product_id;
