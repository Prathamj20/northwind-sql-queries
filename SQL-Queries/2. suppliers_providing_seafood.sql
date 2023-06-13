/*
This query retrieves information about suppliers who provide seafood products by joining the "suppliers," "products," and "categories" tables. It filters the results to include only rows where the category name is 'Seafood'. The result includes details about the suppliers of seafood products.
*/

SELECT products.product_name, SUM(order_details.quantity)
AS TotalQuantity
FROM products
JOIN order_details ON products.product_id=order_details.product_id
GROUP BY products.product_name;