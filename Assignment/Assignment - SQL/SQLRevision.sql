CREATE DATABASE SQLAssignment;
USE SQLAssignment;

CREATE TABLE Student(
	StudentID INT AUTO_INCREMENT PRIMARY KEY,
	Name VARCHAR(50),
    Standard INT,
    Section VARCHAR(10),
    Marks INT
);

-- Storing data in a table
INSERT INTO Student(Name, Standard, Section, Marks) VALUES
('Swathi', 10, 'B', 97),
('Chamm', 10, 'D', 94),
('Ankita', 9, 'C', 92),
('Vinay', 9, 'C', 87),
('James', 11, 'A', 90); 

SELECT * FROM Student;

-- Updating data in a table
UPDATE Student SET Marks = 91 WHERE StudentID = 5;

-- Deleting data from a table
DELETE FROM Student WHERE StudentID = 4;

INSERT INTO Student(Name, Standard, Section, Marks) VALUES
('John', 10, 'B', 97);

-- Retrieving specific attributes
SELECT Name, Standard FROM Student WHERE Marks = 97;

-- Retrieving selected rows
SELECT * FROM Student WHERE Marks = 97;

-- Filtering Data: Where Clauses
SELECT * FROM Student WHERE Marks = 97;

-- Filtering Data: IN, DISTINCT, AND, OR, BETWEEN, LIKE, Column & table aliases
 SELECT * FROM Student WHERE MARKS BETWEEN 90 AND 95;

-- Using string functions
SELECT Name, LENGTH(Name) FROM Student;

-- Using Date functions 
ALTER TABLE Student ADD COLUMN DateOfBirth DATE;
ALTER TABLE Student ADD COLUMN TeacherID INT;

UPDATE Student SET TeacherID = 1 WHERE StudentID IN (1,2,3);
UPDATE Student SET TeacherID = 2 WHERE StudentID IN (4,5);

UPDATE Student SET DateOfBirth = '2003-04-02' WHERE StudentID = 1;
UPDATE Student SET DateOfBirth = '2003-04-03' WHERE StudentID = 2;
UPDATE Student SET DateOfBirth = '2003-04-04' WHERE StudentID = 3;
UPDATE Student SET DateOfBirth = '2003-04-05' WHERE StudentID = 4;
UPDATE Student SET DateOfBirth = '2003-04-06' WHERE StudentID = 5;

-- Using date functions
SELECT timestampdiff(Year, DateOfBirth, now()) AS Age FROM Student WHERE StudentID = 1;

-- Using Mathematical Functions
SELECT AVG(Marks) FROM Student;

-- Using system functions
SELECT timestampdiff(Year, DateOfBirth, now()) AS Age FROM Student WHERE StudentID = 1;

-- Summarizing and grouping data
SELECT Standard, COUNT(StudentID) AS NumberOfStudents FROM Student GROUP BY Standard;

-- Summarizing data by using aggregate functions
SELECT Standard, COUNT(StudentID) AS NumberOfStudents FROM Student GROUP BY Standard;

-- Grouping Data
SELECT TeacherID, COUNT(StudentID) FROM Student GROUP BY TeacherID;

-- Hands On Exercise: Filtering data using SQL queries
 SELECT * FROM Student WHERE MARKS BETWEEN 90 AND 95;
 
 -- Hands On Exercise: Total aggregations using SQL queries
 SELECT COUNT(StudentID), AVG(Marks), COUNT(TeacherID) FROM Student;
 
 -- Hands On Exercise: Group By aggregations using SQL queries
SELECT Standard, COUNT(StudentID) AS NumberOfStudents FROM Student GROUP BY Standard;

-- Order Of Execution of SQL Queries
SELECT * FROM Student ORDER BY Marks DESC; 

-- Hands On Exercise: Rules and Restrictions to Group and Filter Data in SQL queries
SELECT Standard, AVG(Marks) FROM Student  WHERE TeacherID = 1 GROUP BY Standard;

-- Hands On Exercise: Filter Data based on Aggregated Results using Group By and Having
SELECT Standard, AVG(Marks) FROM Student GROUP BY Standard HAVING AVG(Marks) > 93;

-- Using an inner join
CREATE TABLE Teacher(
	TeacherID INT PRIMARY KEY, 
    TeacherName VARCHAR(50),
    Subject VARCHAR(20)
);

INSERT INTO Teacher VALUES
(1, 'Premalatha', 'Science'), 
(2, 'Madhavi', 'Maths'),
(3, 'Jeyalakshmi', 'Tamil'); 

SELECT * FROM Teacher;

-- Using an Inner Join 
SELECT s.Name, s.Standard, s.Section, s.TeacherID, t.TeacherName, t.Subject
FROM Student s
JOIN Teacher t
ON s.TeacherID = t.TeacherID;

-- Using Left Join 
SELECT s.Name, s.Standard, s.Section, s.TeacherID, t.TeacherName, t.Subject
FROM Student s
LEFT JOIN Teacher t
ON s.TeacherID = t.TeacherID;

-- Using Right Join 
SELECT s.Name, s.Standard, s.Section, s.TeacherID, t.TeacherName, t.Subject
FROM Student s
RIGHT JOIN Teacher t
ON s.TeacherID = t.TeacherID;

-- Using Cross Join 
SELECT s.Name, s.Standard, s.Section, s.TeacherID, t.TeacherName, t.Subject
FROM Student s
CROSS JOIN Teacher t;

-- Joins with Group By, Aggregate Functions
SELECT t.TeacherID, COUNT(s.StudentID) AS 'Number Of Students' 
FROM Student s
INNER JOIN Teacher t
ON s.TeacherID = t.TeacherID
GROUP BY t.TeacherID;

-- Using an equi join
SELECT s.Name, s.Standard, s.Section, s.TeacherID, t.TeacherName, t.Subject
FROM Student s, Teacher t
WHERE s.TeacherID = t.TeacherID;

-- Using a self join 
SELECT s1.Name, s1.Standard, s2.Section 
FROM Student s1
JOIN Student s2
ON s1.StudentID = s2.StudentID;

-- Joins with Group By, Having
SELECT t.TeacherID, COUNT(s.StudentID) AS 'Number Of Students' 
FROM Student s
INNER JOIN Teacher t
ON s.TeacherID = t.TeacherID
GROUP BY t.TeacherID
HAVING COUNT(s.StudentID) > 1;

-- Querying Data using Subqueries
SELECT Name, MAX(Marks) AS "Second Highest Score" FROM Student WHERE Marks < (SELECT MAX(Marks) FROM Student) GROUP BY Name LIMIT 1; 

-- Using the EXISTS, ANY, ALL Keywords
SELECT * FROM Teacher WHERE EXISTS (SELECT TeacherID FROM Student);

-- Using nested subqueries
SELECT TeacherName, Subject FROM Teacher WHERE TeacherID IN (SELECT TeacherID FROM Student WHERE Marks < (SELECT MAX(Marks) FROM Student));

-- Using correlated subqueries
SELECT * FROM Student s1 WHERE Marks > (SELECT AVG(Marks) FROM Student s2 WHERE s2.TeacherID = s1.TeacherID);

-- Using Union, Intersect, Except, Merge
SELECT s.Name, s.Standard, s.Section, s.TeacherID, t.TeacherName, t.Subject
FROM Student s
LEFT JOIN Teacher t
ON s.TeacherID = t.TeacherID

UNION

SELECT s.Name, s.Standard, s.Section, s.TeacherID, t.TeacherName, t.Subject
FROM Student s
RIGHT JOIN Teacher t
ON s.TeacherID = t.TeacherID;