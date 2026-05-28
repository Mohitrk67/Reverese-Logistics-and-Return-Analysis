/*
Reverse Logistics and Returns Analysis

Suggested table name:
returns_raw

This SQL file assumes the cleaned CSV has been loaded into a SQL table named
returns_raw with columns such as order_id, product_category, return_status,
return_reason, return_cost, days_to_return, co2_emissions, packaging_waste,
returned, and order_year.
*/


-- 1. Total orders and returned orders
-- Shows the total order volume and how many orders were returned.
SELECT
    COUNT(*) AS total_orders,
    SUM(CASE WHEN returned = TRUE THEN 1 ELSE 0 END) AS returned_orders
FROM returns_raw;


-- 2. Return rate
-- Calculates the percentage of all orders that were returned.
SELECT
    COUNT(*) AS total_orders,
    SUM(CASE WHEN returned = TRUE THEN 1 ELSE 0 END) AS returned_orders,
    ROUND(
        SUM(CASE WHEN returned = TRUE THEN 1 ELSE 0 END) * 100.0 / COUNT(*),
        2
    ) AS return_rate_percent
FROM returns_raw;


-- 3. Returns by product category
-- Identifies which product categories have the highest returned order volume.
SELECT
    product_category,
    COUNT(*) AS total_orders,
    SUM(CASE WHEN returned = TRUE THEN 1 ELSE 0 END) AS returned_orders,
    ROUND(
        SUM(CASE WHEN returned = TRUE THEN 1 ELSE 0 END) * 100.0 / COUNT(*),
        2
    ) AS return_rate_percent
FROM returns_raw
GROUP BY product_category
ORDER BY returned_orders DESC;


-- 4. Returns by return reason
-- Shows why customers returned products. This helps separate preventable
-- returns from unavoidable returns.
SELECT
    return_reason,
    COUNT(*) AS returned_orders
FROM returns_raw
WHERE returned = TRUE
GROUP BY return_reason
ORDER BY returned_orders DESC;


-- 5. Return cost impact
-- Measures the cost impact of returns by product category.
SELECT
    product_category,
    COUNT(*) AS returned_orders,
    ROUND(SUM(return_cost)::NUMERIC, 2) AS total_return_cost,
    ROUND(AVG(return_cost)::NUMERIC, 2) AS average_return_cost
FROM returns_raw
WHERE returned = TRUE
GROUP BY product_category
ORDER BY total_return_cost DESC;


-- 6. Processing time analysis
-- Measures how long returned orders take to process by category.
SELECT
    product_category,
    COUNT(*) AS returned_orders,
    ROUND(AVG(days_to_return)::NUMERIC, 2) AS average_days_to_return,
    MIN(days_to_return) AS minimum_days_to_return,
    MAX(days_to_return) AS maximum_days_to_return
FROM returns_raw
WHERE returned = TRUE
GROUP BY product_category
ORDER BY average_days_to_return DESC;


-- 7. Sustainability metrics
-- Summarizes emissions and packaging waste associated with returned orders.
SELECT
    product_category,
    COUNT(*) AS returned_orders,
    ROUND(SUM(co2_emissions)::NUMERIC, 2) AS total_co2_emissions,
    ROUND(SUM(packaging_waste)::NUMERIC, 2) AS total_packaging_waste,
    ROUND(SUM(co2_saved)::NUMERIC, 2) AS total_co2_saved,
    ROUND(SUM(waste_avoided)::NUMERIC, 2) AS total_waste_avoided
FROM returns_raw
WHERE returned = TRUE
GROUP BY product_category
ORDER BY total_co2_emissions DESC;


-- 8. Yearly return trend
-- Tracks whether return rates are rising or falling over time.
SELECT
    order_year,
    COUNT(*) AS total_orders,
    SUM(CASE WHEN returned = TRUE THEN 1 ELSE 0 END) AS returned_orders,
    ROUND(
        SUM(CASE WHEN returned = TRUE THEN 1 ELSE 0 END) * 100.0 / COUNT(*),
        2
    ) AS return_rate_percent
FROM returns_raw
GROUP BY order_year
ORDER BY order_year;
