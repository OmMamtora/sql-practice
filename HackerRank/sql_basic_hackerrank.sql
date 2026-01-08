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
