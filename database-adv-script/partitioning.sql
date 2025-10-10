-- Switch to database
USE airbnb_db;

-- Drop existing partitioned table if exists
DROP TABLE IF EXISTS bookings_partitioned;

-- Create a new table similar to bookings
CREATE TABLE bookings_partitioned (
    id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT,
    property_id INT,
    start_date DATE,
    end_date DATE
);

-- Partition by year of start_date
ALTER TABLE bookings_partitioned
PARTITION BY RANGE (YEAR(start_date)) (
    PARTITION p2022 VALUES LESS THAN (2023),
    PARTITION p2023 VALUES LESS THAN (2024),
    PARTITION pmax VALUES LESS THAN MAXVALUE
);

-- Example performance test
EXPLAIN ANALYZE
SELECT * FROM bookings_partitioned
WHERE start_date BETWEEN '2023-01-01' AND '2023-12-31';
