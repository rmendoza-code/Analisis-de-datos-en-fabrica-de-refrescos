import pandas as pd
import numpy as np
import sqlite3
from typing import Optional

def create_connection() -> sqlite3.Connection:
    """
    Crea una conexión a la base de datos SQLite.
    
    Returns:
        sqlite3.Connection: Objeto de conexión a la base de datos
    """
    # Por ahora, usaremos una base de datos en memoria para el ejemplo
    return sqlite3.connect(':memory:')

def read_table(conn: sqlite3.Connection, table_name: str) -> pd.DataFrame:
    """
    Lee una tabla de la base de datos y la devuelve como un DataFrame.
    
    Args:
        conn (sqlite3.Connection): Conexión a la base de datos
        table_name (str): Nombre de la tabla a leer
    
    Returns:
        pd.DataFrame: DataFrame con los datos de la tabla
    """
    query = f"SELECT * FROM {table_name}"
    return pd.read_sql_query(query, conn)

def execute_query(conn: sqlite3.Connection, query: str) -> Optional[pd.DataFrame]:
    """
    Ejecuta una consulta SQL y devuelve los resultados como DataFrame.
    
    Args:
        conn (sqlite3.Connection): Conexión a la base de datos
        query (str): Consulta SQL a ejecutar
    
    Returns:
        Optional[pd.DataFrame]: DataFrame con los resultados o None si la consulta no devuelve datos
    """
    try:
        if query.strip().upper().startswith('SELECT'):
            return pd.read_sql_query(query, conn)
        else:
            conn.execute(query)
            conn.commit()
            return None
    except Exception as e:
        print(f"Error al ejecutar la consulta: {e}")
        return None
