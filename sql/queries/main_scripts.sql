    -- --------------------------------------------------------
-- Schema Definition
-- --------------------------------------------------------

-- Drop table if exists to avoid conflicts
DROP TABLE IF EXISTS NormalizedDowntime;

-- Create NormalizedDowntime table
CREATE TABLE NormalizedDowntime (
    batch VARCHAR(50),
    factor INT,
    downtime_minutes INT,
    PRIMARY KEY (batch, factor)
);

-- --------------------------------------------------------
-- Data Migration
-- --------------------------------------------------------

-- Insert normalized data from downtime_factor table
INSERT INTO NormalizedDowntime (batch, factor, downtime_minutes)
SELECT Batch, 1 AS factor, CAST(`DF1` AS UNSIGNED) AS downtime_minutes
FROM downtime_factor
WHERE `DF1` IS NOT NULL AND TRIM(`DF1`) <> ''
UNION ALL
SELECT Batch, 2 AS factor, CAST(`DF2` AS UNSIGNED)
FROM downtime_factor
WHERE `DF2` IS NOT NULL AND TRIM(`DF2`) <> ''
UNION ALL
SELECT Batch, 3 AS factor, CAST(`DF3` AS UNSIGNED)
FROM downtime_factor
WHERE `DF3` IS NOT NULL AND TRIM(`DF3`) <> ''
UNION ALL
SELECT Batch, 4 AS factor, CAST(`DF4` AS UNSIGNED)
FROM downtime_factor
WHERE `DF4` IS NOT NULL AND TRIM(`DF4`) <> ''
UNION ALL
SELECT Batch, 5 AS factor, CAST(`DF5` AS UNSIGNED)
FROM downtime_factor
WHERE `DF5` IS NOT NULL AND TRIM(`DF5`) <> ''
UNION ALL
SELECT Batch, 6 AS factor, CAST(`DF6` AS UNSIGNED)
FROM downtime_factor
WHERE `DF6` IS NOT NULL AND TRIM(`DF6`) <> ''
UNION ALL
SELECT Batch, 7 AS factor, CAST(`DF7` AS UNSIGNED)
FROM downtime_factor
WHERE `DF7` IS NOT NULL AND TRIM(`DF7`) <> ''
UNION ALL
SELECT Batch, 8 AS factor, CAST(`DF8` AS UNSIGNED)
FROM downtime_factor
WHERE `DF8` IS NOT NULL AND TRIM(`DF8`) <> ''
UNION ALL
SELECT Batch, 9 AS factor, CAST(`DF9` AS UNSIGNED)
FROM downtime_factor
WHERE `DF9` IS NOT NULL AND TRIM(`DF9`) <> ''
UNION ALL
SELECT Batch, 10 AS factor, CAST(`DF10` AS UNSIGNED)
FROM downtime_factor
WHERE `DF10` IS NOT NULL AND TRIM(`DF10`) <> ''
UNION ALL
SELECT Batch, 11 AS factor, CAST(`DF11` AS UNSIGNED)
FROM downtime_factor
WHERE `DF11` IS NOT NULL AND TRIM(`DF11`) <> ''
UNION ALL
SELECT Batch, 12 AS factor, CAST(`DF12` AS UNSIGNED)
FROM downtime_factor
WHERE `DF12` IS NOT NULL AND TRIM(`DF12`) <> '';

-- --------------------------------------------------------
-- View Definitions
-- --------------------------------------------------------

-- View: Total downtime per batch
CREATE OR REPLACE VIEW v_DowntimeTotal AS
SELECT batch, 
       SUM(downtime_minutes) AS total_downtime
FROM NormalizedDowntime
GROUP BY batch;

-- View: Detailed downtime information with descriptions
CREATE OR REPLACE VIEW v_DowntimeDetalles AS
SELECT nd.batch, 
       nd.factor, 
       df.description, 
       nd.downtime_minutes, 
       df.Operator_Error
FROM NormalizedDowntime nd
JOIN errorcode df ON nd.factor = df.id_factor;

-- View: Production data with downtime information
CREATE OR REPLACE VIEW v_ProductionWithDowntime AS
SELECT 
    lp.date,
    lp.id_product,
    p.flavor,
    lp.batch,
    lp.operator,
    lp.Star_Time,
    lp.End_Time,
    p.price,
    p.size,
    p.min_batch_time,
    COALESCE(dt.total_downtime, 0) AS total_downtime
FROM manufacturing_line_productivity lp
JOIN Products p ON lp.id_product = p.id_product
LEFT JOIN v_DowntimeTotal dt ON lp.batch = dt.batch;

-- --------------------------------------------------------
-- Query Section
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