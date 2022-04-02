-- PostgreSQL dialect

DROP TABLE IF EXISTS person;

CREATE TABLE person (
	person_id SERIAL PRIMARY KEY,
	first_name VARCHAR(255) NOT NULL,
	last_name VARCHAR(255) NOT NULL
);

INSERT INTO person (first_name, last_name) VALUES ('Ardis', 'Nolda');
INSERT INTO person (first_name, last_name) VALUES ('Ainslie', 'Bullocke');
INSERT INTO person (first_name, last_name) VALUES ('Guinna', 'Myers');
INSERT INTO person (first_name, last_name) VALUES ('See', 'O''Cannovane');
INSERT INTO person (first_name, last_name) VALUES ('Boyce', 'Merida');
INSERT INTO person (first_name, last_name) VALUES ('Ddene', 'Feary');
INSERT INTO person (first_name, last_name) VALUES ('Ax', 'Malone');
INSERT INTO person (first_name, last_name) VALUES ('Onfroi', 'Curran');
INSERT INTO person (first_name, last_name) VALUES ('Glenda', 'Gavini');
INSERT INTO person (first_name, last_name) VALUES ('Dania', 'Pickthorn');

DROP TABLE IF EXISTS address;

CREATE TABLE address (
    address_id SERIAL PRIMARY KEY,
	person_id SERIAL,
	city VARCHAR(255) NOT NULL,
	state VARCHAR(255) NOT NULL
);

INSERT INTO address (city, state) VALUES ('New York City', 'New York');
INSERT INTO address (city, state) VALUES ('Saginaw', 'Michigan');
INSERT INTO address (city, state) VALUES ('Corpus Christi', 'Texas');
INSERT INTO address (city, state) VALUES ('Fort Worth', 'Texas');
INSERT INTO address (city, state) VALUES ('New York City', 'New York');
INSERT INTO address (city, state) VALUES ('Bethesda', 'Maryland');
INSERT INTO address (city, state) VALUES ('Tyler', 'Texas');
INSERT INTO address (city, state) VALUES ('Saginaw', 'Michigan');
INSERT INTO address (city, state) VALUES ('Los Angeles', 'California');
INSERT INTO address (city, state) VALUES ('Newton', 'Massachusetts');

SELECT first_name, last_name, city, state FROM person JOIN address ON person.person_id=address.person_id;