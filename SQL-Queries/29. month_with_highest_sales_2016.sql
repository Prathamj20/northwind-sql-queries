/* This query retrieves the month and total sales for the highest-selling month in the year 2016. It calculates the total sales by multiplying the quantity of items in each order by their corresponding prices. The results are grouped by the order date, and the query returns only the highest-selling month by ordering the results by total sales in descending order and limiting the output to one row. */

SELECT MONTH(orders.order_date) AS MONTH , SUM(order_details.quantity * order_details.order_id) AS TotalSales
FROM orders

JOIN order_details ON orders.order_id = order_details.order_id

WHERE order_date >= '2016-01-01' AND order_date <= '2016-12-31'
GROUP BY order_date

ORDER BY TotalSales DESC

LIMIT 1;
