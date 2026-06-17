-- What are the monthly revenue trends — are sales growing?

WITH monthly_revenue AS (
    SELECT
        DATE_TRUNC('month', o.order_purchase_timestamp) AS month,
        SUM(op.payment_value) AS revenue
    FROM orders o
    JOIN order_payments op ON o.order_id = op.order_id
    WHERE o.order_status = 'delivered'
    GROUP BY 1
)
SELECT
    month,
    ROUND(revenue::numeric, 2) AS revenue,
    ROUND(((revenue - LAG(revenue) OVER (ORDER BY month)) / LAG(revenue) OVER (ORDER BY month)) * 100, 2) AS growth_percent
FROM monthly_revenue
ORDER BY month;



-- Which product categories drive the most revenue vs. highest order volume?

SELECT
    COALESCE(t.product_category_name_english, p.product_category_name) AS category,
    ROUND(SUM(oi.price)::numeric, 2) AS revenue,
    COUNT(DISTINCT oi.order_id) AS order_volume
FROM order_items oi
JOIN products p ON oi.product_id = p.product_id
LEFT JOIN product_category_translation t ON p.product_category_name = t.product_category_name
JOIN orders o ON oi.order_id = o.order_id
WHERE o.order_status = 'delivered'
GROUP BY 1
ORDER BY revenue DESC;



-- What is the average customer lifetime value, and what drives repeat purchases?
WITH customer_orders AS (
    SELECT c.customer_unique_id, o.order_id, op.payment_value
    FROM orders o
    JOIN customers c ON o.customer_id = c.customer_id
    JOIN order_payments op ON o.order_id = op.order_id
    WHERE o.order_status = 'delivered'
)
SELECT
    customer_unique_id,
    COUNT(DISTINCT order_id) AS num_orders,
    ROUND(SUM(payment_value)::numeric, 2) AS total_spent
FROM customer_orders
GROUP BY customer_unique_id
ORDER BY total_spent DESC;





-- Which sellers have the best balance of revenue and review scores?
SELECT
    s.seller_id,
    ROUND(SUM(oi.price)::numeric, 2) AS revenue,
    ROUND(AVG(r.review_score)::numeric, 2) AS avg_review_score,
    COUNT(DISTINCT oi.order_id) AS num_orders
FROM order_items oi
JOIN sellers s ON oi.seller_id = s.seller_id
JOIN order_reviews r ON oi.order_id = r.order_id
GROUP BY s.seller_id
HAVING COUNT(DISTINCT oi.order_id) >= 5
ORDER BY revenue DESC, avg_review_score DESC;



-- Do longer delivery times negatively correlate with review scores?
SELECT
    CORR(EXTRACT(DAY FROM (o.order_delivered_customer_date - o.order_purchase_timestamp)), r.review_score) AS correlation
FROM orders o
JOIN order_reviews r ON o.order_id = r.order_id
WHERE o.order_delivered_customer_date IS NOT NULL;


-- What payment methods dominate, and do installment users spend more overall?
SELECT
    CASE WHEN payment_installments > 1 THEN 'installments' ELSE 'single_payment' END AS payment_group,
    ROUND(AVG(payment_value)::numeric, 2) AS avg_spend,
    COUNT(*) AS num_payments
FROM order_payments
GROUP BY 1;

--  Which months show the highest cancellation rates and why?
SELECT
    DATE_TRUNC('month', order_purchase_timestamp) AS month,
    COUNT(*) AS total_orders,
    SUM(CASE WHEN order_status = 'canceled' THEN 1 ELSE 0 END) AS canceled_orders,
    ROUND(100.0 * SUM(CASE WHEN order_status = 'canceled' THEN 1 ELSE 0 END) / COUNT(*), 2) AS cancellation_rate
FROM orders
GROUP BY 1
ORDER BY 1 DESC;
