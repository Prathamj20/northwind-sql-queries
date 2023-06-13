/* This query retrieves the product name, calculates the total quantity of each product sold, and assigns a sales category based on the total quantity. The sales categories are 'High Sales' for products with a total quantity greater than 1000, 'Medium Sales' for products with a total quantity greater than 500, and 'Lower Sales' for the rest.

The query joins the "products" table with the "order_details" table using the product ID. It then groups the results by the product ID and name. The final result is ordered in descending order based on the total quantity of each product sold. */

SELECT products.product_name,
       SUM(order_details.quantity) AS TotalQuantity,
        CASE
            WHEN SUM(order_details.quantity) > 1000 THEN 'High Sales'
            WHEN SUM(order_details.quantity) > 500 THEN 'Medium Sales'
            ELSE 'Lower Sales'
        END AS SalesCategory
 FROM products
 JOIN order_details ON products.product_id = order_details.product_id
GROUP BY products.product_id, products.product_name
ORDER BY TotalQuantity DESC;
