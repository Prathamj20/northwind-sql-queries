/* The query selects the employee ID, first name, and last name from the "employees" table. It performs a left join with the "orders" table based on the employee ID. The WHERE clause filters the result to only include employees who do not have corresponding records in the "orders" table (i.e., employees who have not placed any orders). Essentially, the query provides a list of employees who have not made any orders. */

SELECT employees.employee_id, employees. first_name, employees. last_name FROM employees
left JOIN orders ON employees.employee_id = orders.employee_id
WHERE orders.employee_id IS NULL;
