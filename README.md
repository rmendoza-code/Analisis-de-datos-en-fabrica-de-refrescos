# 🏭 Análisis de Tiempo de Inactividad en Manufactura

Un proyecto de análisis de datos amigable para principiantes usando Python y SQL para analizar datos de producción manufacturera.

[![Python](https://img.shields.io/badge/Python-3.8+-blue.svg)](https://www.python.org)
[![MySQL](https://img.shields.io/badge/MySQL-8.0+-orange.svg)](https://www.mysql.com)
[![Pandas](https://img.shields.io/badge/Pandas-2.0+-green.svg)](https://pandas.pydata.org)

## 🎯 ¿Qué Hace Este Proyecto?

Este proyecto analiza datos de producción manufacturera para:
- Encontrar patrones en el tiempo de inactividad de máquinas
- Calcular métricas importantes de producción
- Crear visualizaciones útiles
- Generar ideas para mejoras

## 📁 Organización del Proyecto

```
manufacturing-analysis/
│
├── 📊 analysis/                     # Archivos principales de análisis
│   └── Manufacturing_Downtime.ipynb # Notebook con análisis paso a paso
│
├── 📑 sql/                          # Archivos de base de datos SQL
│   ├── tables/                     # Scripts de creación de tablas
│   ├── data/                       # Scripts de importación de datos
│   └── queries/                    # Consultas de análisis
│
├── 🛠️ utils/                        # Funciones auxiliares
│   ├── db_connection.py           # Conexión a base de datos
│   ├── visualization.py           # Funciones de visualización
│   └── statistics.py              # Cálculos estadísticos
│
└── 📦 requirements.txt             # Paquetes Python requeridos
```

## 🚀 Comenzando

### 1. Configura Tu Entorno

1. Instala Python 3.8 o más nuevo desde [python.org](https://www.python.org/downloads/)
2. Instala MySQL 8.0 o más nuevo desde [mysql.com](https://dev.mysql.com/downloads/)

### 2. Instala los Paquetes Requeridos

Abre una terminal/línea de comandos y ejecuta:
```bash
pip install -r requirements.txt
```

### 3. Configuración de la Base de Datos

1. Abre MySQL Workbench
2. Crea una nueva base de datos:
   ```sql
   CREATE DATABASE line_manufacturing;
   ```
3. Ejecuta los scripts en este orden:
   - `sql/tables/normalizeddowntime.sql`
   - `sql/data/insert_normalizeddowntime.sql`

### 4. ¡Comienza a Analizar!

1. Abre `analysis/Manufacturing_Downtime.ipynb` en Jupyter Notebook
2. Sigue las instrucciones paso a paso en el notebook

## 📊 Lo Que Aprenderás

### Habilidades SQL
- Escribir consultas básicas y avanzadas
- Crear y usar vistas de base de datos
- Agregación y agrupación de datos
- Unir múltiples tablas

### Habilidades Python
- Análisis de datos con pandas
- Crear visualizaciones
- Cálculos estadísticos
- Conectividad con bases de datos

## 📈 Ejemplos de Análisis

1. **Análisis de Tiempo de Inactividad**
   - Tiempo total de inactividad por máquina
   - Causas más comunes de paradas
   - Patrones temporales en problemas de producción

2. **Métricas de Rendimiento**
   - Eficiencia del equipo
   - Rendimiento de la línea de producción
   - Productividad del operador

3. **Visualizaciones**
   - Gráficos de series temporales
   - Gráficos de barras de causas de inactividad
   - Tableros de rendimiento

## 🤝 ¿Necesitas Ayuda?

- Revisa los comentarios en el código
- Sigue los ejemplos paso a paso
- Consulta la documentación de los paquetes

## 📚 Recursos de Aprendizaje

- [Tutorial de SQL](https://www.w3schools.com/sql/)
- [Python para Principiantes](https://docs.python.org/3/tutorial/)
- [Documentación de Pandas](https://pandas.pydata.org/docs/getting_started/)
- [Guía de Visualización de Datos](https://matplotlib.org/stable/tutorials/)
