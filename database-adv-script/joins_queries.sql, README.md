
-- 1. INNER JOIN: Retrieve all bookings and the respective users who made those bookings
SELECT 
    bookings.booking_id,
    bookings.property_id,
    bookings.check_in_date,
    bookings.check_out_date,
    users.user_id,
    users.name,
    users.email
FROM bookings
INNER JOIN users
    ON bookings.user_id = users.user_id;

-- 2. LEFT JOIN: Retrieve all properties and their reviews, including properties that have no reviews
SELECT 
    properties.property_id,
    properties.title,
    properties.location,
    reviews.review_id,
    reviews.rating,
    reviews.comment
FROM properties
LEFT JOIN reviews
    ON properties.property_id = reviews.property_id;

-- 3. FULL OUTER JOIN: Retrieve all users and all bookings, even if the user has no booking or a booking is not linked to a user
-- Note: If your DBMS does not support FULL OUTER JOIN, use the UNION method below.
SELECT 
    users.user_id,
    users.name,
    bookings.booking_id,
    bookings.property_id,
    bookings.check_in_date
FROM users
FULL OUTER JOIN bookings
    ON users.user_id = bookings.user_id;

-- Alternative FULL OUTER JOIN for MySQL (if FULL OUTER JOIN is not supported)
SELECT 
    users.user_id,
    users.name,
    bookings.booking_id,
    bookings.property_id,
    bookings.check_in_date
FROM users
LEFT JOIN bookings ON users.user_id = bookings.user_id

UNION

SELECT 
    users.user_id,
    users.name,
    bookings.booking_id,
    bookings.property_id,
    bookings.check_in_date
FROM bookings
LEFT JOIN users ON bookings.user_id = users.user_id;
