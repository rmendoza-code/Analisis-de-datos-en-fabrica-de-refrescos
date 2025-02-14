"""
Funciones de análisis estadístico para el análisis de tiempo de inactividad de manufactura.
"""
import pandas as pd
import numpy as np
from scipy import stats

def calculate_basic_stats(df, column='total_downtime'):
    """
    Calcula estadísticas básicas para una columna.
    
    Args:
        df (pd.DataFrame): DataFrame con los datos
        column (str): Nombre de la columna a analizar
        
    Returns:
        dict: Diccionario con estadísticas básicas
    """
    return {
        'mean': df[column].mean(),
        'median': df[column].median(),
        'std': df[column].std(),
        'min': df[column].min(),
        'max': df[column].max(),
        'skew': df[column].skew(),
        'kurtosis': df[column].kurtosis()
    }

def analyze_operator_performance(df):
    """
    Analiza el rendimiento de los operadores.
    
    Args:
        df (pd.DataFrame): DataFrame con columnas 'operator' y 'total_downtime'
        
    Returns:
        pd.DataFrame: DataFrame con estadísticas por operador
    """
    return df.groupby('operator').agg({
        'total_downtime': ['count', 'mean', 'std', 'min', 'max']
    }).round(2)

def test_operator_differences(df):
    """
    Realiza un test ANOVA para determinar si hay diferencias significativas entre operadores.
    
    Args:
        df (pd.DataFrame): DataFrame con columnas 'operator' y 'total_downtime'
        
    Returns:
        tuple: (F-statistic, p-value)
    """
    operator_groups = [group['total_downtime'].values for name, group in df.groupby('operator')]
    return stats.f_oneway(*operator_groups)

def analyze_product_impact(df):
    """
    Analiza el impacto del tipo de producto en el tiempo de inactividad.
    
    Args:
        df (pd.DataFrame): DataFrame con columnas 'id_product' y 'total_downtime'
        
    Returns:
        pd.DataFrame: DataFrame con estadísticas por producto
    """
    return df.groupby('id_product').agg({
        'total_downtime': ['count', 'mean', 'std', 'min', 'max']
    }).round(2)
