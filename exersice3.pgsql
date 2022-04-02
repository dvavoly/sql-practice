-- PostgreSQL dialect

DROP TABLE IF EXISTS employee;

CREATE TABLE employee (
	id SERIAL PRIMARY KEY,
	name VARCHAR(255) NOT NULL,
	salary INT NOT NULL,
    manager_id INT
);

INSERT INTO employee (name, salary, manager_id) VALUES ('Joe', 70000, 3);
INSERT INTO employee (name, salary, manager_id) VALUES ('Henry', 80000, 4);
INSERT INTO employee (name, salary) VALUES ('Sam', 60000);
INSERT INTO employee (name, salary) VALUES ('Max', 90000);

SELECT m.name AS manager_name FROM employee e INNER JOIN employee m ON m.manager_id=e.id WHERE e.salary < m.salary;