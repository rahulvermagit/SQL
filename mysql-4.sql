
-- ddl / dml statement
-- dml statement
use sakila;
create table tushar(id int);
insert into tushar values(10);
select * from tushar;

-- update 

create table tushar2(id int , name varchar(20));
insert into tushar2(id,name) values(10, "aman");
insert into tushar2(id,name) values(20, "rohit");
update tushar2 set name="isha";
select * from tushar2;

create table rahul123(id int , name varchar(20));
insert into rahul123(id , name) values(1,"rahul");
insert into rahul123(id , name) values(2,"mohit");
update rahul123 set name="isha" where id=1;
select * from rahul123;
DELETE from rahul123 where id=1;

-- esme dalete krmne par sab delete ho jayga but ese undu kiya ja skta hai  but esme roll back kiya ja skta hai
delete from rahul123;

-- esme sara data delete ho jayga  
-- esme datta delete hota hai structer nhi 

drop table rahul123;
-- drop se table or uski information delete ya hat jati hai  esme rollback nhi kr skte 
-- esme data or staructure dono delete ho jate h

-- truncate
-- esme data hi delete hota hai but roll back nhi kr skte
-- esme drop table ka staructer hi liya jata hai only 

truncate tushar;
use sakila;
select * from tushar;

create table companies(id int);
insert into companies values(10);
select * from companies;

desc companies;

-- add table columns
alter table companies
add column phone varchar(15);

desc companies;
select * from companies;  


 alter table companies
add  column age  varchar(15) default 0;
 select * from companies;
 
 alter table companies
 add column empluee_count varchar(20) not null;
 
 alter table companies
 add column employyy int not null;
 
 select * from companies;
  alter table companies drop column employyy;
  -- esme column hat jayga 
  
  select * from companies;
  
  -- reanme tables
  rename table companies to newcompany123;\
  select * from companies;
  select * from newcompany123;
  
-- 2nd method of rename the table

alter table tushar2 rename to rahul2;
select * from rahul2;

-- column ka rename

alter table rahul2 rename column id to student_id;
select * from rahul2;
update  rahul2 set name="mohan" where student_id=10;
select * from rahul2; 
desc rahul2;
-- column ko null bnana 
update rahul2 set name=null;
select * from rahul2;

-- datatype  change krna

alter table rahul2 modify name int;
desc rahul2;

-- change datatype and column name then use change
use sakila;
alter table rahul12
change student_id roll_no char(3);


  



