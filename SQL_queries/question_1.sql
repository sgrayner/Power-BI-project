SELECT
    SUM(dim_store.staff_numbers) as Total_UK_staff

FROM
    dim_store

WHERE
    country_code = 'GB'