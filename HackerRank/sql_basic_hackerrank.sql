/*
=====================================================
 HackerRank SQL (Basic) – Practice Solutions
 Author : Om Mamtora
 Platform : HackerRank
=====================================================
*/


-- Query all columns for all American cities in the CITY table with populations larger than 100000. The CountryCode for America is USA. 
select * from CITY where population > 100000 AND countrycode = 'USA';

-- Query the NAME field for all American cities in the CITY table with populations larger than 120000. The CountryCode for America is USA. 
select NAME from city where population > 120000 and countrycode = 'USA';

-- Query all columns (attributes) for every row in the CITY table.
select * from city;

-- Query all columns for a city in CITY with the ID 1661.
select * from city where ID = 1661;

-- Query all attributes of every Japanese city in the CITY table. The COUNTRYCODE for Japan is JPN. 
select * from city where countrycode = 'JPN';

-- Query the names of all the Japanese cities in the CITY table. The COUNTRYCODE for Japan is JPN.
select name from city where countrycode = 'JPN';

-- Query a list of CITY and STATE from the STATION table. 
select city,state from station;

-- Query a list of CITY names from STATION for cities that have an even ID number. Print the results in any order, but exclude duplicates from the answer. 
select distinct city from station where MOD(id,2) = 0;

-- Find the difference between the total number of CITY entries in the table and the number of distinct CITY entries in the table. 
SELECT COUNT(*) - COUNT(DISTINCT CITY) AS DIFFERENCE FROM STATION;

-- Query the two cities in STATION with the shortest and longest CITY names, as well as their respective lengths (i.e.: number of characters in the name). If there is more than one smallest or largest city, choose the one that comes first when ordered alphabetically. 
select city, length(city) from station order by length(city), city limit 1;
select city, length(city) from station order by length(city) DESC,city limit 1;



-- Query the list of CITY names starting with vowels (i.e., a, e, i, o, or u) from STATION. Your result cannot contain duplicates.
select distinct city from station where city like 'A%'
                                    OR CITY LIKE 'E%'
                                    OR CITY LIKE 'I%'
                                    OR CITY LIKE 'O%'
                                    OR CITY LIKE 'U%';

-- Query the list of CITY names ending with vowels (a, e, i, o, u) from STATION. Your result cannot contain duplicates.
select distinct city from station where city like '%a'
                                    OR city like '%e'
                                    OR city like '%i'
                                    OR city like '%o'
                                    OR city like '%u';

-- Query the list of CITY names from STATION which have vowels (i.e., a, e, i, o, and u) as both their first and last characters. Your result cannot contain duplicates.
select distinct city from station where (city like 'A%'
                                    OR city like 'E%'
                                    OR city like 'I%'
                                    OR city like 'O%'
                                    OR city like 'U%') 
                                    AND 
                                    (city like '%A'
                                    OR city like '%E'
                                    OR city like '%I'
                                    OR city like '%O'
                                    OR city like '%U'
                                    OR
                                    city like '%a'
                                    OR city like '%e'
                                    OR city like '%i'
                                    OR city like '%o'
                                    OR city like '%u');

-- Query the list of CITY names from STATION that either do not start with vowels or do not end with vowels. Your result cannot contain duplicates.
SELECT DISTINCT CITY FROM STATION WHERE CITY REGEXP '^[^AEIOU]' OR CITY REGEXP '[^AEIOU]$';


-- Query the list of CITY names from STATION that do not start with vowels and do not end with vowels. Your result cannot contain duplicates.
SELECT DISTINCT CITY FROM STATION  WHERE CITY REGEXP '^[^AEIOU]' AND CITY REGEXP '[^AEIOU]$'; 


-- Query the Name of any student in STUDENTS who scored higher than Marks. Order your output by the last three characters of each name. If two or more students both have names ending in the same last three characters (i.e.: Bobby, Robby, etc.), secondary sort them by ascending ID.
select name from students where marks > 75 order by right (name, 3),ID ASC;

-- Write a query that prints a list of employee names (i.e.: the name attribute) from the Employee table in alphabetical order.
select name from employee order by name ASC;

-- Write a query that prints a list of employee names (i.e.: the name attribute) for employees in Employee having a salary greater than $2000 per month who have been employees for less than months. Sort your result by ascending employee_id.
select name from employee where salary > 2000 AND months < 10 order by employee_id ASC;

-- Write a query identifying the type of each record in the TRIANGLES table using its three side lengths. Output one of the following statements for each record in the table:
	-- Equilateral: It's a triangle with  sides of equal length.
	-- Isosceles: It's a triangle with sides of equal length.
	-- Scalene: It's a triangle with sides of differing lengths.
	-- Not A Triangle: The given values of A, B, and C don't form a triangle.

select 
    case
        when A + B <= C or A + C <= B or B + C <= A THEN 'Not A Triangle'
        when A = B AND B = C THEN 'Equilateral'
        when A = B or B = C or C = A THEN 'Isosceles'
        else 'Scalene'
    end
from triangles
