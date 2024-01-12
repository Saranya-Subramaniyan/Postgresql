---hstore ---key/value pair

---install hstore extension
create extension if not exists hstore;

--create table
create table table_hstore(
book_id serial primary key,
title varchar(100) not null,
book_info hstore
);

select * from table_hstore;

--insert

insert into table_hstore(title,book_info) values
('Title 2',
 '
 	"publisher" => "samyu",
 	"cost" => "Rs.800"
 '
);

--only publisher

select title,book_info -> 'publisher'as "publisher" ,
book_info-> 'cost' as cost from table_hstore;
