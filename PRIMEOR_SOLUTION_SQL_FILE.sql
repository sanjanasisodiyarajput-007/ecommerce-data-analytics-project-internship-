USE ECOMMERCE_DATA_ANALYTICS_INTERNSHIP_PROJECT

SELECT * FROM [CLEANED_DATASET PRIMEOR_SOLUTION]

---QUERIES-------------------------------------------------------------------------------------------------------------------------------------------

--1. Top 10 profitable product 

select top 10 product_name_clean,sum (profit) as total_profit from [CLEANED_DATASET PRIMEOR_SOLUTION]
group by product_name_clean
order by total_profit desc;

--2. Top 10 customers by sales

select TOP 10 customer_name,sum(sales) as total_sales FROM [CLEANED_DATASET PRIMEOR_SOLUTION]
group by customer_name
order by total_sales desc;

--3. Region-wise total sales

select region,sum(sales) as total_sales from [CLEANED_DATASET PRIMEOR_SOLUTION]
group by region
order by total_sales desc;

--4. Category-wise average profit

select category,AVG(profit) as average_profit from [CLEANED_DATASET PRIMEOR_SOLUTION]
group by category
order by average_profit desc;

--5. Highest discount category

select category,avg(discount) as avg_discount from [CLEANED_DATASET PRIMEOR_SOLUTION]
group by category
order by avg_discount desc;

--6. Orders with negative profit

select * from [CLEANED_DATASET PRIMEOR_SOLUTION]
where profit <0
order by profit asc;

--7. Monthly sales trend

select year(order_date) as order_year, month(order_date) as order_month, sum(sales) as total_sales from [CLEANED_DATASET PRIMEOR_SOLUTION]
group by year(order_date),month(order_date)
order by total_sales desc;

--8. Market-wise revenue analysis

select market, sum( sales) as total_sales from [CLEANED_DATASET PRIMEOR_SOLUTION]
group by market
order by total_sales desc;

--9. Top performing sub-categories

select top 10 sub_category,sum(sales) as total_sales from [CLEANED_DATASET PRIMEOR_SOLUTION]

group by sub_category
order by total_sales desc;

--10. Ship mode usage analysis

select ship_mode, count(distinct order_id) as total_orders,sum(shipping_cost)  as total_shipping_cost from [CLEANED_DATASET PRIMEOR_SOLUTION]
group by ship_mode
ORDER BY total_orders desc ;


--Insight------------------------------------------------------------------------------------------------------------------------------------------------------

--1. Which market generates highest revenue?
 
 APAC market with 3581785 total sales generates highest revenue

 --2. Which categories are least profitable?

 office supplies categories with 16.5672 profitable
 
 --3. Which shipping mode is most commonly used?

 standard class is most commonly used shipping mode
