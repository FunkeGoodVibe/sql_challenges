



SELECT p.product_id, p.name AS product_name, SUM(t.quantity) AS total_quantity_purchased
FROM customer c 
JOIN 'transaction' t ON c.customer_id = t.user_id 
JOIN product p ON p.product_id = t.product_id
WHERE c.is_member = TRUE 
GROUP BY p.product_id, product_name
ORDER BY total_quantity_purchased DESC 
LIMIT 3


-- Write a SQL query to list 
    --each project manager’s average project duration (in days) 
    -- and count of projects they’ve participated in 
    -- that exceeded the product budget. 
    
    --Exclude ongoing projects from the average duration calculation 
    --but include them in the total cost. 
    
    -- Output columns: project_mgr_id, 
                     -- avg_project_duration, 
                     -- over_budget_project_count


with exceeding_budget_products as (

    --step 1: identify products where the total project cost exceeds the budget 
    SELECT p.product_id 
    FROM product p 

    JOIN project_assignment pa ON p.product_id = pa.product_id 
    JOIN project prj           ON pa.project_id = prj.project_id 
    
    GROUP BY p.product_id 
    HAVING SUM(prj.cost) > p.product_budget

    -- querey 

)