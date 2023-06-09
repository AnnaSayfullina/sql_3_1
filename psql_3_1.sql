
CREATE TABLE employee(
                         id BIGSERIAL NOT NULL PRIMARY KEY,
                         first_name VARCHAR(50) NOT NULL,
                         last_name VARCHAR(50) NOT NULL,
                         gender VARCHAR(6) NOT NULL,
                         age INT NOT NULL
);
INSERT INTO employee (first_name, last_name, gender, age)
VALUES ('Степан', 'Степанов', 'муж', 15), ('Степанида', 'Степанова', 'жен', 16), ('Олег', 'Олегов', 'муж', 17);
SELECT * FROM employee;
UPDATE employee SET first_name = 'Петр', last_name ='Петров', age = 65 WHERE id = 3;
SELECT * FROM employee;
DELETE FROM employee WHERE id = 2;
SELECT * FROM employee;
INSERT INTO employee (first_name, last_name, gender, age)
VALUES ('Антон', 'Антонов', 'муж', 31), ('Дарья', 'Иванова', 'жен', 32), ('Андрей', 'Андреев', 'муж', 55);
SELECT * FROM employee;
INSERT INTO employee (first_name, last_name, gender, age)
VALUES ('Степанида', 'Степанова', 'жен', 16), ('Олег', 'Олегов', 'муж', 17);
SELECT * FROM employee;
SELECT first_name AS Имя,
       last_name AS Фамилия
FROM employee;
SELECT * FROM employee
WHERE age < 30 OR age > 50;
SELECT * FROM employee
WHERE age BETWEEN 30 AND 50;
SELECT * FROM employee
ORDER BY last_name DESC;
SELECT * FROM employee
WHERE first_name LIKE '_____%';
UPDATE employee SET first_name = 'Дарья' WHERE id = 7;
UPDATE employee SET first_name = 'Антон' WHERE id = 6;
SELECT first_name AS Имя,
       SUM(age) AS Суммарный_возраст
FROM employee GROUP BY Имя;
SELECT first_name AS Имя,
       age AS Самый_юный_возраст
FROM employee
WHERE age = (SELECT MIN(age) FROM employee);
SELECT first_name AS Имя,
       MAX(age) AS Максимальный_возраст
FROM employee
GROUP BY first_name
HAVING COUNT(first_name)>1
ORDER BY MAX(age);


