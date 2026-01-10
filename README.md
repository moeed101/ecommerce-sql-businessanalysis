# E-commerce SQL Business Analysis

## Project Overview
This project presents an end-to-end SQL-based business analysis of e-commerce retail transaction data.
The goal is to understand revenue trends, customer behavior, and product-level drivers to support
data-informed business decisions.

## Business Questions
- How does revenue change over time?
- Is there evidence of seasonality in sales?
- Who are the most valuable customers?
- Do repeat customers drive a significant portion of revenue?
- Which products drive peak seasonal sales?

## Dataset
- Source: Online Retail Dataset
- Scope: Transaction-level e-commerce sales data
- Scale: ~2.8 million cleaned records
- Granularity: Each row represents a product-level line item within a customer order

## Data Preparation
To ensure accurate analysis, the following data cleaning steps were applied:
- Removed returned items (negative quantities)
- Removed records with invalid or zero prices
- Excluded transactions without customer identifiers

A cleaned table (`clean_orders`) was created and used for all analysis.

## Analysis Summary
## Results at a Glance
- Peak monthly revenue: November 2011 (~£813K)
- Repeat customers: ~66% of customer base
- Revenue from repeat customers: ~57% of total revenue
- Key revenue drivers: Seasonal, gift-oriented products

### Revenue & Seasonality
- Revenue shows strong seasonality with a clear peak in Q4.
- November generates higher revenue than December, suggesting early holiday purchasing behavior.
- Monthly revenue trends in 2011 show steady growth followed by sharp Q4 acceleration.

### Customer Analysis
- Approximately 66% of customers are repeat buyers.
- Repeat customers generate ~57% of total revenue.
- Revenue is highly concentrated among a small group of high-value customers.

### Product Analysis
- November revenue is driven by a small number of seasonal, gift-oriented products.
- Christmas-themed and decorative items dominate peak-period sales.
- Product-level seasonality explains the observed Q4 revenue spike.

## Business Recommendations
- Prioritize customer retention strategies, as repeat customers drive the majority of revenue.
- Identify and protect high-value customers through loyalty or VIP programs.
- Plan inventory and marketing campaigns ahead of Q4 to capture seasonal demand.
- Promote high-performing seasonal products earlier in the holiday cycle.

## Tools Used
- SQL (MySQL)
- MySQL Workbench
- GitHub for version control and project documentation

## Repository Structure
sql/
- 01_schema.sql
- 02_data_cleaning.sql
- 03_revenue_analysis.sql
- 04_customer_analysis.sql
- 05_product_analysis.sql

insights/
- key_findings.md

## Key Takeaway
This project demonstrates how SQL can be used to transform raw transactional data into actionable
business insights related to revenue performance, customer retention, and product seasonality.

## Dataset Access
The raw dataset is publicly available as the "Online Retail Dataset".
Due to size and licensing considerations, the CSV file is not included in this repository.
