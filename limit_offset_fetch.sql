select * from actors;

--comparison operator

select * from actors where gender<>'F'and date_of_birth <'1980-12-31';


--limit take from first row

select * from actors order by date_of_birth limit 10;


--offset remove from first to the count

select * from actors order by date_of_birth limit 5 offset 2;



---using fetch

select first_name,length(first_name) as len from actors fetch first 5 row only;