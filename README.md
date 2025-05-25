# E-Commerce Analytics SQL Project

## Project Overview
This project simulates an e-commerce database and provides a foundation for writing complex SQL queries to generate business insights. The database consists of four main tables: `customers`, `orders`, `products`, and `order_items`. These tables are being used to practice and demonstrate SQL concepts such as joins, aggregations, and subqueries.

## Database Schema
- **customers**: Stores customer information and referral relationships.
  - `id`, `name`, `email`, `referrer_id`
- **orders**: Contains order details for each customer.
  - `order_id`, `customer_id`, `order_date`, `total_amount`
- **products**: Lists products available for purchase.
  - `product_id`, `name`, `category`, `price`
- **order_items**: Links products to orders and tracks quantities.
  - `order_item_id`, `order_id`, `product_id`, `quantity`

## Project Structure
```
/ (root)
│
├── schema/           # SQL scripts to create and populate tables
│   ├── create_tables.sql
│   └── insert_sample_data.sql
│
├── queries/          # SQL queries for analysis and insights
│   ├── top_customers.sql
│   ├── customers_without_orders.sql
│   ├── sales_per_product.sql
│   ├── referred_active_customers.sql
│   ├── best_selling_product_per_category.sql
│   └── README.md
│
└── README.md         # Project documentation
```

## Tasks
- Get top 3 customers by order amount
- List customers who haven't ordered anything
- Join orders and order_items to get total sales per product
- Find customers who referred other active customers
- Find the best-selling product in each category
 
