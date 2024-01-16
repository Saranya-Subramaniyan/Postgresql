--tirm


select trim(leading from '  saranya  ');--"saranya  "
select trim(trailing from ' saranya  ');--" saranya"
select trim(both from '  saranya  ');--saranya\\
select ltrim('yummy','y');--ummy

select rtrim('yummy','y');--yummy

select btrim('yummy','y');--umm


--lpad and rpad

select lpad('database',15,'A');--"AAAAAAAdatabase"

select rpad('database',15,'A');--"databaseAAAAAAA"

--length

select length('saranya  ');

--position
select position('amazing' in 'amazing postgresql');--1
select position('amazing' in 'the amazing postgresql');--5


--strpos(case sensitive)
select strpos('saranya','ran');--3
select strpos('saranya','Ran');--0

select strpos('saranya','man');--0


--substring

select substring('what a wonderful world ' from 2 for 8);--"hat a wo"

select substring('what a wonderful world ' from 4);--"t a wonderful world "

select substring('what a wonderful world ' for 10);--"what a won"

--repeat

select repeat('a',4);--aaaa

select repeat(' ',7);--"       "
select repeat('ab',4);--abababab


--replace

select replace('hello world','l','i');--"heiio worid"

select replace('hello world','L','I');--"hello world"


select replace('i like cats','cats','dogs');--i like dogs

