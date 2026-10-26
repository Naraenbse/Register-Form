CREATE TABLE college(
    id INT,
    name VARCHAR(50),
    age INT
);
INSERT INTO college VALUES
(1,'zoro',22),
(2,'Sanji',21),
(3,'luffy',19);

CREATE TABLE college2(
    id INT,
    name VARCHAR(50),
    Age INT
);
INSERT INTO college2 VALUES
(3,'luffy',19),
(4,'nami',20),
(5,'robin',21);

SELECT ID, name FROM college
UNION ALL
SELECT ID, name FROM college2;
