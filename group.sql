CREATE TABLE Student(
    id INT,
    name VARCHAR(30),
    department VARCHAR(30);
    age INT
);
INSERT INTO Student VALUES
     (1,'ACE','CSE',20),
     (2,'GOLDROGGERS','ECE',30),
     (3,'LUFFY','CSE',18),
     (4,'ZORO','ECE',20),
     (5,'SANJI','MECH',21);

    SELECT department, COUNT(*) AS total_students
     from Student
    GROUP BY department;

