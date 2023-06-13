/* This query retrieves the first name and last name of employees along with the count of orders they have. It categorizes the employees based on their performance, using the number of orders they have. If an employee has more than 100 orders, they are considered "High Performing," if they have more than 50 orders, they are considered "Medium Performing," and if they have fewer than 50 orders, they are considered "Lower Performing." The results are then displayed in descending order based on the number of orders.
 */

SELECT employees. first_name, employees. last_name,
        COUNT (orders.order_id) AS Number0fOrders,
        CASE
            WHEN COUNT (orders.order_id) > 100 THEN 'High Performing'
            WHEN COUNT (orders.order_id) > 50 THEN 'Medium Performing'
            ELSE 'Lower Performing'
        END AS PerformanceCategory
 FROM employees
 LEFT JOIN orders ON employees.employee_id = orders.employee_id
 GROUP BY employees.employee_id , employees. first_name, employees. last_name
 ORDER BY Number0fOrders DESC;

