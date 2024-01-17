select * from customers;

Do
$$
declare
 rec record;
 begin
 select customer_id,
  company_name from customers
  into strict rec where
  company_name like 'A%';
  exception
  when too_many_row then
  raise eception 'your query return too many rows';
  end;
 $$ language plpgsql;