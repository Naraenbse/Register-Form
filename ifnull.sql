CREATE TABLE Employee(
    id INT,
    name VARCHAR(20),
    salary INT
); 
INSERT INTO Employee VALUES
(1,'MIKEY',40000),
(2,'ISAGI',NULL),
(3,'BACHIRA',25000);
SELECT name, IFNULL(salary, 0) AS salary
FROM Employee;