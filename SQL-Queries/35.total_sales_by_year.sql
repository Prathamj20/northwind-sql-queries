/* The given query calculates the total sales for each year based on the quantity of products multiplied by their respective product IDs in the order details. It joins the "orders" and "order_details" tables using the order ID. The results are then grouped by the year of the order date and ordered in ascending order by the order year. */


SELECT YEAR(orders.order_date) AS OrderYear,
SUM(order_details.quantity * order_details.product_id) AS TotalSales
 FROM orders
 JOIN order_details ON orders.order_id= order_details.order_id
GROUP BY OrderYear
ORDER BY OrderYear;
