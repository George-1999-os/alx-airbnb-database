# Optimization Report

## Initial Query
- Joins `bookings`, `users`, and `properties`.
- Selected all columns including placeholders for payments.

## Performance Analysis
- `EXPLAIN ANALYZE` showed full table scans on `bookings`.
- High cost due to joins without indexes.

## Optimizations Applied
- Limited selected columns to only required fields.
- Ensured indexes exist on `bookings.user_id` and `bookings.property_id`.
- Refactored query reduces data scanned and execution time.

## Conclusion
- Optimized query is more efficient and ready for production.
