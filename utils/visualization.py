import pandas as pd
import matplotlib.pyplot as plt
import seaborn as sns

def plot_downtime_distribution(data: pd.DataFrame) -> None:
    """
    Crea un gráfico de distribución de los tiempos de inactividad.
    
    Args:
        data (pd.DataFrame): DataFrame con los datos de tiempo de inactividad
    """
    plt.figure(figsize=(10, 6))
    sns.histplot(data=data, x='downtime_minutes', bins=30)
    plt.title('Distribución de Tiempos de Inactividad')
    plt.xlabel('Minutos de Inactividad')
    plt.ylabel('Frecuencia')
    plt.show()

def plot_operator_performance(data: pd.DataFrame) -> None:
    """
    Crea un gráfico de rendimiento por operador.
    
    Args:
        data (pd.DataFrame): DataFrame con los datos de rendimiento por operador
    """
    plt.figure(figsize=(12, 6))
    sns.barplot(data=data, x='line_id', y='productivity')
    plt.title('Rendimiento por Línea de Producción')
    plt.xlabel('ID de Línea')
    plt.ylabel('Productividad')
    plt.show()

def create_downtime_heatmap(data: pd.DataFrame) -> None:
    """
    Crea un mapa de calor de los tiempos de inactividad.
    
    Args:
        data (pd.DataFrame): DataFrame con los datos de tiempo de inactividad
    """
    pivot_data = data.pivot_table(
        index=pd.Grouper(key='date', freq='D'),
        columns='line_id',
        values='downtime_minutes',
        aggfunc='sum'
    )
    
    plt.figure(figsize=(12, 8))
    sns.heatmap(pivot_data, cmap='YlOrRd', annot=True, fmt='.0f')
    plt.title('Mapa de Calor: Tiempos de Inactividad por Línea y Día')
    plt.xlabel('ID de Línea')
    plt.ylabel('Fecha')
    plt.show()
