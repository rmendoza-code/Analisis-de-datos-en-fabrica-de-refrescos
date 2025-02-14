# 📊 Vistas SQL para Análisis de Tiempo de Inactividad

Este directorio contiene las vistas SQL utilizadas para analizar los datos de tiempo de inactividad en la línea de producción.

## 🔍 Vistas Disponibles

### 1. v_ProductionWithDowntime
Combina datos de producción con tiempos de inactividad totales.
- Métricas de producción por lote
- Tiempo total de inactividad
- Información del operador y producto

### 2. v_DowntimeTotal
Calcula el tiempo total de inactividad por lote.
- Agregación de tiempos de inactividad
- Métricas por lote de producción

### 3. v_DowntimeDetalles
Proporciona información detallada sobre cada incidente.
- Factores de tiempo de inactividad
- Duración de cada incidente
- Identificación de errores de operador

## 📈 Uso de las Vistas

### Ejemplo 1: Análisis por Operador
```sql
SELECT 
    operator,
    COUNT(DISTINCT batch) as total_batches,
    AVG(total_downtime) as avg_downtime
FROM 
    v_ProductionWithDowntime
GROUP BY 
    operator
ORDER BY 
    avg_downtime DESC;
```

### Ejemplo 2: Factores Principales
```sql
SELECT 
    factor,
    description,
    COUNT(*) as frequency,
    SUM(downtime_minutes) as total_minutes
FROM 
    v_DowntimeDetalles
GROUP BY 
    factor, description
ORDER BY 
    total_minutes DESC
LIMIT 5;
```

## 🔗 Relaciones entre Vistas
- `v_ProductionWithDowntime` utiliza datos de `v_DowntimeTotal`
- `v_DowntimeDetalles` proporciona el desglose de `v_DowntimeTotal`
- Todas las vistas comparten el campo `batch` como clave común
