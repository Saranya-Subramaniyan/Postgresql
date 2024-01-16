select now();--"2024-01-16 13:11:12.470502+05:30"

select transaction_timstamp(),statement_timestamp(),clock_timestamp();

select timeofday();--"2024-01-16 13:11:12.470502+05:30"

select age('2020-01-01','2019-10-12');--"2024-01-16 13:11:12.470502+05:30"

select age( timestamp '2019-08-11');--"4 years 5 mons 5 days"

---current_date fun


select current_date+1; --""2024-01-17""

select extract(epoch from timestamptz '2020-12-20');--1608402600.000000

select extract(epoch from timestamptz '2020-12-20')-
 extract(epoch from timestamptz '2020-10-20')
 as "difference in seconds"; --5270400.000000