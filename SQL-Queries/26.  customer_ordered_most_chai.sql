/* This query retrieves the customer ID, contact name, and total quantity of a product called "Chai" that each customer has ordered. It joins the "customers" table with the "orders" table and the "order_details" table to get the relevant information. It then filters the results to only include orders for the "Chai" product. The results are grouped by customer ID and contact name and ordered in descending order based on the total quantity of Chai ordered. Finally, the query returns only the top result with the highest total quantity of Chai ordered. */


SELECT customers.customer_id, customers.contact_name,
SUM(order_details.quantity) AS TotalChaiQuantity

FROM customers

JOIN orders ON customers.customer_id = orders.customer_id

JOIN order_details ON orders.order_id = order_details.order_id
JOIN products ON order_details.product_id = products.product_id
WHERE products.product_name = '‘Chai'

GROUP BY customers.customer_id, customers.contact_name

ORDER BY TotalChaiQuantity DESC

LIMIT 1;
