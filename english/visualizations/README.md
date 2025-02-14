# Catálogo de Visualizaciones

Este directorio contiene las visualizaciones generadas durante el análisis de los datos de tiempo de inactividad en manufactura.

## 1. Análisis de Tiempo de Inactividad

### 1.1 Distribución de Tiempos de Inactividad
- **Archivo**: downtime_distribution.png
- **Tipo**: Histograma
- **Descripción**: Muestra la distribución de los tiempos de inactividad en todos los lotes
- **Insights**: Ayuda a identificar patrones comunes y valores atípicos en los tiempos de inactividad

### 1.2 Tiempo de Inactividad por Operador
- **Archivo**: operator_performance.png
- **Tipo**: Gráfico de barras
- **Descripción**: Compara el tiempo promedio de inactividad por operador
- **Insights**: Identifica variaciones en el rendimiento entre operadores

### 1.3 Mapa de Calor de Inactividad
- **Archivo**: downtime_heatmap.png
- **Tipo**: Mapa de calor
- **Descripción**: Visualiza la relación entre operadores, productos y tiempos de inactividad
- **Insights**: Revela patrones y correlaciones entre variables

## 2. Análisis de Factores

### 2.1 Pareto de Factores de Inactividad
- **Archivo**: downtime_factors_pareto.png
- **Tipo**: Diagrama de Pareto
- **Descripción**: Muestra los factores de inactividad ordenados por frecuencia
- **Insights**: Identifica los factores más significativos (principio 80/20)

### 2.2 Tendencias Temporales
- **Archivo**: temporal_trends.png
- **Tipo**: Gráfico de líneas
- **Descripción**: Muestra la evolución de los tiempos de inactividad a lo largo del tiempo
- **Insights**: Identifica patrones estacionales o tendencias

## 3. Análisis de Productos

### 3.1 Tiempo de Inactividad por Producto
- **Archivo**: product_downtime.png
- **Tipo**: Gráfico de barras apiladas
- **Descripción**: Desglosa los tiempos de inactividad por tipo de producto
- **Insights**: Identifica productos problemáticos

### 3.2 Correlación Tamaño-Inactividad
- **Archivo**: size_correlation.png
- **Tipo**: Gráfico de dispersión
- **Descripción**: Relaciona el tamaño del producto con el tiempo de inactividad
- **Insights**: Evalúa si el tamaño del producto influye en los tiempos de inactividad

## Uso de las Visualizaciones

### Generación
- Las visualizaciones se generan automáticamente mediante los notebooks de análisis
- Se utilizan las funciones del módulo `utils.visualization`
- Los gráficos se guardan en formato PNG con alta resolución

### Actualización
- Los gráficos se actualizan cada vez que se ejecutan los notebooks
- La nomenclatura incluye la fecha de generación
- Se mantiene un historial de versiones anteriores en el subdirectorio `archive/`

### Mejores Prácticas
1. Mantener consistencia en el estilo visual
2. Incluir títulos y etiquetas descriptivas
3. Usar paletas de colores accesibles
4. Documentar insights clave en cada visualización
