-- Initial query: retrieve all bookings with user, property, and payment details
EXPLAIN ANALYZE
SELECT 
    b.id AS booking_id,
    b.start_date,
    b.end_date,
    u.id AS user_id,
    u.first_name,
    u.last_name,
    u.email,
    p.id AS property_id,
    p.name AS property_name,
    p.location,
    NULL AS payment_amount,  -- placeholder
    NULL AS payment_date     -- placeholder
FROM bookings b
JOIN users u ON b.user_id = u.id
JOIN properties p ON b.property_id = p.id;

-- Optimized query (refactored)
EXPLAIN ANALYZE
SELECT 
    b.id AS booking_id,
    b.start_date,
    b.end_date,
    u.first_name,
    u.last_name,
    u.email,
    p.name AS property_name,
    p.location
FROM bookings b
JOIN users u ON b.user_id = u.id
JOIN properties p ON b.property_id = p.id;
