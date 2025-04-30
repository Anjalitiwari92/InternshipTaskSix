# 📊 Sales Trend Analysis Using SQL Aggregations

This repository contains an SQL task focused on analyzing **monthly revenue** and **order volume** using aggregation functions in **PostgreSQL**.

---

## 🧾 Objective

Perform monthly sales trend analysis by:
- Extracting year and month from order dates
- Aggregating revenue using `SUM()`
- Counting distinct orders using `COUNT(DISTINCT ...)`
- Sorting results chronologically

---

## 🧰 Tools & Technologies

- **Database**: PostgreSQL
- **Platform**: [DB Fiddle](https://www.db-fiddle.com/) (for easy testing)
- **Language**: SQL

---

## 📁 Files Included

- `sales_trend_analysis.sql`:  
  Contains table creation, sample data insertion, and the aggregation query for monthly trend analysis.

- `output.csv`:  
  Example output of the query showing month-wise revenue and order volume (you can generate and save this via Excel or Sheets).

---

## 🗃️ Sample Dataset

A sample table `online_sales` is used with the following columns:
- `order_id` (INT)
- `order_date` (DATE)
- `amount` (NUMERIC)
- `product_id` (INT)

---

## 🧠 SQL Features Used

- `EXTRACT(YEAR FROM order_date)`, `EXTRACT(MONTH FROM order_date)`
- `SUM(amount)` to calculate total monthly revenue
- `COUNT(DISTINCT order_id)` to get monthly order volume
- `GROUP BY` and `ORDER BY` for monthly breakdown

---

## ▶️ How to Run

### 🧪 Option 1: Use Online Editor

1. Go to [DB Fiddle](https://www.db-fiddle.com/).
2. Copy and paste the content of `sales_trend_analysis.sql`.
3. Click **"Build Schema"**, then **"Run"** to view results.

### 💻 Option 2: Run Locally (PostgreSQL)

1. Install PostgreSQL.
2. Run the contents of `sales_trend_analysis.sql` in `psql` or `pgAdmin`.
3. View the results from the final query.

---

## 📊 Sample Output

| Year | Month | Total Revenue | Order Volume |
|------|-------|----------------|---------------|
| 2023 | 1     | 200.50         | 2             |
| 2023 | 2     | 350.00         | 2             |
| 2023 | 3     | 650.00         | 3             |
| 2023 | 4     | 1800.00        | 3             |
| 2023 | 5     | 1000.00        | 2             |
| 2023 | 6     | 2000.00        | 2             |

---
