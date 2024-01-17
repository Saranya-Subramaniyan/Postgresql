create table accounts(
account_id serial primary key,
name varchar(100) not null,
balance integer not null);

insert into accounts(name,balance) values
('saranya',100),
('samyu',150),
('indhu',150);

begin;
select * from accounts;
commit;

begin;

update accounts set balance= balance-50
where name='saranya';

rollback;

commit;




--error

begin;
select * from edcfrvgthyujik;

rollback;

select * from accounts;
commit;


begin;
update accounts set balance=balance-50 where name='samyu'
select * from accounts

savepoint first_update;

update accounts set balance=balance-50 where name='samyu'
select * from accounts;
rollback to first_update;
commit;