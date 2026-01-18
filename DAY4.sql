---------------------------DAY 4----------------------------------------
INSERT INTO employ(name,dept,marks,city)
	VALUES('Rahul','CS',82,'Delhi'),
		('Sohan','IT',67,'Mumbai'),
		('Reena','CS',91,'Delhi'),
		('Aman','Civil',55,'Pune'),
		('Pooja','CS',73,'Jaipur'),
		('Imran','Mech',48,'Delhi'),
		('Simran','IT',88,'Mumbai');


		CREATE TABLE student(
	employ_id SERIAL,
	name VARCHAR(50),
	dept VARCHAR(50),
	marks NUMERIC(2),
	city VARCHAR(50)
);

SELECT * FROM student;

ALTER TABLE student
RENAME COLUMN employ_id TO id;

INSERT INTO student(name,dept,marks,city)
	VALUES('Rahul','CS',82,'Delhi'),
		('Sohan','IT',67,'Mumbai'),
		('Reena','CS',91,'Delhi'),
		('Aman','Civil',55,'Pune'),
		('Pooja','CS',73,'Jaipur'),
		('Imran','Mech',48,'Delhi'),
		('Simran','IT',88,'Mumbai'),
		('Rahul', 'CS', 82, 'Delhi'),
		('Sohan', 'IT', 67, 'Mumbai'),
		('Reena', 'CS', 91, 'Delhi'),
		('Aman', 'Civil', 55, 'Pune'),
		('Pooja', 'CS', 73, 'Jaipur'),
		('Imran', 'Mech', 48, 'Delhi'),
		('Simran', 'IT', 88, 'Mumbai'),
		('Kunal', 'CS', 79, 'Delhi'),
		('Mahima', 'IT', 65, 'Kolkata'),
		('Tanya', 'Civil', 58, 'Pune'),
		('Suresh', 'Mech', 62, 'Chennai'),
		('Deepak', 'CS', 84, 'Delhi'),
		('Ritika', 'IT', 72, 'Mumbai'),
		('Harsh', 'Civil', 53, 'Indore'),
		('Kritika', 'CS', 90, 'Delhi'),
		('Aditya', 'Mech', 47, 'Bhopal'),
		('Nikita', 'IT', 76, 'Surat'),
		('Jatin', 'CS', 81, 'Lucknow'),
		('Prachi', 'Civil', 57, 'Pune'),
		('Vikas', 'Mech', 61, 'Delhi'),
		('Neha', 'IT', 87, 'Mumbai'),
		('Rohit', 'CS', 74, 'Delhi'),
		('Anushka', 'CS', 92, 'Kolkata'),
		('Manish', 'IT', 66, 'Surat'),
		('Kiran', 'Civil', 54, 'Bhopal'),
		('Arjun', 'Mech', 60, 'Chennai'),
		('Sneha', 'CS', 89, 'Jaipur'),
		('Dev', 'IT', 78, 'Delhi'),
		('Payal', 'Civil', 52, 'Indore'),
		('Sahil', 'Mech', 59, 'Mumbai'),
		('Zoya', 'IT', 71, 'Kolkata'),
		('Gaurav', 'CS', 83, 'Delhi'),
		('Isha', 'Civil', 56, 'Pune'),
		('Farhan', 'IT', 63, 'Hyderabad'),
		('Aniket', 'CS', 85, 'Delhi'),
		('Lavanya', 'Mech', 50, 'Chennai'),
		('Tarun', 'CS', 80, 'Lucknow'),
		('Bhavna', 'IT', 69, 'Surat'),
		('Ajay', 'Civil', 57, 'Jaipur'),
		('Monika', 'Mech', 64, 'Mumbai'),
		('Yash', 'CS', 77, 'Delhi'),
		('Shreya', 'IT', 86, 'Kolkata'),
		('Nilesh', 'Civil', 51, 'Pune'),
		('Priya', 'CS', 88, 'Delhi'),
		('Kabir', 'IT', 73, 'Surat'),
		('Sana', 'Civil', 49, 'Indore'),
		('Hemant', 'Mech', 68, 'Bhopal'),
		('Divya', 'CS', 93, 'Delhi');

SELECT * FROM student
--DAY 4 – SQL DML & TABLE MODIFICATION (20 QUESTIONS)
INSERT


--Q1. Insert one new student with the following details:
Name = Arnav, Department = CS, Marks = 85, City = Delhi.
INSERT INTO student(name,dept,marks,city)
VALUES('Arnav','CS',85,'Delhi');

--Q2. Insert three students in a single INSERT query.
INSERT INTO student(name,dept,marks,city)
VALUES('saurabh','IT',85,'Bihar'),
		('manish','CS',95,'Bihar'),
		('yogesh','civil',75,'Haryana');
		
--Q3. Insert a student with only name and city.
(Department and marks should be NULL.)
INSERT INTO student(name,city)
VALUES('Ram','UP');

SELECT * FROM student

UPDATE
--Q4. Update marks of student “Rahul” to 95.
UPDATE student
SET marks=95
WHERE name='Rahul';

--Q5. Increase marks of all CS department students by 5.

ALTER TABLE student--(increase size of marks)
ALTER COLUMN marks TYPE NUMERIC(3,0);

UPDATE student
SET marks=marks+5
WHERE dept='CS';

SELECT dept,marks FROM student--(is use to show the output)
WHERE dept='CS'

--Q6. Change city to “Hyderabad” for all IT department students.
SELECT name,city,dept FROM student--(to see orignal city)
WHERE dept='IT'

UPDATE student
SET city='Hyderabad'
WHERE dept='IT';

SELECT name,city,dept FROM student--(to see after changes in city)
WHERE dept='IT'


--Q7. Set marks = NULL for students whose marks are less than 50.

UPDATE student
SET marks=NULL
WHERE marks<50;

SELECT name,dept,marks FROM student--(to check the result)
WHERE marks iS NULL;

DELETE QUERY
--Q8. Delete students who have marks less than 40.

DELETE FROM student
WHERE marks<40;

--Q9. Delete all students belonging to the Mech department.
DELETE FROM student
WHERE dept='Mech';

SELECT name,dept FROM student--(To see the changes in data)
WHERE dept='Mech';

--Q10. Delete all records from the student table but keep the table structure.
TRUNCATE TABLE student;

SELECT * FROM student;--(to see the changages)

ALTER TABLE
--Q11. Add a new column email of type VARCHAR(100) to the student table.
ALTER TABLE student
ADD column email VARCHAR(50);

SELECT * FROM student;--(to see the changages)

--Q12. Add a new column age with default value 18.
ALTER table student
ADD column age INT DEFAULT(18)

--Q13. Rename column dept to department.
ALTER TABLE  student
RENAME COLUMN dept to Deptartment;

--Q14. Change the data type of marks to INTEGER.
ALTER TABLE student
ALTER COLUMN marks TYPE INT;

--Q15. Drop the column age from the student table.
ALTER TABLE student
DROP COLUMN age;

SELECT * FROM student--(to check the result)

CONSTRAINTS & TABLE COPY
--Q16. Add NOT NULL constraint to the name column.
ALTER TABLE student
ALTER COLUMN name SET NOT NULL;

CONSTRAINS 
--Q17. Add UNIQUE constraint on the email column.
ALTER TABLE student
ADD CONSTRAINT unique_email UNIQUE (email);

SELECT * FROM student

--Q18. Add a CHECK constraint so that marks must be between 0 and 100.
ALTER TABLE student
ADD CONSTRAINT marks CHECK(marks>=0 AND marks<=100)

--Q19. Create a new table student_backup with the same structure as student.
CREATE TABLE student_backup AS TABLE student
WITH NO DATA;

Q20. Copy all records from student table into student_backup.
INSERT INTO student_backup
SELECT * FROM student;
