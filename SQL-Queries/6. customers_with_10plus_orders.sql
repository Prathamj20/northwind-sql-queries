/*
This query retrieves information about customers who have placed more than 10 orders. It selects the customer ID, contact name, and counts the number of orders placed by each customer. The results are grouped by the customer ID and contact name. Only customers with more than 10 orders are included in the final result
*/

SELECT customers.customer_id, customers.contact_name, COUNT (orders.order_id) AS OrderCount
FROM customers
join orders On customers.customer_id = orders.customer_id
GROUP BY customers.customer_id, customers.contact_name
HAVING COUNT(orders.order_id) > 10;
