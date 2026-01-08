'''
Member Purchases
You are given the following tables:

customer table
Column	Type
customer_id	INTEGER
name	VARCHAR
is_member	BOOLEAN


product table
Column	Type
product_id	INTEGER
name	VARCHAR
price	FLOAT
product_category	VARCHAR


transaction table
Column	Type
transaction_id	INTEGER
user_id	INTEGER
created_at	TIMESTAMP
product_id	INTEGER
quantity	INTEGER


'''
--Q5) Write a SQL query to find the the list of products where the quantity purchased in these 4 weeks (28 days) 
-- is greater than the quantity purchased in the preceding 4 weeks, and find the percentage increase in quantity sold.
--  Output columns: product_id, product_name, quantity_8_to_4_weeks_ago, quantity_4_to_0_weeks_ago, percentage_increase

'''
Step 1) -


'''

SELECT 
FROM 