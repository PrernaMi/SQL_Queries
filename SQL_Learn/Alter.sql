create database alter_C;
use alter_C;

create table student(
id int primary key,
name varchar(20),
grade varchar(10),
marks int
);

insert into student
(id , name , grade, marks)
values
(1,"Prerna","A",54673),
(4,"kamni","B",5463),
(5,"soniya","A",838),
(2,"Prerna","A",5363);

select * from student;

update student 
set grade = "C"
where grade = "B";

alter table student
add age int;

alter table student
drop age ;

alter table student
add column age int ;

alter table student
add column age int not null default 19 ;

alter table student
change column age age varchar(2) ;

alter table student
modify column age int;
