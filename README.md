# Olist E-Commerce SQL Analysis

SQL-based analysis of the Olist Brazilian E-Commerce dataset — exploring revenue 
patterns, customer behavior, and product performance using PostgreSQL, with insights 
structured to give recommendations and support predictive modeling.

## Dataset
Public e-commerce dataset provided by Olist, available on Kaggle
[here](https://www.kaggle.com/datasets/olistbr/brazilian-ecommerce).  
Contains 100k+ orders from 2016–2018 across multiple Brazilian marketplaces.

## Objectives
- Analyze revenue trends over time
- Identify top-performing products and categories
- Understand customer purchasing behavior
- Evaluate seller performance
- Examine payment patterns and order delivery metrics

## Tools
- PostgreSQL
- GitHub Codespaces
- Draw.io

## Schema
Official Olist schema (sourced from Kaggle):  
<img width="619" height="382" alt="image" src="https://github.com/user-attachments/assets/f0d0c9d8-cdd1-485b-abad-5dc1ba686138" />



Custom schema diagram (tables used in this project):  
<img width="1536" height="1024" alt="image" src="https://github.com/user-attachments/assets/9e8744fb-ebb8-453b-b5ab-72fd15aa2b82" />


## Key Business Questions
1. What are the monthly and quarterly revenue trends — are sales growing?
2. Which product categories drive the most revenue vs. highest order volume?
3. What is the average customer lifetime value, and what drives repeat purchases?
4. Which sellers have the best balance of revenue and review scores?
5. Do longer delivery times negatively correlate with review scores?
6. What payment methods dominate, and do installment users spend more overall?
7. Which months show the highest cancellation rates and why?

   

## Key Findings & Business Recommendations

### 1. Monthly Revenue Trends
Revenue grew sharply through 2017 — from roughly $400K in January to a peak of 
$1.15M in November (likely driven by Brazil's Black Friday season) — then plateaued 
through 2018, hovering between $1.0M–$1.1M monthly rather than continuing to climb.

**Recommendation:** Growth stalled in year two after a strong year-one ramp. 
Leadership should investigate whether this plateau reflects market saturation, 
increased competition, or reduced marketing/acquisition spend. Given the strong 
November spike, doubling down on seasonal campaigns (Black Friday, holiday season) 
while testing demand-generation tactics in historically flatter months (April–August) 
could reignite growth.

---

### 2. Product Categories — Revenue vs. Order Volume
`health_beauty` leads in revenue ($1.23M) and `bed_bath_table` leads in order volume 
(9,272 orders), but `watches_gifts` stands out — ranking #2 in revenue ($1.17M) with 
far fewer orders (5,495) than categories below it, signaling a much higher average 
order value per transaction.

**Recommendation:** `watches_gifts` is a high-value, lower-volume category — a strong 
candidate for premium positioning, targeted upselling, and higher-margin marketing 
spend. High-volume but lower-revenue categories like `bed_bath_table` and 
`sports_leisure` may benefit more from bundling strategies or cross-sells to increase 
basket size rather than just driving more individual orders.

---

### 3. Customer Lifetime Value & Repeat Purchases
The vast majority of customers placed only one order — even among the highest 
spenders. Very few customers made repeat purchases, and repeat customers don't 
necessarily rank among the highest total spenders.

**Recommendation:** Repeat purchase behavior is rare, even among high-value 
customers — pointing to a retention gap, not just an acquisition one. The business 
should prioritize post-purchase engagement (personalized follow-ups, loyalty 
incentives, retargeting) for customers who make a single large purchase, since they 
show willingness to spend but aren't returning. Capturing even a small percentage of 
these one-time high spenders as repeat customers could meaningfully boost overall 
revenue without additional acquisition costs.

---

### 4. Seller Performance 

### 5. Delivery Time vs. Review Scores 

### 6. Payment Methods & Installments 

### 7. Cancellation Rates by Month 
