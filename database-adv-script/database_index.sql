-- Indexes for optimization

-- Users table
CREATE INDEX idx_users_id ON users(id);

-- Properties table
CREATE INDEX idx_properties_id ON properties(id);

-- Bookings table
CREATE INDEX idx_bookings_user_id ON bookings(user_id);
CREATE INDEX idx_bookings_property_id ON bookings(property_id);
CREATE INDEX idx_bookings_start_date ON bookings(start_date);

-- Reviews table
CREATE INDEX idx_reviews_property_id ON reviews(property_id);

-- Measure query performance BEFORE indexes
-- (You can comment these out if indexes already exist)
EXPLAIN ANALYZE SELECT * FROM bookings WHERE user_id = 1;
EXPLAIN ANALYZE SELECT * FROM bookings WHERE property_id = 1;
EXPLAIN ANALYZE SELECT * FROM bookings WHERE start_date = '2025-10-01';

-- Measure query performance AFTER indexes
EXPLAIN ANALYZE SELECT * FROM bookings WHERE user_id = 1;
EXPLAIN ANALYZE SELECT * FROM bookings WHERE property_id = 1;
EXPLAIN ANALYZE SELECT * FROM bookings WHERE start_date = '2025-10-01';
