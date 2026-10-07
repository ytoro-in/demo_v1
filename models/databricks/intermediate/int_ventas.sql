SELECT
    id_venta,
    fecha,
    id_sucursal,
    id_producto,
    cantidad,
    precio_unitario,
    {{ calcular_total('cantidad', 'precio_unitario') }} AS total_venta,
    fecha_proceso

FROM {{ ref('stg_ventas') }}