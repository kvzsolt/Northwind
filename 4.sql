SELECT country, COUNT(country) as number_of_customers FROM customers
GROUP BY country
ORDER BY number_of_customers DESC
LIMIT 5