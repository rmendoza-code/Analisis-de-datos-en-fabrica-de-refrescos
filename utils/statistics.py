import pandas as pd
import numpy as np
from typing import Dict, Any

def calculate_basic_stats(series: pd.Series) -> Dict[str, float]:
    """
    Calcula estadísticas básicas para una serie de datos.
    
    Args:
        series (pd.Series): Serie de datos numéricos
    
    Returns:
        Dict[str, float]: Diccionario con las estadísticas básicas
    """
    return {
        'mean': series.mean(),
        'median': series.median(),
        'std': series.std(),
        'min': series.min(),
        'max': series.max()
    }

def analyze_operator_performance(data: pd.DataFrame) -> pd.DataFrame:
    """
    Analiza el rendimiento por operador/línea.
    
    Args:
        data (pd.DataFrame): DataFrame con los datos de producción
    
    Returns:
        pd.DataFrame: DataFrame con métricas de rendimiento
    """
    return data.groupby('line_id').agg({
        'productivity': ['mean', 'std', 'min', 'max'],
        'downtime_minutes': ['sum', 'mean']
    }).round(2)
