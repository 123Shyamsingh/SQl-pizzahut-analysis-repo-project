-- Determine the distribution of orders by hour of the day.
SELECT 
    HOUR(orders.order_time),
    COUNT(order_details.order_id) AS totalsum
FROM
    orders
        JOIN
    order_details ON orders.order_id = order_details.order_id
GROUP BY HOUR(orders.order_time)