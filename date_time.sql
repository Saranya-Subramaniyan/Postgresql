select extract('day' from current_timestamp) as "day";--16

select extract('century' from interval '500 years') as "interval";--5



select interval '30 minutes' +interval '30 minutes';--"01:00:00"

select interval '2:00' /2 as "1 hour";--"01:00:00"


select (date '2020-01-01',Date '2020-12-31') overlaps (date '2020-10-12',date '2020-12-01');--true


select current_date,current_time,current_timestamp,localtime,localtimestamp,current_time(6);
--"2024-01-16"	"13:09:51.612520+05:30"	"2024-01-16 13:09:51.61252+05:30"	"13:09:51.61252"	"2024-01-16 13:09:51.61252"	"13:09:51.612520+05:30"


