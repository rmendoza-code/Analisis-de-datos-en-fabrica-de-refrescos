"""
Utilidades para el Análisis de Datos de Producción
================================================

Este módulo contiene las herramientas necesarias para analizar los datos
de tiempo de inactividad en la fábrica de refrescos.

Funciones Principales
-------------------
create_connection()
    Crea una conexión a la base de datos SQLite que contiene los datos
    de producción y tiempo de inactividad.

read_table(connection, table_name)
    Lee una tabla específica de la base de datos y la convierte en un
    DataFrame de pandas para su análisis.

Ejemplo de Uso
------------
>>> from utils import create_connection, read_table
>>> 
>>> # Crear conexión a la base de datos
>>> conn = create_connection()
>>> 
>>> # Leer datos de tiempo de inactividad
>>> downtime_data = read_table(conn, "normalizeddowntime")
"""

from .db_connection import create_connection, read_table

# Próximamente:
# - Módulo de visualización para gráficos de tiempo de inactividad
# - Módulo de estadísticas para métricas de producción
# - Módulo de procesamiento para limpieza de datos
