# Database Performance Monitoring Report

## Objective
To monitor and refine database performance by analyzing query execution plans and implementing schema adjustments.

## Tools Used
- `EXPLAIN ANALYZE`
- `SHOW PROFILE`
- `CREATE INDEX`

## Example Query Monitoring
```sql
EXPLAIN ANALYZE
SELECT * FROM bookings WHERE user_id = 10;
