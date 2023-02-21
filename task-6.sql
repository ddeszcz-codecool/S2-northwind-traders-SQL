SELECT c.company_name AS company_name,
       COUNT(orders.customer_id) AS orders,
       STRING_AGG(TO_CHAR(orders.order_id, '99999'), ',') AS order_ids

FROM orders
         INNER JOIN customers AS c
                    ON orders.customer_id = c.customer_id
WHERE c.country LIKE 'USA' AND
        orders.customer_id IN (SELECT customer_id
                               FROM orders

GROUP BY customer_id HAVING COUNT(*) < 5)
GROUP BY company_name
ORDER BY orders;

