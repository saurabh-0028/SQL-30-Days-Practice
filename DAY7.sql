----------------------------------DAY 7-----------------------------------
CREATE TABLE employ(
	employ_id SERIAL,
	name VARCHAR(50),
	dept VARCHAR(50),
	marks NUMERIC(2),
	city VARCHAR(50)
);
SELECT * FROM employ;

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


----------DAY 7 – WINDOW FUNCTIONS (WITH ANSWERS)-------------------
---Window functions work on rows without collapsing da

function() OVER (PARTITION BY column ORDER BY column)

🔹 BASICS
--Q1. Display each student with their department average marks.
SELECT name, dept, marks,
       AVG(marks) OVER (PARTITION BY dept) AS dept_avg
FROM student;

--Q2. Display total students count along with each row.
SELECT name, dept,
       COUNT(*) OVER () AS total_students
FROM student;

--Q3. Show each student with overall average marks.
SELECT name, marks,
       AVG(marks) OVER () AS overall_avg
FROM student;

🔹 RANKING FUNCTIONS
--Q4. Rank students based on marks (highest first).
SELECT name, marks,
       RANK() OVER (ORDER BY marks DESC) AS rank_marks
FROM student;

--Q5. Dense rank students based on marks.
SELECT name, marks,
       DENSE_RANK() OVER (ORDER BY marks DESC) AS dense_rank
FROM student;

---Q6. Assign unique row number to students ordered by marks.
SELECT name, marks,
       ROW_NUMBER() OVER (ORDER BY marks DESC) AS row_num
FROM student;

🔹 PARTITION + RANK
--Q7. Rank students within each department based on marks.
SELECT name, dept, marks,
       RANK() OVER (PARTITION BY dept ORDER BY marks DESC) AS dept_rank
FROM student;

--Q8. Find top scorer from each department.
SELECT *
FROM (
    SELECT name, dept, marks,
           RANK() OVER (PARTITION BY dept ORDER BY marks DESC) AS rnk
    FROM student
) t
WHERE rnk = 1;

🔹 LAG & LEAD
--Q9. Show previous student's marks.
SELECT name, marks,
       LAG(marks) OVER (ORDER BY marks) AS prev_marks
FROM student;

--Q10. Show next student's marks.
SELECT name, marks,
       LEAD(marks) OVER (ORDER BY marks) AS next_marks
FROM student;

🔹 DIFFERENCE CALCULATION

--Q11. Difference between current and previous marks.
SELECT name, marks,
       marks - LAG(marks) OVER (ORDER BY marks) AS diff
FROM student;

🔹 RUNNING TOTAL
--Q12. Calculate running total of marks.
SELECT name, marks,
       SUM(marks) OVER (ORDER BY marks) AS running_total
FROM student;

🔹 PERCENTAGE & NTILE

--Q13. Divide students into 4 equal groups based on marks.
SELECT name, marks,
       NTILE(4) OVER (ORDER BY marks DESC) AS quartile
FROM student;

--Q14. Calculate percent rank of students.
SELECT name, marks,
       PERCENT_RANK() OVER (ORDER BY marks) AS percent_rank
FROM student;

🔹 ADVANCED PRACTICE
--Q15. Show students who scored above department average.
SELECT *
FROM (
    SELECT name, dept, marks,
           AVG(marks) OVER (PARTITION BY dept) AS dept_avg
    FROM student
) t
WHERE marks > dept_avg;

--Q16. Show highest marks per department without GROUP BY.
SELECT DISTINCT dept,
       MAX(marks) OVER (PARTITION BY dept) AS max_marks
FROM student;

--Q17. Find second highest marks overall using window function.
SELECT *
FROM (
    SELECT name, marks,
           DENSE_RANK() OVER (ORDER BY marks DESC) AS rnk
    FROM student
) t
WHERE rnk = 2;

--Q18. Find top 2 students from each department.
SELECT *
FROM (
    SELECT name, dept, marks,
           DENSE_RANK() OVER (PARTITION BY dept ORDER BY marks DESC) AS rnk
    FROM student
) t
WHERE rnk <= 2;

--Q19. Show department-wise running total of marks.
SELECT name, dept, marks,
       SUM(marks) OVER (PARTITION BY dept ORDER BY marks) AS dept_running_total
FROM student;

--Q20. Compare each student’s marks with department topper.
SELECT name, dept, marks,
       MAX(marks) OVER (PARTITION BY dept) - marks AS diff_from_top
FROM student;