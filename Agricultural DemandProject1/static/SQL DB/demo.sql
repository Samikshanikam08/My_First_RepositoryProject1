CREATE DATABASE my_first_database;

CREATE DATABASE my_second_database;

SHOW DATABASES;

USE my_first_database;

CREATE TABLE person(
id INT,
first_name VARCHAR(20),
last_name VARCHAR(20)
);

SHOW TABLES;

SELECT * FROM person;

USE my_second_database;

CREATE TABLE car(
id INT,
brand VARCHAR(20),
model VARCHAR(20)
);

SHOW TABLES;

SELECT * FROM car;