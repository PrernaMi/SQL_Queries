create database xyz;
use xyz;

create table employee(
id int primary key,
name varchar (20),
salary int
);

insert into employee
(id , name , salary)
values
(1 , "adnam" , 25000),
(2 , "bob" , 54637),
(3 , "casety" , 32562);


create table emp1(
id1 int primary key,
emp_id int,
city varchar(30),
foreign key (emp_id) references employee(id)
);

insert into emp1 
(id1 , city )
values
(2,"Delhi"),
(3,"Pune"),studentsstudentsstudents
(4,"delhi");

select * from emp1;

select name from employee;