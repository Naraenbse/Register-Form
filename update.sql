CREATE TABLE Student(
        id INT,
         name VARCHAR(50),
        age INT,
        marks INT
     );
INSERT INTO Student (id, name, age, marks) VALUES
     (1, 'MIKEY', 20, 80),
      (2, 'KAZHITORO', 21, 90),
     (3, 'TAKIMICHI', 19, 60);
SELECT * FROM Student;
UPDATE Student
     SET marks= 70,
     WHERE id=2;
SELECT * FROM Student;