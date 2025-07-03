# Airbnb Clone – Entity Relationship Diagram (ERD)

This document defines the core entities and relationships for the Airbnb-like database system.

## ✅ ENTITIES & ATTRIBUTES

### 1. User
- **user_id**: UUID (Primary Key)
- **first_name**: VARCHAR, NOT NULL
- **last_name**: VARCHAR, NOT NULL
- **email**: VARCHAR, UNIQUE, NOT NULL
- **password_hash**: VARCHAR, NOT NULL
- **phone_number**: VARCHAR, NULL
- **role**: ENUM (guest, host, admin), NOT NULL
- **created_at**: TIMESTAMP, DEFAULT CURRENT_TIMESTAMP

### 2. Property
- **property_id**: UUID (Primary Key)
- **host_id**: Foreign Key → User(user_id)
- **name**: VARCHAR, NOT NULL
- **description**: TEXT, NOT NULL
- **location**: VARCHAR, NOT NULL
- **price_per_night**: DECIMAL, NOT NULL
- **created_at**: TIMESTAMP, DEFAULT CURRENT_TIMESTAMP
- **updated_at**: TIMESTAMP, ON UPDATE CURRENT_TIMESTAMP

### 3. Booking
- **booking_id**: UUID (Primary Key)
- **property_id**: Foreign Key → Property(property_id)
- **user_id**: Foreign Key → User(user_id)
- **start_date**: DATE, NOT NULL
- **end_date**: DATE, NOT NULL
- **total_price**: DECIMAL, NOT NULL
- **status**: ENUM (pending, confirmed, canceled), NOT NULL
- **created_at**: TIMESTAMP, DEFAULT CURRENT_TIMESTAMP

### 4. Payment
- **payment_id**: UUID (Primary Key)
- **booking_id**: Foreign Key → Booking(booking_id)
- **amount**: DECIMAL, NOT NULL
- **payment_date**: TIMESTAMP, DEFAULT CURRENT_TIMESTAMP
- **payment_method**: ENUM (credit_card, paypal, stripe), NOT NULL

### 5. Review
- **review_id**: UUID (Primary Key)
- **property_id**: Foreign Key → Property(property_id)
- **user_id**: Foreign Key → User(user_id)
- **rating**: INTEGER, CHECK (1–5), NOT NULL
- **comment**: TEXT, NOT NULL
- **created_at**: TIMESTAMP, DEFAULT CURRENT_TIMESTAMP

### 6. Message
- **message_id**: UUID (Primary Key)
- **sender_id**: Foreign Key → User(user_id)
- **recipient_id**: Foreign Key → User(user_id)
- **message_body**: TEXT, NOT NULL
- **sent_at**: TIMESTAMP, DEFAULT CURRENT_TIMESTAMP

## 🔗 RELATIONSHIPS

- A **User** can:
  - Host multiple **Properties**
  - Make multiple **Bookings**
  - Write multiple **Reviews**
  - Send and receive multiple **Messages**

- A **Property** can:
  - Belong to one **Host** (User)
  - Be booked in multiple **Bookings**
  - Have multiple **Reviews**

- A **Booking** is:
  - Made by one **User**
  - For one **Property**
  - Linked to one **Payment**

- A **Payment** belongs to one **Booking**

- A **Review** is:
  - Written by one **User**
  - About one **Property**

- A **Message** is sent by one **User** and received by another **User**

## 🖼️ ER Diagram

> See `airbnb_erd.png` in this directory for the visual representation of these relationships.
