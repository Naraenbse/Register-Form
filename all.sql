CREATE TABLE Students (
    ->     id INT,
    ->     name VARCHAR(30),
    ->     department VARCHAR(20),
    ->     age INT,
    ->     marks INT
    -> );
INSERT INTO Students (id, name, department, age, marks)
    -> VALUES
    -> (1, 'ACE', 'CSE', 20, 80),
    -> (2, 'GOLDROGGERS', 'ECE', 30, 90),
    -> (3, 'LUFFY', 'CSE', 18, 60),
    -> (4, 'ZORO', 'ECE', 20, 85),
    -> (5, 'SANJI', 'MECH', 21, 75),
    -> (6, 'NAMI', 'ECE', 22, 88),
    -> (7, 'USOPP', 'CSE', 19, 70);

SELECT *
    -> FROM Students
    -> WHERE marks > ALL (
    ->     SELECT marks
    ->     FROM Students
    ->     WHERE marks = 80
    -> );
