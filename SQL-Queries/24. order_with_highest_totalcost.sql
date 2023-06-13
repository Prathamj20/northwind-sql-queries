/* The given query calculates the total cost of each order by multiplying the quantity of each item in the order by its price. It then groups the results by order ID and orders them in descending order based on the total cost. Finally, it selects the order with the highest total cost using the LIMIT clause and returns the order ID and the corresponding total cost.*/


SELECT order_id , SUM(order_details.quantity* order_details.order_id) AS TotalCost
FROM order_details
GROUP BY order_id
ORDER BY TotalCost desc
LIMIT 1;
