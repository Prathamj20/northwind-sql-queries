/*
This query selects the employee ID, first name, and last name of employees who report to a specific manager. The manager's information is obtained by performing a subquery to retrieve the employee ID of a specific person (Andrew Fuller in this case). The main query then filters the employees based on the retrieved manager's employee ID. In simpler terms, the query finds the employees who report to a specific manager (Andrew Fuller) and retrieves their basic information.
*/

SELECT employees.employee_id, employees.first_name, employees. last_name
FROM employees
WHERE employees.reports_to = (
	SELECT employee_id
	FROM employees
	WHeRE first_name = 'Andrew' AND last_name = 'Fuller'
  );