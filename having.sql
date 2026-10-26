CREATE TABLE Student (
    id INT,
    name VARCHAR(30),
    department VARCHAR(30),
    age INT
);

INSERT INTO Student VALUES
(1, 'ACE', 'CSE', 20),
(2, 'GOLDROGGERS', 'ECE', 30),
(3, 'LUFFY', 'CSE', 18),
(4, 'ZORO', 'ECE', 20),
(5, 'SANJI', 'ECE', 21),
(6, 'NAMI', 'ECE', 22),
(7, 'USOPP', 'CSE', 19),
(8, 'WHITEBEARD', 'ECE', 25);

SELECT department, COUNT(*) AS total_students
FROM Student
GROUP BY department
HAVING COUNT(*) > 5;