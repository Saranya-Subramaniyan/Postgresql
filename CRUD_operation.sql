Create table actors(
actor_id serial Primary key,
	first_name varchar(150),
	last_name varchar(150) Not NULL,
	gender char(1),
	date_of_birth Date,
	add_date Date,
	update_date Date,
);

create table directors(
director_id serial Primary key,
	first_name varchar(150),
	last_name varchar(150),
	date_of_birth Date,
	nationality VARCHAR(20),
	add_date Date,
	update_date Date

);

create table movies(
movie_id serial primary key,
	movie_name varchar(100) not null,
	movie_length int,
	movie_lang varchar(20),
	age_certificate varchar(10),
	release_date Date,
	director_id int references directors (director_id)
	
);

select * from movies;

create table movies_revenues(
revenue_id serial primary key,
movie_id int references movies(movie_id),
revenues_domestic numeric(10,2),
revenues_international numeric (10,2));

create table movie_actors(
movie_id int references movies(movie_id),
actor_id int references actors(actor_id),
primary key(movie_id,actor_id));

insert into actors(
	first_name ,
	last_name ,
	gender,
	date_of_birth ,
	add_date,
	update_date) values('saran','s','F','2002-04-11','2024-01-11','2024-01-11');
	
insert into actors(
	first_name ,
	last_name ,
	gender,
	date_of_birth ,
	add_date,
	update_date) 
	values('vijay','J','M','1987-07-11','2024-01-11','2024-01-11'),
	('aijth','S','M','1978-09-19','2024-01-11','2024-01-11');

insert into actors(
	first_name ,
	last_name ,
	gender,
	date_of_birth ,
	add_date,
	update_date) 
	values('nayan','V','F','1997-05-11','2024-01-11','2024-01-11'),
	('jay','S','M','1980/09/19','2024-01-11','2024-01-11') Returning *;
	
	
	select * from actors;
	
	insert into actors(
	first_name ,
	last_name ,
	gender,
	date_of_birth ,
	add_date,
	update_date) 
	values('nayan','V','F','1997-05-11','2024-01-11','2024-01-11'),
	('jay','S','M','1980/09/19','2024-01-11','2024-01-11') Returning *;
	
	--update

update actors set first_name='thirsha' where actor_id=6;

	
	select * from actors;
	
	update actors set first_name='vishal' where actor_id=7 returning *;


delete from actors where actor_id=6;