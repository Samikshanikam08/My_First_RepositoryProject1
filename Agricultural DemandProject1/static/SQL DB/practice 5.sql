CREATE DATABASE school;
USE school;

CREATE TABLE student(
s_first_name VARCHAR(20),
s_last_name VARCHAR(20),
s_age INT
);

INSERT INTO student VALUES('STUDENT1FN','STUDENT1LN',19);
INSERT INTO student VALUES('STUDENT2FN','STUDENT2LN',20);
INSERT INTO student VALUES('STUDENT3FN','STUDENT3LN',22);

SELECT * FROM student;
SELECT s_first_name,s_age FROM student;

create table student1(
s_id int,
s_name varchar(20),
s_div varchar(10),
no_stud int
);

insert into student1 values(1,'stud1','A',50);
insert into student1 values(2,'stud2','B',60);
insert into student1 values(3,'stud3','C',55);
insert into student1 values(4,'stud4','D',65);
insert into student1 values(5,'stud5','E',70);

select s_div,no_stud from student1;
select * from student1;