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
--Q3) 
-- Write a SQL query to list each project manager’s average project duration (in days) 
-- and count of projects they’ve participated in that exceeded the product budget. 
-- Exclude ongoing projects from the average duration calculation but include them in the total cost. 
-- Output columns: project_mgr_id, avg_project_duration, over_budget_project_count

'''
Step 1) -


'''

SELECT 
FROM 