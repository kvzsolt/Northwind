SELECT product_name, ROUND(SUM(od.unit_price * od.quantity - (od.unit_price * od.quantity * od.discount))) AS total
FROM products
JOIN order_details od on products.product_id = od.product_id
GROUP BY product_name
ORDER BY total ASC
LIMIT 10