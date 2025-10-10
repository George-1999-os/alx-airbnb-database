-- Initial query: retrieve all bookings with user, property, and payment details
EXPLAIN
SELECT 
    b.id AS booking_id,
    u.first_name,
    u.last_name,
    p.name AS property_name,
    pay.amount AS payment_amount,
    pay.status AS payment_status
FROM bookings b
JOIN users u ON b.user_id = u.id
JOIN properties p ON b.property_id = p.id
JOIN payments pay ON pay.booking_id = b.id
WHERE pay.status = 'Completed' AND b.start_date >= '2025-01-01';

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
