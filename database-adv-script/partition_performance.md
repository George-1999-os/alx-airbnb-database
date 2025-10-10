# Partitioning Performance Report

## Objective
The goal was to improve query performance on the large `bookings` table by partitioning it by year, using the `start_date` column.

## Implementation
The `bookings` table was partitioned using:
```sql
PARTITION BY RANGE (YEAR(start_date))
