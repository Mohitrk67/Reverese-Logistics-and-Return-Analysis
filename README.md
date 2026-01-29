# Reverese-Logistics-and-Return-Analysis
📌 Overview
This project analyzes reverse logistics data for a retail business to understand product return patterns, cost impact, and sustainability metrics. The goal is to identify trends in returns over time, key return drivers, and category-level insights to support data-driven operational and business decisions.

📊 Business Problem
Retail returns increase operational costs, waste, and carbon emissions. This project aims to answer:
How can a retail company analyze returns data to reduce return rates, minimize costs, and improve sustainability outcomes?

📁 Dataset
The dataset contains order-level retail data including:
- Order and product details
- Return status and return reasons
- Return costs and processing time
- Packaging waste and CO₂ emissions
- Customer demographics and location
Data was cleaned and transformed before analysis.

🛠 Tools & Technologies
- Python (Pandas, NumPy) – Data cleaning, feature engineering, validation
- PostgreSQL – Analytical SQL queries and aggregations
- Power BI – Interactive dashboard and visual insights

🔄 Data Preparation using Python
Key steps performed:
- Cleaned inconsistent categorical fields (return status, reasons)
- Created a boolean returned flag for analysis
- Extracted order year and month from order date
- Performed consistency checks on return cost and return status
- Exported a clean dataset for SQL and Power BI

🧮 SQL Analysis
Key analyses performed in PostgreSQL:
- Returns over time (yearly trend)
- Total vs returned orders
- Returns by product category and return reason
- Cost impact of returns
- Sustainability metrics aggregation

📈 Power BI Dashboard
The Power BI dashboard highlights:
- Total orders, returned orders, and return rate
- Yearly return trends
- Returns by product category
- Return reasons analysis
- Return cost impact
Interactive slicers allow filtering by Order Year and Product Category.
