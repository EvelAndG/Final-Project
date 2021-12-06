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
	employee_id INTEGER REFERENCES employee(employee_id),
	cert_id INTEGER REFERENCES certification(cert_id)

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

--Inserting into table 3
INSERT INTO credential (employee_id, cert_id)
VALUES ( 1,1), (1,5), (1,2), (2,1), (2,2), (3,3), (3,1), (3,2), (4,3), (4,4), (5,4), (5,1);


--Question 5 (Dispay employee Table)
.print Question #5
SELECT * FROM employee;


--Question 6 (Display certification Table)
.print
.print ----------------------------------------------------------------------------------------
.print Question #6
SELECT * FROM certification;

--Question 7 (Display credential Table)
.print
.print ----------------------------------------------------------------------------------------
.print Question #7
SELECT * FROM credential;

--Question 8 (Write a query that shows only the first and last name of employees who have earned the certification with id 3)
.print
.print ----------------------------------------------------------------------------------------
.print Question #8
SELECT employee.first_name, employee.last_name FROM employee
INNER JOIN credential
ON employee.employee_id = credential.employee_id
WHERE credential.cert_id = 3;

--Question 9 (Write a query that shows the certification name and category earned by the employee with id 2.)
.print
.print Question #9
SELECT certification.cert_name, certification.category FROM certification
INNER JOIN credential
ON credential.cert_id = certification.cert_id
WHERE credential.employee_id = 2;

--Question 10 (Write a query to display the emp_id and job_title from employees and the name and price from certifications for each certification earned by each employee)
.print
.print ----------------------------------------------------------------------------------------
.print Question #10
SELECT employee.employee_id, employee.job_title, certification.cert_name, certification.price
FROM (employee INNER JOIN credential ON employee.employee_id = credential.employee_id) INNER JOIN certification ON certification.cert_id = credential.cert_id;

--Question 11 (Write a query to show all employees with less than 500 stocks and which certifications they have.  Show the fields used in the example below)
.print
.print ----------------------------------------------------------------------------------------
.print Question #11
SELECT employee.first_name, employee.last_name, employee.job_title, employee.stocks, certification.cert_name
FROM (employee INNER JOIN credential ON employee.employee_id = credential.employee_id) INNER JOIN certification ON certification.cert_id = credential.cert_id
WHERE employee.stocks < 500;

--Question 12 (Write a query to display all certifications with a price over 150 and which employees have earned them.)
.print
.print ----------------------------------------------------------------------------------------
.print Question #12
SELECT employee.employee_id, certification.cert_name, certification.category, certification.price
FROM (employee INNER JOIN credential ON employee.employee_id = credential.employee_id) INNER JOIN certification ON certification.cert_id = credential.cert_id 
WHERE certification.price > 150;