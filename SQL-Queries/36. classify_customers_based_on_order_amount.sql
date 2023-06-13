/* The query selects the company name of customers and calculates the total order amount by multiplying the quantity of each order item with its order ID. It then assigns a customer class based on the total order amount. The results are grouped by customer ID and company name and ordered in descending order based on the total order amount. */

SELECT customers. company_name, SUM(order_details.quantity * orders.order_id )
AS TotalOrderAmount,
        CASE
           WHEN SUM(order_details.quantity *orders.order_id ) > 5000 THEN 'High Value'
           WHEN SUM(order_details.quantity *orders.order_id ) > 1000 THEN 'Medium Value'
            ELSE 'Low Value'
        END AS Customer_Class
 FROM customers
JOIN orders ON customers.customer_id = orders. customer_id
JOIN order_details ON orders.order_id = order_details.order_id
GROUP BY customers.customer_id, customers.company_name
ORDER BY TotalorderAmount DESC;
