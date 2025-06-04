-- Query: Get the best-selling product in each category

WITH sales_per_product as (
	SELECT 
		p.product_id, 
		p.name,
  		p.category,
  	SUM(quantity) * price as total_sales
 	FROM order_items ot
 	LEFT JOIN products p ON ot.product_id = p.product_id
 	GROUP BY p.product_id
),
ranked_t AS (
	SELECT *,
		RANK() OVER (PARTITION BY category ORDER BY total_sales DESC) AS rk
	FROM sales_per_product
  )
  
SELECT category, name as best_seller 
FROM ranked_t
WHERE rk = 1



