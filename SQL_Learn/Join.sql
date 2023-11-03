create database joins;
use joins;

create table student(
stud_id int primary key,
name varchar(20)
);


insert into student
(stud_id , name)
values
(101 , "Adam"),
(102 , "bob"),
(103 , "cater");

create table course(
id int primary key,
course varchar(30)
);

insert into course
(id , course)
values
(101 , "Adam"),
(102 , "bob"),
(103 , "cater"),
(104 , "ftsy"),
(105 , "abc");

select * from course;

select * 
from student
inner join course
on student.stud_id = course.id;

select name 
from student
inner join course
on student.stud_id = course.id;

select * 
from student 
left join course
on student.stud_id = course.id;

select * 
from student 
right join course
on student.stud_id = course.id;


select * 
from student 
left join course
on student.stud_id = course.id
union
select * 
from student 
right join course
on student.stud_id = course.id;


select name from student
union
select  course from course;

create table students(
rollno int primary key,
name varchar(30),
marks int
);


insert into students
(rollno , name , marks)
values
(1,"Prerna" , 45),
(2,"Kamni" , 35),
(3,"soniya" , 89),
(4,"rahul" , 34),
(5,"suman" , 87),
(6,"mamta" , 45);

select avg(marks) from students;

select name 
from students
where marks > (select avg(marks) from students);

select rollno 
from students
where rollno % 2 =0;


select name from students
where rollno in ( 
select rollno 
from students
where rollno % 2 =0);


