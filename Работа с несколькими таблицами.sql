CREATE TABLE city (
    city_id BIGSERIAL NOT NULL PRIMARY KEY,
    city_name VARCHAR(50) NOT NULL
);
ALTER TABLE employee
    ADD city_id INT CONSTRAINT city_id REFERENCES city(city_id);
INSERT INTO city (city_name) values ('Владивосток');
INSERT INTO city (city_name) values ('Санкт-Петербург');
INSERT INTO city (city_name) values ('Лондон');
INSERT INTO city (city_name) values ('Берлин');
INSERT INTO city (city_name) values ('Кёльн');

UPDATE employee SET city_id = 2 WHERE id = 1;
UPDATE employee SET city_id = 1 WHERE id = 2;
UPDATE employee SET city_id = 4 WHERE id = 4;
UPDATE employee SET city_id = 5 WHERE id = 5;
UPDATE employee SET city_id = 2 WHERE id = 6;

SELECT first_name AS Имя,
       last_name AS Фамилия,
       city_name AS Город_проживания FROM employee
           INNER JOIN city ON employee.city_id = city.city_id;

SELECT city_name AS Город_проживания,
       first_name AS Имя,
       last_name AS Фамилия FROM city
           LEFT JOIN employee ON city.city_id = employee.city_id;

SELECT first_name AS Имя,
       city_name AS Город_проживания FROM employee
           FULL JOIN city ON employee.city_id = city.city_id;

SELECT first_name AS Имя,
       city_name AS Город_проживания FROM employee
           CROSS JOIN city;

SELECT city_name AS Город_проживания FROM city
    LEFT JOIN employee on city.city_id = employee.city_id
        WHERE employee.first_name IS NULL;