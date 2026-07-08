create table student(
id int primary key auto_increment,
s_name varchar(20),
s_address varchar(20),
s_age int
);

insert into student(s_name,s_address,s_age) values('john','pune',25);
insert into student(s_name,s_address,s_age) values('marrie','mumbai',23);
insert into student(s_name,s_address,s_age) values('aneei','thane',20);
insert into student(s_name,s_address,s_age) values('joseph','pune',30);
insert into student(s_name,s_address,s_age) values('marrie','benglore',33);
insert into student(s_name,s_address,s_age) values('john','thane',32);

select * from student;
select * from student WHERE s_address ='thane';
select * from student WHERE s_age >= 30;

create table employee(
id int primary key auto_increment,
e_name varchar(20),
e_dept varchar(20),
e_salary int
);

insert into employee(e_name,e_dept,e_salary) values('ram','IT',30000);
insert into employee(e_name,e_dept,e_salary) values('sham','HR',40000);
insert into employee(e_name,e_dept,e_salary) values('radha','IT',25000);
insert into employee(e_name,e_dept,e_salary) values('anuu','HR',35000);

select * from employee where e_salary > 35000;
select e_name from employee where e_salary<30000;
