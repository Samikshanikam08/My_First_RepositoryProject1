create database mydatabase1;
use mydatabase1;

create table student1(
id int primary key auto_increment,
s_name varchar(20),
s_situation varchar(20)
);

insert into student1(s_name,s_situation) values('john','passed');
insert into student1(s_name,s_situation) values('ram','failed');
insert into student1(s_name,s_situation) values('sham','passed');
insert into student1(s_name,s_situation) values('rakesh','passed');

select * from student1;

update student1 set s_situation='passed';

update student1 set s_situation='failed' where id=3;