/*
This query selects the product names from the "products" table that do not have any corresponding entries in the "order_details" table.
*/

SELECT products.product_name
FROM products
LEFT JOIN order_details ON products.product_id = order_details.product_id
WHERE order_details.order_id IS NULL;