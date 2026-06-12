-- Customers
DROP TABLE IF EXISTS customers;
CREATE TABLE customers (
    customer_id VARCHAR(60) PRIMARY KEY,
    customer_unique_id VARCHAR(60),
    customer_zip_code_prefix CHAR(5),
    customer_city VARCHAR(50),
    customer_state VARCHAR(30)
); 

-- Order Items
DROP TABLE IF EXISTS order_items;
CREATE TABLE order_items (
    order_id VARCHAR(50),
    order_item_id VARCHAR(30),
    product_id VARCHAR(50),
    seller_id VARCHAR(50),
    shipping_limit_date TIMESTAMP,
    price NUMERIC(10,2),
    freight_value NUMERIC(10,2)
);


-- Order Payments
DROP TABLE IF EXISTS order_payments;
CREATE TABLE order_payments(
    order_id VARCHAR(50),
    payments_sequential CHAR(30),
    payment_type VARCHAR(20),
    payments_installments CHAR(10),
    payment_value NUMERIC(10,2)
)

SELECT * FROM order_payments