# 📊 Blinkit SQL Database Project

## 🧾 Project Description

This project presents a SQL-based relational database schema designed for **Blinkit**, a fictional online grocery delivery platform. The schema models core business operations such as customer profiles, product listings, order management, and transactional details.

The goal is to:
- Design a normalized database structure.
- Enable efficient storage and retrieval of transactional data.
- Support analytical queries for business insights such as top-selling products, customer purchase patterns, and revenue tracking.

---

## 🧱 Schema Overview

- **Customers**: Stores personal information about each user who places orders.
- **Orders**: Tracks each order placed by a customer along with the total amount and date.
- **Products**: Catalog of items available for sale on the Blinkit platform.
- **OrderItems**: Breakdown of individual products in each order, with quantity and pricing references.

---

## ✅ Use Cases

- Track customer order history.
- Analyze top-performing products.
- Calculate monthly or daily revenue.
- Perform cohort analysis on customer behavior.
- Identify frequently ordered product combinations.

---

## 📁 Project Structure

```
blinkit-sql-project/
│
├── blinkit_analysis.sql # SQL script to create all necessary tables
├── insert_data.sql #Insert statements to populate tables
├── queries.sql #Analytical queries (e.g., revenue, trends)
└── README.md # Project documentation


```

---

## 🚀 How to Run

1. Open your SQL environment (MySQL, PostgreSQL, SQLite, etc.).
2. Execute `blinkit_analysis.sql` to create the database schema.
3. (Optional) Insert sample data and run analytical queries.

---

## 🔗 Related Technologies

- SQL (DDL)
- Relational Database Design
- ER Modeling (if ERD is provided)
- Business Intelligence & Analytics (potential future steps)

---

## 👤 Author

[S Mohammed Salman  
[Salman1172]
