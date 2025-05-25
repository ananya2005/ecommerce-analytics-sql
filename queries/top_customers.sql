-- Query: Get top 3 customers by order amount 
SELECT c.name
FROM customers c
LEFT JOIN orders o
ON c.id = o.customer_id
ORDER BY o.total_amount desc
LIMIT 3