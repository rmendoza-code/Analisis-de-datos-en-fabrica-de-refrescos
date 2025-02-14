# Documentación de Datos

## Estructura de la Base de Datos

### Tablas Principales

#### 1. manufacturing_line_productivity
Contiene los datos principales de producción por lote.

| Columna | Tipo | Descripción |
|---------|------|-------------|
| date | DATE | Fecha de producción |
| id_product | VARCHAR(10) | Identificador único del producto |
| flavor | VARCHAR(50) | Sabor del producto |
| batch | INT | Número de lote (clave primaria) |
| operator | VARCHAR(50) | Nombre del operador |
| Star_Time | TIME | Hora de inicio del lote |
| End_Time | TIME | Hora de finalización del lote |
| price | DECIMAL(10,2) | Precio del producto |
| size | VARCHAR(20) | Tamaño del producto |
| min_batch_time | INT | Tiempo mínimo esperado para el lote (minutos) |

#### 2. normalizeddowntime
Registra los tiempos de inactividad normalizados.

| Columna | Tipo | Descripción |
|---------|------|-------------|
| batch | INT | Número de lote (clave foránea) |
| factor | INT | Código del factor de tiempo de inactividad |
| downtime_minutes | INT | Duración del tiempo de inactividad |

#### 3. downtime_factor
Catálogo de factores de tiempo de inactividad.

| Columna | Tipo | Descripción |
|---------|------|-------------|
| factor | INT | Código del factor (clave primaria) |
| description | VARCHAR(100) | Descripción del factor |
| operator_error | BOOLEAN | Indica si es error del operador |

### Vistas

#### 1. v_ProductionWithDowntime
Combina datos de producción con tiempos de inactividad totales.
- Ver documentación detallada en `/sql/views/v_ProductionWithDowntime.sql`

#### 2. v_DowntimeTotal
Agrega tiempos de inactividad por lote.
- Ver documentación detallada en `/sql/views/v_DowntimeTotal.sql`

#### 3. v_DowntimeDetalles
Proporciona detalles de cada incidente de tiempo de inactividad.
- Ver documentación detallada en `/sql/views/v_DowntimeDetalles.sql`

## Relaciones entre Tablas

```
manufacturing_line_productivity
         ↓
         ↓ (batch)
    normalizeddowntime
         ↓
         ↓ (factor)
     downtime_factor
```

## Consideraciones de Datos

1. **Integridad Referencial**
   - Cada `batch` en `normalizeddowntime` debe existir en `manufacturing_line_productivity`
   - Cada `factor` en `normalizeddowntime` debe existir en `downtime_factor`

2. **Valores Nulos**
   - No se permiten valores nulos en campos clave (batch, factor)
   - Los tiempos de inactividad siempre deben ser ≥ 0

3. **Convenciones de Tiempo**
   - Todos los tiempos están en minutos
   - Los tiempos de inicio/fin están en formato 24 horas

## Calidad de los Datos
- Frecuencia de los datos: Registros de producción diarios
- Período de tiempo: [Especificar rango de tiempo]
- Procedimientos de validación de datos implementados
- Manejo de valores faltantes documentado

## Notas de Uso
- Los datos se obtienen de sistemas de monitoreo de líneas de producción
- La información confidencial ha sido anonimizada
- Las actualizaciones regulares se mantienen a través de procesos ETL automatizados
