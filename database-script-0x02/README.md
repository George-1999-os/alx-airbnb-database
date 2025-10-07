# Airbnb Database Seed Data

## Overview
This directory contains SQL scripts to populate the Airbnb-like database with sample data.

## Files
- **seed.sql** – SQL INSERT statements for Users, Properties, Bookings, and Payments.
- **README.md** – Project documentation.

## Details
- The sample data reflects real-world relationships:
  - Users can be both hosts and guests.
  - Each property belongs to a host.
  - Bookings link guests to properties.
  - Payments record transactions for bookings.

## Usage
Run the seed script after creating the schema:
```bash
mysql -u root -p airbnb_db < seed.sql
