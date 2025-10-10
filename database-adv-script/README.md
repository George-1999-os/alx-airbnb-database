# Joins Queries for Airbnb Database

This file contains SQL queries demonstrating:

1. **INNER JOIN:** Retrieve all bookings and their respective users.
2. **LEFT JOIN:** Retrieve all properties and their reviews, including properties that have no reviews. Ordered by property_id.
3. **FULL OUTER JOIN:** Retrieve all users and bookings, even if they are not linked. Simulated using UNION of LEFT JOIN and RIGHT JOIN.

## How to Run

1. Open MySQL client:
   ```bash
   mysql -u root -p
