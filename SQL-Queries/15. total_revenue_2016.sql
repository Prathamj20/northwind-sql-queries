/*
This query calculates the total revenue generated from orders placed in the year 2016. It does this by multiplying the quantity of each product in an order by its unit price and summing up those values. The query combines information from the "orders" and "order_details" tables based on their shared order ID. The result provides the total revenue for all orders placed in the specified year.
*/
SELECT SUM(order_details.quantity * order_details.unit_price) AS TotalRevenue
FROM orders
JOIN order_details ON orders.order_id = order_details.order_id
WHERE YEAR(orders.order_date) = 2016;

 

