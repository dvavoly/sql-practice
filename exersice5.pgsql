-- PostgreSQL dialect

DROP TABLE IF EXISTS customers;

CREATE TABLE customers (
	id SERIAL PRIMARY KEY,
	name VARCHAR(255) NOT NULL
);

INSERT INTO customers(name) VALUES ('Joe');
INSERT INTO customers(name) VALUES ('Hanry');
INSERT INTO customers(name) VALUES ('Sam');
INSERT INTO customers(name) VALUES ('Max');

DROP TABLE IF EXISTS orders;

CREATE TABLE orders(
	id SERIAL PRIMARY KEY,
	customer_id INT NOT NULL
);

INSERT INTO orders(customer_id) VALUES (3);
INSERT INTO orders(customer_id) VALUES (1);

SELECT name FROM customers LEFT JOIN orders ON customers.id=orders.customer_id WHERE customer_id is null;
