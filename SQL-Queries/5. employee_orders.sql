/*
The query combines data from the "employee_territories" and "orders" tables. It counts the number of orders for each employee and groups the results by the employee ID. The use of a left join ensures that all employees from the "employee_territories" table are included, even if they have no orders.
*/

SELECT employee_territories.employee_id, count (orders.order_id) AS NumberOfOrders
FROM employee_territories
LEFT JOIN orders ON employee_territories.employee_id = orders.employee_id
group by employee_territories.employee_id;
