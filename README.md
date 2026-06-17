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
Leadership should investigate whether this reflects market saturation, increased 
competition, or reduced marketing spend. Doubling down on seasonal campaigns 
(Black Friday, holidays) while testing demand-generation in flatter months 
(April–August) could reignite growth.

---

### 2. Product Categories — Revenue vs. Order Volume
`health_beauty` leads in revenue ($1.23M) and `bed_bath_table` leads in order volume 
(9,272 orders), but `watches_gifts` stands out — ranking #2 in revenue ($1.17M) with 
far fewer orders (5,495), signaling a much higher average order value per transaction.

**Recommendation:** `watches_gifts` is high-value, lower-volume — a strong candidate 
for premium positioning and higher-margin marketing spend. High-volume, lower-revenue 
categories like `bed_bath_table` may benefit more from bundling to increase basket 
size rather than just driving more orders.

---

### 3. Customer Lifetime Value & Repeat Purchases
The vast majority of customers placed only one order, even among the highest 
spenders. Very few customers made repeat purchases, and repeat customers don't 
necessarily rank among the highest spenders.

**Recommendation:** Repeat purchase behavior is rare even among high-value customers 
— pointing to a retention gap, not just an acquisition one. Prioritizing post-purchase 
engagement (personalized follow-ups, loyalty incentives) for high-spend, one-time 
buyers could meaningfully boost revenue without new acquisition costs.

---

### 4. Seller Performance — Revenue vs. Review Scores
Top sellers by revenue don't always have the best review scores. The highest earner 
($228K revenue, 1,124 orders) holds a solid 4.12 average score, but other 
high-revenue sellers dip into the 3.3–3.8 range despite high order volume — 
suggesting scale alone doesn't guarantee customer satisfaction.

**Recommendation:** Sellers generating high revenue with below-average review scores 
(e.g. 3.35–3.8 range) should be flagged for a service quality review — they're likely 
sitting on hidden churn risk. Meanwhile, high-revenue *and* high-score sellers (4.2+) 
represent the platform's benchmark and ideal partner profile to replicate.

<img width="514" height="293" alt="image" src="https://github.com/user-attachments/assets/533384df-31ef-428b-a003-13cbd0f99bc1" />

---

### 5. Delivery Time vs. Review Scores
Correlation coefficient: **-0.33**

A moderate negative relationship — longer delivery times are associated with lower 
review scores, but delivery speed isn't the only factor driving satisfaction.

**Recommendation:** Delivery speed matters but isn't the full story. Improving 
logistics will likely raise review scores somewhat, but the business should also 
investigate other satisfaction drivers (product quality, seller communication) 
rather than treating delivery time as a silver bullet.

---

### 6. Payment Methods & Installments
Installment payments average **$196.76** per transaction (51,338 payments) vs. 
**$112.42** for single payments (52,548 payments) — installment users spend nearly 
**75% more** on average.

**Recommendation:** Installment options are clearly driving higher basket sizes. 
The business should promote installment payment options more prominently at 
checkout, particularly for higher-value product categories like `watches_gifts` 
and `health_beauty`, to encourage larger purchases.

---

### 7. Cancellation Rates by Month
Cancellation rates are negligible in most months (under 1.5%), but **October 2016** 
shows a striking 7.41% cancellation rate, and a few isolated months in 2018 
(September, October) show near-100% cancellation — though on very small order 
counts (4–16 orders), suggesting these are early/late data edge cases rather than 
a genuine trend.

**Recommendation:** The October 2016 spike (7.41% on 324 orders) is the only 
statistically meaningful cancellation anomaly and warrants investigation — it 
coincides with Olist's early platform period, possibly reflecting onboarding issues 
with new sellers or unstable fulfillment processes during that phase. The 2018 


----

## Summary
This analysis shows a platform with strong early growth that plateaued in its 
second year, a customer base that rarely returns after a first purchase, and 
performance gaps between high-revenue and high-satisfaction sellers. The clearest 
opportunities lie in customer retention, promoting installment payments to lift 
average order value, and a deeper investigation into the small but real cluster of 
delivery-related dissatisfaction. Together, these findings point toward a business 
that has proven demand but hasn't yet built the retention and seller-quality systems 
needed to sustain growth beyond its first wave of customers.
near-100% spikes are based on too few orders to be actionable and likely reflect 
incomplete end-of-dataset records.Rates by Month 
