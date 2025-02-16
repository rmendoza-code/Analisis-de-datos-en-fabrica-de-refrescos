-- --------------------------------------------------------
-- Schema Definition: NormalizedDowntime
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
