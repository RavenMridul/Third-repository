Create Database university ; 
Use university ; 

CREATE TABLE students (
    student_id INT PRIMARY KEY,
    name VARCHAR(200),
    major VARCHAR(200),
    enrollment_year INT,
    email VARCHAR(100)
);

Insert into students ( student_id , name , major , enrollment_year , email)
values 
(1 , "Alice Johnson" , "Computer Science" , 2021 ,'alice@university.edu'), 
(2 , "Bob Smith" , "Mathematics" , 2020 , "bob@university.edu" ),
(3 , "Carol Lee" , "Physics" , 2022  ,  "carol@university.edu"),
(4 , "David Kim" , "Computer Science" , 2021 ,  "david@university.edu");




SELECT 
    *
FROM
    students
WHERE
    major = 'Computer Science'
        OR major = 'Mathematics';



    
CREATE TABLE Courses (
    course_id INT PRIMARY KEY,
    name VARCHAR(100),
    department VARCHAR(100)
);
 
 Select * from Courses ; 
 
 
Insert into Courses ( course_id , name , department)
values
(201 , "Algorithms"  , "Computer Science"), 
(202 , "Linear Algebra" , "Mathematics" ),
(203 , "Quantum Mechanics" , "Physics"),
(204 , "Database Systems" , "Computer Science"),
(205 , "Data structures and algorithms" , "Computer Science");

SELECT 
    *
FROM
    Courses
WHERE
    department LIKE '%Computer Science';
    
SELECT 
    *
FROM
    Courses
WHERE
    department LIKE '%Computer Science'
ORDER BY name ASC; 
    
	CREATE TABLE Enrollments (
    enrollment_id INT PRIMARY KEY,
    student_id INT,
    course_id INT,
    Grades VARCHAR(2),
    FOREIGN KEY (student_id) REFERENCES Students(student_id),
 FOREIGN KEY (course_id) REFERENCES Courses(course_id)
);


Insert into Enrollments 
values
(1 , 1 , 201 , "A"),
(2 , 1 , 202 , "B"),
(3 , 2 , 205 , "A"),
(4 , 3 , 204 , "C"),
(5 , 4 , 203 , "A");

SELECT 
    *
FROM
    Enrollments
WHERE
    grades BETWEEN 'A' AND 'C';
 











