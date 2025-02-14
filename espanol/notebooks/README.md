# 📓 Notebooks de Análisis

Este directorio contiene los notebooks de Jupyter que realizan el análisis completo de los datos de tiempo de inactividad en la línea de producción.

## 📊 Notebooks Disponibles

### 1. [01_exploratory_analysis.ipynb](01_exploratory_analysis.ipynb)
**Análisis Exploratorio de Datos**
- Distribución de tiempos de inactividad
- Análisis por operador
- Identificación de patrones principales
- Visualizaciones básicas

### 2. [02_temporal_analysis.ipynb](02_temporal_analysis.ipynb)
**Análisis Temporal y Tendencias**
- Patrones diarios y semanales
- Análisis de estacionalidad
- Detección de anomalías
- Descomposición de series temporales

### 3. [03_predictive_modeling.ipynb](03_predictive_modeling.ipynb)
**Modelado Predictivo**
- Preparación de datos para modelado
- Desarrollo de modelo predictivo
- Evaluación de resultados
- Recomendaciones basadas en predicciones

## 🚀 Cómo Usar los Notebooks

1. **Preparación**:
   - Asegúrate de tener todas las dependencias instaladas
   - Configura las credenciales de la base de datos en `.env`

2. **Orden de Ejecución**:
   - Comienza con `01_exploratory_analysis.ipynb`
   - Continúa con `02_temporal_analysis.ipynb`
   - Finaliza con `03_predictive_modeling.ipynb`

3. **Visualizaciones**:
   - Los gráficos generados se guardan en el directorio `../visualizations/`
   - Cada notebook incluye explicaciones detalladas de las visualizaciones

4. **Personalización**:
   - Puedes ajustar los parámetros de análisis según tus necesidades
   - Las funciones de utilidad están en el directorio `../utils/`

## 📝 Notas Importantes

- Los notebooks están diseñados para ser ejecutados en orden
- Cada notebook es independiente pero complementario
- Se incluyen explicaciones detalladas en cada sección
- Los resultados se guardan automáticamente en las ubicaciones correspondientes
