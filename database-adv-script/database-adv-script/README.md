# Database Performance Monitoring and Refinement Report

## 1. Objective
To monitor query performance, identify bottlenecks, and implement optimizations for improved execution speed.

## 2. Tools and Commands Used
- `EXPLAIN ANALYZE`
- `SHOW PROFILE`
- `CREATE INDEX`

## 3. Queries Monitored
### Query 1:
```sql
EXPLAIN ANALYZE
SELECT * FROM bookings WHERE user_id = 10;
