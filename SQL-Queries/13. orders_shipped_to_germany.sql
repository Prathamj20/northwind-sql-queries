/*
The query selects specific columns from the "orders" and "customers" tables. It combines the information by matching the customer ID between the two tables. The WHERE clause filters the results to only include customers from Germany. The result includes the order ID, order date, customer ID, contact name, and country for orders made by customers in Germany.
*/
SELECT orders.order_id, orders.order_date, customers.customer_id,
customers.contact_name, customers.country
FROM orders
JOIN customers ON orders.customer_id = customers.customer_id
WHERE customers.country = 'Germany';