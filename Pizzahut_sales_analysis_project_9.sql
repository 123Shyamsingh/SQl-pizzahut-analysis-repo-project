-- Group the orders by date and calculate the average number of pizzas ordered per day.
    
SELECT 
    ROUND(AVG(count), 0)
FROM
    (SELECT 
        orders.order_date, SUM(order_details.quantity) AS count
    FROM
        orders
    JOIN order_details ON orders.order_id = order_details.order_id
    GROUP BY orders.order_date) AS total_quant;