
CREATE TABLE Students (
    student_id INT,
    name VARCHAR(30)
);

CREATE TABLE Marks (
    student_id INT,
    mark INT
);

INSERT INTO Students VALUES
(1, 'ASH'),
(2, 'PICKACHU'),
(3, 'CHARMANDER');

INSERT INTO Marks VALUES
(1, 85),
(3, 90);

SELECT name
FROM Students s
WHERE EXISTS (
    SELECT 1
    FROM Marks m
    WHERE m.student_id = s.student_id
);
