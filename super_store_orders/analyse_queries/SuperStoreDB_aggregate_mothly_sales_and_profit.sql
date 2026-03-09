SELECT 
	DATENAME(MONTH, order_date) AS month_name,
	SUM(sales) AS total_sales,
	SUM(profit) AS total_profit
FROM dbo.SuperStoreOrders
GROUP BY DATENAME(MONTH, order_date), MONTH(order_date)
ORDER BY MONTH(order_date);