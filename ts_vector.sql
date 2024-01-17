select * from customers;

select to_tsvector('washes');

select to_tsvector('washed');

select to_tsvector('the quick brown for jumped over'); --"'brown':3 'jump':5 'quick':2"

select to_tsvector('this is a lamp') @@ to_tsquery('lamp');--true

select to_tsvector('the quick brown for jumbed over the lazy dog') @@ to_tsquery('!dog');--false

