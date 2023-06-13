/*
This query calculates the total sales for each category by multiplying the quantity of each product sold with its unit price, and then summing up those values. It retrieves the category name and the corresponding total sales. The query achieves this by joining the "categories," "products," and "order_details" tables based on their respective IDs. It groups the results by the category name to provide the total sales figure for each category.
*/

SELECT c.category_name, SUM(od.quantity*od.unit_price) AS Totalsales
FROm categories c
join products p On c.category_id = p.category_id
Join order_details od on p.product_id = od.product_id
group by c.category_name;