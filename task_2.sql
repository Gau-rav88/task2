USE sql_task_2;



cREATE TABLE students (
    id INT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100),
    age INT
);

CREATE TABLE courses (
    course_id INT PRIMARY KEY,
    course_name VARCHAR(100) NOT NULL,
    duration INT,
    fees INT
);

INSERT INTO students (id, name, email, age)
VALUES (1, 'Rohit', 'rohit@gmail.com', 22);

INSERT INTO students (id, name)
VALUES (2, 'Sneha');   -- email, age = NULL

INSERT INTO students (id, name, email, age)
VALUES (3, 'Amit', NULL, 20);


INSERT INTO courses (course_id, course_name, duration, fees)
VALUES
(101, 'SQL Basics', 30, 2000),
(102, 'Python Programming', 45, 5000),
(103, 'Web Development', NULL, 8000);

SELECT * FROM students;
SELECT * FROM courses;

UPDATE students
SET email = 'sneha@gmail.com'
WHERE id = 2;

UPDATE students
SET age = 21
WHERE age IS NULL;



SELECT * FROM students;

DELETE FROM students
WHERE id = 3;

INSERT INTO students (id, name, email, age)
SELECT 4, name, email, age
FROM students
WHERE id = 1;








