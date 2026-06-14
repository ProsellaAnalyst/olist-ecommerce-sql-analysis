-- CATEGORY TRANSLATION
DROP TABLE IF EXISTS product_category_translation;
CREATE TABLE product_category_translation (
    product_category_name VARCHAR(60) PRIMARY KEY,
    product_category_name_english VARCHAR(60)
);


-- CUSTOMERS
DROP TABLE IF EXISTS customers;
CREATE TABLE customers (
    customer_id CHAR(32) PRIMARY KEY,
    customer_unique_id CHAR(32),
    customer_zip_code_prefix VARCHAR(10),
    customer_city VARCHAR(50),
    customer_state VARCHAR(30)
);


-- SELLERS
DROP TABLE IF EXISTS sellers;
CREATE TABLE sellers (
    seller_id CHAR(32) PRIMARY KEY,
    seller_zip_code_prefix VARCHAR(10),
    seller_city VARCHAR(50),
    seller_state VARCHAR(10)
);


-- PRODUCTS
DROP TABLE IF EXISTS products;
CREATE TABLE products (
    product_id CHAR(32) PRIMARY KEY,
    product_category_name VARCHAR(60),
    product_name_length INT,
    product_description_length INT,
    product_photos_qty INT,
    product_weight_g INT,
    product_length_cm INT,
    product_height_cm INT,
    product_width_cm INT
);


-- ORDERS
DROP TABLE IF EXISTS orders;
CREATE TABLE orders (
    order_id CHAR(32),
    customer_id CHAR(32),
    order_status VARCHAR(20),
    order_purchase_timestamp TIMESTAMP,
    order_approved_at TIMESTAMP,
    order_delivered_carrier_date TIMESTAMP,
    order_delivered_customer_date TIMESTAMP,
    order_estimated_delivery_date TIMESTAMP
);


-- ORDER ITEMS
DROP TABLE IF EXISTS order_items;
CREATE TABLE order_items (
    order_id CHAR(32),
    order_item_id INT,
    product_id CHAR(32),
    seller_id CHAR(32),
    shipping_limit_date TIMESTAMP,
    price NUMERIC(10,2),
    freight_value NUMERIC(10,2)
);


-- ORDER PAYMENTS
DROP TABLE IF EXISTS order_payments;
CREATE TABLE order_payments (
    order_id CHAR(32),
    payment_sequential INT,
    payment_type VARCHAR(20),
    payment_installments INT,
    payment_value NUMERIC(10,2)
);


-- ORDER REVIEWS
DROP TABLE IF EXISTS order_reviews;
CREATE TABLE order_reviews (
    review_id CHAR(32),
    order_id CHAR(32),
    review_score INT,
    review_comment_title TEXT,
    review_comment_message TEXT,
    review_creation_date TIMESTAMP,
    review_answer_timestamp TIMESTAMP
);