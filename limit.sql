CREATE TABLE Student (
    id INT,
    name VARCHAR(50),
    age INT,
    marks INT
);

INSERT INTO Student VALUES
(1, 'MIKEY', 20, 80),
(2, 'KAZHITORO', 21, 90),
(3, 'TAKIMICHI', 19, 60),
(4, 'DRAKEN', 22, 85),
(5, 'MITSUYA', 20, 75);

SELECT * FROM Student
LIMIT 3;