select * from products;

create table master(
pk integer primary key,
tag text,
parent integer);

create table master_child() inherits (master);

alter table master_child add constraint master_pk primary key (pk);

select * from master;
select * from master_child

