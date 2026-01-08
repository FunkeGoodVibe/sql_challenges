


SELECT p.product_category, round(AVG(price),2) AS average_price
FROM product p 
INNER JOIN 'transaction' t ON p.product_id = t.product_id 
WHERE t.created_at >= DATE('now', '-30 days')
GROUP BY p.product_category
