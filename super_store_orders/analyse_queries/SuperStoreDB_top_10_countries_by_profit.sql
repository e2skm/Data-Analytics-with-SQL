SELECT 
	TOP 10 country,
	SUM(sales) AS total_sales,
	SUM(profit) AS total_profit
FROM dbo.SuperStoreOrders
GROUP BY country
ORDER BY total_profit DESC;