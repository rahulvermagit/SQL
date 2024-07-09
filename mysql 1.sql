show databases;
use sakila;
select database();
show tables;
select * from actor;
desc actor;
select actor_id,first_name from actor;
select * from actor where first_name='ED';
-- where operator(between)
select * from actor where actor_id between 3 and 5;
select * from actor where actor_id between 5 and 3;
select * from actor where actor_id in(3,5,7);
select * from actor where first_name in("JOHNNY","ED");
select * from actor where first_name="ED";   
select * from actor where first_name like "ED";
select * from actor where first_name like "E%";
select * from actor where first_name like "EL%";
select * from actor where first_name like "%E";
select * from actor where first_name like "G%E";
select * from actor where first_name like "G_A%";
select * from actor where first_name like "G__C%";
select * from actor where actor_id not in(3,5,7);
select * from actor where first_name="NICK";
select * from actor where first_name="NICK" and actor_id=44;
select * from actor where 
first_name="NICK" or first_name="PENELOPE" and actor_id>2;
select * from actor where 
(first_name="NICK" or first_name="PENELOPE") and actor_id>2;

-- function
use sakila;
select * from actor;
select  first_name , lower(first_name) from actor;

-- dummy table (dual table )

select 1+2 from dual;
select length('heyff') from dual;
-- size in byte
select length('木') from dual;
-- total number of lenth/leter size
select char_length("木木") from dual;

-- substring
select  first_name , substr(first_name , 1, 3) from actor;
select  first_name , substr(first_name , -4) from actor;
select  first_name , substr(first_name , -4,5) from actor;
select first_name , instr(first_name,"e") from actor;
select first_name , last_name , concat(first_name , last_name) from actor;
select first_name , last_name , concat(first_name , " " ,last_name) from actor;
select first_name , last_name , concat( "Mr." , " " , first_name , " " ,last_name) from actor;
select first_name , last_name , concat_ws( "-" , "Mr" , first_name ,  last_name) from actor;
-- lrim , rtrim , trim 
select "    hey     " from dual;
select trim("    hey     ") from dual;
select length(trim("    hey     ")) from dual;
select trim(leading " " from "    hey     ") from dual;  -- phle wala hat jaynge
select trim(trailing " " from "    hey     ") from dual; -- esme eske bad ke ya last wale hat jaynge 

select trim(leading "h" from "hhh   hey     ") from dual;
SELECT TRIM(both  'h' FROM 'hhh   heyhello   hhhhh') FROM DUAL; -- esme bich wale rh jaynge aage -piche dono hat jaynge

-- table me se bhi hta skte hai direct

select first_name , trim(both "P" from first_name ) from actor;

select first_name , lpad(first_name,5,"#") from actor;
select first_name , rpad(first_name,5,"#") from actor;
select first_name , replace(first_name,"E","#") from actor; -- E ki  jagah replace

-- numric values
select round(12.46) from dual;
select round(12.56) from dual;
select round(12.568,2) from dual; -- 2 decimal place tak lega round of leke dega
select truncate(12.46454,3) from dual; -- yh original 3 decimal tak value dega
select mod(12,5) from dual;


