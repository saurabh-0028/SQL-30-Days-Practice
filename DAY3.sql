----------------------------------DAY 1-----------------------------------
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


--Q1. Select all columns from Students table.
SELECT * FROM student;

--Q2. Sirf name aur marks display karo.
SELECT name,marks FROM student;

--Q3. Un students ko dikhaiye jinke marks 70 se upar hain.
SELECT name,marks FROM student
WHERE marks>=70;

--Q4. CS department ke students dikhaiye.
SELECT name,dept FROM student
WHERE dept='CS';

--Q5. Jinki city “Delhi” hai unka record nikaliye.
SELECT name,city FROM student
WHERE city='Delhi';

--Q6. Jinka name “S” se start hota hai.
SELECT name FROM student
WHERE name LIKE'S%';

--Q7. Marks 50 aur 90 ke beech wale students.
SELECT name,marks FROM student
WHERE marks BETWEEN 50 AND 90;

--Q8. CS ya IT department wale students.
SELECT name,Dept FROM student
WHERE dept='CS' OR dept='IT';

--Q9. Marks less than 60 wale students.
SELECT name,marks FROM student
WHERE marks<60;

--Q10. City Mumbai wale students ka sirf name.
SELECT name,city FROM student
WHERE city='Mumbai';

--Q11. Students ko marks ke descending order me dikhaiye.
SELECT name,marks FROM student
ORDER BY marks DESC;

--Q12. City Delhi aur marks > 80.
SELECT name,city,marks FROM student
WHERE city='Delhi' AND marks>'80';

--Q13. Dept CS nahi hai — unka list.
SELECT name,dept FROM student
WHERE NOT (dept='CS');

--Q14. Name me “a” letter ho — sab dikhaiye.
SELECT name FROM student
WHERE name LIKE'%A%';

--Q15. Top 3 highest marks wale students (ORDER BY + LIMIT).
SELECT name,marks FROM student
ORDER BY marks DESC
LIMIT 3;
--Q16. Distinct cities list koi.
SELECT DISTINCT city FROM student;

--Q17. Un students ko dikhaiye jinke marks sirf in values me se ho: 55, 73, 91.
--Hint: IN operator use karein.
SELECT name,marks FROM student
WHERE marks IN('55','73','91');

--Q18. Students jinka name exactly 5 letters ka ho — unka complete record dikhaiye.
--Hint: LIKE + underscore pattern.
SELECT *FROM student
WHERE name LIKE'_____';

--Q19. Students table me jinke marks NULL nahi hain — unka record nikaaliye.
--Hint: IS NOT NULL.
SELECT * FROM student
WHERE marks IS NOT NULL;
--Q20. Total students kitne hain — COUNT function ka use karke nikaaliye.
--Hint: COUNT(*) ya COUNT(id)
SELECT COUNT(name) as total_student
From student;
---------------------------DAY 2---------------------------------
--Q1. Students ko name ke ascending order me dikhaiye.
SELECT name FROM student
ORDER BY name ASC;

--Q2. Students ko marks ke descending order me dikhaiye.
SELECT name,marks FROM student
ORDER BY marks DESC;
--Q3. Sirf top 3 highest marks wale students dikhaiye.
SELECT name,marks FROM student
ORDER BY marks ASC
LIMIT 3;
--Q4. Sirf lowest 2 marks wale students dikhaiye.
SELECT name,marks FROM student
ORDER BY marks ASC
LIMIT 2;
--Q5. Cities ka unique list nikaliye (DISTINCT).
SELECT DISTINCT city FROM student;

--Q6.CS department ke students ko marks ke ascending order me sort karo.
SELECT name,dept,marks FROM student
WHERE dept='CS'
ORDER by marks ASC;

--Q7. IT department me highest marks wale top 1 student.
SELECT name,dept,marks FROM student
WHERE dept='IT'
ORDER BY marks DESC
LIMIT 1;

--Q8. Students ko city ke descending order me sort karo.
SELECT name,city FROM student
ORDER BY city DESC;

--Q9. Students jinke marks > 60 hain → unko marks ke descending order me sort karo.
SELECT name,marks FROM student
WHERE marks>60
ORDER BY marks DESC;

--Q10. Dept ka unique list (DISTINCT dept). 
SELECT DISTINCT dept FROM student;

--Q11. Students jinke name me ‘a’ ho → ascending order me sort.
SELECT * FROM student
ORDER BY name ASC;

--Q12. Students jinka city “Delhi” ho → marks high to low.
SELECT name,city,marks FROM student
WHERE city='Delhi'
ORDER BY marks DESC;

--Q13. Students jinka dept CS ya IT ho → name ke A-Z order me.
SELECT name,dept FROM student
WHERE dept='CS' OR dept='IT'
ORDER BY dept ASC;

--Q14. Top 4 students jinka name S se start hota ho.
SELECT * FROM student
WHERE name LIKE 'S%'
LIMIT 4;

--Q15. Students ka list jisme sabse pehle Mumbai → fir Delhi → fir Jaipur.
--(Hint: ORDER BY FIELD ya CASE WHEN)
--SELECT * FROM student
--ORDER BY FIELD(city,'Mumbai','Jaipur','Jaipur') FIELD not work in postgrey

SELECT * FROM student
ORDER BY CASE 
        WHEN city = 'Mumbai' THEN 1
        WHEN city = 'Delhi'  THEN 2
        WHEN city = 'Jaipur' THEN 3
        ELSE 4
    END;

--Q16. Students ke name ke last letter ke basis par sort karo.
(Hint: RIGHT(name,1))
SELECT *FROM student
ORDER BY RIGHT(name,1);

--17. Students ko city ascending order aur same city me marks descending order me sort karo.
--(Hint: multi-column ORDER BY)
SELECT name,city,marks FROM student
ORDER BY city ASC,marks DESC;

--Q18. Highest marks wale student → sirf 1 record.
SELECT * FROM student
ORDER BY marks DESC
LIMIT 1;

--Q19. Cities ka count → city-wise group nahi karna, bas distinct count.
--(Hint: COUNT(DISTINCT city))
SELECT COUNT(DISTINCT city) FROM student

--Q20. Students jinke marks 70 se upar hain → Top 5.
SELECT * FROM student
WHERE marks>70
ORDER BY marks DESC
LIMIT 5;
---------------------------------DAY 3--------------------------------------
--Q1. Students table me total students count karo.
SELECT COUNT(*) AS Total_stud
FROM student;

--Q2. Students ka average marks nikaalo.
SELECT  AVG(marks) AS Average_maks
FROM student;

--Q3. Students ka maximum marks dikhaiye.
SELECT MAX(marks) AS max_marks
FROM student;

--Q4. Minimum marks wale student ka marks dikhaiye.
SELECT MIN(marks) AS minimum_marks
FROM student;

--Q5. Department-wise students count nikaaliye.
(Use GROUP BY)
SELECT dept, COUNT(name) FROM student
GROUP BY dept;

--Q6. Department-wise average marks nikaaliye.
SELECT dept, AVG(marks) FROM student
GROUP BY dept;

--Q7. City-wise maximum marks nikaaliye.
SELECT city, MAX(marks) FROM student
GROUP BY city;

--Q8. City-wise minimum marks nikaaliye.
SELECT city, MIN(marks) FROM student
GROUP BY city;

--Q9. Dept CS me total students count karo.
SELECT COUNT(name) AS total_student FROM student
WHERE dept='CS';

--Q10. Dept IT ke average marks nikaalo.
SELECT AVG(marks) AS avg_marks FROM student
WHERE dept='IT';

--Q11. Har department me highest marks wale student ka record nikaalo.
(Hint: GROUP BY dept + MAX(marks))
SELECT dept, MAX(marks) FROM student
GROUP BY dept;

SELECT s.*FROM student s
JOIN (
  SELECT dept, MAX(marks) AS max_marks
  FROM student
  GROUP BY dept
)t
ON s.dept = t.dept AND s.marks = t.max_marks;


--Q12. Har city me students ka count descending order me dikhaiye.
SELECT city, COUNT(*) AS total_students FROM student
GROUP BY city
ORDER BY total_students DESC;


--Q13. Jinke marks 70 se upar hain → unka count.
(Hint: COUNT with WHERE)
SELECT COUNT(*) AS Total_marks FROM student
WHERE marks>70;

--Q14. Har department me jinke marks 60 se upar hain → unka count.
(Hint: GROUP BY + WHERE)
SELECT dept, COUNT(*) AS total_students FROM student
WHERE marks > 60
GROUP BY dept;

Q15. Department-wise wo departments jinka average marks > 75 ho.
(Hint: HAVING)
SELECT dept ,AVG(marks) FROM student
GROUP BY dept
HAVING AVG(marks)>75;

--Q16. City-wise total marks nikaalo (SUM).
SELECT city,SUM(marks) AS total_marks
FROM student
GROUP BY city;

--Dept-wise highest marks descending order me sort karo.
SELECT dept, MAX(marks) AS maximum_marks FROM student
GROUP BY dept
ORDER BY maximum_marks DESC;

--Q18. Department-wise fail students (marks < 40) count karo.
(Hint: GROUP BY + WHERE)
SELECT dept ,COUNT(*) AS fail_student FROM student
WHERE marks<40
GROUP BY dept;

--Q19. City-wise average marks > 70 wale cities show karo.
(Hint: HAVING)
SElECT city,AVG(marks) AS avg_marks FROM student
GROUP BY city
HAVING AVG(marks)>70,

Q20. Pure table ka marks ka total SUM nikaalo.
SELECT SUM(marks) AS total_marks
FROM student;
