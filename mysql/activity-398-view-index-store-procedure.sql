CREATE DATABASE IF NOT EXISTS demo_activity_398;
USE demo_activity_398;

DROP TABLE IF EXISTS Products;

CREATE TABLE Products (
    id INT AUTO_INCREMENT PRIMARY KEY,
    productCode VARCHAR(50) NOT NULL,
    productName VARCHAR(100) NOT NULL,
    productPrice DECIMAL(12,2) NOT NULL,
    productAmount INT NOT NULL,
    productDescription VARCHAR(255),
    productStatus TINYINT NOT NULL DEFAULT 1
);

INSERT INTO Products (productCode, productName, productPrice, productAmount, productDescription, productStatus) VALUES
('P001', 'Laptop Dell', 15000000, 10, 'Laptop Dell Inspiron', 1),
('P002', 'Laptop HP', 14000000, 15, 'Laptop HP Pavilion', 1),
('P003', 'MacBook Air', 22000000, 8, 'MacBook Air M2', 1),
('P004', 'Ban phim Logitech', 800000, 30, 'Ban phim co Logitech', 1),
('P005', 'Chuot Logitech', 500000, 40, 'Chuot khong day Logitech', 1);

EXPLAIN SELECT * FROM Products WHERE productCode = 'P001';

CREATE UNIQUE INDEX idx_products_productCode ON Products(productCode);

CREATE INDEX idx_products_name_price ON Products(productName, productPrice);

EXPLAIN SELECT * FROM Products WHERE productCode = 'P001';
EXPLAIN SELECT * FROM Products WHERE productName = 'Laptop Dell' AND productPrice = 15000000;

CREATE OR REPLACE VIEW product_view AS
SELECT productCode, productName, productPrice, productStatus
FROM Products;

SELECT * FROM product_view;

ALTER VIEW product_view AS
SELECT productCode, productName, productPrice, productAmount, productStatus
FROM Products;

SELECT * FROM product_view;

DROP VIEW product_view;

DELIMITER //

CREATE PROCEDURE get_all_products()
BEGIN
    SELECT * FROM Products;
END //

CREATE PROCEDURE add_product(
    IN p_productCode VARCHAR(50),
    IN p_productName VARCHAR(100),
    IN p_productPrice DECIMAL(12,2),
    IN p_productAmount INT,
    IN p_productDescription VARCHAR(255),
    IN p_productStatus TINYINT
)
BEGIN
    INSERT INTO Products (productCode, productName, productPrice, productAmount, productDescription, productStatus)
    VALUES (p_productCode, p_productName, p_productPrice, p_productAmount, p_productDescription, p_productStatus);
END //

CREATE PROCEDURE update_product(
    IN p_id INT,
    IN p_productCode VARCHAR(50),
    IN p_productName VARCHAR(100),
    IN p_productPrice DECIMAL(12,2),
    IN p_productAmount INT,
    IN p_productDescription VARCHAR(255),
    IN p_productStatus TINYINT
)
BEGIN
    UPDATE Products
    SET productCode = p_productCode,
        productName = p_productName,
        productPrice = p_productPrice,
        productAmount = p_productAmount,
        productDescription = p_productDescription,
        productStatus = p_productStatus
    WHERE id = p_id;
END //

CREATE PROCEDURE delete_product(IN p_id INT)
BEGIN
    DELETE FROM Products WHERE id = p_id;
END //

DELIMITER ;

CALL get_all_products();

CALL add_product('P006', 'Man hinh Samsung', 4500000, 12, 'Man hinh Samsung 24 inch', 1);

CALL update_product(1, 'P001', 'Laptop Dell Updated', 15500000, 12, 'Laptop Dell Inspiron da cap nhat', 1);

CALL delete_product(6);

SELECT * FROM Products;
