--formatting dates

select current_timestamp,to_char('2020-01-01 10:00:00'::timestamp,'yyyy month ddth');--"2020 january   01st"

--date construction

select make_date(2020,01,01);--"2020-01-01"

select make_date(2020,12,1);

select make_timestamp(2020,12,03,10,30,45);--"2020-12-03 10:30:45"


--interval


select make_interval(2020,01,01,08,10,30,45);--""2020 years 1 mon 15 days 10:30:45""


select make_interval(days =>10);--"10 days"

select make_interval(weeks =>4); --"28 days"


--timestamptz


select pg_typeof(make_timestamptz(2020,02,15,10,35,15.35));--"timestamp with time zone"