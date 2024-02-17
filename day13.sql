create database earlycodeacademy;
#EXERCISE
#IN THE PREVIOUS DATABASE CREATE THE FOLLOWING TABLES
# STAFFTABLE [ID, STAFFNAME, STAFFGENDER,STAFFDOB, STAFFCONTACT, STAFFADDRESS, STAFFQUALIFICATION, STAFFNUMBEROFSUBJECTTAUGHT,SUBJECTTAUGHTNAME, 
#STAFFCLASSTEACHER
#PAYMENTTABLE[PAYMENTID, STUDENTID, STUDENTNAME,AMOUNTPAID, DATEOFPAYMENT,BALANCETOBEPAID]
#( * )means all
#we use export to move our file to another folder
#ASSIGNMENT 2nd feb. 2024
use earlycodeacademy;
create table student_table(id int primary key not null,
name varchar(255) not null,
gender varchar(40) not null,
age int not null,
address text not null,
guardian varchar(255) not null,
guardiancontact varchar(25) not null,
minutefromschool varchar(25) not null);
select * from student_table;
insert into student_table(id, name,gender,age,address,guardian,guardiancontact,minutefromschool) values
(1, 'Henry Ford','Male',14,'No 50 highway street kubwa','Mother','08130335636','20 Minute'),
(2, 'Joshua Philip','Male',30,'No 29 highway street wuse','Mother','08130335636','10 Minute'),
(3, 'Anita Mary','Female',17,'No 100 Bala blue kubwa','Father','08130365736','30 Minute'),
(4, 'Akpan Sunday','Male',48,'No 40 Baku street kubwa','Mother','08030335636','60 Minute'),
(5, 'Bambam Faith','Female',20,'No 35 Emotan street kubwa','Father','08130323636','80 Minute'),
(6, 'Okoro Samuel','Male',38,'No 50 James street kubwa','Mother','08190467739','15 Minute'),
(7, 'Lawal Fatima','Female',24,'No 45 Ogunlaji street kubwa','Father','08134687950','120 Minute'),
(8, 'opeyemi Biola','Male',54,'No 100 Emotan street kubwa','Mother','07060335636','40 Minute'),
(9, 'Banku Faith','Female',36,'No 30 Bolaji street kubwa','Mother','08167345627','120 Minute'),
(10, 'Jecinta Onu','Female',29,'No 56 highway street kubwa','Mother','08130335636','90 Minute');
select * from student_table;

select name, guardian from student_table;
update student_table set age = 15 where id =3;
delete from student_table where id = 10;
#the four query commands(update, select, delete, insert) are only for the value in the table.

show indexes from student_table;
create index studentgender on student_table(gender);
#to drop index
drop index studentgender on student_table;

#ASSIGNMENT
#IN THE PREVIOUS DATABASE CREATE THE FOLLOWING TABLES
# STAFFTABLE [ID, STAFFNAME, STAFFGENDER,STAFFDOB, STAFFCONTACT, STAFFADDRESS, STAFFQUALIFICATION, STAFFNUMBEROFSUBJECTTAUGHT,SUBJECTTAUGHTNAME, 
#STAFFCLASSTEACHER

use earlycodeacademy;
create table STAFF_TABLE (ID int primary key not null,
STAFFNAME varchar(255) not null,
STAFFGENDER varchar (30) not null,
STAFFDOB varchar(40) not null,
STAFFCONTACT varchar(45) not null,
STAFFADDRESS text not null,
STAFFQUALIFICATION varchar(200) not null,
STAFFNUMBEROFSUBJECTTAUGHT int not null,
SUBJECTTAUGHTNAME varchar(400) not null,
STAFFCLASSTEACHER varchar(150) not null);
select * from STAFF_TABLE;

insert into STAFF_TABLE(id,staffname, staffgender, staffdob, staffcontact, staffaddress, staffqualification, staffnumberofsubjecttaught, subjecttaughtname, staffclassteacher) values
(11, 'Onu Jecinta', 'Female', '8 March 1994', '08130335636', 'No 5 susan adoba street lifecamp', 'BSc', 2, 'Mathematics and English', 'Jecinta'),
(12, 'Mercy Rowland', 'Female', '2 March 2004', '08146578375', 'No 5 susan street kubwa', 'HND',3, 'Mathematics,Diction and Hausa', 'Mercy'),
(13, 'Peter Ameh', 'Male', '24 May 1990', '08135768294', 'No 40 bolaji street kubwa', 'BSc',1, 'Geography', 'Peter'),
(14, 'Tony Okoh', 'Male', '8 April 1981', '08046759983', 'No 35 Aminu kano cresent wuse', 'NCE',4, 'Mathematics, Sociology, Chemistry and English', 'Tony'),
(15, 'Amara James', 'Female', '8 Nvember 2004', '07046573859', 'No 20 susan adoba street lifecamp', 'BSc',2, 'Biology and Physics', 'Amara'),
(16, 'Ola Bolaji', 'Male', '8 July 1992', '08135678769', 'No 9 Emotan street kubwa', 'ND',2, 'Mass Communication and Literature', 'Ola'),
(17, 'Haruna Isah', 'Male', '10 March 1986', '0834896878', 'No 60 susan street kubwa', 'NCE', 2, 'Integrated science and Biology', 'Haruna'),
(18, 'Agba John', 'Male', '25 October 2005', '09037890987', 'No 15 Yaunde street lifecamp', 'HND',2, 'Agricultural science and Sociology', 'Agba'),
(19, 'Faith Uche', 'Female', '8 March 1995', '08167385555', 'No 7 Jiba street lifecamp', 'BSc',2, 'Igbo and CRK', 'Uche'),
(20, 'Ruth Micheal', 'Female', '12 April 2000', '08130335999', 'No 18 susan adoba street lifecamp', 'NCE',2, 'Mathematics and English', 'Ruth');
select * from STAFF_TABLE;
#PAYMENTTABLE[PAYMENTID, STUDENTID, STUDENTNAME,AMOUNTPAID, DATEOFPAYMENT,BALANCETOBEPAID]
use earlycodeacademy;
create table PAYMENTTABLE(PAYMENTID int primary key not null, 
AMOUNTPAID int not null,
STUDENTNAME varchar(255) not null,
FEES int not null);
select * from PAYMENTTABLE;
alter table PAYMENTTABLE drop column BALANCETOBEPAID;
alter table PAYMENTTABLE add column STUDENTNAME varchar(255) not null;
alter table PAYMENTTABLE add column FEES int not null;
alter table PAYMENTTABLE drop column AMOUNTPAID;
alter table PAYMENTTABLE add column AMOUNTPAID int not null;
insert into PAYMENTTABLE(paymentid,studentname,fees,amountpaid) values
(001,'Mercy',50000,30000),
(002,'John',50000,20000),
(003,'Wilson',50000,30000),
(004,'Amara',50000,10000),
(005,'Ada',50000,40000),
(006,'Joel',50000,20000),
(007,'Ernest',50000,30000),
(008,'Haruna',50000,20000),
(009,'James',50000,50000),
(010,'Hannah',50000,10000);
select * from PAYMENTTABLE;
alter table PAYMENTTABLE add column ID int primary key not null auto_increment first;









