create database j_Weac_System;
use j_Weac_System;
alter table student_score add column StudentID int primary key not null auto_increment first;
select * from student_score;
alter table student_personal_information add column StudentID int primary key not null auto_increment first;
alter table student_activities_table add column StudentID int primary key not null auto_increment first;
#it not possible to join table with different IDs together it has to be same. one has to be primary key and one foreign key
#mysql conditions
select * from studentper;
#to get a perticular/ insight of data from the given large set of data eg. using of and *
select * from studentper where (age <= 13 and age = 12) and schoolsup = 'yes';
#use of or
select * from studentper where guardian  = 'father' or traveltime >=1;
#use of and, & or together, depending of how the condition is be given
select * from studentper where (age <= 13 and age = 12) or schoolsup = 'yes';
#use of range also know as betwen
select * from studentper where JS11stterm between 25 and 60;
#use of not between, it is the opposite of between
select * from studentper where JS11stterm not between 25 and 60;
#use of null
select * from studentper where famsup is null;
#use of not null opposite of null
select * from studentper where famsup is not null;
#use of LIKE, it is like a search pattern. eg find a word that start with a certain aphabet
select * from studentper where Mjob like 'C%';
#use of end with
select * from studentper where Mjob like '%R';
#search for Mothers job that the third latter of their job has latter s. in this double underscore must be use in place of the first missing latter
select * from studentper where Mjob like '__s%';
#searching for student mothers job that has five character lenght
select * from studentper where Mjob like '_____';
#mysql join. how to join two tables together
#inner join honour the lesser record first before the rest
select student_personal_information.sex,student_personal_information.age,student_personal_information.address,student_personal_information.guardian,
student_score.JS11stterm,student_score.JS12ndTerm, student_score.JS13rdTerm from student_personal_information inner join student_score on 
student_personal_information.StudentID =student_score.StudentID;

#while right join is opposite, anywhere where the record id not available it will appare with null that means the record is not available
select student_personal_information.sex,student_personal_information.age,student_personal_information.address,student_personal_information.guardian,
student_score.JS11stterm,student_score.JS12ndTerm, student_score.JS13rdTerm from student_personal_information right join student_score on 
student_personal_information.StudentID =student_score.StudentID;

#left join does the same with inner join. it honour the lesser records 
select student_personal_information.sex,student_personal_information.age,student_personal_information.address,student_personal_information.guardian,
student_score.JS11stterm,student_score.JS12ndTerm, student_score.JS13rdTerm from student_personal_information left join student_score on 
student_personal_information.StudentID =student_score.StudentID;

#cross join, sometime the cross join return an error because of it nature. and it doesnot work with bigger table, it only work on smaller table.
#also the ID on the right path must correspond with the left path
select student_personal_information.sex,student_personal_information.age,student_personal_information.address,student_personal_information.guardian,
student_score.JS11stterm,student_score.JS12ndTerm, student_score.JS13rdTerm from student_personal_information cross join student_score on 
student_personal_information.StudentID =student_score.StudentID;

create database employees_system;
use employees_system;
select * from hr_analytics;
select avg(age) from hr_analytics;
select distinct attrition from hr_analytics;
select attrition, count(attrition) as result from hr_analytics where attrition ='Yes';
select BusinessTravel, count(BusinessTravel) as result from hr_analytics group by BusinessTravel;
select avg(DailyRate) from hr_analytics;
select Department, count(Department) as result from hr_analytics group by department;
select avg(DistanceFromHome) from hr_analytics;
select EducationField, count(EducationField) as result from hr_analytics group by EducationField order by result DESC Limit 1;



