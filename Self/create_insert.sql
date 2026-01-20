CREATE DATABASE IF NOT EXISTS eCom;
use eCom;

create table Categories(
	category_id int auto_increment PRIMARY KEY,
    category_Name varchar(100) NOT NULL,
    category_description varchar(250) NOT NULL
);

create table Products(
	product_id int auto_increment PRIMARY KEY,
    product_Name varchar(50) NOT NULL,
    price decimal(10,2) NOT NULL,
    category_id int,
    foreign key(category_id) references Categories(category_id)
);

create table Customers(
	customer_id int auto_increment PRIMARY KEY,
    customer_Name varchar(50) NOT NULL,
    email varchar(50) NOT NULL 
);

create table Orders(
	order_id int auto_increment PRIMARY KEY,
    customer_id int,
    order_date date NOT NULL,
    status varchar(20) NOT NULL,
    foreign key(customer_id) references Customers(customer_id)
);

create table Payments(
	payment_id int auto_increment PRIMARY KEY,
    order_id int,
    payment_date date NOT NULL,
    amount decimal(10,2),
    foreign key(order_id) references Orders(order_id)
);

CREATE TABLE OrderItems (
    order_item_id INT AUTO_INCREMENT PRIMARY KEY,
    order_id INT,
    product_id INT,
    quantity INT NOT NULL,
    unit_price DECIMAL(10,2) NOT NULL,
    FOREIGN KEY(order_id) REFERENCES Orders(order_id),
    FOREIGN KEY(product_id) REFERENCES Products(product_id)
);


-- INSERT DATA

INSERT INTO Categories (category_Name, category_description) VALUES
('Electronics', 'Devices and gadgets'),
('Clothing', 'Men and Women apparels'),
('Books', 'Fiction and non-fiction books'),
('Home Appliances', 'Appliances for home use'),
('Toys', 'Toys for children'),
('Groceries', 'Daily essentials and food items'),
('Footwear', 'Shoes, sandals, and more'),
('Sports', 'Sportswear and equipment'),
('Beauty', 'Beauty and personal care products'),
('Automotive', 'Car and bike accessories');

INSERT INTO Products (product_Name, price, category_id) VALUES
('Smartphone', 699.99, 1),
('Laptop', 999.99, 1),
('T-Shirt', 19.99, 2),
('Novel - Fiction', 12.99, 3),
('Microwave Oven', 149.99, 4),
('Action Figure', 24.99, 5),
('Rice - 5kg', 4.50, 6),
('Running Shoes', 59.99, 7),
('Football', 29.99, 8),
('Lipstick Set', 14.99, 9),
('Helmet', 49.99, 10),
('LED TV', 399.99, 1),
('Jeans', 39.99, 2),
('Cookbook', 15.99, 3),
('Shampoo', 5.99, 9);


INSERT INTO Customers (customer_Name, email) VALUES
('Alice Johnson', 'alice@example.com'),
('Bob Smith', 'bob@example.com'),
('Charlie Lee', 'charlie@example.com'),
('Diana Green', 'diana@example.com'),
('Eva Adams', 'eva@example.com'),
('Frank Wright', 'frank@example.com'),
('Grace Hall', 'grace@example.com'),
('Henry Young', 'henry@example.com'),
('Ivy Lopez', 'ivy@example.com'),
('Jack White', 'jack@example.com'),
('Karen Black', 'karen@example.com'),
('Leo King', 'leo@example.com'),
('Mona Scott', 'mona@example.com'),
('Nina Wood', 'nina@example.com'),
('Oscar Bell', 'oscar@example.com');


INSERT INTO Orders (customer_id, order_date, status) VALUES
(1, '2025-05-01', 'Delivered'),
(2, '2025-05-02', 'Shipped'),
(3, '2025-05-03', 'Pending'),
(4, '2025-05-04', 'Cancelled'),
(5, '2025-05-05', 'Delivered'),
(6, '2025-05-06', 'Delivered'),
(7, '2025-05-07', 'Shipped'),
(8, '2025-05-08', 'Delivered'),
(9, '2025-05-09', 'Pending'),
(10, '2025-05-10', 'Delivered'),
(11, '2025-05-11', 'Delivered'),
(12, '2025-05-12', 'Cancelled'),
(13, '2025-05-13', 'Shipped'),
(14, '2025-05-14', 'Delivered'),
(15, '2025-05-15', 'Pending');

update Orders set customer_id = 1 where order_id = 8;

INSERT INTO Payments (order_id, payment_date, amount) VALUES
(1, '2025-05-01', 699.99),
(2, '2025-05-02', 999.99),
(5, '2025-05-05', 149.99),
(6, '2025-05-06', 24.99),
(7, '2025-05-07', NULL),
(8, '2025-05-08', 4.50),
(10, '2025-05-10', 29.99),
(11, '2025-05-11', 14.99),
(13, '2025-05-13', 399.99),
(14, '2025-05-14', 39.99);



INSERT INTO OrderItems (order_id, product_id, quantity, unit_price) VALUES
(1, 1, 1, 699.99),   -- Smartphone
(1, 3, 2, 19.99),    -- T-Shirt
(2, 2, 1, 999.99),   -- Laptop
(3, 4, 3, 12.99),    -- Novel - Fiction
(4, 5, 1, 149.99),   -- Microwave
(5, 6, 2, 24.99),    -- Action Figure
(6, 7, 5, 4.50),     -- Rice
(7, 8, 1, 59.99),    -- Running Shoes
(8, 9, 2, 29.99),    -- Football
(9, 10, 3, 14.99),   -- Lipstick
(10, 11, 1, 49.99),  -- Helmet
(11, 12, 1, 399.99), -- LED TV
(12, 13, 2, 39.99),  -- Jeans
(13, 14, 1, 15.99),-- Cookbook
(14, 15, 4, 5.99);   -- Shampoo
