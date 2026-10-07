SELECT
    id_venta,
    total_venta

FROM {{ ref('int_ventas') }}

WHERE total_venta <= 0