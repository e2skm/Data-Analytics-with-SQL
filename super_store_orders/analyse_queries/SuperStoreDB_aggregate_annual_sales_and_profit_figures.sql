SELECT 
    YEAR(order_date) AS order_year,
    SUM(sales) AS total_sales,
    SUM(profit) AS total_profit,
    SUM(profit) / SUM(sales) * 100 AS profit_margin_percent
FROM dbo.SuperStoreOrders
GROUP BY YEAR(order_date)
ORDER BY order_year;

