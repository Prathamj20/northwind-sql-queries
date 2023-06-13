/* This query retrieves information about the employee with the highest number of orders placed during August 2016. It selects the employee's ID, first name, and last name from the "employees" table, and counts the number of orders they have placed during the specified date range. The results are grouped by the employee's ID, first name, and last name, and sorted in descending order based on the total number of orders. Finally, the query limits the result to only the top employee with the highest number of orders during that period. */

SELECT employees.employee_id, employees. first_name, employees. last_name,
COUNT(orders.order_id) AS TotalOrders

FROM employees

JOIN orders ON employees.employee_id = orders.employee_id

WHERE orders.order_date >= '2016-08-01' AND orders.order_date <= '2016-08-31'
GROUP BY employees.employee_id, employees.first_name, employees. last_name
ORDER BY TotalOrders DESC

LIMIT 1;
