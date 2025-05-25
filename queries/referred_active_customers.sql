-- Query: Find customers who referred other active customers 
SELECT DISTINCT name
FROM customers
WHERE id in (
    SELECT c.referrer_id
    FROM customers c
    LEFT JOIN orders o
    ON c.id = o.customer_id
    WHERE c.referrer_id IS NOT NULL and o.order_id is NOT NULL
)