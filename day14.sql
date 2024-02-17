create database j_Weac_System;
use j_Weac_System;
#MY SQL CLAUSE
#from clause; points where changes is done  
#where clause:
#orderby clause: 
select sex, age, address from studentper order by age;
#we use (desc) for descending order
select sex, age, address from studentper order by age desc;
#distinct is use to make values unique
select distinct age from studentper order by age;
#group by clause: it works with an aggregiate function example mean, minimum,maximum, count, first and last
# agg function [avg, min, max, count, sum, first, last]

select Mjob, avg(JS11stterm) from studentper group by Mjob;
select Mjob, min(JS11stterm) from studentper group by Mjob;
select Mjob, max(JS11stterm) from studentper group by Mjob;
select Mjob, count(JS11stterm) from studentper group by Mjob;
select Mjob, sum(JS11stterm) from studentper group by Mjob;
select * from studentper limit 3;
select * from studentper order by age limit 2;
# my sql control flow program; is simply a way of setting condition in a program
select age, sex, JS11stterm, if(JS11stterm >= 90, 'Yes', 'No') as result from studentper;
#if null: it returns the value of the second column if there no value in the first column but if there a value in the first column, it returns it else it returns null if theres no value in both columns
select age, sex,JS11stterm,JS12ndTerm, ifnull(JS11stterm,JS12ndTerm) as result from studentper;
#nullif: compares the value of the first and second column and returns null if both values are same
select age, sex,JS11stterm,JS12ndTerm, nullif(JS11stterm,JS12ndTerm) as result from studentper;

select age, sex, famsize, address, JS32ndTerm,
     case
        when JS32ndTerm >= 70 and JS32ndTerm <= 100 then 'A'
		when JS32ndTerm >= 60 and JS32ndTerm <= 69.99 then 'B'
		when JS32ndTerm >= 50 and JS32ndTerm <= 59.99 then 'C'
		when JS32ndTerm >= 40 and JS32ndTerm <= 49.99 then 'D'
		when JS32ndTerm >= 30 and JS32ndTerm <= 39.99 then 'E'
        else 'F'
	 end as GRADE from studentper;

#TO CREATE A NEW TABLE
create table student_personal_information select sex,age,address,famsize,Pstatus,Medu,Fedu,Mjob,Fjob,guardian from studentper;
create table student_activities_table select traveltime,studytime,paid,health,activities,Emotions,famsup,schoolsup,internet from studentper;
create table student_score select JS11stterm,JS12ndTerm,JS13rdTerm,JS21srTerm,JS22ndTerm,JS23rdTerm,JS31stTerm,JS32ndTerm from studentper;
select * from student_score;
select * from student_activities_table;
         

