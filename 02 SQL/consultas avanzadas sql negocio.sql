--Resumen pedidos por tramo horario 
SELECT 
  CASE
    WHEN hora BETWEEN 0 AND 3 THEN '00:00-03:59'
    WHEN hora BETWEEN 4 AND 7 THEN '04:00-07:59'
    WHEN hora BETWEEN 8 AND 11 THEN '08:00-11:59'
    WHEN hora BETWEEN 12 AND 15 THEN '12:00-15:59'
    WHEN hora BETWEEN 16 AND 19 THEN '16:00-19:59'
    WHEN hora BETWEEN 20 AND 23 THEN '20:00-23:59'
  END AS tramo_horario,
  
  SUM(cantidad) AS total_productos_vendidos,
  COUNT(DISTINCT id_pedido || '-' || hora) AS total_pedidos,
  ROUND (SUM(precio_unitario),2) AS ingresos_totales

FROM tickets
GROUP BY tramo_horario
ORDER BY ingresos_totales DESC;

SELECT COUNT(DISTINCT id_pedido) as Pedidos, hora, cantidad
from tickets
group by hora, cantidad
Order BY Pedidos DESC, cantidad DESC;

--Análisis por hora y día
SELECT 
    hora,
    SUM(cantidad) AS total_productos_vendidos,
    COUNT(DISTINCT id_pedido) AS total_pedidos,
    SUM(precio_total) AS ingresos_totales
FROM tickets
GROUP BY hora
ORDER BY hora;


--Horas con más productos vendidos (la cesta más llena)
SELECT 
    hora,
    SUM(cantidad) AS total_productos_vendidos
FROM tickets
GROUP BY hora
ORDER BY total_productos_vendidos DESC;

-- Horas con más pedidos (cantidad de clientes)
SELECT 
    hora,
    COUNT(DISTINCT id_pedido) AS total_pedidos
FROM tickets
GROUP BY hora
ORDER BY total_pedidos DESC;

--Horas que generan más ingresos 
SELECT 
    hora,
    SUM(precio_total) AS ingresos_totales
FROM tickets
GROUP BY hora
ORDER BY ingresos_totales DESC;

--Ingresos generados por tramo horario
SELECT 
  CASE
    WHEN hora BETWEEN 0 AND 3 THEN '00:00-03:59'
    WHEN hora BETWEEN 4 AND 7 THEN '04:00-07:59'
    WHEN hora BETWEEN 8 AND 11 THEN '08:00-11:59'
    WHEN hora BETWEEN 12 AND 15 THEN '12:00-15:59'
    WHEN hora BETWEEN 16 AND 19 THEN '16:00-19:59'
    WHEN hora BETWEEN 20 AND 23 THEN '20:00-23:59'
  END AS tramo_horario,
  ROUND(SUM(precio_total),2) AS ingresos_totales
FROM tickets
GROUP BY tramo_horario
ORDER BY ingresos_totales DESC;

--Pedidos realizados por tramo horario 
SELECT 
  CASE
    WHEN hora BETWEEN 0 AND 3 THEN '00:00-03:59'
    WHEN hora BETWEEN 4 AND 7 THEN '04:00-07:59'
    WHEN hora BETWEEN 8 AND 11 THEN '08:00-11:59'
    WHEN hora BETWEEN 12 AND 15 THEN '12:00-15:59'
    WHEN hora BETWEEN 16 AND 19 THEN '16:00-19:59'
    WHEN hora BETWEEN 20 AND 23 THEN '20:00-23:59'
  END AS tramo_horario,
  COUNT(DISTINCT id_pedido) AS total_pedidos
FROM tickets
GROUP BY tramo_horario
ORDER BY total_pedidos DESC;



