

--GROUP BY and HAVING
--The GROUP BY clause is used to group rows in a table by one or more columns, and the HAVING clause is used to filter the grouped data based on aggregate functions such as SUM, COUNT, AVG, and others.

SELECT column_names
FROM table_name
WHERE condition
GROUP BY column_names
HAVING condition
ORDER BY column_names;



--We want to see the total sales made by each sales representative, and only see those sales representatives who have made more than $10,000 in sales.
SELECT sales_rep, SUM(sales_amount) AS total_sales
FROM sales
GROUP BY sales_rep
HAVING SUM(sales_amount) > 10000;


-- We want to see the average rating for each genre of movie.
SELECT genre, AVG(rating) AS avg_rating
FROM movies
GROUP BY genre;



--First, let's explore the basic use of the COUNT function. The syntax for count is simple:
--This will return the number of rows in the students table. If you only want to count a specific column, you can replace the asterisk (*) with the name of the column, for example:
SELECT COUNT(*) FROM students;

--This will return the number of non-null values in the student_name column.
SELECT COUNT(student_name) 
FROM students;




--The syntax for COUNT(DISTINCT) is similar to the basic COUNT function, but it only counts unique values:
SELECT COUNT(DISTINCT country) 
FROM students;



--
SELECT country, COUNT(*) 
FROM students 
GROUP BY country;



SELECT country, COUNT(DISTINCT student_id) FROM students GROUP BY country;
This will return a table with each country and the number of unique students in each country.



-- Write your query here
-- Let's try a practice problem using an orders table similar to the above examples. Can you find the total revenue per customer?
SELECT customer_id, SUM(quantity * price) as total_revenue
FROM orders
GROUP BY customer_id


'''
Database	    Function	    Example
PostgreSQL	    DATE_TRUNC	    DATE_TRUNC('month', column)
SQL Server	    DATETRUNC	    DATETRUNC(month, column)
MySQL	        EXTRACT	        EXTRACT(MONTH from column)
Oracle	        TRUNC	        TRUNC(column, 'MONTH')
SQLite	        DATE	        DATE(column, 'start of month')
'''

--PostgreSQL
-- Days difference
SELECT end_date - start_date AS days_diff;

-- Months or years difference
SELECT EXTRACT(MONTH FROM AGE(end_date, start_date)) AS months_diff,
       EXTRACT(YEAR FROM AGE(end_date, start_date)) AS years_diff;


--SQLlite
SELECT 
  id, 
  order_date, 
  delivery_date, 
  datediff('day', order_date, delivery_date) AS days_between 
FROM orders

--PostGreSQL
SELECT 
  id, 
  order_date, 
  delivery_date, 
  delivery_date - order_date AS days_between 
FROM orders;