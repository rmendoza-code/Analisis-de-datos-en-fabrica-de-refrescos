-- --------------------------------------------------------
-- Data Migration for NormalizedDowntime
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
