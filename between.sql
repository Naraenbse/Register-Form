CREATE TABLE Grocery(
    id INT,
    item_name VARCHAR(50),
    quantity INT,
    price INT,
    category VARCHAR(30)
);

INSERT INTO Grocery (id, item_name, quantity, price)
VALUES
(1, 'Rice', 10, 60),
(2, 'Sugar', 5, 45),
(3, 'Milk', 12, 30),
(4, 'Apple', 8, 120),
(5, 'Soap', 15, 35);

SELECT * FROM Grocery;

SELECT * FROM Grocery
WHERE price BETWEEN 40 AND 100;