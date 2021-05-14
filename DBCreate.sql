USE master;

CREATE DATABASE Products_and_Categories;
USE Products_and_Categories;
CREATE TABLE Products ( product_id int PRIMARY KEY, product_name VARCHAR(100) );

CREATE TABLE Categories ( category_id int PRIMARY KEY,  category_name VARCHAR(100) );

CREATE TABLE Categories_of_Products ( Categories_of_Products int PRIMARY KEY, category_id int, product_id int );

INSERT INTO Products (product_id, product_name) VALUES (1, ' p1'), ( 2, 'p2'), ( 3, 'p3'),  (4, 'p4'), (5, 'p5'), (6, 'p6'), (7, 'p7'), (8, 'p8'), (9, 'p9'), (10, 'p10'), (11, 'p11');

INSERT INTO Categories (category_id, category_name) VALUES (1, 'c1'), (2, 'c2'), (3, 'c3'), (4, 'c4'), (5, 'c5'), (6, 'c6');

INSERT INTO Categories_of_Products (Categories_of_Products, category_id, product_id) VALUES (1, 1, 1), (2, 1, 2), (3, 1, 10), (4, 2, 1), (5, 2, 3), (6, 2, 5), (7, 3, 2), (8, 4, NULL), (9, 5, 8), (10, 5, 9), (11, 5, 10), (12, 5, 11), (13, 6, 6), (14, NULL, 7);

SELECT category_name, product_name FROM Products a, Categories b, Products_and_Categories c WHERE c.product_id = a.product_id AND c.category_id = b.category_id UNION ALL SELECT DISTINCT category_name, 'NULL' FROM Products a, Categories b, Products_and_Categories c WHERE c.product_id IS NULL AND c.category_id = b.category_id UNION ALL SELECT DISTINCT 'NULL', product_name FROM Products a, Categories b, Products_and_Categories c WHERE c.category_id IS NULL AND c.product_id = a.product_id;


