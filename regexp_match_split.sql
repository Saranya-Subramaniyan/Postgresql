select regexp_matches('amazing #postgresql','#([A-Za-z0-9_])');--p

select regexp_matches('amazing #postgresql','#([A-Za-z0-9_]*)');--"{postgresql}"

select regexp_matches('amazing #postgresql #sql','#([A-Za-z0-9_]*)','g');--"{postgresql}","{sql}"


--replace
select regexp_replace('saranya s','(.*)(.*)','\2\1');--"saranya s"


--split_to

select regexp_split_to_array('saranya,s,sarany',',');--"{saranya,s,sarany}"

select regexp_split_to_array('saranya,s,sarany','');--"{s,a,r,a,n,y,a,"","",s,"","",s,a,r,a,n,y}"

select array_length(regexp_split_to_array('saranya S S',' '),1);--3