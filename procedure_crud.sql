inout parameter mode

total_counts

create or replace procedure pr_orders_count(inout total_count integer default 0) as
$$
begin
select count(*) into total_count from orders;
end;
$$ language plpgsql;

call pr_orders_count();

drop procedure if exists pr_orders_count() 
