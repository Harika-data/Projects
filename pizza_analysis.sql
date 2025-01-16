CREATE DATABASE pizza_sales;

-- TOTAL REVENUE
SELECT SUM(total_price) AS Total_Revenue FROM pizza_sales.pizza_sales;
-- AVG ORDER VALUE
SELECT SUM(total_price)/ COUNT(DISTINCT(order_id)) AS Avg_order_value FROM pizza_sales.pizza_sales;
-- Total pizza sold
SELECT SUM(quantity) AS total_pizza_sold FROM pizza_sales.pizza_sales;
-- Total orders
SELECT COUNT(DISTINCT order_id) AS total_orderd FROM pizza_sales.pizza_sales;
-- Avg pizzas per order
SELECT CAST(CAST(SUM(quantity) AS DECIMAL(10,2)) /
CAST(COUNT(DISTINCT order_id)AS DECIMAL(10,2)) AS DECIMAL(10,2)) AS Avg_pizza_per_order FROM pizza_sales.pizza_sales;
-- DAILY trend for total orders
SELECT 