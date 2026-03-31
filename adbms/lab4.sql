-- =========================
-- DATABASE TABLE CREATION
-- =========================

CREATE TABLE regions (
    region_id INT PRIMARY KEY,
    region_name VARCHAR(50)
);

-- COUNTRIES
CREATE TABLE countries (
    country_id VARCHAR(10) PRIMARY KEY,
    country_name VARCHAR(50),
    region_id INT,
    CONSTRAINT fk_reg FOREIGN KEY (region_id)
        REFERENCES regions (region_id)
);

-- LOCATIONS
CREATE TABLE locations (
    location_id INT PRIMARY KEY,
    street_address VARCHAR(50),
    postal_code VARCHAR(50),
    city VARCHAR(50),
    state_province VARCHAR(50),
    country_id VARCHAR(50),
    CONSTRAINT fk_country FOREIGN KEY (country_id)
        REFERENCES countries (country_id)
);

-- JOBS
CREATE TABLE jobs (
    job_id INT PRIMARY KEY,
    job_title VARCHAR(50),
    min_salary FLOAT,
    max_salary FLOAT
);

-- DEPARTMENTS (RENAMED DIRECTLY AS dept)
CREATE TABLE dept (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(50),
    location_id INT,
    CONSTRAINT fk_loc FOREIGN KEY (location_id)
        REFERENCES locations (location_id)
);

-- EMPLOYEES (ALTER CHANGES MERGED)
CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    first_name VARCHAR(45),
    last_name VARCHAR(45),
    email VARCHAR(45),
    ph_no BIGINT,
    hire_date DATE,
    job_id INT,
    salary SMALLINT,
    commission VARCHAR(10),
    manager_id INT,
    department_id INT,
    CONSTRAINT fk_job FOREIGN KEY (job_id)
        REFERENCES jobs (job_id),
    CONSTRAINT fk_depart FOREIGN KEY (department_id)
        REFERENCES dept (department_id)
);

-- DEPENDENTS
CREATE TABLE dependents (
    dependent_id INT,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    relationship VARCHAR(50),
    employee_id INT,
    CONSTRAINT fk_emp FOREIGN KEY (employee_id)
        REFERENCES employees (employee_id)
);

-- =========================
-- INSERT DATA
-- =========================

-- REGIONS
INSERT INTO regions(region_id,region_name)
VALUES
(1,'Europe'),
(2,'Americas'),
(3,'Asia'),
(4,'Middle East and Africa');

-- COUNTRIES
INSERT INTO countries(country_id,country_name,region_id)
VALUES
('AR','ARGENTINA',2),
('AU','AUSTRALIA',3),
('BE','BELGIUM',1),
('BR','BRAZIL',2),
('CA','CANADA',2),
('CH','SWITZERLAND',1),
('CN','China',3),
('DE','Germany',1),
('DK','Denmark',1),
('EG','Egypt',4),
('FR','France',1),
('HK','HongKong',3),
('IL','Israel',4),
('IN','India',3),
('IT','Italy',1),
('JP','Japan',3),
('KW','Kuwait',4),
('MX','Mexico',2),
('NG','Nigeria',4),
('NL','Netherlands',1),
('SG','Singapore',3),
('UK','United Kingdom',1),
('US','United States of America',2),
('ZM','Zambia',4),
('ZW','Zimbabwe',4);

-- LOCATIONS
INSERT INTO locations VALUES
(1400,"2014 Jabberwocky Rd","26192","Southlake","Texas","US"),
(1500,"2011 Interiors Blvd","99236","South San Francisco","California","US"),
(1700,"2004 Charade Rd","98199","Seattle","Washington","US"),
(1800,"147 Spadina Ave","M5V 2L7","Toronto","Ontario","CA"),
(2400,"8204 Arthur St",NULL,"London",NULL,"UK"),
(2500,"Magdalen Centre, The Oxford Science Park","OX9 9ZB","Oxford","Oxford","UK"),
(2700,"Schwanthalerstr. 7031","80925","Munich","Bavaria","DE");

-- JOBS
INSERT INTO jobs VALUES
(1,"Public Accountant",4200.00,9000.00),
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

-- DEPARTMENTS
INSERT INTO dept(department_id,department_name,location_id)
VALUES
(1,"Administration",1700),
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

-- =========================
-- SAMPLE QUERIES
-- =========================

SELECT 
    *
FROM
    countries;

SELECT 
    email, ph_no
FROM
    employees;

SELECT 
    *
FROM
    employees
WHERE
    last_name = 'Fay';

SELECT 
    hire_date
FROM
    employees
WHERE
    last_name = 'Grant'
        OR last_name = 'Whalen';

SELECT 
    e.first_name, e.last_name
FROM
    employees e
        JOIN
    jobs j ON e.job_id = j.job_id
WHERE
    j.job_title = 'Shipping Clerk';

SELECT 
    first_name, last_name
FROM
    employees
WHERE
    department_id = 8;

SELECT 
    department_name
FROM
    dept
ORDER BY department_name DESC;

SELECT 
    *
FROM
    employees
WHERE
    last_name LIKE 'K%';

SELECT 
    first_name, last_name
FROM
    employees
WHERE
    hire_date BETWEEN '1995-01-01' AND '1997-12-31';

SELECT 
    job_title
FROM
    jobs
WHERE
    max_salary < 5000;

SELECT 
    LOWER(email)
FROM
    employees;

SELECT 
    first_name, last_name
FROM
    employees
WHERE
    hire_date BETWEEN '1995-01-01' AND '1995-12-31';

INSERT INTO employees(employee_id,first_name,last_name,department_id)
VALUES(191,"paul","newton",11);