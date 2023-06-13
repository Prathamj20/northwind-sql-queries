/*
This query retrieves the category name, product name, and unit price of products that have the highest unit price within their respective categories. In simpler terms, it finds the most expensive product in each category and displays its category name, product name, and unit price.
*/
SELECT c.category_name, p.product_name, p.unit_price
FROM products p
JOIN categories c ON p.category_id = c.category_id
WHERE p.unit_price = (
	SELECT MAX(unit_price)
	FROM products
	WHERE category_id = p.category_id
);