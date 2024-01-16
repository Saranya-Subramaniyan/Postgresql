--json

select '{"title":"the lord of the rings"}' as "json object"


select '{"title":"the lord of the rings"}'::text

select '{"title":"the lord of the rings"}'::json

drop table json_table;

create table json_table(id serial primary key,jsondata jsonb);
select * from json_table;

insert into json_table(jsondata) values('{"title":"the end","author":"saranya"}');

update json_table set jsondata='{"title":"the end","author":"saran"}' where jsondata->>'author'='saranya'


delete from json_table where jsondata->>'title'='the end'