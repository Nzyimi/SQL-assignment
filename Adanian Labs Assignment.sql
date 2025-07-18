USE edu_institute;
GO
DROP TABLE students;
GO

CREATE TABLE students (
    student_id INT PRIMARY KEY,
    name VARCHAR(50),
    age INT,
    gender CHAR(1),
    enrollment_date DATE,
    program VARCHAR(50)

);

-- 2. Data Insertion
INSERT INTO students(student_id , name ,age ,gender , enrollment_date , program) VALUES
(1,  'Alice Mwanje', 20, 'F', '2023-09-15', 'Data Science'),
(2,  'Erick Mutinda', 22, 'M', '2023-08-20', 'Computer Science'),
(3,  'Charlse Mwema', 21, 'M', '2023-10-05', 'Data Science'),
(4,  'Diana Prince', 19, 'F', '2023-09-01', 'Electrical Engineering'),
(5,  'Lucho Martinez', 23, 'M', '2023-07-15', 'Data Science'),
(6,  'Lewis Hamilton', 24, 'M', '2023-06-10', 'Computer Science');

GO

-- 3. Basic Queries
-- 3.1 Select all Data Science students
SELECT * FROM students WHERE program = 'Data Science';
GO

-- 3.2 Count total students
SELECT COUNT(*) AS 'Total Students' FROM students;
GO

-- 4. Function Usage
-- 4.1 Display current date
SELECT GETDATE() AS "Today's Date";
GO

-- 4.2 Display names in uppercase with enrollment dates
SELECT UPPER(name) AS name, enrollment_date FROM students;
GO

-- 5. Advanced Queries
-- 5.1 Count students by program (descending order)
SELECT program, COUNT(*) AS 'Number of Students' 
FROM students 
GROUP BY program 
ORDER BY COUNT(*) DESC;
GO

-- 5.2 Find youngest student
SELECT TOP 1 name, age FROM students 
ORDER BY age ASC;
GO

-- Bonus: Verification Query
SELECT * FROM students ORDER BY student_id;
GO