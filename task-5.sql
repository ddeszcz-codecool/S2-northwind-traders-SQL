SELECT TO_CHAR(orders.order_date, 'YYYY') AS year,
       TO_CHAR(orders.order_date, 'MM') AS month,
       COUNT(order_details.order_id) AS order_count,
       TO_CHAR(SUM(order_details.unit_price * order_details.quantity * (1 - order_details.discount)), '9999999999') AS revenue

FROM order_details
    INNER JOIN orders
        ON order_details.order_id = orders.order_id

WHERE TO_CHAR(orders.order_date, 'YYYY') = '1997'
GROUP BY year, month
ORDER BY year, month;