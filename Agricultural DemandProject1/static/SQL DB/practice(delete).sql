create table student(
id int primary key auto_increment,
s_name varchar(20),
s_age int
);

insert into student(s_name,s_age) values('stud1',20);
insert into student(s_name,s_age) values('stud2',18);
insert into student(s_name,s_age) values('stud3',21);
insert into student(s_name,s_age) values('stud4',20);
insert into student(s_name,s_age) values('stud5',19);

select * from student;

delete from student where s_age<20;
delete from student where id = 3;

delete from student;
truncate student;
drop table student;