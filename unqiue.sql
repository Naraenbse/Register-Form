CREATE TABLE Student (
    id INT UNIQUE,
    name VARCHAR(30)
);

INSERT INTO Student VALUES
 (1, 'ACE'), 
 (2, 'LUFFY'),
 (3, 'ZORO');

SELECT * FROM Student;

INSERT INTO Student VALUES
(1,'SANJI');