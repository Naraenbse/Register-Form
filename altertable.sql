CREATE TABLE Student (
    id INT,
    name VARCHAR(30)
);

INSERT INTO Student VALUES
(1, 'ACE'),
(2, 'LUFFY');

ALTER TABLE Student
ADD age INT;

SELECT * FROM Student;