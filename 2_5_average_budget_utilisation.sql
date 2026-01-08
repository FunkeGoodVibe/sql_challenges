'''
Project Management

You are given the following tables with data for the year of 2023:

project table
Column	Type
project_id	INTEGER
start_date	TIMESTAMP
end_date	TIMESTAMP
cost	FLOAT


project_manager_assignment table
Column	Type
project_mgr_id	INTEGER
project_id	INTEGER

The relationship between project_mgr_id and project_id is one-to-many.

project_assignment table
Column	Type
product_id	INTEGER
project_id	INTEGER

The relationship between product_id and project_id is one-to-many.

product table
Column	Type
product_id	INTEGER
product_budget	FLOAT


product_budget refers to the annual budget for the year of 2023
Answer the following questions.

'''
--Q5) 
-- Write a SQL query to identify products where the average budget utilization of projects 
-- has decreased in the second half of 2023 compared to the first half. 
-- Output columns: product_id, first_half_avg_utilization, second_half_avg_utilization

-- + Budget utilization is defined as project cost divided by product budget.
-- + First Half of 2023 includes projects that started between January 1 and June 30.
-- + Second Half of 2023 includes projects that started between July 1 and December 31.

'''
Step 1) -


'''

SELECT 
FROM 