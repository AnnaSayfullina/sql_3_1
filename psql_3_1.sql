
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
