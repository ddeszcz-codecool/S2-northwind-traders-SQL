SELECT products.product_name, TO_CHAR(SUM(order_details.quantity * order_details.unit_price * (1 - order_details.discount)), '9999999999') AS sum
FROM order_details
    INNER JOIN products
ON order_details.product_id = products.product_id
GROUP BY products.product_name
ORDER BY sum
    LIMIT 10;