SELECT 
    region,
    SUM(sales) AS total_sales,
    SUM(profit) AS total_profit,
    SUM(profit) / SUM(sales) * 100 AS margin_percent
FROM dbo.SuperStoreOrders
GROUP BY region
ORDER BY total_profit DESC;