SELECT
       company_name,
       COUNT(order_id) as orders,
       string_agg(order_id::text, ',') AS order_ids
FROM customers
JOIN orders o on customers.customer_id = o.customer_id
WHERE ship_country = 'USA'
GROUP BY company_name
order by orders LIMIT 5