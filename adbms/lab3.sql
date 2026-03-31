CREATE TABLE student (
    name VARCHAR(50),
    student_number INT PRIMARY KEY,
    class INT,
    major VARCHAR(25)
);
CREATE TABLE course (
    course_name VARCHAR(50),
    course_number int PRIMARY KEY,
    credit_hours INT,
    department VARCHAR(25)
);
Alter table course modify course_number varchar(25);
#section
CREATE TABLE section (
    section_identifier INT PRIMARY KEY,
	semester VARCHAR(25),
    year YEAR,
    instructor VARCHAR(50),
	course_number VARCHAR(25),
    
	CONSTRAINT fk_reg FOREIGN KEY (course_number) REFERENCES university.course(course_number)
);

#student
CREATE TABLE grade_report (
    student_number INT PRIMARY KEY,
    section_identifier INT,
    grade VARCHAR(10),
    CONSTRAINT fk_stno FOREIGN KEY (student_number)
        REFERENCES university.student (student_number),
    CONSTRAINT fk_secno FOREIGN KEY (section_identifier)
        REFERENCES university.section (section_identifier)
);

#prerequisite
CREATE TABLE prerequisite (
    course_number VARCHAR(25) PRIMARY KEY,
    prerequisite_number VARCHAR(25),
    CONSTRAINT fk_preco FOREIGN KEY (course_number)
        REFERENCES university.course (course_number)
);
ALTER TABLE prerequisite drop foreign key fk_preco;
ALTER TABLE prerequisite drop primary key;
select *from grade_report;
#queries
#2.insert
insert into student(name,student_number,class,major) values ('Smith',17,1,"CS"),('Brown',8,2,"CS");
insert into course(course_name,course_number,credit_hours,department) values ('Intro to Computer Science','CS1310',4,"CS"),
('Data Structures','CS3320',4,"CS"),('Discrerte Mathematics','MATH2410',3,"MATH"),('Database','CS3380',3,"CS");
insert into section(section_identifier,course_number,semester,year,instructor) values (85,'MATH2410','Fall',2007,"King"),
(92,'CS1310','Fall',2007,"Anderson"),(102,'CS3320','Spring',2008,"Kruth"),(112,'MATH2410','Fall',2008,"Chang"),(119,'CS1310','Fall',2008,"Anderson"),
(135,'CS3380','Fall',2008,"Stone");
insert into grade_report values(17,112,'B'),(17,119,'C'),(8,85,'A'),(8,92,'A'),(8,102,'B'),(8,135,'A');
insert into prerequisite values('CS3380','CS3320'),('CS3380','MATH2410'),('CS3320','CS1310');
#3.
SELECT c.course_name, gr.grade
FROM student s
JOIN grade_report gr 
    ON s.student_number = gr.student_number
JOIN section sec 
    ON gr.section_identifier = sec.section_identifier
JOIN course c 
    ON sec.course_number = c.course_number
WHERE s.name = 'smith';
#4.
SELECT s.name, gr.grade
FROM student s
JOIN grade_report gr 
    ON s.student_number = gr.student_number
JOIN section sec 
    ON gr.section_identifier = sec.section_identifier
JOIN course c 
    ON sec.course_number = c.course_number
WHERE c.course_name = 'database'
  AND sec.semester = 'Fall'
  AND sec.year = 2008;
  #5.
  SELECT p.prerequisite_number
FROM prerequisite p
JOIN course c 
    ON p.course_number = c.course_number
WHERE c.course_name = 'database';
#6.
SELECT name
FROM student
WHERE class = 2
  AND major = 'CS';
#7.
SELECT DISTINCT c.course_name
FROM course c
JOIN section s 
    ON c.course_number = s.course_number
WHERE s.instructor = 'King'
  AND s.year IN (2007, 2008);
#8.
SELECT s.course_number,
    s.semester,
    s.year,
    COUNT(gr.student_number) AS number_of_students
FROM section s
LEFT JOIN grade_report gr
    ON s.section_identifier = gr.section_identifier
WHERE s.instructor = 'King'
GROUP BY s.section_identifier, s.course_number, s.semester, s.year;
#9.
SELECT 
    st.name,
    c.course_name,
    c.course_number,
    c.credit_hours,
    sec.semester,
    sec.year,
    gr.grade
FROM student st
JOIN grade_report gr 
    ON st.student_number = gr.student_number
JOIN section sec 
    ON gr.section_identifier = sec.section_identifier
JOIN course c 
    ON sec.course_number = c.course_number
WHERE st.class = 2
  AND st.major = 'CS';
#10.
INSERT INTO student (name, student_number, class, major)
VALUES ('Johnson', 25, 1, 'Math');
UPDATE student
SET class = 2
WHERE name = 'Smith';
INSERT INTO course (course_name, course_number, credit_hours, department)
VALUES ('Knowledge Engineering', 'CS4390', 3, 'CS');
DELETE FROM student
WHERE name = 'Smith'
  AND student_number = 17;