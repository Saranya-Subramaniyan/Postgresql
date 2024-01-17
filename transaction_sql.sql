create table accounts(
account_id serial primary key,
name varchar(100) not null,
balance integer not null);

insert into accounts(name,balance) values
('saranya',100),
('samyu',150),
('indhu',150);

select * from accounts;

