create database deletedb;
create database deletedb;
use deletedb;

create table employee(
id int primary key auto_increment,
e_name varchar(20),
e_salary int
);

insert into employee(e_name,e_salary) values('abc',25000);
insert into employee(e_name,e_salary) values('pqr',20000);
insert into employee(e_name,e_salary) values('lmn',30000);
insert into employee(e_name,e_salary) values('efg',35000);
insert into employee(e_name,e_salary) values('xyz',20000);

select * from employee;

delete from employee where id = 2;
delete from employee where e_salary = 20000;
truncate employee;
drop table employee;