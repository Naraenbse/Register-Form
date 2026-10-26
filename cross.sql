CREATE TABLE customer (
    id INT,
    name VARCHAR(30),
    age INT,
    phonenumber INT
);

INSERT INTO customer VALUES
(1, 'Ace', 21, 667666),
(2, 'luffy', 19, 99999),
(3, 'zoro', 21, 88888);

CREATE TABLE orders (
    order_id INT,
    price INT
);

INSERT INTO orders VALUES
(1, 100),
(2, 200),
(3, 300);

SELECT * FROM customer
CROSS JOIN orders;
