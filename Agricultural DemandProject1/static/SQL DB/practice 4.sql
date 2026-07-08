CREATE TABLE product(
id INT,
p_name VARCHAR(20),
p_description VARCHAR(20)
);

SELECT * FROM product;

INSERT INTO product VALUES(1,'shirt','shirts are good');
INSERT INTO product VALUES(2,'T-shirt','T-shirts are good');
INSERT INTO product VALUES(3,'pants','pants are the best');

CREATE TABLE student1(
id INT ,
s_name VARCHAR(20),
s_email VARCHAR(20),
roll_no INT PRIMARY KEY,
address VARCHAR(20)
);

SELECT * FROM student1;

INSERT INTO student1 VALUES(1,'ram','ram@gmail.com',1,'pune');
INSERT INTO student1 VALUES(2,'sham','sham@gmail.com',5,'mumbai');
INSERT INTO student1 VALUES(3,'radha','radha@gmail.com',9,'thane');
 SHOW TABLES;
 
 DROP TABLE computer;
 DROP TABLE people;
 DROP TABLE person;
 DROP TABLE product;
 DROP TABLE student;
 DROP TABLE student1;