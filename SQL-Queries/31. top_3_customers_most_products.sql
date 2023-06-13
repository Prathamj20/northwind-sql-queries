/* This query retrieves the customer ID, contact name, and the total number of products ordered by each customer. It does so by joining the "customers" table with the "orders" table and the "order_details" table. The results are grouped by the customer ID and contact name. The query is then sorted in descending order based on the total number of products ordered. Finally, only the top three results are returned. */

SELECT customers.customer_id, customers.contact_name,

COUNT(*) AS TotalProductsOrdered

FROM customers

JOIN orders ON customers.customer_id = orders.customer_id

JOIN order_details ON orders.order_id = order_details.order_id
GROUP BY customers.customer_id, customers.contact_name

ORDER BY TotalProductsOrdered DESC

LIMIT 3
