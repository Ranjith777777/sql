
CREATE DATABASE normal_db;
USE normal_db;

-- Create customers table
CREATE TABLE customers (
    id INT PRIMARY KEY AUTO_INCREMENT,
    customer_name VARCHAR(50),
    customer_phone VARCHAR(20)
);

-- Insert customers
INSERT INTO customers (customer_name, customer_phone) VALUES
('virat','9876543210'),
('dhoni','9887766554'),
('rohit','9123456789'),
('Samson','9001122334'),
('ruturaj','9090909090'),
('jadeja','9988776655'),
('rahul','9776655443'),
('hardik','9665544332'),
('shami','9554433221');

-- Create products table
CREATE TABLE products (
    id INT PRIMARY KEY AUTO_INCREMENT,
    product_name VARCHAR(50),
    product_price INT
);

-- Insert products
INSERT INTO products (product_name, product_price) VALUES
('bat',500),
('biriyani',300),
('c',450),
('ball',700),
('data',250),
('helmet',600),
('gloves',350),
('jersey',800),
('pads',900);

-- Create orders table
CREATE TABLE orders (
    order_id INT PRIMARY KEY AUTO_INCREMENT,
    customer_id INT,
    product_id INT,
    order_date DATE,
    FOREIGN KEY (customer_id) REFERENCES customers(id),
    FOREIGN KEY (product_id) REFERENCES products(id)
);

-- Insert orders
INSERT INTO orders (customer_id, product_id, order_date) VALUES
(1,1,'2025-12-01'),
(2,3,'2025-12-02'),
(3,2,'2025-12-03'),
(4,5,'2025-12-04'),
(5,4,'2025-12-05'),
(6,6,'2025-12-06'),
(7,7,'2025-12-07'),
(8,8,'2025-12-08'),
(9,9,'2025-12-09');


SELECT * FROM customers c INNER JOIN orders o ON c.id = o.customer_id;
SELECT * FROM customers c LEFT JOIN orders o ON c.id = o.customer_id;
SELECT * FROM customers c RIGHT JOIN orders o ON c.id = o.customer_id;
