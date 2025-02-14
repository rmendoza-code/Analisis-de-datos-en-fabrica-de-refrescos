"""
Funciones de visualización para el análisis de tiempo de inactividad de manufactura.
"""
import matplotlib.pyplot as plt
import seaborn as sns
import pandas as pd
import numpy as np

def setup_plotting_style():
    """Configura el estilo de visualización para consistencia."""
    plt.style.use('seaborn')
    sns.set_palette("husl")
    
def plot_downtime_distribution(df, title="Distribución de Tiempo de Inactividad"):
    """
    Crea un histograma de la distribución del tiempo de inactividad.
    
    Args:
        df (pd.DataFrame): DataFrame con columna 'total_downtime'
        title (str): Título del gráfico
    """
    plt.figure(figsize=(12, 6))
    sns.histplot(data=df, x='total_downtime', bins=30)
    plt.title(title)
    plt.xlabel('Tiempo de Inactividad (minutos)')
    plt.ylabel('Frecuencia')
    
def plot_downtime_by_operator(df, title="Tiempo de Inactividad por Operador"):
    """
    Crea un gráfico de barras del tiempo de inactividad por operador.
    
    Args:
        df (pd.DataFrame): DataFrame con columnas 'operator' y 'total_downtime'
        title (str): Título del gráfico
    """
    plt.figure(figsize=(12, 6))
    operator_downtime = df.groupby('operator')['total_downtime'].mean().sort_values(ascending=False)
    sns.barplot(x=operator_downtime.index, y=operator_downtime.values)
    plt.title(title)
    plt.xlabel('Operador')
    plt.ylabel('Tiempo Promedio de Inactividad (minutos)')
    plt.xticks(rotation=45)
    
def plot_downtime_heatmap(df, title="Mapa de Calor de Tiempo de Inactividad"):
    """
    Crea un mapa de calor del tiempo de inactividad por producto y operador.
    
    Args:
        df (pd.DataFrame): DataFrame con columnas 'operator', 'id_product', y 'total_downtime'
        title (str): Título del gráfico
    """
    plt.figure(figsize=(12, 8))
    pivot_table = df.pivot_table(
        values='total_downtime',
        index='operator',
        columns='id_product',
        aggfunc='mean'
    )
    sns.heatmap(pivot_table, annot=True, fmt='.1f', cmap='YlOrRd')
    plt.title(title)
    plt.xlabel('Producto')
    plt.ylabel('Operador')
