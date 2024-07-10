-- string function 
-- numeric function
-- date function 
-- general function

use sakila;
select first_name , actor_id, if(first_name="NICK","YES", "no" )
from actor;

select first_name , actor_id , substr(first_name ,1 , 1),
if( substr(first_name,1,1)="j",actor_id+10 , actor_id+15)
from actor;

select first_name ,actor_id , substr(first_name ,1 ,1) ,
if(substr(first_name ,1,1)="k",actor_id*10 , actor_id*0)
from actor;

-- if(condition , True ,False )
-- if(condition , True , if(condition , True , False) )

select actor_id , first_name , substr(first_name , 1 , 5) ,
if(mod(actor_id,2)=0 , actor_id*10,
	if(mod(actor_id, 3)=0 , actor_id*0 , actor_id*1) )
    as "new"
    from actor;
    
    SELECT actor_id, first_name, SUBSTR(first_name, 1, 5),
    IF(MOD(actor_id, 2) = 0, "even", 
        IF(MOD(actor_id, 3) = 0, "odd", actor_id * 1)) 
        AS "new"
FROM 
    actor;

  select actor_id , first_name , substr(first_name , 1 , 5) ,
if(mod(actor_id,2)=0 , "even",
	if(mod(actor_id, 3)=0 , "odd" , actor_id*1) )
    as "new"
    from actor;
    
 /*
 select col 
	case expression
    when value then work
    when value then work
    end
    from table
*/

select actor_id , first_name , 
	case first_name
	when  "NICK" then  'good' 
    else actor_id
    end as 'newid'
 from actor;  
 
 -- nullif(exp1 , exp2)
 -- exp1 = exp2 (return null otherwise return exp1
 
 select first_name ,last_name , nullif(length(first_name),8)
 from actor;
 
 -- ifnull
 -- nv1 , nv12 , coals
 select * from address;
 
 select address_id , address2 ,
 coalesce(address2,address_id,10)  from address;
 -- esme jo phle aayga bo show hoga null ki condition me address_id show ho jaygi 
 
 
 -- AGEEREgate

use sakila;
select 1+2 from dual;

-- pseudo columns
 select curdate() , current_time() , current_timestamp() from dual;
 
 select now() from dual;
 
 select adddate(now(),3);
 
 select adddate( now() , interval 3 year ) ;
 
 select date(now());
 
 select now() , 
 month(now() ) , date_format( now() , 'Year is %Y' );
 
 select curdate() from dual;
 select month ( '09-17-24');
 select str_to_date( '09-17/2024' , '%m-%d/%y');
 
 --  date diff
 
 select * from payment;
 
 select sum(amount) from payment;
 
 select max(amount) , max(staff_id) , 
 min(amount) ,avg(amount) from payment;
 
 select count(customer_id) from payment;
 
 select count(*) from payment;
 
 select customer_id from payment;
 
 select distinct(customer_id) from payment;
 
 select count(distinct(customer_id)) from payment;
 
 select * from payment;
 
 select count(*) from payment where customer_id=2;
 
 select distinct(customer_id) from payment;
 
 select customer_id , count(*) from payment group by customer_id;
-- group by = total count kar ke deta hai ki ek value ke kitne hai


select * from address;
 
 
 
 
 

 
