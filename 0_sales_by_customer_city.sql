

/* 

Write a query to fetch the number of transactions per user city, 
ordered by descending number of transactions, 
using an e-commerce database described by the schema shown below:
https://www.tryexponent.com/courses/sql-interviews/sales-by-city
*/ 

-- Write your query here
SELECT u.user_city, count(t.id) as number_of_transactions
FROM users u
RIGHT JOIN transactions t
ON u.id = t.customer_id 
GROUP BY u.user_city
ORDER BY number_of_transactions DESC
