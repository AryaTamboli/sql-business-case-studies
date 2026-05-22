-- Total Sales
SELECT SUM(Sales) AS total_sales
FROM orders;

-- Top 10 Customers
SELECT Customer_Name,
       SUM(Sales) AS revenue
FROM orders
GROUP BY Customer_Name
ORDER BY revenue DESC
LIMIT 10;

-- Monthly Sales Trend
SELECT strftime('%Y-%m', Order_Date) AS month,
       SUM(Sales) AS revenue
FROM orders
GROUP BY month
ORDER BY month;

-- Top Performing Category
SELECT Category,
       SUM(Profit) AS total_profit
FROM orders
GROUP BY Category
ORDER BY total_profit DESC;
