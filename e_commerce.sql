create database e_commerce;
use e_commerce
create table customers(
cust_id int primary key,
cust_name varchar(100),
city varchar(50),
age int);


insert into customers
values
(1,'Harish','Hyderabad',22), 
(2,'Rahul','Bangalore',25), 
(3,'Sneha','Hyderabad',28),
(4,'Priya','Chennai',24),
(5,'Amit','Delhi',30);

--select *from customers;
--delete from customers





-- Products 
CREATE TABLE products 
( product_id INT PRIMARY KEY,
product_name VARCHAR(100), 
category VARCHAR(50), 
price DECIMAL(10,2)
);

INSERT INTO products 
VALUES
(101,'Laptop','Electronics',60000),
(102,'Mouse','Electronics',500), 
(103,'Keyboard','Electronics',1500), 
(104,'Shoes','Fashion',2500), 
(105,'Watch','Fashion',5000);

--select*from products







-- Orders
CREATE TABLE Orders
( OrderID INT PRIMARY KEY, 
cust_id INT,
product_id INT, 
Quantity INT, 
OrderDate DATE,
FOREIGN KEY(cust_id) REFERENCES customers(cust_id),
FOREIGN KEY(product_id)  REFERENCES products(product_id)
);

INSERT INTO Orders
VALUES
(1001,1,101,1,'2024-01-10'), 
(1002,1,102,2,'2024-02-15'), 
(1003,2,104,1,'2024-01-18'), 
(1004,3,101,2,'2024-03-05'), 
(1005,4,105,1,'2024-02-12'), 
(1006,5,103,3,'2024-01-25'),
(1007,2,101,1,'2024-04-02'), 
(1008,3,104,2,'2024-04-05');





-- Employee (for salary / hierarchy questions) 
CREATE TABLE Employee 
( emp_id INT PRIMARY KEY, 
emp_name VARCHAR(50), 
salary INT,
manager_id INT );

INSERT INTO Employee VALUES 
(1,'John',80000,NULL), 
(2,'Alex',60000,1), 
(3,'David',90000,1), 
(4,'Sara',50000,2), 
(5,'Tom',70000,2), 
(6,'Mike',90000,3);
























