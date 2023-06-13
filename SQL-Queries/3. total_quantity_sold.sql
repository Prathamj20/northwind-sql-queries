/*
This query calculates the total quantity of each product sold by summing up the quantities from the "order_details" table. It combines information from the "products" and "order_details" tables by matching the product IDs. The result groups the data by product name, showing the product name and its corresponding total quantity. In simpler terms, the query tells you how much of each product has been sold and displays it alongside the product names.
*/
SELECT products.product_name, SUM(order_details.quantity)
AS TotalQuantity
FROM products
JOIN order_details ON products.product_id = order_details.product_id
GROUP BY products.product_name;
