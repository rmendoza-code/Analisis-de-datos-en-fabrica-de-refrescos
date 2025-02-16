-- --------------------------------------------------------
-- View Definitions for Downtime Analysis
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
