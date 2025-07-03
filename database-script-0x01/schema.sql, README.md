-- 1. Users Table
CREATE TABLE Users (
    user_id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50),
    email VARCHAR(100) UNIQUE NOT NULL,
    password VARCHAR(255) NOT NULL,
    phone VARCHAR(20),
    role ENUM('buyer', 'seller', 'admin') DEFAULT 'buyer',
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE INDEX idx_users_email ON Users(email);

-- 2. Properties Table
CREATE TABLE Properties (
    property_id INT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(100) NOT NULL,
    description TEXT,
    location VARCHAR(255) NOT NULL,
    price DECIMAL(12, 2) NOT NULL CHECK (price > 0),
    property_type ENUM('land', 'house', 'apartment') NOT NULL,
    status ENUM('available', 'booked', 'sold') DEFAULT 'available',
    owner_id INT NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (owner_id) REFERENCES Users(user_id)
        ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE INDEX idx_properties_location ON Properties(location);
CREATE INDEX idx_properties_owner ON Properties(owner_id);

-- 3. Bookings Table
CREATE TABLE Bookings (
    booking_id INT PRIMARY KEY AUTO_INCREMENT,
    user_id INT NOT NULL,
    property_id INT NOT NULL,
    booking_date DATE DEFAULT CURRENT_DATE,
    status ENUM('pending', 'approved', 'declined') DEFAULT 'pending',
    FOREIGN KEY (user_id) REFERENCES Users(user_id)
        ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (property_id) REFERENCES Properties(property_id)
        ON DELETE CASCADE ON UPDATE CASCADE,
    UNIQUE (user_id, property_id) -- Prevent duplicate bookings
);

CREATE INDEX idx_bookings_user ON Bookings(user_id);
CREATE INDEX idx_bookings_property ON Bookings(property_id);

-- 4. Payments Table
CREATE TABLE Payments (
    payment_id INT PRIMARY KEY AUTO_INCREMENT,
    booking_id INT NOT NULL,
    amount DECIMAL(12, 2) NOT NULL CHECK (amount > 0),
    payment_method VARCHAR(50) NOT NULL,
    payment_date DATE DEFAULT CURRENT_DATE,
    status ENUM('completed', 'failed') DEFAULT 'completed',
    FOREIGN KEY (booking_id) REFERENCES Bookings(booking_id)
        ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE INDEX idx_payments_booking ON Payments(booking_id);
