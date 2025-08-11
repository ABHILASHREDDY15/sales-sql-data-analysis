# Sales Data Analysis using SQL

## Overview
This project analyzes a retail sales dataset using SQL to extract key business insights.  
It demonstrates SQL skills such as aggregation, grouping, ordering, and date formatting.

## Dataset
- Table: `sales_data`
- Columns include: `order_id`, `customer_id`, `product`, `order_date`, `total_amount`
- Example size: Small dataset suitable for SQL practice

## Key SQL Skills Used
- Database creation (`CREATE DATABASE`, `USE`)
- Data exploration (`SELECT *`)
- Aggregations (`SUM`, `COUNT`)
- Grouping and ordering (`GROUP BY`, `ORDER BY`)
- Date formatting (`DATE_FORMAT`)
- Filtering and limiting results (`LIMIT`)

## Analysis Highlights
1. **Total Sales Calculation**  
   ```sql
   SELECT SUM(total_amount) FROM sales_data;
   ```

2. **Top 5 Products by Total Sales**  
   ```sql
   SELECT product, SUM(total_amount) AS total_sales
   FROM sales_data
   GROUP BY product
   ORDER BY total_sales DESC
   LIMIT 5;
   ```

3. **Monthly Sales Trend**  
   ```sql
   SELECT DATE_FORMAT(order_date, '%Y-%m') AS month, SUM(total_amount) AS total_sales
   FROM sales_data
   GROUP BY month
   ORDER BY month;
   ```

4. **Customer Purchase Summary**  
   ```sql
   SELECT customer_id, COUNT(order_id) AS total_orders, SUM(total_amount) AS total_spent
   FROM sales_data
   GROUP BY customer_id
   ORDER BY total_spent DESC;
   ```

## How to Run
1. Create the database and import your dataset into a table named `sales_data`.
2. Run the queries from `sales_data_analysis.sql` in your SQL environment (MySQL, MariaDB, etc.).

## Author
**Your Name**  
[LinkedIn Profile Link] | [GitHub Profile Link]
