INSERT INTO employee (first_name, last_name, gender, age) VALUES ('Alexey', 'Randen', 'm', 50);
INSERT INTO employee (first_name, last_name, gender, age) VALUES ('Andrey', 'Linin', 'm', 45);
INSERT INTO employee (first_name, last_name, gender, age) VALUES ('Alexey', 'Randen', 'm', 23);
SELECT first_name AS Имя,
       last_name AS Фамилия
FROM employee;
SELECT * FROM employee
WHERE age < 30 OR age > 50;
SELECT * FROM employee
WHERE age
BETWEEN 30 AND 50;
SELECT * FROM employee
ORDER BY last_name DESC;
SELECT * FROM employee
WHERE first_name
LIKE '____';
SELECT first_name AS Имя,
SUM(age) AS Суммарный_возраст
FROM employee
GROUP BY Имя;
SELECT first_name AS Имя,
age AS  Самый_юный_возраст
FROM employee
WHERE age =(
    SELECT MIN(age)
    FROM employee
 );
SELECT first_name AS Имя,
       max(age) AS  Максимальный_возраст
FROM employee
GROUP BY Имя
ORDER BY Максимальный_возраст;