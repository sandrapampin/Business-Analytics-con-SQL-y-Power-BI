SELECT * 
FROM tickets
LIMIT 100;

--Total ingresos 
SELECT SUM(precio_total) as TotalIngresos
from tickets;

--Total ingresos por mes 
SELECT  
	strftime('%Y-%m', fecha) as Mes,
	ROUND(SUM(precio_total), 2) as TotalIngresos
FROM tickets	
GROUP BY Mes
ORDER BY Mes;

--Rendimiento en ventas de cada departamento
SELECT id_departamento, 
	SUM(precio_total) as TotalIngresos
FROM tickets
group by id_departamento
order by TotalIngresos;

--Rendimiento en ventas de cada sección 
SELECT id_seccion, 
	SUM(precio_total) as TotalIngresos
FROM tickets
group by id_seccion
order by TotalIngresos;

--Top 10 producto más vendidos en cantidad
SELECT  nombre_producto, 
	sum(cantidad) as TotalUnidades
from tickets
group by nombre_producto
order by TotalUnidades DESC
LIMIT 10;

--Top 10 productos que más ingresos generan 
SELECT  nombre_producto, 
	SUM(precio_total) as TotalIngresos
from tickets
group by nombre_producto
order by TotalIngresos DESC
LIMIT 10;

--Top 20 clientes que más compran
SELECT  id_cliente, 
	SUM(precio_total) as TotalIngresos
from tickets
group by id_cliente
order by TotalIngresos DESC
LIMIT 20;

--Compra media por cliente 
SELECT AVG(compra_total_cliente) AS compra_media_por_cliente 
FROM ( 
	SELECT id_cliente, SUM(precio_total) AS compra_total_cliente 
	FROM tickets 
	GROUP BY id_cliente ) subconsulta;
    
--Total pedidos realizados en db 
SELECT COUNT(DISTINCT id_pedido) AS total_pedidos
FROM tickets;

--Valor promedio ticket o por pedido 
SELECT AVG(total_pedido) AS valor_promedio_pedido
FROM (
	SELECT id_pedido, SUM(precio_total) AS total_pedido
	FROM tickets
	GROUP BY id_pedido
) subconsulta;