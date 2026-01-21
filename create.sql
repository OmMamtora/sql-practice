Create Database IF NOT EXISTS CollegeDB;
USE CollegeDB;

create table students(
	StudentID INT auto_increment PRIMARY KEY,
	Name varchar(100),
    Age tinyint,
    Email varchar(100) unique,
    JoinDate date
);

select * from students;

# Without City Column

INSERT INTO students(Name,Age,StudentEmail,JoinDate) VALUES('Om',20,'om@gmail.com','2021-02-25');

# Store Multiple Data
INSERT INTO students(Name,Age,StudentEmail,JoinDate) 
VALUES
('Dhruvil', 21, 'dhruvil@gmail.com', '2023-08-15'),
('Sahil', 19, 'sahil@gmail.com', '2024-01-10'),
('Kumar', 22, 'kumar@gmail.com', '2022-06-25'),
('Mahir', 20, 'mahir@gmail.com', '2023-11-05');

# With City Column

INSERT INTO students(Name,Age,StudentEmail,JoinDate,City) VALUES('Om',20,'om@gmail.com','2021-02-25','Ahmedabad');

# Store Multiple Data
INSERT INTO students(Name,Age,StudentEmail,JoinDate,City) 
VALUES
('Dhruvil', 21, 'dhruvil@gmail.com', '2023-08-15','Surat'),
('Sahil', 19, 'sahil@gmail.com', '2024-01-10','Mumbai'),
('Kumar', 22, 'kumar@gmail.com', '2022-06-25','Pune'),
('Mahir', 20, 'mahir@gmail.com', '2023-11-05','Vadodra');