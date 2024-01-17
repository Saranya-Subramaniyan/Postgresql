---trigger
create table players(
player_id serial primary key,
name varchar(100));

create table players_audits(
player_audit_id serial primary key,
player_id int not null,
name varchar(100) not null,
edit_date timestamp not null default current_timestamp);


create function fn_players_name_changes_log()
returns trigger language plpgsql as
$$
begin
if new.name <> old.name then
  insert into players_audits(player_id,name,edit_date) values
  (old.player_id,old.player_id, now());
  end if;
end;
$$

create trigger trg_players_name_changes before update on players
for each row execute procedure fn_players_name_changes_log();

insert into players (name) values('saranya'),('samyu');

select * from players;

select * from players_audits;

update players set name ='saran' where player_id=1