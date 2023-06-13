/* This query selects the customer ID and company name from the "customers" table. It joins multiple tables to retrieve data related to customer orders, order details, and products. The result is grouped by the customer ID and company name.

The HAVING clause filters the results based on the condition that the count of distinct product categories for each customer must be equal to the total number of categories in the "categories" table.

In summary, this query retrieves customer information for customers who have ordered products from all available categories. */

SELECT customers.customer_id, customers.company_name

FROM customers

JOIN orders ON customers.customer_id = orders.customer_id

JOIN order_details ON orders.order_id = order_details.order_id

JOIN products ON order_details.product_id = products.product_id

GROUP BY customers.customer_id, customers.company_name

HAVING COUNT(DISTINCT products.category_id) = (SELECT COUNT(*) FROM categories);
