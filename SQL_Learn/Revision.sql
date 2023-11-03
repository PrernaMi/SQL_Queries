CREATE DATABASE college1;
USE college1;
 
 create table student(
 rollno int primary key,
 name varchar(30),
 class varchar(10),
 marks int
 );
 
 insert into student
 (rollno , name , class , marks)
 values
 (1 , "Prerna" , "IV" , 345),
 (2 , "soniya" , "IV" , 548),
 (3 , "kamni" , "IV" , 223),
 (4 , "rahul" , "IV" , 854);
 
 select * from student;