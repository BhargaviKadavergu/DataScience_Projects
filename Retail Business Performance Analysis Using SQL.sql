create database Assignment;
create table Customers(CustomerID INT AUTO_INCREMENT PRIMARY KEY,
CustomerName VARCHAR(100) NOT NULL, City VARCHAR(100) NOT NULL, JoinDate VARCHAR(100) NOT NULL);
Insert into Customers(CustomerID,CustomerName,City,JoinDate) 
values( 101, 'Amit Sharma', 'Delhi', '2022-01-10'),
(102, 'Neha Varma', 'Mumbai', '2022-03-15'),
(103, 'Rahul mehta', 'Bangalore', '2022-05-01'),
(104, 'Priya Singh', 'Delhi', '2023-01-12'),
(105, 'Karan Patel', 'Ahmedabad', '2023-02-20'),
(106, 'Sneha Reddy', 'Hyderabad', '2023-03-18'),
(107, 'Arjun Nair', 'Kochi', '2023-04-10'),
(108, 'P00ja Gupta', 'Jaipur', '2023-05-05');

select * from Customers;

create table Products(ProductID INT AUTO_INCREMENT PRIMARY KEY,
ProductName VARCHAR(100) NOT NULL, Category VARCHAR(100) NOT NULL, Price integer NOT NULL);
Insert into Products(ProductID,ProductName,Category,Price)
values(201,'Laptop','Electrnics',55000),
(202,'Mobile','Electronics',25000),
(203,'Tablet','Electronics', 18000),
(204, 'Headphones', 'Accessories', 2000),
(205, 'Keyboard', 'Accessories', 1500),
(206, 'Mouse', 'Accessories', 800),
(207, 'Monitor', 'Electronics', 12000),
(208, 'Printer', 'Electronics', 9000);

select * from Products;

create table Orders(OrderID INT AUTO_INCREMENT PRIMARY KEY,
CustomerID int not null, OrderDate VARCHAR(100) NOT NULL, EmployeeID int NOT NULL);
Insert into Orders(OrderID,CustomerID,OrderDate,EmployeeID)
values(301,101,'2023-01-15',401),
(302,102,'2023-01-18',402),
(303, 103, '2023-02-05', 401),
(304, 104, '2023-02-10', 403),
(305, 105, '2023-03-01', 404),
(306, 106, '2023-03-15', 402),
(307, 107, '2023-04-01', 401),
(308, 108, '2023-04-20', 403);

select * from Orders;

create table OrderDetails(OrderDetailID Int auto_increment Primary key, OrderID int not null, 
ProductID int not null, Quantity int not null);
Insert into OrderDetails(OrderDetailID, OrderID, ProductID, Quantity)
values(1,301, 201, 1),
(2 ,301 ,204, 2),
(3, 302 ,202 ,1),
(4, 303, 203 ,1),
(5 ,304, 207, 2),
(6, 305, 205, 3),
(7, 306, 206, 5),
(8 ,307, 208, 1),
(9 ,308, 201 ,1);

select * from Orderdetails;

create table Employees(EmployeeID Int auto_increment Primary Key, EmployeeName varchar(100) Not Null,
Department varchar(100) Not Null, HireDate varchar(100) Not Null);
Insert into Employees(EmployeeID,EmployeeName,Department,HireDate)
values(401, 'Rajesh Kumar', 'Sales', '2020-02-01'),
(402, 'Meena Iyer' ,'Sales', '2021-06-15'),
(403, 'Vikram Shah' ,'Sales' ,'2022-09-10'),
(404, 'Anil Gupta', 'Sales', '2023-01-05');

select * from Employees;
-- Section 1 — Joins (Basic to Intermediate)
-- 1. Display all orders with customer names.
