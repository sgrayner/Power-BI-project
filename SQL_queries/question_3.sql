SELECT
    SUM(p.sale_price * o.product_quantity) as Total_revenue,
    s.store_type

FROM orders as o

JOIN
    dim_product as p
    ON p.product_code = o.product_code

JOIN
    dim_store as s
    ON s.store_code = o.store_code

WHERE
    s.country_code = 'DE'
AND o.order_date LIKE '2022%'

GROUP BY
    s.store_type

ORDER BY
    Total_revenue DESC

LIMIT 1