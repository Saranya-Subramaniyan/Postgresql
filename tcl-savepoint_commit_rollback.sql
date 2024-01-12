--tcl --commit,savepoint,roolback
create table emp(id serial primary key,name varchar(10) not null )
select * from emp;

insert into emp(name) values('saran'),('sruthi'),('samyu');

commit;

savepoint my_savepoint;

rollback to my_savepoint