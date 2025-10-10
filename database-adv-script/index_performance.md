# Index Performance

1. Created indexes on frequently used columns in Users, Bookings, Properties, and Reviews tables.
2. Measured query performance before and after using EXPLAIN:
   - Queries using WHERE user_id, property_id, and start_date showed reduced cost after indexing.
3. Improved JOIN operations between Users → Bookings and Properties → Bookings.
