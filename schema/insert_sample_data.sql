-- Sample data for customers
INSERT INTO customers (id, name, email, referrer_id) VALUES
    (1, 'Alice Smith', 'alice@example.com', NULL),
    (2, 'Bob Johnson', 'bob@example.com', 1),
    (3, 'Carol Lee', 'carol@example.com', 1),
    (4, 'David Kim', 'david@example.com', 2),
    (5, 'Eve Miller', 'eve@example.com', NULL);

-- Sample data for products
INSERT INTO products (product_id, name, category, price) VALUES
    (1, 'Laptop', 'Electronics', 1200.00),
    (2, 'Headphones', 'Electronics', 150.00),
    (3, 'Coffee Mug', 'Home', 12.50),
    (4, 'Notebook', 'Stationery', 5.00);

-- Sample data for orders
INSERT INTO orders (order_id, customer_id, order_date, total_amount) VALUES
    (1, 1, '2024-06-01', 1350.00),
    (2, 2, '2024-06-02', 12.50),
    (3, 3, '2024-06-03', 155.00),
    (4, 4, '2024-06-04', 5.00);

-- Sample data for order_items
INSERT INTO order_items (order_item_id, order_id, product_id, quantity) VALUES
    (1, 1, 1, 1),   -- Alice buys 1 Laptop
    (2, 1, 2, 1),   -- Alice buys 1 Headphones
    (3, 2, 3, 1),   -- Bob buys 1 Coffee Mug
    (4, 3, 2, 1),   -- Carol buys 1 Headphones
    (5, 4, 4, 1);   -- David buys 1 Notebook 