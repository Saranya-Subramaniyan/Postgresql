select * from order_details where order_id=10279;

--min,max,count,sum
select distinct count(*) from order_details

select max(unit_price),count(unit_price),min(unit_price),sum(unit_price) from order_details

select avg(unit_price) from order_details

-- group by ,having

select order_id,avg(unit_price) from order_details group by order_id;

select order_id,avg(unit_price) from order_details where discount<>0  group by order_id;-- single row only for where clause

select order_id,avg(unit_price) from order_details  group by order_id having count(order_id)>2; --multi row
 
 select * from order_details where order_id =(select order_id from order_details where order_id =10279)
