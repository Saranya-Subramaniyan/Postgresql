create type currency as enum ('usd','eur','gbp');
select 'usd'::currency;

alter type currency add value 'chf' after 'eur';

create table stocks(
stock_id serial primary key,
stock_currency currency);

insert into stocks(stock_currency) values('usd');

insert into stocks(stock_currency) values('chf');


insert into stocks(stock_currency) values('uybxds');

select * from stocks;

drop type currency as enum