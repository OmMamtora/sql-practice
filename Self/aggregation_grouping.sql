# Aggregate function : COUNT(), SUM(), AVG(), MIN(), MAX()
# Grouping : GROUP BY
# Filtering Groups : HAVING, WHERE

create Database SimpleStore;
use SimpleStore;

create table Sales_data(
	SalesID int auto_increment primary key,
	Product varchar(30),
    Category varchar(50),
    Amount decimal(10,2),
    SaleDate date
);

insert into Sales_data(Product,Category,Amount,SaleDate) 
values
('Pen', 'Stationery', 25.00, '2024-03-01'),
('Notebook', 'Stationery', 50.00, '2024-03-01'),
('Mouse', 'Electronics', 500.00, '2024-03-02'),
('Keyboard', 'Electronics', 700.00, '2024-03-02'),
('Charger', 'Electronics', 300.00, '2024-03-03'),
('Bag', 'Accessories', 1000.00, '2024-03-04');

select * from Sales_data;

# Count
select count(*) from Sales_data;
select count(Amount) from Sales_data;

# SUM()
select SUM(Amount) from Sales_data;

# AVG
select AVG(Amount) from Sales_data;

# MIN and MAX
select MIN(Amount) , MAX(Amount) from Sales_data;



# GROUP BY
select Category, sum(Amount) from Sales_data group by Category;

# Having
# Having work with group by data

select Category, sum(Amount) from Sales_data group by Category having sum(Amount) > 1000;