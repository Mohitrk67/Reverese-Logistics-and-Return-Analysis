# Reverse Logistics and Returns Analysis

Supply chain analytics project using Python, SQL, and Power BI to analyze e-commerce returns, identify return drivers, measure cost and sustainability impact, and support reverse logistics decision-making.

## Project Overview

This project analyzes e-commerce order and return data to understand how product returns affect operations, cost, processing time, packaging waste, and CO2 emissions. The goal is to turn reverse logistics data into clear operational insights that can help business teams prioritize improvement opportunities.

The project is designed as a practical Supply Chain Analytics and Operations Analytics case study for roles involving business intelligence, data analytics, and decision support.

## Business Problem

Returns are a major challenge in e-commerce operations. They increase logistics costs, consume warehouse and support capacity, create packaging waste, and add emissions through reverse transportation and processing.

This project asks:

How can an e-commerce business use returns data to identify high-return categories, understand return reasons, measure cost and sustainability impact, and make better reverse logistics decisions?

## Why Reverse Logistics Matters

Reverse logistics is not only a customer service issue. It directly affects:

- Operational cost
- Inventory recovery
- Warehouse workload
- Customer experience
- Product quality feedback
- Sustainability performance
- Profitability by product category

Analyzing return patterns helps teams separate preventable returns from expected returns and focus improvement efforts where the impact is highest.

## Dataset Overview

The dataset contains 5,000 e-commerce order records with fields related to:

- Order, product, and customer details
- Product category and order value
- Return status and return reason
- Days to return
- Return cost and profit/loss impact
- CO2 emissions
- Packaging waste
- Year and month fields for trend analysis

The current repository includes:

- Raw/source dataset: `data/raw/returns_sustainability_dataset.csv`
- Cleaned dataset for SQL and Power BI: `data/processed/returns_cleaned_for_sql_powerbi.csv`

Note: the available source file in the original repository was already in a cleaned/enriched format, so it is preserved as the raw project input and exported again as the processed analysis file.

## Tools And Technologies

- Python: data cleaning, transformation, validation, and exploratory analysis
- Pandas and NumPy: data preparation and feature engineering
- SQL: operational aggregations and business analysis queries
- Power BI: dashboard design and executive visual reporting
- GitHub: project documentation and portfolio presentation

## Project Workflow

```text
Raw returns dataset
-> Python cleaning and feature engineering
-> Processed CSV for SQL and Power BI
-> SQL analysis for operational metrics
-> Power BI dashboard for business reporting
-> README summary with insights and recommendations
```

## Key Business Questions Answered

- What is the overall return rate?
- Which product categories generate the most returns?
- Which categories have the highest return rate?
- What are the most common return reasons?
- Which categories create the highest return cost impact?
- How long does return processing take?
- What sustainability metrics are associated with returned orders?
- How has the return rate changed over time?

## Python Analysis Summary

The notebook prepares the dataset for analysis by:

- Loading the returns dataset from `data/raw/returns_sustainability_dataset.csv`
- Cleaning and standardizing return-related fields
- Creating a boolean `returned` flag
- Extracting order year and month fields
- Preparing return cost, processing time, emissions, and packaging waste fields
- Exporting the processed dataset to `data/processed/returns_cleaned_for_sql_powerbi.csv`

Notebook:

```text
notebooks/Reverse_Logistics_Analysis.ipynb
```

## SQL Analysis Summary

The SQL script includes beginner-friendly sections for:

- Total orders and returned orders
- Overall return rate
- Returns by product category
- Returns by return reason
- Return cost impact
- Processing time analysis
- Sustainability metrics
- Yearly return trend

SQL file:

```text
sql/reverse_logistics_analysis.sql
```

## Power BI Dashboard Summary

The Power BI dashboard is designed to summarize reverse logistics performance through:

- Total orders, returned orders, and return rate
- Return trend over time
- Returns by product category
- Return reason breakdown
- Return cost impact
- Sustainability-related metrics

Dashboard file:

```text
dashboard/Reverse_Logistics_Analytics.pbix
```

## Key Insights

The following insights were recalculated from the dataset:

- Total orders: 5,000
- Returned orders: 1,450
- Overall return rate: 29.0%
- Clothing had the highest number of returns, with 661 returned orders.
- Clothing had the highest category return rate, at approximately 37.4%.
- Top return reasons were Defective, Changed Mind, Wrong Item, and Size Issue.
- Clothing generated the highest return cost impact, followed by Electronics.
- Average return processing time was highest for Electronics, followed closely by Clothing.
- Return rate increased from about 26.5% in 2022 to 31.4% in 2024, then dropped to about 28.3% in 2025.

## Business Recommendations

- Investigate high-return categories, especially Clothing, to identify product quality, sizing, description, or expectation gaps.
- Track return reasons by category to separate preventable returns from unavoidable returns.
- Monitor return cost impact by product category to prioritize operational improvement efforts.
- Use processing time trends to improve reverse logistics turnaround and reduce operational backlog.
- Review Electronics and Clothing processing workflows because they show higher average return processing times.
- Track packaging waste and CO2 metrics to connect return reduction with sustainability goals.
- Use yearly return trends to monitor whether return reduction initiatives are improving operational performance.

## Folder Structure

```text
Reverse-Logistics-and-Returns-Analysis/
|-- data/
|   |-- raw/
|   |   |-- returns_sustainability_dataset.csv
|   |-- processed/
|   |   |-- returns_cleaned_for_sql_powerbi.csv
|-- notebooks/
|   |-- Reverse_Logistics_Analysis.ipynb
|-- sql/
|   |-- reverse_logistics_analysis.sql
|-- dashboard/
|   |-- Reverse_Logistics_Analytics.pbix
|-- docs/
|-- images/
|-- README.md
|-- .gitignore
|-- LICENSE
```

## How To Review The Project

1. Start with this README to understand the business problem and project workflow.
2. Open `notebooks/Reverse_Logistics_Analysis.ipynb` from the project root and review the Python cleaning and analysis steps.
3. Review `sql/reverse_logistics_analysis.sql` for SQL-based operational analysis.
4. Open `dashboard/Reverse_Logistics_Analytics.pbix` in Power BI Desktop to explore the dashboard.
5. Use the dashboard and SQL outputs together to interpret category-level return patterns, cost impact, and sustainability metrics.

## Dashboard Screenshots

Add real dashboard screenshots after exporting them from Power BI:

![Dashboard Overview](images/dashboard_overview.png)

![Return Reasons](images/return_reasons.png)

![Category Returns](images/category_returns.png)

![Cost Impact](images/cost_impact.png)

![Sustainability Metrics](images/sustainability_metrics.png)

## Limitations

- The dataset appears to be a sample or synthetic e-commerce returns dataset, not live company data.
- The analysis supports operational decision-making but does not prove that returns were reduced in a real business.
- The original repository did not include a separate uncleaned source dataset, so the available dataset is used as the raw project input.
- Power BI visuals require Power BI Desktop to open and review the `.pbix` file.
- More advanced root-cause analysis would require additional fields such as product descriptions, supplier details, fulfillment center, customer complaints, and product quality inspection results.

## Future Improvements

- Add dashboard screenshots to the `images/` folder.
- Add supplier, fulfillment center, and SKU-level analysis.
- Build a return risk scoring model.
- Add cohort analysis by customer segment and product category.
- Create more detailed sustainability KPIs for avoided emissions and packaging reduction opportunities.
- Connect the dataset to a SQL database and document the loading process.
- Add a Power BI dashboard walkthrough or PDF export.

## Author

Mohit Kalicharan Ranganath

Engineering Management graduate focused on Supply Chain Analytics, Business Intelligence, Data Analytics, and Operations Analytics.
