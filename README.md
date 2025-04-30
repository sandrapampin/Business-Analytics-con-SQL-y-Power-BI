# Business-Analytics-con-SQL-y-Power-BI
### Análisis de ventas y tendencias de un supermercado
<img src="https://github.com/sandrapampin/Business-Analytics-con-SQL-y-Power-BI/blob/main/_media/sql%20logo.png?raw=true" alt="SQL" width ="60"/>   <img src="https://github.com/sandrapampin/Business-Analytics-con-SQL-y-Power-BI/blob/main/_media/python.png?raw=true" alt="Python" width ="60"/> <img src="https://github.com/sandrapampin/Business-Analytics-con-SQL-y-Power-BI/blob/main/_media/powerbi.jpg?raw=true" alt="Power BI" width ="60"/> 



**Descripción:**  
Proyecto realizado con SQL Lite para generación de insights y análisis de la base de datos transaccional de la empresa. Construcción de un cuadro de mando de ventas en Power BI acorde a requerimientos funcionales de negocio.  

<img src="https://github.com/sandrapampin/Business-Analytics-con-SQL-y-Power-BI/blob/main/05%20Power%20BI%20cuadro%20de%20mando/cuadro-de-mando-SyF.png?raw=true" alt="Cuadro de mando en Power BI" width ="760"/>


## Diagrama técnico del proyecto: 
![Diagrama Técnico](https://github.com/sandrapampin/Business-Analytics-con-SQL-y-Power-BI/blob/main/_media/diagrama-tecnico-proyecto-business-SyF.png)

Proyecto analizado en **Python**, haciendo uso de sus principales librerías para el procesado de datos: Numpy, Pandas y las visualizaciones desarrolladas con Matplotlib y Seaborn.
### Exploración de datos transaccionales para generación de insights e implementación de estrategias de incremento ticket medio y diversificación de secciones con venta cruzada.

## Resumen ejecutivo:
![Resumen Ejecutivo](https://github.com/sandrapampin/Business-Analytics-con-SQL-y-Power-BI/blob/main/_media/briefcase%20exec.png)

Durante los últimos meses, se aprecia una notoria disminución de ingresos mensuales del supermercado. Esta evolución puede deberse a diversos factores, alta concentración en un solo departamento y en pocos productos y secciones, así como una dependencia de clientes con compras de bajo valor.  
• **Disminución de ingresos:** 82% de caída en ingresos mensuales a lo largo del año.  
• **Falta de diversificación:** Departamento 4 y Sección 24 dominan los ingresos.  
• **Bajo valor promedio de compra:** Valor promedio por pedido de 19,34 €.

## Conclusiones generales:
Después de un análisis exhaustivo, se ha llegado a las siguientes conclusiones:  
• **Diversificación de departamentos y secciones:** Acción: desarrollar estrategias para impulsar otros departamentos y secciones menos representados (para reducir la dependencia e impulsar venta cruzada).  
• **Ampliación de la oferta de productos:** Acción: Introducir nuevos productos no orgánicos y fomentar la venta de productos menos populares para atraer a una base de clientes más amplia y adaptarse a tendencias del mercado.  
• **Incremento del ticket medio de compra:** Acción: Implementar un sistema de recomendación analítico para mejorar los ingresos medios por cliente y optimizar la lealtad de cliente.  

Es crucial implementar estrategias para revertir esta caída y diversificar las fuentes de ingresos para asegurar la sostenibilidad a largo plazo.

## Trabajo realizado:

- **Importación de los datos con SQL:** de la base de datos de la empresa (tabla tickets). Consultas en SQL lite para extraer insights de negocio.
  ![SQL](https://github.com/sandrapampin/Business-Analytics-con-SQL-y-Power-BI/blob/main/_media/sql-consultas2.png)
  
- **Análisis de los datos (EDA):** exploración y visualización de datos para identificar relaciones, patrones y anomalías como valores atípicos o errores. El objetivo es mejorar la calidad del dato para posteriores análisis y validar suposiciones iniciales y ajustar las estrategias de análisis.  
![EDA](https://github.com/sandrapampin/Business-Analytics-con-SQL-y-Power-BI/blob/main/_media/conexion%20y%20EDA.png)
![EDA correcion datos](https://github.com/sandrapampin/Business-Analytics-con-SQL-y-Power-BI/blob/main/_media/calidad%20dato%20y%20nulos.png)
![EDA distribucion valores](https://github.com/sandrapampin/Business-Analytics-con-SQL-y-Power-BI/blob/main/_media/EDA%20distribucion%20valores.png)
![EDA distribución valores Q-Q](https://github.com/sandrapampin/Business-Analytics-con-SQL-y-Power-BI/blob/main/_media/distribucion%20valores%20Q-Q.png)
![EDA anomalias dato](https://github.com/sandrapampin/Business-Analytics-con-SQL-y-Power-BI/blob/main/_media/EDA%20grafico%20burbujas%20anomalias.png)


- **Corrección de datos:** limpieza de datos, transformando tipos de datos, tratando nulos y valores atípicos una vez explorados en la fase previa.  
**Business Case:** <u><a href="https://github.com/sandrapampin/Business-Analytics-con-SQL-y-Power-BI/blob/main/03%20pdf%20requerimientos%20y%20conclusiones/Informe%20de%20Conclusiones.pdf?raw=true" target="_blank">informe de conclusiones</a></u> para análisis de negocio con evidencias y recomendaciones. Analizamos las ventas en función del precio total y su relación con la cantidad de pedidos, secciones, productos y su relación con el tiempo.


### Información obtenida tras el análisis:
1. **Tendencia decreciente de ingresos mensuales:** han disminuido un 82% desde enero.  
2. **Ingresos altamente concentrados en el departamento 4:** representa el 93% de los ingresos totales.  
3. **Distribución de ventas en pocas secciones:** las secciones 24, 123 y 83 constituyen el 92% de los ingresos totales.  
4. **Alta dependencia en productos orgánicos (bananas y fresas):** tanto por total de pedidos como por ingresos totales.  
5. **Amplia base de clientes con compras de bajo valor:** Esto representa una oportunidad para estrategias de upselling y fidelización.  
6. **Alta concentración de compras los domingos y los lunes:** significativo en las franjas de 8-12h y de 12-16h.

Como primera medida para impulsar el ticket medio de compra (y por tanto los ingresos) se decide implementar un motor de recomendación usando Python. Se creará un modelo de MarketBasketAnalysis para recomendar productos que se venden más juntos.  
![Motor de Recomendación](https://github.com/sandrapampin/Business-Analytics-con-SQL-y-Power-BI/blob/main/_media/dataframe%20y%20agrupacion%20para%20funcion.png)
![Antecedente-Consecuente-productos](https://github.com/sandrapampin/Business-Analytics-con-SQL-y-Power-BI/blob/main/_media/funcion-antecedente-consecuente.png)

## Cuadro de mando de negocio
Creación de un cuadro de mando que permita **monitorizar, analizar y optimizar el rendimiento de las ventas** a lo largo del año. El cuadro de mando debe:

• Proporcionar información de ventas y clientes de forma mensual.  
• Ofrecer una visualización clara de **evolución de ventas** a lo largo del año.  
• Proveer detalles específicos sobre **productos y secciones con desempeño**.  
• Incluir **KPIs relevantes** para la gestión de ventas:
  - Total ventas  
  - Total clientes  
  - Ticket medio por pedido  
  - Ticket medio por cliente  
• Mostrar análisis de productos por pedido y cantidad media por artículo, así como unidades vendidas.  
• Ventas **totales por sección y tendencia** respecto al mes anterior.  
• Ser interactivo: filtros y segmentación por mes, trimestre y también de productos.  
• **Validación:** revisión de calidad del dato, asegurar que visualizaciones cumplan requerimientos y pruebas de rendimiento para que funcione de manera eficiente para el usuario. Un panel sencillo pero escalable.  
![Cuadro de mando evolutivo ventas](https://github.com/sandrapampin/Business-Analytics-con-SQL-y-Power-BI/blob/main/05%20Power%20BI%20cuadro%20de%20mando/cuadro-de-mando-SyF%20evolution%20mes%20e%20int%20tpo.png)
![Cuadro de mando SyF recomendacion productos](https://github.com/sandrapampin/Business-Analytics-con-SQL-y-Power-BI/blob/main/05%20Power%20BI%20cuadro%20de%20mando/cuadro-de-mando-SyF%20recomendacion%20productos.png)

## Próximas funcionalidades y mejoras
Se recomienda implementar próximamente estas funcionalidades:  
- **Comportamiento de cliente:** RFM y LTV para segmentar y crear estrategias de fidelización.  
- **Impulsar la venta cruzada entre departamentos:** aprovechando eventos estacionales o propios del sector.
