select * from customers


create index cust_name_idx on customers(contact_name);

select * from customers where contact_name ='Laurence Lebihan' and contact_title='Owner';

create index cust_name_phone_idx on customers(contact_name,phone);

drop index index_name;

