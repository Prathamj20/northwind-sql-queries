/*
This query retrieves the customer ID, contact name, and total amount spent by customers who have spent more than $5000 on orders. It combines data from the "customers," "orders," and "order_details" tables. By joining these tables based on their respective IDs, it calculates the sum of the quantity multiplied by the unit price for each order. The results are then grouped by customer ID and contact name. The "HAVING" clause filters the results to include only customers whose total spending exceeds $5000. In simpler terms, the query identifies customers who have spent a significant amount on orders and provides their ID, contact name, and total spending.
*/
SELECT customers.customer_id, customers.contact_name,
SuM(order_details.quantity * order_details.unit_price) AS TotalSpent
FROM customers
JOIN orders ON customers.customer_id = orders.customer_id
JOIN order_details ON orders.order_id = order_details.order_id
GROUP BY customers.customer_id, customers.contact_name
HAVING SUM(order_details.quantity * order_details.unit_price) > 5000;
