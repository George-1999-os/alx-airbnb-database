# Joins Queries for Airbnb Database

This file contains SQL queries demonstrating:

1. **INNER JOIN:** Retrieve all bookings and their respective users.
2. **LEFT JOIN:** Retrieve all properties and their reviews, including properties that have no reviews. Ordered by property_id.
3. **FULL OUTER JOIN:** Retrieve all users and bookings, even if they are not linked. Simulated using UNION of LEFT JOIN and RIGHT JOIN.

## How to Run

1. Open MySQL client:
   ```bash
   mysql -u root -p

# Write Complex Queries with Joins

## Project Overview
This task is part of the **ALX Airbnb Database Advanced SQL Module**.  
It focuses on mastering different types of SQL joins to retrieve data efficiently and meaningfully.

## Learning Objectives
- Understand and implement INNER, LEFT, and FULL OUTER joins.
- Combine data from multiple related tables.
- Write clean, well-documented SQL queries.

## Files
- `joins_queries.sql` — Contains all the required SQL queries.
- `README.md` — Project documentation.

## Queries Summary
1. **INNER JOIN:** Retrieve all bookings and their respective users.
2. **LEFT JOIN:** Retrieve all properties and their reviews, including properties with no reviews.
3. **FULL OUTER JOIN:** Retrieve all users and bookings, even if not linked.

## How to Run
1. Open your MySQL terminal or any SQL client.
2. Select your Airbnb database:
   ```sql
   USE airbnb_db;
