SELECT DATE_TRUNC('month', TO_DATE(order_date, 'YYYY-MM-DD')) AS order_month,
       SUM(product_quantity * p.sale_price) AS total_revenue
FROM 
    orders as o
JOIN
    dim_product as p
    ON p.product_code = o.product_code

WHERE
    order_date LIKE '2022%'

GROUP BY 
    order_month

ORDER BY
    total_revenue DESC
