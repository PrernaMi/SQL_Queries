create database company;
use company;

create table EmployeeInfo(
empid int primary key,
empfname varchar (30),
emplname varchar (30),
department varchar (20),
project varchar (30),
address varchar (30),
dob date,
gender varchar(20)
);

desc EmployeeInfo;

insert into EmployeeInfo
(empid,empfname,emplname,department,project,address,dob,gender)
values
(1,'Sanjay','Mehra','HR','P1','Hyderabad(HYD)','1976-12-01','M'),
(2,'Ananya','Mishra','Admin','P2','Delhi(DEL)','1969-05-02','F'),
(3,'Rohan','Diwan','Account','P3','Mumbai(BOM)','1980-01-01','M'),
(4,'Sonia','Kulkarni','HR','P1','Hyderabad(HYD)','1992-05-02','F'),
(5,'Ankit','Kapoor','Admin','P2','Delhi(DEL)','1994-07-03','M');

select * from EmployeeInfo;

create table EmployeePosition(
empid int primary key,
emp_pos varchar (30),
dateofjoin date,
salary int,
foreign key(empid) references EmployeeInfo(empid)
);

insert into EmployeePosition
(empid,emp_pos,dateofjoin,salary)
values
(1,'Manager','2022-05-01',500000),
(2,'Executive','2022-05-02',75000),
(3,'Manager','2022-05-01',90000),
(4,'Lead','2022-05-02',85000),
(5,'Executive','2022-05-01',300000);

select * from EmployeePosition;

select  EmployeeInfo.empfname as F_Name , EmployeeInfo.emplname as L_Name, EmployeePosition.emp_pos as Position
from EmployeeInfo
inner join EmployeePosition
on EmployeeInfo.empid = EmployeePosition.empid;