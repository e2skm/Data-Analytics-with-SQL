SELECT 
	category,
	SUM(sales) AS total_sales,
	SUM(profit) AS total_profit,
	SUM(profit) / SUM(sales) * 100 AS profit_margin_percentage
FROM dbo.SuperStoreOrders
GROUP BY category
ORDER BY profit_margin_percentage DESC;