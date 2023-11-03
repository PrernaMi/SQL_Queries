create database college;
create database if not exists college;
use college;

create table stud(
id int primary key,
name varchar(50),
age int not null
);

insert into stud values(1,"Prerena",24);
insert into stud values(2,"Soniya",26);
show databases; 

drop table stud;

create table stude(
rollno int primary key,
name varchar(50)
);

select * from stude;


insert into stude
(rollno , name)
value
(1,"Prerna"),
(2,"Soniya");

insert into stude
(rollno , name)
values
(3,"Kamini"),
(4,"Rahul");

drop table stude;



create table students(
rollno int primary key,
name varchar(40),
marks int not null,
grade varchar(40),
city varchar(20)
);

select * from students;

insert into students
(rollno , name,marks,grade,city)
values
(101,"prerna",78,"A","pune"),
(102,"soniya",79,"A","delhi"),
(103,"kamini",56,"b","pune"),
(104,"rahul",67,"A","maahrastra");

select rollno , name from students;
select * from students where marks > 60;
select * from students order by name asc;

select * from students order by marks desc limit 3;

select count(rollno) from students;
select city , count(name) from students
group by city;

select city, avg(marks)  from students group by city 
order by city ;

select city ,count(name) from students group by city;

select grade , count(grade) from students group by grade
order by count(grade) desc;

select city , count(name) from students group by city having max(marks) > 78;

select city, name  ,count(name)
from students
where grade = "A"
group by city, name
having max(marks) > 67
order by city;

update students
set grade = "O"
where grade = "A";

set sql_safe_updates =0;

update students
set grade = "A",
name = "Prerenamittal"
where grade = "O" and name = "Prerna";

update students
set name = "Prerna"
where name = "Prernamittal";

update students
set marks = marks+1;
delete from students 
where marks < 58;

create table dept(
id int primary key,
name varchar(30)
);

create table teacher(
id int primary key,
name varchar(30),
dept_id int,
foreign key (dept_id) references dept(id)
);
