# 📑 SQL Scripts

### 1. Análisis Básico de Tiempo de Inactividad
```sql

-- Total de tiempo de inactividad por máquina
SELECT machine_id, 
       SUM(downtime_minutes) as total_downtime,
       COUNT(*) as number_of_stops
FROM normalizeddowntime
GROUP BY machine_id
ORDER BY total_downtime DESC;

-- Causas más comunes de paradas
SELECT stop_reason, 
       COUNT(*) as frequency,
       SUM(downtime_minutes) as total_minutes
FROM normalizeddowntime
GROUP BY stop_reason
ORDER BY frequency DESC
LIMIT 10;
```

### 2. Análisis Temporal
```sql

-- Paradas por hora del día
SELECT HOUR(start_time) as hour_of_day,
       COUNT(*) as number_of_stops,
       AVG(downtime_minutes) as avg_downtime
FROM normalizeddowntime
GROUP BY HOUR(start_time)
ORDER BY hour_of_day;

-- Tendencia mensual de tiempo de inactividad
SELECT DATE_FORMAT(start_time, '%Y-%m') as month,
       SUM(downtime_minutes) as total_downtime
FROM normalizeddowntime
GROUP BY month
ORDER BY month;
```

### 3. Análisis Avanzado
```sql

-- Correlación entre duración de parada y turno
WITH shift_stats AS (
    SELECT 
        shift,
        COUNT(*) as total_stops,
        AVG(downtime_minutes) as avg_downtime,
        STDDEV(downtime_minutes) as std_downtime
    FROM normalizeddowntime
    GROUP BY shift
)
SELECT *,
       avg_downtime + std_downtime as upper_bound,
       GREATEST(0, avg_downtime - std_downtime) as lower_bound
FROM shift_stats
ORDER BY avg_downtime DESC;