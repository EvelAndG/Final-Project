.headers "on"
.mode "column"

--Question 1 Table
CREATE TABLE employee (
	employee_id INTEGER PRIMARY KEY AUTOINCREMENT,
	first_name varchar,
	last_name varchar,
	job_title varchar,
	stocks INTEGER
);

--Question 2 Table
CREATE TABLE certification (
	cert_id INTEGER PRIMARY KEY AUTOINCREMENT,
	cert_name varchar,
	category varchar,
	price INTEGER
);

--Inserting into table 1
INSERT INTO employee (first_name, last_name, job_title, stocks)
VALUES ('George', 'Costanza', 'Architect', 100);

--Inserting into table 2
INSERT INTO certification (cert_name, category, price)
VALUES ('Grand Wizardry', 'Magicka', 20000);


--Display Table 1
SELECT * FROM employee;
.print
--Display Table 2
SELECT * FROM certification;
