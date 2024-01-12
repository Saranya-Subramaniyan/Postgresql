select * from customers

create view customers_v as select * from customers where contact_title='Sales Representative';


--create dup table 
select * from customers_v;


--dml ->select,update,insert,delete
--ddl-create,drop
--dcl-->grant,revoke,role

