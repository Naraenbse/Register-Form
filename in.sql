CREATE TABLE Student(
    id INT,
    name VARCHAR(50),
    age INT,
    marks INT,
    Area VARCHAR(30)
);

INSERT INTO Student (id, name, age, marks, Area)VALUES
(1, 'MIKEY', 20, 80, 'madurai'),
(2, 'KAZHITORO', 21, 90, 'chennai'),
(3, 'TAKIMICHI', 19, 60, 'chengalpattu'),
(4, 'draken', 22, 85, 'coimbatore'),
(5, 'MITSUYA', 20, 75, 'trichy');

SELECT * FROM Student
WHERE Area IN ('madurai', 'chennai');