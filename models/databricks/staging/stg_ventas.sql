SELECT
    CAST(id_venta AS BIGINT) AS id_venta,
    CAST(fecha AS DATE) AS fecha,
    CAST(id_sucursal AS BIGINT) AS id_sucursal,
    CAST(id_producto AS BIGINT) AS id_producto,
    CAST(cantidad AS INT) AS cantidad,
    CAST(precio_unitario AS DECIMAL(18,2)) AS precio_unitario,
    current_timestamp() AS fecha_proceso

FROM {{ source('databricks_raw', 'ventas_databricks') }}