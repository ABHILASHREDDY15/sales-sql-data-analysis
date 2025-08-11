create database data_sales;
use data_sales;

select * from sales_data;

select SUM(total_amount) from sales_data;

select product, sum(total_amount) as total_sales from sales_data group by product order by total_sales desc limit 5;

select date_format(order_date, '%2024-%3') as month, sum(total_amount) as total_sales from sales_data group by month order by month;


select customer_id, count(order_id) as total_orders, sum(total_amount) as total_spent from sales_data group by customer_id order by total_spent desc;