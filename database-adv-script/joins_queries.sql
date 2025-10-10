-- INNER JOIN: Retrieve all bookings and their respective users
SELECT
    b.id AS booking_id,
    b.property_id,
    b.start_date,
    b.end_date,
    u.id AS user_id,
    u.first_name,
    u.last_name,
    u.email
FROM bookings AS b
INNER JOIN users AS u
    ON b.user_id = u.id;

-- LEFT JOIN: Retrieve all properties and their reviews, including properties with no reviews
SELECT
    p.id AS property_id,
    p.name AS property_name,
    p.location,
    r.id AS review_id,
    r.rating,
    r.comment
FROM properties AS p
LEFT JOIN reviews AS r
    ON p.id = r.property_id
ORDER BY p.id;

-- FULL OUTER JOIN: Retrieve all users and bookings (simulated)
SELECT
    u.id AS user_id,
    u.first_name,
    u.last_name,
    u.email,
    b.id AS booking_id,
    b.property_id,
    b.start_date,
    b.end_date
FROM users AS u
LEFT JOIN bookings AS b
    ON u.id = b.user_id
UNION
SELECT
    u.id AS user_id,
    u.first_name,
    u.last_name,
    u.email,
    b.id AS booking_id,
    b.property_id,
    b.start_date,
    b.end_date
FROM users AS u
RIGHT JOIN bookings AS b
    ON u.id = b.user_id;
