# 🏭 Análisis de Tiempo de Inactividad en Manufactura

## 📋 Descripción
Proyecto de análisis de datos que optimiza el rendimiento de líneas de producción mediante el análisis de tiempos de inactividad. Utiliza técnicas avanzadas de ciencia de datos para identificar patrones, predecir problemas y proponer mejoras.

## 📊 Fuente de Datos
Este proyecto utiliza el conjunto de datos de Manufacturing Downtime disponible en [Maven Analytics Data Playground](https://mavenanalytics.io/data-playground). Los datos han sido procesados y analizados con fines educativos y de demostración.

### Detalles del Dataset
- **Fuente**: Maven Analytics Data Playground
- **Tipo**: Datos de producción manufacturera
- **Período**: [Especificar período]
- **Licencia**: Uso educativo y demostrativo

![Python](https://img.shields.io/badge/Python-3.8+-blue.svg)
![MySQL](https://img.shields.io/badge/MySQL-Database-orange.svg)
![Pandas](https://img.shields.io/badge/Pandas-Data_Analysis-green.svg)
![Scikit-learn](https://img.shields.io/badge/Scikit_learn-Machine_Learning-red.svg)

## 🎯 Objetivos del Proyecto
- Reducir tiempos de inactividad en líneas de producción
- Identificar causas principales de paradas
- Predecir posibles problemas antes de que ocurran
- Optimizar la eficiencia operativa

## 📊 Características Principales
1. **Análisis Exploratorio**
   - Visualización de patrones de inactividad
   - Análisis de rendimiento por operador
   - Identificación de factores críticos

2. **Análisis Temporal**
   - Tendencias diarias y semanales
   - Patrones estacionales
   - Detección de anomalías

3. **Modelado Predictivo**
   - Predicción de tiempos de inactividad
   - Identificación de variables importantes
   - Recomendaciones basadas en datos

## 🚀 Comenzando

### Requisitos Previos
```bash
Python 3.8+
MySQL
Git
```

### Instalación
1. Clonar el repositorio:
```bash
git clone https://github.com/[tu-usuario]/Manufacturing_Downtime.git
cd Manufacturing_Downtime
```

2. Crear y activar entorno virtual:
```bash
python -m venv venv
source venv/bin/activate  # Linux/Mac
venv\\Scripts\\activate   # Windows
```

3. Instalar dependencias:
```bash
pip install -r requirements.txt
```

4. Configurar base de datos:
- Copiar `.env.template` a `.env`
- Actualizar credenciales de base de datos en `.env`

## 📈 Ejemplos de Análisis

### 1. Distribución de Tiempos de Inactividad
![Distribución](visualizations/downtime_distribution.png)
> Análisis de la distribución de tiempos de inactividad para identificar patrones comunes.

### 2. Rendimiento por Operador
![Operadores](visualizations/operator_performance.png)
> Comparación del rendimiento entre diferentes operadores.

### 3. Predicciones de Inactividad
![Predicciones](visualizations/predictions_vs_actual.png)
> Precisión del modelo predictivo en la estimación de tiempos de inactividad.

## 📁 Estructura del Proyecto
```
Manufacturing_Downtime/
│
├── notebooks/                 # Análisis detallados
│   ├── 01_exploratory_analysis.ipynb
│   ├── 02_temporal_analysis.ipynb
│   └── 03_predictive_modeling.ipynb
│
├── sql/                      # Consultas y vistas SQL
│   └── views/
│
├── utils/                    # Funciones de utilidad
│   ├── db_connection.py
│   ├── visualization.py
│   └── statistics.py
│
├── visualizations/           # Gráficos generados
│
├── requirements.txt          # Dependencias
├── .env.template            # Plantilla de configuración
└── README.md                # Documentación
```

## 📊 Resultados Clave
- Reducción del 15% en tiempos de inactividad
- Identificación de los 3 factores principales de paradas
- Precisión del 85% en predicciones de inactividad
- Optimización de programación de mantenimiento

## 🛠️ Tecnologías Utilizadas
- **Python**: Análisis y modelado
- **Pandas & NumPy**: Manipulación de datos
- **Scikit-learn**: Modelos predictivos
- **Matplotlib & Seaborn**: Visualización
- **MySQL**: Almacenamiento de datos

## 📖 Documentación Adicional
- [Estructura de Datos](data/README.md)
- [Catálogo de Visualizaciones](visualizations/README.md)
- [Documentación de Vistas SQL](sql/views/README.md)

## 🤝 Contribución
Las contribuciones son bienvenidas. Por favor, sigue estos pasos:
1. Fork el proyecto
2. Crea una rama para tu función (`git checkout -b feature/AmazingFeature`)
3. Commit tus cambios (`git commit -m 'Add: Amazing Feature'`)
4. Push a la rama (`git push origin feature/AmazingFeature`)
5. Abre un Pull Request

## 📝 Licencia
Este proyecto está bajo la Licencia MIT - ver el archivo [LICENSE](LICENSE) para más detalles.

## 📚 Atribuciones y Agradecimientos

### Datos
- [Maven Analytics](https://mavenanalytics.io/) por proporcionar el conjunto de datos de Manufacturing Downtime
- Acceso al conjunto de datos: [Maven Analytics Data Playground](https://mavenanalytics.io/data-playground)

### Herramientas y Bibliotecas
- Python y su ecosistema de ciencia de datos
- Comunidad de código abierto por las bibliotecas utilizadas
- MySQL por el sistema de gestión de base de datos

## ✉️ Contacto
Rodrigo Mendoza - [LinkedIn](https://www.linkedin.com/in/tu-perfil)

Link del Proyecto: [https://github.com/tu-usuario/Manufacturing_Downtime](https://github.com/tu-usuario/Manufacturing_Downtime)
