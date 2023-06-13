/*
This query selects the product ID and name from the "products" table where the product is marked as discontinued. In simpler terms, it retrieves a list of products that are no longer available for sale.
*/
SELECT product_id, product_name
FROM products
WHERE discontinued = 1;
