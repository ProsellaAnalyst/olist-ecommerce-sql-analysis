-- Customers
DROP TABLE IF EXISTS customers;
CREATE TABLE customers (
    customer_id VARCHAR(60) PRIMARY KEY,
    customer_unique_id VARCHAR(60),
    customer_zip_code_prefix CHAR(5),
    customer_city VARCHAR(50),
    customer_state VARCHAR(30)
);

