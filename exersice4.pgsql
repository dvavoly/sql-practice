-- PostgreSQL dialect

DROP TABLE IF EXISTS person;

CREATE TABLE person (
	id SERIAL PRIMARY KEY,
	email VARCHAR(255) NOT NULL
);

INSERT INTO person(email) VALUES ('a@b.com');
INSERT INTO person(email) VALUES ('c@d.com');
INSERT INTO person(email) VALUES ('a@b.com');

SELECT email FROM person GROUP BY email HAVING COUNT(email) > 1;
