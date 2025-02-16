-- --------------------------------------------------------
-- Analysis Queries for Downtime Data
-- --------------------------------------------------------

-- Query: Total downtime per batch
SELECT * FROM v_DowntimeTotal ORDER BY batch;

-- Query: Detailed downtime information with descriptions
SELECT * FROM v_DowntimeDetalles ORDER BY batch, factor;

-- Query: Production data with downtime information
SELECT * FROM v_ProductionWithDowntime;

-- Query: Total downtime hours per product
SELECT id_product, SUM(total_downtime)/60 AS total_downtime_hours
FROM v_ProductionWithDowntime
GROUP BY id_product
ORDER BY total_downtime_hours DESC;

-- Query: Total downtime hours per operator
SELECT operator, SUM(total_downtime)/60 AS total_downtime_hours
FROM v_ProductionWithDowntime
GROUP BY operator
ORDER BY total_downtime_hours DESC;

-- Query: Total downtime hours per date
SELECT date, SUM(total_downtime)/60 AS total_downtime_hours
FROM v_ProductionWithDowntime
GROUP BY date
ORDER BY date;

-- Query: Average, minimum, and maximum downtime
SELECT 
    AVG(total_downtime) AS avg_downtime,
    MIN(total_downtime) AS min_downtime,
    MAX(total_downtime) AS max_downtime
FROM v_ProductionWithDowntime;

-- Query: Total downtime minutes and hours per product and operator
SELECT id_product, operator, 
       SUM(total_downtime) AS total_downtime_minutes,
       SUM(total_downtime)/60 AS total_downtime_hours
FROM v_ProductionWithDowntime
GROUP BY id_product, operator
ORDER BY id_product, total_downtime_minutes DESC;
