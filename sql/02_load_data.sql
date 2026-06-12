
-- Category Translation
COPY product_category_translation
FROM '/workspaces/olist-ecommerce-sql-analysis/data/product_category_name_translation.csv'
DELIMITER ',' CSV HEADER;


-- Customers
COPY customers
FROM '/workspaces/olist-ecommerce-sql-analysis/data/olist_customers_dataset.csv'
DELIMITER ',' CSV HEADER;

-- Sellers
COPY sellers
FROM '/workspaces/olist-ecommerce-sql-analysis/data/olist_sellers_dataset.csv'
DELIMITER ',' CSV HEADER;

-- Products
COPY products
FROM '/workspaces/olist-ecommerce-sql-analysis/data/olist_products_dataset.csv'
DELIMITER ',' CSV HEADER;

-- Orders
COPY orders
FROM '/workspaces/olist-ecommerce-sql-analysis/data/olist_orders_dataset.csv'
DELIMITER ',' CSV HEADER;

-- Order Items
COPY order_items
FROM '/workspaces/olist-ecommerce-sql-analysis/data/olist_order_items_dataset.csv'
DELIMITER ',' CSV HEADER;

-- Order Payments
COPY order_payments
FROM '/workspaces/olist-ecommerce-sql-analysis/data/olist_order_payments_dataset.csv'
DELIMITER ',' CSV HEADER;

-- Order Reviews
COPY order_reviews
FROM '/workspaces/olist-ecommerce-sql-analysis/data/olist_order_reviews_dataset.csv'
DELIMITER ',' CSV HEADER;