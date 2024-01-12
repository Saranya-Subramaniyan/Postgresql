--json

create table table_json(id serial primary key,docs json);

select * from table_json;

insert into table_json(docs) values
('[1,2,3,4,5,9]'),
('[0,87,34,678]'),
('{"key":"value"}');

--search data

select docs from table_json;

--alter table
alter table table_json alter column docs type JSONB;
--specific data
select * from table_json where docs @> '2'; -- contains

