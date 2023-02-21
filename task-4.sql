SELECT customers.country,
       COUNT(customers.country) AS number_of_customers

FROM customers

GROUP BY customers.country
ORDER BY number_of_customers DESC
LIMIT 5;