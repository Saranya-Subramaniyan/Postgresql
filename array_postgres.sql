select array[1,2,3,4] =Array[1,2,3,4] as "equality",
 array[1,2,3,4] <> array[1,2,3,4] as "not equal"
 
 
 select array[1,2,3,4] @> array[2,3,4] as "contains",
 array['a','b'] <@ array['a','b'] as "contained by",
 array[1,2,3,4] && array[2,3,4] as "is overlap"
 
 select array_length(array[1,2,3,4],1);--4
 
 select array_lower(array[1,2,3,4],1);--1
 
 select array_upper(array[0,1,3,4],1);--4
 
 select array_position(array['jan','feb','mar','april'],'feb');--2
 
 select array_positions(array[3,2,3,4],3); --{1,3}
 
 
 select array_cat(array['jan','feb'],array['march','april']);--"{jan,feb,march,april}"
 
 select array_append(array[1,2,3],4);--{1,2,3,4}
 
 select array_prepend(4,array[1,2,3]);--{4,1,2,3}
 
 select array_remove(array[1,2,3,4],4);--{1,2,3}
 
 select array_replace(array[1,2,3,4],2,10); --{1,10,3,4}
 
 
 select string_to_array('1,2,3,4,a,b',',');--"{1,2,3,4,a,b}"
 
 
 select array_to_string(array[1,2,3,4],',');--"1,2,3,4"
 select array_to_string(array[1,2,NULL,4],'|');--"1|2|4"
  
select array_to_string(array[1,2,null,4,null],'|','empty_data');--"1|2|empty_data|4|empty_data"
  