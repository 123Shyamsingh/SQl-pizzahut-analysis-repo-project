-- Identify the most common pizza size ordered.

SELECT 
    pizzas.size, COUNT(order_details.order_id) AS order_size
FROM
    pizzas
        JOIN
    order_details ON pizzas.pizza_id = order_details.pizza_id
GROUP BY pizzas.size
ORDER BY order_size DESC
LIMIT 1;

