use SimpleStore;

select * from Sales_data;


# SubQuery:

select Product, Amount from Sales_data
where Amount > (select avg(Amount) from Sales_data);

# Store Query in variable but it will not store permanent

with CategoryTotals as (
	select Category, sum(Amount) as TotalSales
    from Sales_data
    group by Category
)

select Category, TotalSales from CategoryTotals where TotalSales > 1000;


# Create VIEW

create view CategorySales as 
select Category,sum(Amount) as TotalSales
from Sales_data
group by Category;

select * from CategorySales where TotalSales > 500;

