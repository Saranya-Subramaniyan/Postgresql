show dateStyle

set datestyle ='ISO, MDY'


SELECT to_date('20200101','yyyy-mm-dd');--error

SELECT to_date('20200101','yyyymmdd');--"2020-01-01"


SELECT to_date('2020-01-01','yyyy-mm-dd');

SELECT to_date('2020-may-01','yyyy-mon-dd');--"2020-05-01"

select to_date('dec,01,2020','mon,dd,yyyy');



------timestamp

select to_timestamp('2020-01-11 20:08:00','yyyy-mm-dd hh24:mi:ss');--"2020-01-11 20:08:00+05:30"


