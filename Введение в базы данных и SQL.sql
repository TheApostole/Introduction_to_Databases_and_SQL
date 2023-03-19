CREATE TABLE employee (
	id BIGSERIAL NOT NULL PRIMARY KEY,
	first_name VARCHAR(50) NOT NULL,
	last_name VARCHAR(50) NOT NULL,
	gender VARCHAR(6) NOT NULL,
	age INT NOT NULL
);
INSERT INTO employee (first_name, last_name, gender, age) VALUES ('Andrey', 'Linin', 'm', 45);
INSERT INTO employee (first_name, last_name, gender, age) VALUES ('Anna', 'Polerum', 'f', 30);
INSERT INTO employee (first_name, last_name, gender, age) VALUES ('Alexey', 'Randen', 'm', 23);

SELECT * FROM employee;

UPDATE employee SET first_name = 'Oleg', last_name = 'Sidorov', gender = 'm', age = 20 WHERE id = 2;

SELECT * FROM employee;

DELETE FROM employee WHERE id = 3;

SELECT * FROM employee;
