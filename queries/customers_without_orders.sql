-- Query: List customers who haven't ordered anything 
SELECT c.name
FROM customers c
LEFT JOIN orders o
ON c.id = o.customer_id
where o.order_id is NULL