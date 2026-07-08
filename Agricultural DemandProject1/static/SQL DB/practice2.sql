CREATE DATABASE homework2db;
USE homework2db;

CREATE TABLE product(
id INT,
p_name VARCHAR(30),
p_price DECIMAL(4,2)
);

SELECT * FROM product;
ALTER TABLE product DROP COLUMN p_price;

DROP TABLE product;

CREATE TABLE people1(
id INT,
p_name VARCHAR(20),
p_phone_no VARCHAR(10),
p_birthday DATE,
p_height DECIMAL(4,2)
);

SELECT * FROM people1;

ALTER TABLE people1 ADD gender VARCHAR(1);
ALTER TABLE people1 ADD p_iq INT;

DROP TABLE people1;

CREATE TABLE laptop(
brand VARCHAR(20),
ram INT,
processor VARCHAR(20),
price INT
);

ALTER TABLE laptop ADD l_color VARCHAR(10);
ALTER TABLE laptop ADD l_description VARCHAR(10);

ALTER TABLE laptop DROP COLUMN ram;
ALTER TABLE laptop DROP COLUMN processor;

SELECT * FROM laptop;

DROP TABLE laptop;
SHOW TABLES;
