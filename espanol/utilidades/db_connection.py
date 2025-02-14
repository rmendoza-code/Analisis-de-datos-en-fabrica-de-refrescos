"""
Database connection utilities for the Manufacturing Downtime Analysis project.
"""
import os
from dotenv import load_dotenv
from sqlalchemy import create_engine
import pandas as pd

# Cargar variables de entorno
load_dotenv()

def get_db_connection():
    """
    Creates and returns a SQLAlchemy database engine using environment variables
    for sensitive connection details.
    
    Returns:
        sqlalchemy.engine.Engine: Database connection engine
        
    Raises:
        ValueError: If required environment variables are not set
    """
    required_vars = ['DB_USER', 'DB_PASSWORD', 'DB_HOST', 'DB_PORT', 'DB_NAME']
    missing_vars = [var for var in required_vars if not os.getenv(var)]
    
    if missing_vars:
        raise ValueError(
            f"Missing required environment variables: {', '.join(missing_vars)}. "
            "Please check your .env file."
        )
    
    connection_string = (
        f"mysql+pymysql://{os.getenv('DB_USER')}:{os.getenv('DB_PASSWORD')}@"
        f"{os.getenv('DB_HOST')}:{os.getenv('DB_PORT')}/{os.getenv('DB_NAME')}"
    )
    
    return create_engine(connection_string)

def list_tables():
    """
    Lists all tables available in the connected database.
    
    Returns:
        list: List of table names in the database
        
    Raises:
        Exception: If database connection fails
    """
    try:
        engine = get_db_connection()
        return engine.table_names()
    except Exception as e:
        raise Exception(f"Error listing tables: {str(e)}")

def read_table(table_name):
    """
    Reads a table from the database into a pandas DataFrame.
    
    Args:
        table_name (str): Name of the table to read
        
    Returns:
        pandas.DataFrame: DataFrame containing the table data
        
    Raises:
        ValueError: If table_name is empty or not a string
        Exception: If database query fails
    """
    if not isinstance(table_name, str) or not table_name.strip():
        raise ValueError("table_name must be a non-empty string")
    
    try:
        engine = get_db_connection()
        return pd.read_sql_table(table_name, engine)
    except Exception as e:
        raise Exception(f"Error reading table {table_name}: {str(e)}")
