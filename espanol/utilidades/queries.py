"""
Consultas SQL comunes para el análisis de tiempo de inactividad de manufactura.
"""

# Consulta principal de producción con tiempo de inactividad
PRODUCTION_QUERY = """
SELECT * FROM v_ProductionWithDowntime
"""

# Consulta de tiempo total de inactividad por lote
DOWNTIME_TOTAL_QUERY = """
SELECT * FROM v_DowntimeTotal 
ORDER BY batch
"""

# Consulta de detalles de tiempo de inactividad
DOWNTIME_DETAILS_QUERY = """
SELECT * FROM v_DowntimeDetalles 
ORDER BY batch, factor
"""

# Consulta de rendimiento del operador
OPERATOR_PERFORMANCE_QUERY = """
SELECT 
    operator,
    COUNT(*) as total_batches,
    AVG(total_downtime) as avg_downtime,
    MIN(total_downtime) as min_downtime,
    MAX(total_downtime) as max_downtime
FROM v_ProductionWithDowntime
GROUP BY operator
ORDER BY avg_downtime DESC
"""

# Consulta de rendimiento por producto
PRODUCT_PERFORMANCE_QUERY = """
SELECT 
    id_product,
    flavor,
    COUNT(*) as total_batches,
    AVG(total_downtime) as avg_downtime,
    MIN(total_downtime) as min_downtime,
    MAX(total_downtime) as max_downtime
FROM v_ProductionWithDowntime
GROUP BY id_product, flavor
ORDER BY avg_downtime DESC
"""

# Consulta de factores de tiempo de inactividad más comunes
COMMON_FACTORS_QUERY = """
SELECT 
    factor,
    description,
    COUNT(*) as occurrences,
    AVG(downtime_minutes) as avg_duration,
    SUM(downtime_minutes) as total_duration
FROM v_DowntimeDetalles
GROUP BY factor, description
ORDER BY occurrences DESC
"""
