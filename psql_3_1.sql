
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
