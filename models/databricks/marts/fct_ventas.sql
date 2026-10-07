SELECT
    fecha,
    id_sucursal,
    SUM(cantidad) AS cantidad_vendida,
    SUM(total_venta) AS total_venta

FROM {{ ref('int_ventas') }}

GROUP BY
    fecha,
    id_sucursal