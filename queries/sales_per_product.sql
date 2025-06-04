-- Query: get total sales per product
-- Get total sales per product
SELECT p.product_id, name, (SUM(quantity) * price) as total_sales
FROM order_items ot
LEFT JOIN products p
ON ot.product_id = p.product_id
GROUP BY p.product_id