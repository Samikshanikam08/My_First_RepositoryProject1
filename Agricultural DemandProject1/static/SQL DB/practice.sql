-- Create the homework1 database and work
CREATE DATABASE homework1;
USE homework1;

CREATE TABLE product( 
id INT,
p_name VARCHAR(20),
p_price DECIMAL(4,2)
);

CREATE TABLE people(
id INT,
p_name VARCHAR(20),
p_phone_no VARCHAR(10),
p_birthday DATE,
p_height DECIMAL(3,2)
);

SHOW TABLES;

CREATE TABLE computer(
brand VARCHAR(20),
ram INT,
processor VARCHAR(20),
price INT
);

SHOW TABLES;

DROP TABLE product;

CREATE TABLE person(
id INT,
p_name VARCHAR(20)
);

ALTER TABLE person ADD p_email VARCHAR(20);
ALTER TABLE person DROP COLUMN p_name;

SELECT * FROM person;