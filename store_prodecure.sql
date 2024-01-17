create table t_accounts(
recid serial primary key,
name varchar not null,
balance dec(15,2) not null);

select * from t_accounts;

insert into t_accounts(name,balance) values
('saranya',100),
('ramya',987),('santhi',432);

create or replace procedure pr_money_transfer(
sender int,
receiver int,
amount dec)
as $$ 
begin
 update t_accounts
 set balance =balance+amount
 where recid =receiver;
commit
end;
$$ language plpgsql;