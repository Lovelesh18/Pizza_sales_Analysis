select * from pizza_sales limit 10

-- TOTAL REVENUE--------

select 
ROUND(sum(total_price::numeric),0) as Total_revenue
from pizza_sales

-- AVG ORDER VALUE---
select sum(total_price)/count(distinct order_id) as avg_order_value  
from pizza_sales



--- TOTAL PIZZA SOLD----------
select sum(quantity) as total_pizza_sold from pizza_sales

-- average pizza per order---
SELECT 
sum(quantity) / count(distinct order_id) as av_per_order
from pizza_sales

-- daily trend order
select day_name, count(distinct order_id) as daily_order
from pizza_sales 
group by  distinct day_name


--hour wise trend order--
select hour,
count(distinct order_id) as hour_wise_order
from pizza_sales
group by hour


--category wise total revenue--
select pizza_category,
sum(total_pr)


