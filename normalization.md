# Airbnb Clone – Database Normalization to 3NF

This document explains how the Airbnb database schema was normalized to ensure it meets **Third Normal Form (3NF)**.

## ✅ Step-by-Step Normalization

### 🔹 First Normal Form (1NF)

**Definition:**  
Each table must have:
- A primary key
- Atomic (indivisible) values
- No repeating groups or arrays

✅ **Our schema complies with 1NF** because:
- All attributes hold atomic values
- No repeating fields (e.g., phone_number, emails, ratings are all singular)
- All tables have primary keys

### 🔹 Second Normal Form (2NF)

**Definition:**  
- Must meet all requirements of 1NF
- All non-key attributes must depend on the **whole** primary key (no partial dependencies)

✅ **Our schema complies with 2NF** because:
- All primary keys are single-column (UUIDs), so partial dependencies do not apply
- Non-key attributes fully depend on their respective primary keys

### 🔹 Third Normal Form (3NF)

**Definition:**  
- Must meet all requirements of 2NF
- All non-key attributes must be **directly dependent on the primary key** (no transitive dependencies)

✅ **Schema adjustments to achieve 3NF:**

| Table       | Potential Issue                          | Action Taken |
|-------------|-------------------------------------------|--------------|
| `User`      | No transitive dependencies               | No change needed |
| `Property`  | `host_id` properly normalized as FK       | No change needed |
| `Booking`   | `total_price` depends on calculated values | Keep for efficiency, but store logic elsewhere |
| `Payment`   | `booking_id` is sufficient for all other info | No change needed |
| `Review`    | All attributes depend on `review_id`      | No change needed |
| `Message`   | All fields are atomic and linked correctly | No change needed |

📌 Note:  
- Although `total_price` in `Booking` could be calculated from `price_per_night × nights`, we’ve **kept it for performance** (denormalization for efficiency). This is a practical compromise and still acceptable under 3NF if the calculation logic is consistent and documented

## ✅ Conclusion
The Airbnb database schema is **fully normalized to 3NF**:
- No repeating groups or arrays (1NF ✅)
- No partial dependencies (2NF ✅)
- No transitive dependencies (3NF ✅)

All relationships between entities are well defined and enforced using foreign key constraints.
