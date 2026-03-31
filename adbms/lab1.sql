#employees
CREATE TABLE sample.employees (
    employee_id INT PRIMARY KEY,
    first_name VARCHAR(45),
    last_name VARCHAR(45),
    email VARCHAR(45),
    ph_no BIGINT,
    hire_date DATE,
    job_id INT,
    salary FLOAT,
    manager_id INT,
    department_id INT
);
drop table employees;
ALTER TABLE employees ADD CONSTRAINT fk_job FOREIGN KEY (job_id) REFERENCES sample.jobs(job_id);
ALTER TABLE employees ADD CONSTRAINT fk_depart FOREIGN KEY (department_id) REFERENCES sample.dept(department_id);
#dependents
CREATE TABLE dependents(dependent_id INT ,first_name VARCHAR(50),last_name VARCHAR(50),relationship VARCHAR(50) ,employee_id INT,
CONSTRAINT fk_emp  FOREIGN KEY (employee_id) REFERENCES sample.employees(employee_id));
#regions
CREATE TABLE regions(region_id INT PRIMARY KEY ,region_name VARCHAR(50));
#countries
CREATE TABLE countries(country_id VARCHAR(10) PRIMARY KEY ,country_name VARCHAR(50),region_id INT ,CONSTRAINT fk_reg FOREIGN KEY (region_id) REFERENCES sample.regions(region_id));
#locations
CREATE TABLE locations(location_id INT PRIMARY KEY ,street_address VARCHAR(50),postal_code VARCHAR(50),city VARCHAR(50) ,state_province VARCHAR(50) ,country_id VARCHAR(50),CONSTRAINT fk_country FOREIGN KEY (country_id) REFERENCES sample.countries(country_id));
#departments
CREATE TABLE departments(department_id INT  PRIMARY KEY ,department_name VARCHAR(50),location_id INT ,CONSTRAINT fk_loc FOREIGN KEY (location_id) REFERENCES sample.locations(location_id));
#DDL
ALTER TABLE departments RENAME dept;
ALTER TABLE employees MODIFY salary SMALLINT;
ALTER TABLE employees ADD commission VARCHAR(10);

#regions
select *from regions;
INSERT INTO regions(region_id,region_name)VALUES(1,'Europe'),(2,'Americas'),(3,'Asia'),(4,'middle east and Africa');
#countries 
INSERT INTO countries(country_id,country_name,region_id) VALUES('AR','ARGENTINA',2),('AU','AUSTRALIA',3),('BE','BELGIUM',1),('BR','BRAZIL',2),('CA','CANADA',2),('CH','SWITZERLAND',1),('CN','China',3),('DE','Germany',1),('DK','Denmark',1),('EG','Egypt',4),('FR','France',1),('HK','HongKong',3),('IL','Israel',4),('IN','India',3),('IT','Italy',1),('JP','Japan',3),('KW','Kuwait',4),('MX','Mexico',2),('NG','Nigeria',4),('NL','Netherlands',1),('SG','Singapore',3),('UK','United Kingdom',1),('US','United States of America',2),('ZM','Zambia',4),('ZW','Zimbabwe',4);
#locations
INSERT INTO locations VALUES(1400,"2014 Jabberwocky Rd","26192","Southlake","Texas","US"),
(1500,"2011 Interiors Blvd","99236","South San Francisco","California","US"),
(1700,"2004 Charade Rd","98199","Seattle","Washington","US"),
(1800,"147 Spadina Ave","M5V 2L7","Toronto","Ontario","CA"),
(2400,"8204 Arthur St",NULL,"London",NULL,"UK"),
(2500,"Magdalen Centre, The Oxford Science Park","OX9 9ZB","Oxford","Oxford","UK"),
(2700,"Schwanthalerstr. 7031","80925","Munich","Bavaria","DE");
#jobs
INSERT INTO jobs VALUES(1,"Public Accountant",4200.00,9000.00),
(2,"Accounting Manager",8200.00,16000.00),
(3,"Administration Assistant",3000.00,6000.00),
(4,"President",20000.00,40000.00),
(5,"Administration Vice President",15000.00,30000.00),
(6,"Accountant",4200.00,9000.00),
(7,"Finance Manager",8200.00,16000.00),
(8,"Human Resources Representative",4000.00,9000.00),
(9,"Programmer",4000.00,10000.00),
(10,"Marketing Manager",9000.00,15000.00),
(11,"Marketing Representative",4000.00,9000.00),
(12,"Public Relations Representative",4500.00,10500.00),
(13,"Purchasing Clerk",2500.00,5500.00),
(14,"Purchasing Manager",8000.00,15000.00),
(15,"Sales Manager",10000.00,20000.00),
(16,"Sales Representative",6000.00,12000.00),
(17,"Shipping Clerk",2500.00,5500.00),
(18,"Stock Clerk",2000.00,5000.00),
(19,"Stock Manager",5500.00,8500.00);
#dept
INSERT INTO dept(department_id,department_name,location_id)VALUES(1,"Administration",1700),
(2,"Marketing",1800),
(3,"Purchasing",1700),
(4,"Human Resources",2400),
(5,"Shipping",1500),
(6,"IT",1400),
(7,"Public Relations",2700),
(8,"Sales",2500),
(9,"Executive",1700),
(10,"Finance",1700),
(11,"Accounting",1700);
#employees
INSERT INTO employees(employee_id,first_name,last_name,email,ph_no,hire_date,job_id,salary,manager_id,department_id) VALUES(100,"Steven","King","steven.king@sqltutorial.org","515.123.4567","1987-06-17",4,24000.00,NULL,9),
(101,"Neena","Kochhar","neena.kochhar@sqltutorial.org","515.123.4568","1989-09-21",5,17000.00,100,9),
(102,"Lex","De Haan","lex.de haan@sqltutorial.org","515.123.4569","1993-01-13",5,17000.00,100,9),
(103,"Alexander","Hunold","alexander.hunold@sqltutorial.org","590.423.4567","1990-01-03",9,9000.00,102,6),
(104,"Bruce","Ernst","bruce.ernst@sqltutorial.org","590.423.4568","1991-05-21",9,6000.00,103,6),
(105,"David","Austin","david.austin@sqltutorial.org","590.423.4569","1997-06-25",9,4800.00,103,6),
(106,"Valli","Pataballa","valli.pataballa@sqltutorial.org","590.423.4560","1998-02-05",9,4800.00,103,6),
(107,"Diana","Lorentz","diana.lorentz@sqltutorial.org","590.423.5567","1999-02-07",9,4200.00,103,6),
(108,"Nancy","Greenberg","nancy.greenberg@sqltutorial.org","515.124.4569","1994-08-17",7,12000.00,101,10),
(109,"Daniel","Faviet","daniel.faviet@sqltutorial.org","515.124.4169","1994-08-16",6,9000.00,108,10),
(110,"John","Chen","john.chen@sqltutorial.org","515.124.4269","1997-09-28",6,8200.00,108,10),
(111,"Ismael","Sciarra","ismael.sciarra@sqltutorial.org","515.124.4369","1997-09-30",6,7700.00,108,10),
(112,"Jose Manuel","Urman","jose manuel.urman@sqltutorial.org","515.124.4469","1998-03-07",6,7800.00,108,10),
(113,"Luis","Popp","luis.popp@sqltutorial.org","515.124.4567","1999-12-07",6,6900.00,108,10),
(114,"Den","Raphaely","den.raphaely@sqltutorial.org","515.127.4561","1994-12-07",14,11000.00,100,3),
(115,"Alexander","Khoo","alexander.khoo@sqltutorial.org","515.127.4562","1995-05-18",13,3100.00,114,3),
(116,"Shelli","Baida","shelli.baida@sqltutorial.org","515.127.4563","1997-12-24",13,2900.00,114,3),
(117,"Sigal","Tobias","sigal.tobias@sqltutorial.org","515.127.4564","1997-07-24",13,2800.00,114,3),
(118,"Guy","Himuro","guy.himuro@sqltutorial.org","515.127.4565","1998-11-15",13,2600.00,114,3),
(119,"Karen","Colmenares","karen.colmenares@sqltutorial.org","515.127.4566","1999-08-10",13,2500.00,114,3),
(120,"Matthew","Weiss","matthew.weiss@sqltutorial.org","650.123.1234","1996-07-18",19,8000.00,100,5),
(121,"Adam","Fripp","adam.fripp@sqltutorial.org","650.123.2234","1997-04-10",19,8200.00,100,5),
(122,"Payam","Kaufling","payam.kaufling@sqltutorial.org","650.123.3234","1995-05-01",19,7900.00,100,5),
(123,"Shanta","Vollman","shanta.vollman@sqltutorial.org","650.123.4234","1997-10-10",19,6500.00,100,5),
(126,"Irene","Mikkilineni","irene.mikkilineni@sqltutorial.org","650.124.1224","1998-09-28",18,2700.00,120,5),
(145,"John","Russell","john.russell@sqltutorial.org",NULL,"1996-10-01",15,14000.00,100,8),
(146,"Karen","Partners","karen.partners@sqltutorial.org",NULL,"1997-01-05",15,13500.00,100,8),
(176,"Jonathon","Taylor","jonathon.taylor@sqltutorial.org",NULL,"1998-03-24",16,8600.00,100,8),
(177,"Jack","Livingston","jack.livingston@sqltutorial.org",NULL,"1998-04-23",16,8400.00,100,8),
(178,"Kimberely","Grant","kimberely.grant@sqltutorial.org",NULL,"1999-05-24",16,7000.00,100,8),
(179,"Charles","Johnson","charles.johnson@sqltutorial.org",NULL,"2000-01-04",16,6200.00,100,8),
(192,"Sarah","Bell","sarah.bell@sqltutorial.org","650.501.1876","1996-02-04",17,4000.00,123,5),
(193,"Britney","Everett","britney.everett@sqltutorial.org","650.501.2876","1997-03-03",17,3900.00,123,5),
(200,"Jennifer","Whalen","jennifer.whalen@sqltutorial.org","515.123.4444","1987-09-17",3,4400.00,101,1),
(201,"Michael","Hartstein","michael.hartstein@sqltutorial.org","515.123.5555","1996-02-17",10,13000.00,100,2),
(202,"Pat","Fay","pat.fay@sqltutorial.org","603.123.6666","1997-08-17",11,6000.00,201,2),
(203,"Susan","Mavris","susan.mavris@sqltutorial.org","515.123.7777","1994-06-07",8,6500.00,101,4),
(204,"Hermann","Baer","hermann.baer@sqltutorial.org","515.123.8888","1994-06-07",12,10000.00,101,7),
(205,"Shelley","Higgins","shelley.higgins@sqltutorial.org","515.123.8080","1994-06-07",2,12000.00,101,11),
(206,"William","Gietz","william.gietz@sqltutorial.org","515.123.8181","1994-06-07",1,8300.00,205,11);


#assignment 2
#q1
SELECT *FROM countries;
SELECT email, ph_no FROM employees;

SELECT *FROM employees WHERE last_name="Fay";
SELECT hire_date FROM employees WHERE last_name="Grant" OR last_name= "Whalen";
SELECT e.first_name, e.last_name
FROM employees e
JOIN jobs j
    ON e.job_id = j.job_id
WHERE j.job_title = 'Shipping Clerk';

SELECT first_name,last_name FROM employees WHERE department_id=8;
SELECT department_name from dept order by department_name desc;
SELECT *
FROM employees
WHERE last_name LIKE 'K%';

SELECT first_name, last_name
FROM employees
WHERE hire_date BETWEEN '1995-01-01' AND '1997-12-31';

SELECT job_title FROM jobs WHERE max_salary < 5000;

SELECT LOWER(email)
FROM employees;

SELECT first_name,last_name 
FROM employees
WHERE hire_date between '1995-01-01' AND '1995-12-31';

INSERT INTO employees(first_name,last_name,department_id) values("paul","newton",11);

DELETE from dept
WHERE department_name="Shipping";

ALTER TABLE employees
DROP FOREIGN KEY fk_depart;

-- ALTER TABLE employees
-- ADD CONSTRAINT fk_dept
-- FOREIGN KEY (department_id)
-- REFERENCES dept(department_id)
-- ON DELETE CASCADE;

# stored procedure
DELIMITER //
CREATE PROCEDURE getemployees()
BEGIN 
SELECT *FROM employee;
END //

CREATE PROCEDURE getDept(IN dept_id INT)
BEGIN 
SELECT department_name FROM dept WHERE department_id = dept_id;
END //

CREATE PROCEDURE empCount(IN emp_id INT, OUT total INT)
BEGIN
SELECT COUNT(*) INTO total FROM employees WHERE employee_id =emp_id ;
END //

CREATE PROCEDURE insData(IN emp_id INT ,IN fname VARCHAR(50), IN lname VARCHAR(50), IN dept_id VARCHAR(50))
BEGIN
	INSERT INTO employees (employee_id,first_name,last_name,department_id)VALUES (emp_id,fname,lname,dept_id);
END //
DELIMITER ;

CALL getEmployee();
CALL getDept(8);
CALL empCount(191,@total);
SELECT @total;
CALL insData(404,'Aarya','Stark',6);


alter table product add update_time time;




