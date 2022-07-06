SELECT category_name, COUNT(product_name) AS number_of_products
FROM categories
JOIN products p on categories.category_id = p.category_id
GROUP BY category_name
ORDER BY number_of_products DESC