drop function fn_my_check(x integer,y integer)
create or replace function 
fn_my_check(x integer default 0,y integer default 0)
returns bool as
$$
 begin
  if x>y then 
	return true;
  else
	return false;
  end if;
end;
$$ language plpgsql;

select fn_my_check(9,8);