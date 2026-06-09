# Olist E-Commerce SQL Analysis

SQL-based analysis of the Olist Brazilian E-Commerce dataset — exploring revenue 
patterns, customer behavior, and product performance using PostgreSQL, with insights 
structured to support predictive modeling.

## Dataset
Public e-commerce dataset provided by Olist, available on 
[Kaggle](https://www.kaggle.com/datasets/olistbr/brazilian-ecommerce).  
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
![Schema](<img width="2486" height="1496" alt="Olist schema" src="https://github.com/user-attachments/assets/f10216ac-45df-45e3-afc2-461a30fd4c18" />
)

Custom schema diagram (tables used in this project):  
![Custom Schema](images/custom_schema.png)

## Project Structure
olist-ecommerce-sql-analysis/
├── sql/
│   ├── 01_create_tables.sql
│   ├── 02_load_data.sql
│   ├── 03_data_cleaning.sql
│   └── 04_analysis.sql
├── images/
│   ├── olist_schema.png
│   └── custom_schema.png
├── .gitignore
├── LICENSE
└── README.md

## Key Business Questions
1. What are the monthly and quarterly revenue trends — are sales growing?
2. Which product categories drive the most revenue vs. highest order volume?
3. What is the average customer lifetime value, and what drives repeat purchases?
4. Which sellers have the best balance of revenue and review scores?
5. Do longer delivery times negatively correlate with review scores?
6. What payment methods dominate, and do installment users spend more overall?
7. Which months show the highest cancellation rates and why?

## Key Findings
_To be updated as analysis progresses._

## Status
🚧 In progress
