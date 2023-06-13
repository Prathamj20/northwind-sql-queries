/*
This query retrieves the unique employee IDs, first names, and last names of employees who have handled orders containing a specific product named 'Chai'. It joins the "employees," "orders," "order_details," and "products" tables based on their respective IDs to link the employee information with the relevant orders and products. The query filters the results to only include employees associated with orders containing the 'Chai' product. In simpler terms, the query identifies the employees involved in handling orders for the 'Chai' product
*/

SELECT DISTINCT employees.employee_id, employees.first_name, employees.last_name
FROM employees
JOIN orders ON employees.employee_id = orders.employee_id
JOIN order_details ON orders.order_id = order_details.order_id
JOIN products ON order_details.product_id = products.product_id
WHERE products.product_name = 'Chai';