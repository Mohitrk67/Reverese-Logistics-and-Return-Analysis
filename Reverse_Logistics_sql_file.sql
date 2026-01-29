-- Exploring the table
select *
from returns_raw
limit 10


-- Count total orders
select count(*) as total_orders
from returns_raw


-- 
-- Count of number of orders that were returned
select
	count (*) as returned_orders
from returns_raw
where lower(trim(return_status)) = 'returned'

-- Return Rate of the orders
select
	count(*) as total orders,
	case(when lower(return_status) = 'returned' then 1 el)


-- Calculate return rate
select
	(sum(case when lower(trim(return_status)) = 'returned' then 1 else 0 end) * 100) / count(*) as return_rate
from returns_raw


-- Return Reason
select
	return_reason,
	count(*) as order_returned
from returns_raw
where lower(return_status) = 'returned'
group by return_reason
order by order_returned desc



-- Return Rate by Product Category
select
	product_category,
	(sum(case when lower(return_status) = 'returned' then 1 else 0 end) * 100) / count(*) as return_rate
from returns_raw
group by product_category
order by return_rate desc



-- Cost impact of returns
select
	round(sum(order_value) :: NUMERIC,2) as total_price,
	round(sum(return_cost) :: numeric, 2) as returning_price,
	round(sum(profit_loss) :: Numeric, 2)as after_returns_price
from returns_raw
where lower(return_status) = 'returned'


-- Return over time
SELECT
  DATE_TRUNC('year', order_date::date) AS month,
  COUNT(*) AS total_orders,
  SUM(CASE WHEN LOWER(TRIM(return_status)) = 'returned' THEN 1 ELSE 0 END) AS returned_orders,
  order_value as Total_orders_rate
FROM returns_raw
where lower(return_status) = 'returned'
GROUP BY month
ORDER BY month;

