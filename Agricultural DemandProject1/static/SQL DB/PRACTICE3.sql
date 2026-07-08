CREATE TABLE student(
id INT,
s_first_name VARCHAR(20),
s_last_name VARCHAR(20),
s_email VARCHAR(40),
grade INT
);

SELECT * FROM student;

INSERT INTO student values(1,'ram','patil','ram@gamil.com',9);
INSERT INTO student VALUES(1,'sham','patil','sham@gmail.com',9);
INSERT INTO student(id,s_first_name,s_last_name) VALUES(3,'radha','sharma');