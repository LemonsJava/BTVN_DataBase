USE techmaster;
CREATE TABLE Categories (
category_id INT PRIMARY KEY,
category_name VARCHAR(50)
);

INSERT INTO Categories (category_id, category_name) VALUES
(1, "Điện thoại"),
(2, "Laptop"),
(3, "Máy tính bảng"),
(4, "Đồng hồ"),
(5, "Máy ảnh");

CREATE TABLE Products (
product_id INT PRIMARY KEY,
product_name VARCHAR(50),
category_id INT,
price DOUBLE,
FOREIGN KEY (category_id) REFERENCES Categories (category_id)
);

INSERT INTO Products (product_id, product_name, category_id, price) VALUES
(1, "Iphone 15 Pro Max", 1, 3000),
(2, "Iphone 14 Pro", 1, 2000),
(3, "Iphone 13", 1, 1000),
(4, "Macbook Air M3 ", 2, 10000),
(5, "Laptop Asus Vivobook", 2, 8000),
(6, "Laptop Dell Inspiron", 2, 6500),
(7, "iPad Pro M4", 3, 9000),
(8, "Lenovo Tab M11", 3, 5500),
(9, "iPad Air 5", 3, 6000),
(10, "Samsung Watch", 4, 2500),
(11, "Apple Watch", 4, 4500),
(12, "Máy ảnh Fujifilm Instax", 5, 11500),
(13, "Máy ảnh Canon PowerShot G7", 5, 1300),
(14, "Máy ảnh Sony CyberShot", 5, 12500),
(15, "Máy ảnh Kodak Mini Shot 3", 5, 14000);

CREATE TABLE Customers (
customer_id INT PRIMARY KEY,
customer_name VARCHAR(50),
email TEXT
);

INSERT INTO Customers (customer_id, customer_name, email) VALUES
(1, "Nguyen Van A", "NguyenVanA@gmail.com"),
(2, "Le Van B", "LeVanB@gmail.com"),
(3, "Tran Thi C", "TranThiC@gmail.com"),
(4, "Duong Van D", "DuongVanD@gmail.com"),
(5, "Trinh Ngoc E", "TrinhNgocE@gmail.com"); 

CREATE TABLE Orders (
order_id INT PRIMARY KEY,
customer_id INT,
order_date DATETIME,
FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);

INSERT INTO Orders (order_id, customer_id, order_date) VALUES
(1, 1, '2024-05-05 09:30:00'),
(2, 1, '2024-07-12 14:40:30'),
(3, 2, '2024-03-24 17:27:55'),
(4, 3, '2023-12-12 10:05:35'),
(5, 4, '2024-01-11 14:50:51'),
(6, 4, '2023-08-09 20:12:33'),
(7, 3, '2023-04-28 09:50:00'),
(8, 5, '2024-02-10 10:02:00'),
(9, 2, '2024-06-06 20:01:45'),
(10, 5, '2024-03-23 11:45:59');

CREATE TABLE OrderDetails (
order_detail_id INT PRIMARY KEY,
order_id INT,
product_id INT,
quantily INT,
FOREIGN KEY (order_id) REFERENCES Orders(order_id),
FOREIGN KEY (product_id) REFERENCES Products(product_id)
);

INSERT INTO Orderdetails (order_detail_id, order_id, product_id, quantily) VALUES
(1, 1, 2, 1),
(2, 1, 4, 2),
(3, 2, 3, 1),
(4, 2, 11, 5),
(5, 3, 8, 1),
(6, 4, 4, 3),
(7, 5, 9, 1),
(8, 5, 5, 4),
(9, 3, 7, 1),
(10, 5, 10, 2),
(11, 2, 14, 1),
(12, 6, 13, 1),
(13, 9, 5, 2),
(14, 8, 8, 1),
(15, 7, 4, 5),
(16, 6, 2, 1),
(17, 10, 9, 3),
(18, 8, 11, 1),
(19, 9, 3, 4),
(20, 5, 10, 1),
(21, 10, 2, 2),
(22, 7, 5, 1);


-- 1. Lấy thông tin tất cả các sản phẩm đã được đặt trong một đơn đặt hàng cụ thể.
SELECT p.product_name AS Tên_SP, c.category_name AS Danh_mục_SP, p.price AS Giá, od.quantily AS Số_lượng
FROM orderdetails od
INNER JOIN products p ON od.product_id = p.product_id
INNER JOIN categories c ON p.category_id = c.category_id
WHERE od.order_id = 1;
-- 2. Tính tổng số tiền trong một đơn đặt hàng cụ thể.
SELECT od.order_id AS Đơn_Hàng, sum(p.price * od.quantily) AS Tổng_Số_Tiền
FROM orderdetails od
INNER JOIN products p ON od.product_id = p.product_id
WHERE od.order_id = 2;
-- 3. Lấy danh sách các sản phẩm chưa có trong bất kỳ đơn đặt hàng nào.
SELECT p.product_name AS Tên_SP, c.category_name AS Danh_mục_SP, p.price AS Giá
FROM orderdetails od
RIGHT JOIN products p ON od.product_id = p.product_id
RIGHT JOIN categories c ON p.category_id = c.category_id
WHERE od.product_id IS NULL;
-- 4. Đếm số lượng sản phẩm trong mỗi danh mục. (category_name, total_products)
SELECT c.category_name AS Tên_danh_mục, count(p.product_id) AS Tổng_sô_SP
FROM products p
INNER JOIN categories c ON p.category_id = c.category_id
GROUP BY p.category_id;
-- 5. Tính tổng số lượng sản phẩm đã đặt bởi mỗi khách hàng (customer_name, total_ordered)
SELECT c.customer_name AS Tên_KH, SUM(od.quantily) AS Tổng_số_SP
FROM orderdetails od 
INNER JOIN orders o ON od.order_id = o.order_id
INNER JOIN customers c ON o.customer_id = c.customer_id
GROUP BY o.customer_id;
-- 6. Lấy thông tin danh mục có nhiều sản phẩm nhất (category_name, product_count)
SELECT c.category_name AS Tên_danh_mục, COUNT(p.product_id) AS Số_lượng_SP
FROM products p
INNER JOIN categories c ON p.category_id = c.category_id
GROUP BY p.category_id
ORDER BY Số_lượng_SP DESC LIMIT 1;
-- 7. Tính tổng số sản phẩm đã được đặt cho mỗi danh mục (category_name, total_ordered)
SELECT c.category_name AS Tên_danh_mục, SUM(od.quantily) AS Số_lượng_SP
FROM categories c
INNER JOIN products p ON c.category_id = p.category_id
INNER JOIN orderdetails od ON p.product_id = od.product_id
GROUP BY c.category_name;
-- 8. Lấy thông tin về top 3 khách hàng có số lượng sản phẩm đặt hàng lớn nhất (customer_id, customer_name, total_ordered)
SELECT c.customer_id AS ID, c.customer_name AS Tên_KH, SUM(od.quantily) AS Tổng_số_SP
FROM orderdetails od 
INNER JOIN orders o ON od.order_id = o.order_id
INNER JOIN customers c ON o.customer_id = c.customer_id
GROUP BY o.customer_id
ORDER BY Tổng_số_SP DESC LIMIT 3;
-- 9. Lấy thông tin về khách hàng đã đặt hàng nhiều hơn một lần trong khoảng thời gian cụ thể từ ngày A -> ngày B (customer_id, customer_name, total_orders)
SELECT c.customer_id AS ID, c.customer_name AS Tên_KH, COUNT(o.order_id) AS Tổng_số_đơn_hàng
FROM customers c 
INNER JOIN orders o ON c.customer_id = o.customer_id
WHERE o.order_date BETWEEN '2024-01-01 00:00:00' AND '2024-07-05 00:00:00'
GROUP BY o.customer_id
HAVING Tổng_số_đơn_hàng > 1;
-- 10. Lấy thông tin về các sản phẩm đã được đặt hàng nhiều lần nhất và số lượng đơn đặt hàng tương ứng (product_id, product_name, total_ordered)
SELECT p.product_id AS ID, p.product_name AS Tên_SP, COUNT(od.order_id) AS Số_lượng_đơn_hàng
FROM products p
JOIN orderdetails od ON p.product_id = od.product_id
GROUP BY p.product_id, p.product_name
ORDER BY Số_lượng_đơn_hàng DESC;
