create database if not exists ShopDB; 
use ShopDB;

create table Customers(
	CustomerID INT auto_increment primary key,
    Name varchar(100),
    Email varchar(100) unique,
    Address varchar(200)
);

# Inserting Data

insert into Customers(Name,Email,Address) values
('Shiv','shiv@gmail.com','Kedarnath'),
('Ram','ram#gmail.com','Ayodhya'),
('Krishna','krishna@gmail.com','Vrindavan'),
('Om','om@gmail.com','Ahmedabad'),
('Kripal','kp@gmail.com','Rajasthan');


insert into Customers(Name,Email,Address) values ('krishna','kr@gmail.com','Rajasthan');
select * from Customers;

# Select specific column
select Name from Customers;


# Don't want to display duplicate value
select distinct Address from Customers;


# Filtering data

# For filtering data we have Where, And, Or, Not clause
# Like use for pattern matching  '%%' is for Multipal Character and '_' is for Single Character
# 		i can also use between but it is use for particular range Ex: age 18 to 25	

# Where
select Name from Customers where Address = 'Rajasthan';
select * from Customers where Address like '%Kedarnath%'; 


# AND
select * from Customers where Name='Krishna' AND Address='Vrindavan';
select * from Customers where Name='Krishna' AND Address like '%Vrindavan%';


# NOT
select * from Customers where Name = 'Krishna' and Address not like '%Rajasthan%';

 # OR
 select Name , Email from Customers where Email like '%omm@gmail.com%' OR Address like '%Kedarnath%';
 
 
 
 # Sorting 
 select * from Customers order by Name ASC;
 select * from Customers order by CustomerID desc;
 


# Updating Data in Table
update Customers set Address = 'Pune' where CustomerID =  4;
select * from Customers;



# Delete particular data
delete from Customers where Address like '%rajasthan%';
select * from Customers;