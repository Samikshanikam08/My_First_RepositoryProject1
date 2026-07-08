create database mydb;
use mydb;

create table student(
id int primary key auto_increment,
s_name varchar(20),
s_address varchar(20)
);

insert into student(s_name,s_address) values('abc','mumbai');
insert into student(s_name,s_address) values('pqr','pune');
insert into student(s_name,s_address) values('xyz','latur');

select * from student;