-- PostgreSQL dialect

DROP TABLE IF EXISTS employee;

CREATE TABLE employee(
    id SERIAL PRIMARY KEY,
    values INT DEFAULT 0
);

INSERT INTO employee(values) VALUES (100);
INSERT INTO employee(values) VALUES (200);
INSERT INTO employee(values) VALUES (300);

SELECT values AS SecondHighestSalary FROM employee ORDER BY values DESC OFFSET 1 LIMIT 1;
