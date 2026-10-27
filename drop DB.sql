 CREATE DATABASE test1;
 USE test1;
 CREATE TABLE test1(
     name VARCHAR(20),
     age INT,
     number INT
 );
INSERT INTO test1 VALUES
    ('ash',20,9999999),
    ('pikachu',25,888888);
SELECT * FROM test1;

DROP DATABASE test1;
