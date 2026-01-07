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

--Write a SQL query to list the top 2 products 
--with the highest number of active but incomplete projects, 
--where ongoing projects have project.end_date set to NULL. 
--Output columns: product_id, active_projects_count

'''
Step 1) Join product, with project_assigment, and project tables - using an inner join. These ensure we have access to the appropriate columns. 
Step 2) Add the condition where end date IS NULL, to ensure we look for live projects only. 
Step 3) COUNT the number of project ids, as <active project count>, and output the product id. 
Step 4) Aggregate - on the product ID 
Step 5) ORDER BY, and limit to output the top 2. 


'''
SELECT p.product_id, COUNT(prj.project_id) AS active_projects_count
FROM product p
INNER JOIN project_assignment pa ON p.product_id = pa.product_id
INNER JOIN project prj ON pa.project_id = prj.project_id
WHERE prj.end_date IS NULL
GROUP BY p.product_id
ORDER BY active_projects_count DESC
LIMIT 2;