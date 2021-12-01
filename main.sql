.headers "on"
.mode "column"

--Question 1 Table Creation
CREATE TABLE employee (
	employee_id INTEGER PRIMARY KEY AUTOINCREMENT,
	first_name varchar,
	last_name varchar,
	job_title varchar,
	stocks INTEGER
	
);

--Question 2 Table Creation
CREATE TABLE certification (
	cert_id INTEGER PRIMARY KEY AUTOINCREMENT,
	cert_name varchar,
	category varchar,
	price INTEGER
);

--Question 3 Table Creation
CREATE TABLE credential (
	employee_id INTEGER

);

--Inserting into table 1
INSERT INTO employee (first_name, last_name, job_title, stocks)
VALUES ('George', 'Costanza', 'Architect', 100),
('Jerry', 'Seinfeld', 'Comedian', 1000),
('Cosmo', 'Kramer', 'Neighbor', 50),
('Elaine', 'Benes', 'Writer', 400),
('Norman', 'Newman', 'Postman', '300')
;

--Inserting into table 2
INSERT INTO certification (cert_name, category, price)
VALUES ('Grand Wizardry', 'Magicka', 20000),
('Yo-Yo Mastery', 'Physics', 400),
('Animal Whispering', 'Supernatural', 1000),
('Ninja Sneak', 'Shadow Arts', 1200),
('Napping', 'Laziness', 100);


--Display Table 1
SELECT * FROM employee;
.print
--Display Table 2
SELECT * FROM certification;
