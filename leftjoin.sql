CREATE TABLE Student (
    id INT,
    name VARCHAR(50),
    course_id INT
);

INSERT INTO Student VALUES
(1, 'Arun', 101),
(2, 'Bala', 102),
(3, 'Divya', 103),
(4, 'Kavi', 104),
(5, 'Ravi', 106);

CREATE TABLE Course (
    course_id INT,
    course_name VARCHAR(50)
);

INSERT INTO Course VALUES
(101, 'Computer'),
(102, 'Science'),
(103, 'Maths'),
(105, 'English');

SELECT Student.name, Course.course_name
FROM Student
LEFT JOIN Course
ON Student.course_id = Course.course_id;