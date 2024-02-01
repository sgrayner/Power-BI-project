CREATE VIEW salesinfo AS

SELECT
    s.store_type,
    SUM(o.product_quantity) AS total_sales,
    SUM(o.product_quantity*100/(SELECT SUM(product_quantity) FROM orders)) AS percentage_of_sales,
    COUNT(o.order_date_uuid) AS orders

FROM
    orders AS o

JOIN
    dim_store AS s ON
    s.store_code = o.store_code

GROUP BY
    s.store_type