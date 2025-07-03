-- USERS
INSERT INTO Users (first_name, last_name, email, password, phone, role)
VALUES
('Amaka', 'Uche', 'amaka@gmail.com', 'hashed_pw1', '08012345678', 'buyer'),
('Chinedu', 'Okafor', 'chinedu@gmail.com', 'hashed_pw2', '08123456789', 'buyer'),
('Ngozi', 'Nwankwo', 'ngozi@realestate.com', 'hashed_pw3', '08087654321', 'seller'),
('Admin', 'User', 'admin@property.com', 'hashed_admin', '08000000000', 'admin');

-- PROPERTIES (owned by seller ID = 3)
INSERT INTO Properties (title, description, location, price, property_type, status, owner_id)
VALUES
('Luxury Duplex in GRA', 'Spacious 5-bedroom duplex with BQ.', 'Enugu GRA, Enugu', 45000000.00, 'house', 'available', 3),
('Commercial Land', 'Ideal for shopping complex.', 'Aba Road, Port Harcourt', 75000000.00, 'land', 'available', 3),
('Studio Apartment', 'Well-furnished studio for short lets.', 'Yaba, Lagos', 12000000.00, 'apartment', 'available', 3);

-- BOOKINGS (users 1 and 2)
INSERT INTO Bookings (user_id, property_id, booking_date, status)
VALUES
(1, 1, '2025-07-01', 'approved'),
(2, 3, '2025-07-02', 'pending');

-- PAYMENTS (only one booking paid)
INSERT INTO Payments (booking_id, amount, payment_method, payment_date, status)
VALUES
(1, 45000000.00, 'bank_transfer', '2025-07-03', 'completed');
