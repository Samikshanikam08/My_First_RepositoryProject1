create database updatedb;
use updatedb;

create table product(
id int primary key auto_increment,
p_name varchar(20),
p_price int
);

insert into product(p_name,p_price) values('pants','1000');
insert into product(p_name,p_price) values('shirts','2300');
insert into product(p_name,p_price) values('jacket','1050');
insert into product(p_name,p_price) values('pants','1400');
insert into product(p_name,p_price) values('Nike pants','1400');
insert into product(p_name,p_price) values('adidas pants','1400');
insert into product(p_name,p_price) values('hat','700');

update product set p_price = 2500 where p_name like '%pants%';

select * from product;

drop table product;

create table people(
id int primary key auto_increment,
p_name varchar(20),
p_profession varchar(20)
);

insert into people(p_name,p_profession) values('rakesh','software developer');
insert into people(p_name,p_profession) values('mahesh','musician');
insert into people(p_name,p_profession) values('ram','painter');
insert into people(p_name,p_profession) values('rahul','unemployed');
insert into people(p_name,p_profession) values('sham','IT engineer');

select * from people;

update people set p_profession = 'software developer' where id=2;
update people set p_profession = 'software developer' where id=4;

drop table people;

create table computer(
brand varchar(20),
ram int,
processor varchar(20)
);

insert into computer values('Asus',6,'i5');
insert into computer values('Dell',6,'i5');
insert into computer values('Samsung',6,'i5');
insert into computer values('HP',6,'i5');
insert into computer values('Apple',6,'i5');

select * from computer;

update computer set ram = 24 where brand in('Asus','Samsung','Apple'); 

drop table computer;