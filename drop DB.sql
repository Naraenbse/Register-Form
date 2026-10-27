 CREATE DATABASE test1;
 USE test1;
 CREATE TABLE test1(
     name VARCHAR(20),
     age INT,
     number INT
 );
INSERT INTO test1 VALUES
    (1,'ash',9999999),
    (2,'pikachu',888888);
SELECT * FROM test1;

DROP DATABASE test1;
