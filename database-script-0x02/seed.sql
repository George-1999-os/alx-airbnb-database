-- seed.sql
-- Sample data for Airbnb Database
-- Author: George Ibuchi

-- Insert sample users
INSERT INTO users (full_name, email, phone_number)
VALUES 
('John Doe', 'john.doe@example.com', '08012345678'),
('Jane Smith', 'jane.smith@example.com', '08087654321'),
('Michael Johnson', 'mike.johnson@example.com', '08123456789');

-- Insert sample properties
INSERT INTO properties (host_id, title, description, price_per_night, location)
VALUES
(1, 'Cozy Apartment in Lagos', 'A comfortable one-bedroom apartment near Lekki.', 25000.00, 'Lekki, Lagos'),
(2, 'Beachside Villa', 'Luxury villa with a view of the ocean.', 120000.00, 'Victoria Island, Lagos'),
(3, 'Budget Room in Ibadan', 'Affordable room close to the university.', 8000.00, 'Bodija, Ibadan');

-- Insert sample bookings
INSERT INTO bookings (property_id, guest_id, check_in, check_out, total_amount)
VALUES
(1, 2, '2025-10-10', '2025-10-12', 50000.00),
(2, 3, '2025-10-15', '2025-10-20', 600000.00),
(3, 1, '2025-11-01', '2025-11-03', 16000.00);

-- Insert sample payments
INSERT INTO payments (booking_id, amount, payment_date, status)
VALUES
(1, 50000.00, '2025-10-10 12:00:00', 'completed'),
(2, 600000.00, '2025-10-15 08:30:00', 'pending'),
(3, 16000.00, '2025-11-01 10:15:00', 'completed');
