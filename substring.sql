select substring('ahe movie will start at 8 p.m on Dec 10,2020.' from '.');-- a

select substring('ahe movie will start at 8 p.m on Dec 10,2020.' from '.*');-- "ahe movie will start at 8 p.m on Dec 10,2020."

select substring('ahe movie will start at 8 p.m on Dec 10,2020.' from 'will.*');-- "will start at 8 p.m on Dec 10,2020."

select substring('ahe movie will start at 8 p.m on Dec 10,2020.' from '\w+');-- ahe

select substring('ahe movie will start at 8 p.m on Dec 10,2020.' from '\w+.$');-- 2020.

select substring('ahe movie will start at 8 p.m on Dec 10,2020.' from '\d{2}');-- 10(2 digit)

select substring('ahe movie will start at 8 p.m on Dec 10,2020.' from '.');-- a







