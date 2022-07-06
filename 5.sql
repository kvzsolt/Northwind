SELECT
EXTRACT(year from order_date) as YEAR,
EXTRACT(month from order_date) AS MONTH,
ROUND(SUM(od.unit_price * od.quantity - (od.unit_price * od.quantity * od.discount))) AS revenue,
COUNT(od.order_id) as order_count

FROM orders
JOIN order_details od on orders.order_id = od.order_id
WHERE EXTRACT(year from order_date) = '1997'
GROUP BY YEAR, MONTH
ORDER BY YEAR, MONTH
