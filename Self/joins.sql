# Joins : Inner, Left, Right, Full Outer joins.
create database if not exists RetailStore;
use RetailStore;

create table Customers(
	CustomerID int primary key,
    CustomerName varchar(100)
);

create table orders(
	OrderID int primary key,
    Product varchar(100),
    Amount decimal(10,2),
    CustomerID int,
    foreign key(CustomerID) references Customers(CustomerID)
);

insert into Customers 
values
(1,'Om Mamtora'),
(2,'Dhruvil Fulwala'),
(3,'Harsh Sanghvi'),
(4,'Krish Modi'),
(5,'Aryan Patel'),
(6,'Amit Verma'),
(7,'Rishi Kapoor');


insert into orders 
values
(101,'Mouse',500,3),
(102,'Laptop',75000,1),
(103,'Keyboard',1200,5),
(104,'Speaker',5000,2),
(105,'Pendrive',600,4),
(106,'Monitor',50000,2),
(107,'Hard Disk',6000,NULL);


# Inner Join
# Syntax : select A.column , B.column from Table A inner join Table B On A.common_column = B.common_column;

select Customers.CustomerName, orders.Product from Customers INNER JOIN orders on Customers.CustomerID = orders.CustomerID;
select Customers.CustomerName, orders.Product, orders.Amount from Customers INNER JOIN orders on Customers.CustomerID = orders.CustomerID;

# left Join
# Syntax : select A.column , B.column from Table A left join Table B On A.common_column = B.common_column;

select Customers.CustomerName, orders.Product from Customers LEFT JOIN orders on Customers.CustomerID = orders.CustomerID;


# right Join
# Syntax : select A.column , B.column from Table A right join Table B On A.common_column = B.common_column;

select Customers.CustomerName, orders.Product from Customers RIGHT JOIN orders on Customers.CustomerID = orders.CustomerID;
select Customers.CustomerName, orders.Product, orders.Amount from Customers RIGHT JOIN orders on Customers.CustomerID = orders.CustomerID;

# full outer join (UNION)

select Customers.CustomerName, orders.Product, orders.Amount 
from Customers
LEFT JOIN orders ON Customers.CustomerID = orders.CustomerID
UNION
select Customers.CustomerName, orders.Product, orders.Amount 
from Customers
LEFT JOIN orders ON Customers.CustomerID = orders.CustomerID;