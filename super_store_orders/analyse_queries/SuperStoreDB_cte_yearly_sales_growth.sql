WITH YearlySales AS (
    SELECT 
        YEAR(order_date) AS order_year,
        SUM(sales) AS total_sales
    FROM dbo.SuperStoreOrders
    GROUP BY YEAR(order_date))
SELECT 
    order_year,
    total_sales,
    LAG(total_sales) OVER (ORDER BY order_year) AS previous_year_sales,
    (total_sales - LAG(total_sales) OVER (ORDER BY order_year)) 
        / LAG(total_sales) OVER (ORDER BY order_year) * 100 
        AS growth_percent
FROM YearlySales;