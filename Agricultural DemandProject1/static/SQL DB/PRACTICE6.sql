create database selectdb;
use selectdb;

create table product(
p_id int primary key auto_increment,
p_name varchar(20),
c_name varchar(20)
);

insert into product(p_name,c_name) values('car','anne');
insert into product(p_name,c_name) values('bike','jannie');
insert into product(p_name,c_name) values('laptop','charlie');
insert into product(p_name,c_name) values('led','john');

select * from product;
select p_id,p_name from product;

drop table product;

create table people(
id int primary key auto_increment,
p_name varchar(20),
p_phone_no varchar(10),
p_email varchar(20)
);

show tables;

insert into people(p_name,p_phone_no,p_email) values('abc','2398494596','abc@gmail.com');
insert into people(p_name,p_phone_no,p_email) values('pqr','3747372845','pqr@gmail.com');
insert into people(p_name,p_phone_no,p_email) values('xyz','2990344335','xyz@gmail.com');
insert into people(p_name,p_phone_no,p_email) values('lmn','5583907324','lmn@gmail.com');

select * from people;
select p_name,p_email from people;