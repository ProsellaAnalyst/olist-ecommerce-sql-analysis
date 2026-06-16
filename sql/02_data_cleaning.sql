---- Row counts check
SELECT 'customers' AS table_name, COUNT(*) FROM customers
UNION ALL
SELECT 'orders', COUNT(*) FROM orders
UNION ALL
SELECT 'order_items', COUNT(*) FROM order_items
UNION ALL
SELECT 'order_payments', COUNT(*) FROM order_payments
UNION ALL
SELECT 'order_reviews', COUNT(*) FROM order_reviews
UNION ALL
SELECT 'products', COUNT(*) FROM products
UNION ALL
SELECT 'sellers', COUNT(*) FROM sellers
UNION ALL
SELECT 'category_translation', COUNT(*) FROM product_category_translation;


---- Primary key uniqueness
-- customers
SELECT customer_id, COUNT(*)
FROM customers
GROUP BY customer_id
HAVING COUNT(*) > 1;

-- orders
SELECT order_id, COUNT(*)
FROM orders
GROUP BY order_id
HAVING COUNT(*) > 1;

-- products
SELECT product_id, COUNT(*)
FROM products
GROUP BY product_id
HAVING COUNT(*) > 1;



----  NULL check
SELECT COUNT(*) FROM customers WHERE customer_id IS NULL;
SELECT COUNT(*) FROM orders WHERE order_id IS NULL;
SELECT COUNT(*) FROM order_items WHERE order_id IS NULL;
SELECT COUNT(*) FROM order_items WHERE product_id IS NULL;



---- Date sanity check
SELECT
COUNT(*) 
FROM orders
WHERE order_purchase_timestamp IS NULL;


--- Payment sanity check 
SELECT COUNT(*) 
FROM order_payments
WHERE payment_value <= 0;
