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
--Q4) 
-- Write a SQL query to identify the project manager with the highest budget utilization 
-- for each product that has exceeded its budget. 
-- Output column: product_id, project_mgr_id, budget_utilization

'''
Step 1) -


'''

SELECT 
FROM 