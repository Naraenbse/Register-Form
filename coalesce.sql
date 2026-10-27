CREATE TABLE Employee1(
    id INT,
    name VARCHAR(30),
    phone VARCHAR(15),
    email VARCHAR(50)
);
INSERT INTO Employee1 VALUES
     (1, 'Bachira', NULL, 'bachira@gmail.com'),
     (2, 'Isagi', '9876543210', NULL),
     (3, 'Nagi', NULL, NULL);

     SELECT name, COALESCE(phone, email, 'no contact' ) AS contact
     FROM Employee1;