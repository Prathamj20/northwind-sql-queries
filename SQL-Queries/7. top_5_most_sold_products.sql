/*
This query retrieves information about the top 5 products with the highest total quantities ordered. It calculates the total quantity of each product by summing up the quantities from the "order_details" table. The results are grouped by the product name. The "ORDER BY TotalQuantity DESC" sorts the results in descending order based on the total quantity. Finally, the "LIMIT 5" clause limits the output to only the top 5 products with the highest total quantities ordered.
*/
SELECT products.product_Name, SUM(order_details.quantity) AS TotalQuantity
FROM products
join order_details ON products.product_id = order_details.product_id
group by products.product_name
ORDER By TotalQuantity DESC
LIMIT 5;