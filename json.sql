CREATE TABLE TEST1(
    id INT,
    name VARCHAR(20),
    details JSON
    );
INSERT INTO TEST1 (id, name, details)
    VALUES (2,'zentisu','{"country":"india","age":"20","state":"tamilnadu"}');
SELECT 
     id,
     name,
     details->> '$.country' AS country,
     details ->> '$.age' AS age,
    details ->> '$.state' AS state
    FROM TEST1;