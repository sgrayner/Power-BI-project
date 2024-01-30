SELECT
    category,
    SUM(o.product_quantity * (p.sale_price - p.cost_price)) as Profit

FROM
    dim_product as p

JOIN
    orders as o
    ON o.product_code = p.product_code

JOIN
    dim_store as s
    ON s.store_code = o.store_code

WHERE
    s.full_region LIKE 'Wiltshire%'
    AND o.order_date LIKE '2021%'

GROUP BY
    category

ORDER BY
    Profit DESC

LIMIT 1