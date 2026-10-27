CREATE TABLE employe1(
    id INT,
    name VARCHAR(20),
    age INT,
    salary INT
);
INSERT INTO employe1 VALUES
(1,'bachira',20,40000),
(2,'nagi',21,35000),
(3,'chigiri',22,23000),
(4,'isagi',23,15000);

SELECT name, salary,
     CASE
         WHEN salary > 25000 THEN 'HIGH SALARY'
         WHEN salary BETWEEN 20000 AND 25000 THEN 'MEDIUM SALARY'
         ELSE 'LOW SALARY'
     END AS salary_category
     FROM employe1;
