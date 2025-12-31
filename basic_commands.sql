-- Platform   : CodeChef
-- Topics     : Basic SELECT, WHERE, ORDER BY, GROUP BY, JOINS, NULL handling
-- Level      : SQL Fundamentals
-- Description: Practice queries solved on CodeChef

-- Write a query to output Products table.
select * from Products;

-- Write a query to find all product_name and category that have a price greater than 100.00 from the Products table.
select Product_name, Category from Products where price > 100;

-- Write a query to calculate the average salary across all companies combined. Rename the column as avg_salary.
SELECT AVG(salary) AS avg_salary FROM Works;

-- Write a query to select all the distinct companies (company_name) in the Works table.
select distinct(company_name) from works;

-- Write a query to find the total count of books whose genre is Fiction. Note: Output column name should be fiction_count.
select count(genre) as fiction_count from Books where genre = 'Fiction';

-- Write a query to select only the movie names where the ratings are greater than 7 but less than 9.
select Movie_name from Cinema where Rating > 7 and rating < 9;

-- Write a query to retrieve book_id, title, author and published_year of the books which have NULL rating for their books.
select book_id, title, author, published_year from Library where rating is NULL;

-- Create a query to retrieve the employee_name, company, and salary for employees in the full-time category, ordered by salary in descending order
select employee_name, company, salary from Employees where category = 'Full-Time' order by salary desc;

-- Write a query to group the employees by their department and display the total number of employees (as total_employees) in each department.
select department ,count(employee_id) as total_employees from Employees group by department;

-- Write a query to retrieve the author_id, author_name, and publication_name for authors whose articles got zero views. The result should be sorted by author_id in ascending order.
-- Return the result table sorted by id in ascending order.
select author_id, author_name, publication_name from Views where view_count = 0 order by author_id asc;

-- Write a query to find the names of the top 3 distinct players by highest score who have won matches, including their scores.
select distinct p.player_name, p.score from Players p JOIN Matches m on p.player_name = m.winner order by p.score desc limit 3;

-- Write a query to retrieve the details of the last five matches played, including the match ID, the names of the players who participated, the name of the winning player, match date, and the final score of the winner.
select m.match_id, m.player_1, m.player_2, m.winner, m.match_date, p.score from Matches m  JOIN Players p On m.winner = p.player_name order by m.match_date desc limit 5



