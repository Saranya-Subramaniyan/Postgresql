select * from customers
create index cust_idx on customers(contact_name,contact_title);


drop index cust_idx