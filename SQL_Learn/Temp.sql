create database temp;
use temp;

create table student(
id int primary key,
name varchar(30),
subject varchar(40)
);

insert into student 
values
(1,'Prerna','Hindi'),
(2,'Soniya','Hindi'),
(3,'Kamni','Hindi');

select * from student;
select now();
select upper('Prerna');
select lower('PRERNA');

select subject from student
where name='Prerna';

select name from student where id>=2;

select * from student 
order by name asc;

select subject from student
where id between 1 and 3;

select name from student 
where id not in (2,3);

insert into student 
values
(4,'Pihu',null);

select name from student where subject is null;

select name from student where name like '_a%';

select name from student order by name asc;
select distinct id from student;
select name from student where subject='Hindi' order by name limit 2;

alter table student
add column marks int;

show tables;
select * from student;

update student
set marks = 234
where id = 1;

update student
set marks = 456
where id = 2;

update student
set marks = 346
where id = 3;

update student
set marks = 744
where id = 4;

update student
set subject = 'English'
where id = 4;

select name , id from student where marks >= 567 order by name limit 3;

select count(subject) from student group by subject;
select subject,max(marks) from student group by subject;

select name ,min(marks) as Marks from student group by name having id between 1 and 4 limit 2;
select subject,count(*) as Total from student group by subject;